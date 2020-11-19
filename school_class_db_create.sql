CREATE TABLE IF NOT EXISTS `school_class_schema`.`student` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `student_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school_class_schema`.`professor` (
  `professor_id` INT NOT NULL AUTO_INCREMENT,
  `professor_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE INDEX `professor_id_UNIQUE` (`professor_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school_class_schema`.`course` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  `professor_professor_id` INT NOT NULL,
  PRIMARY KEY (`course_id`, `professor_professor_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE,
  INDEX `fk_course_professor1_idx` (`professor_professor_id` ASC) VISIBLE,
  CONSTRAINT `fk_course_professor1`
    FOREIGN KEY (`professor_professor_id`)
    REFERENCES `school_class_schema`.`professor` (`professor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school_class_schema`.`student_has_course` (
  `student_student_id` INT NOT NULL,
  `course_course_id` INT NOT NULL,
  `course_professor_professor_id` INT NOT NULL,
  `grade_total` FLOAT NOT NULL,
  PRIMARY KEY (`student_student_id`, `course_course_id`, `course_professor_professor_id`),
  INDEX `fk_student_has_course_course1_idx` (`course_course_id` ASC, `course_professor_professor_id` ASC) VISIBLE,
  INDEX `fk_student_has_course_student1_idx` (`student_student_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_has_course_student1`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `school_class_schema`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_course_course1`
    FOREIGN KEY (`course_course_id` , `course_professor_professor_id`)
    REFERENCES `school_class_schema`.`course` (`course_id` , `professor_professor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;