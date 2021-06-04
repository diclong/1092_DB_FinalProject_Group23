USE [CourseEvaluationSystem]
GO
/****** Object:  Table [dbo].[BONUS]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BONUS](
	[Bonus_ID] [varchar](10) NOT NULL,
	[Student_ID] [varchar](10) NOT NULL,
	[Comment_ID] [varchar](10) NOT NULL,
	[Exam_ID] [varchar](10) NOT NULL,
	[Point] [int] NULL,
 CONSTRAINT [Bonus_PK] PRIMARY KEY CLUSTERED 
(
	[Bonus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT](
	[Comment_ID] [varchar](10) NOT NULL,
	[Course_ID] [varchar](10) NOT NULL,
	[Student_ID] [varchar](10) NOT NULL,
	[Comment_Time] [datetime] NULL,
	[Year_Semester] [char](5) NULL,
	[Recommended_Rate] [char](5) NULL,
	[Comment_Text] [varchar](1000) NULL,
	[Sweetness] [char](5) NULL,
	[Loading] [char](5) NULL,
 CONSTRAINT [Comment_PK] PRIMARY KEY CLUSTERED 
(
	[Comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT_LIKE]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT_LIKE](
	[Student_ID] [varchar](10) NOT NULL,
	[Comment_ID] [varchar](5) NOT NULL,
	[Like] [int] NULL,
	[Dislike] [int] NULL,
 CONSTRAINT [Like_PK] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC,
	[Comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COURSE]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE](
	[Course_ID] [varchar](10) NOT NULL,
	[CourseName] [varchar](100) NULL,
	[Teacher] [varchar](2000) NULL,
	[Lecture_Language] [varchar](30) NULL,
	[Classroom] [varchar](50) NULL,
	[Class_Session] [varchar](20) NULL,
	[Pre_Requisite] [varchar](10) NULL,
	[Syllabus] [varchar](2000) NULL,
	[Avg_Recommend_Rate] [decimal](2, 1) NULL,
	[Avg_Score] [decimal](4, 2) NULL,
 CONSTRAINT [Course_PK] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENROLL]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENROLL](
	[Student_ID] [varchar](10) NOT NULL,
	[Course_ID] [varchar](10) NOT NULL,
	[Year_Semester] [char](5) NULL,
 CONSTRAINT [Enroll_PK] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAST_EXAM]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAST_EXAM](
	[Exam_ID] [varchar](10) NOT NULL,
	[Student_ID] [varchar](10) NOT NULL,
	[Course_ID] [varchar](10) NOT NULL,
	[Year_Semester] [char](5) NULL,
	[Price] [int] NULL,
	[Download_Link] [varchar](1000) NULL,
 CONSTRAINT [Exam_PK] PRIMARY KEY CLUSTERED 
(
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PURCHASE]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PURCHASE](
	[Student_ID] [varchar](10) NOT NULL,
	[Exam_ID] [varchar](10) NOT NULL,
	[Purchased_time] [datetime] NULL,
 CONSTRAINT [Purchase_PK] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC,
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPLY]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPLY](
	[Reply_ID] [varchar](10) NOT NULL,
	[Student_ID] [varchar](10) NOT NULL,
	[Comment_ID] [varchar](5) NOT NULL,
	[Contents] [varchar](100) NULL,
 CONSTRAINT [Reply_PK] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC,
	[Reply_ID] ASC,
	[Comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 2021/6/3 下午 05:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[Student_ID] [varchar](10) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[Student_Name] [varchar](10) NULL,
	[Major] [char](20) NULL,
	[Grade] [char](1) NULL,
	[Point] [int] NULL,
 CONSTRAINT [Student_PK] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BONUS]  WITH CHECK ADD  CONSTRAINT [Bonus_FK1] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[STUDENT] ([Student_ID])
GO
ALTER TABLE [dbo].[BONUS] CHECK CONSTRAINT [Bonus_FK1]
GO
ALTER TABLE [dbo].[BONUS]  WITH CHECK ADD  CONSTRAINT [Bonus_FK2] FOREIGN KEY([Comment_ID])
REFERENCES [dbo].[COMMENT] ([Comment_ID])
GO
ALTER TABLE [dbo].[BONUS] CHECK CONSTRAINT [Bonus_FK2]
GO
ALTER TABLE [dbo].[BONUS]  WITH CHECK ADD  CONSTRAINT [Bonus_FK3] FOREIGN KEY([Exam_ID])
REFERENCES [dbo].[PAST_EXAM] ([Exam_ID])
GO
ALTER TABLE [dbo].[BONUS] CHECK CONSTRAINT [Bonus_FK3]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [Comment_FK1] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[COURSE] ([Course_ID])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [Comment_FK1]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [Comment_FK2] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[STUDENT] ([Student_ID])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [Comment_FK2]
GO
ALTER TABLE [dbo].[ENROLL]  WITH CHECK ADD  CONSTRAINT [Enroll_FK1] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[COURSE] ([Course_ID])
GO
ALTER TABLE [dbo].[ENROLL] CHECK CONSTRAINT [Enroll_FK1]
GO
ALTER TABLE [dbo].[PAST_EXAM]  WITH CHECK ADD  CONSTRAINT [Exam_FK1] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[COURSE] ([Course_ID])
GO
ALTER TABLE [dbo].[PAST_EXAM] CHECK CONSTRAINT [Exam_FK1]
GO
ALTER TABLE [dbo].[PAST_EXAM]  WITH CHECK ADD  CONSTRAINT [Exam_FK2] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[STUDENT] ([Student_ID])
GO
ALTER TABLE [dbo].[PAST_EXAM] CHECK CONSTRAINT [Exam_FK2]
GO
