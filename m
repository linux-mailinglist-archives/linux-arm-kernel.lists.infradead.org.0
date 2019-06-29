Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B635AAD7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RJ+2+WoZPhC9DTEngjzLt9ltMeB7HdNUXuxZ+qN1LR0=; b=Q9gekf0AXGbRjYgtZKtjqdTo+9
	DA8IzlnQalXhY0hqOP4fFxcczxk+UqH2ozsIUQyKyGKgN35jSVre0pqAWhIlwFlM/XIOlE2QJmF7Y
	GWhoEKy+/JIYnfHRKXFqpWc1oasaLZxTLP/zFSw5KtkaNqtIvIWasoIzGu3Wn95///ES8uOrueI+a
	zx0t3M1iceZ8I4IgynbV7ET6kXa0XTDq8tFFf8++6FnfTzCAcBV4DvHFUh/b3QMe8WCoF9JF6WoEj
	/kGZQ8KkDQUl+3qqzhMaAZjRCxgN7BGI0WbdC2wJ2w9uyoK2rxjyvwvQWM57sJ7mmWrmmcdI+8T4H
	tSCwB3tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCLj-0005NP-9w; Sat, 29 Jun 2019 12:20:59 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCKe-0003cE-7T
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 12:19:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810790;
 bh=sawqClbmwzP8gOS82jsaIvyieT/CKO+qLtFgq4B5t5w=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BZxXCtepAZS1m1LCs6jSwauClOFGmrga73cxa8Aae75yt3BrnNjLzhNl8+4/HmjXW
 SGIru2YvaimnXNAzPpAywqmI0LKoQ3W/szxJ0HjRfeNUCq3rJMcKI/BK/BF38vLj07
 bnbLsIQ3LFSYcFyrkGgwzK3Z3H1GrQZErrJPE4C0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MMkgl-1hd3dw48TP-008WkP; Sat, 29 Jun 2019 14:14:08 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 08/29] staging: bcm2835-camera: Fix spacing around operators
Date: Sat, 29 Jun 2019 14:13:23 +0200
Message-Id: <1561810410-8829-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:uZlFCPIvwSrwoy1+6SmtOF/rdR78jw0SmsjXI8sYKvrfE3z+oes
 Xj/6YtX/idHia93ZrvoMnttlVTmSUt1DBmvmLpFN7ga4dGlwlkhehguKQ7m9FHDyEXxJSqz
 +LGBlbQ+DlJ3vdBF2L4pwIu6iohCgU5mhXV9IJx3DaucGCyDYVQOxrb5gxtK/P5xCLx1O+/
 biVMshJADUxXkuEAQWNHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5bv0E9Fj+n8=:kGvgDtW5oNgqv2hXOhxvT8
 xRFFjTbTfVZFdYkn36huZOt9FWY7wwFhq0bUtnUWb99RYHyNHbyD2UTiKmA50d8O9FR3a7WtU
 spxS4fHYZ9dnC8tlWB4AJbh93eQQGh8V6E02CPidT3hPQssEgRMTOJcwCM5lyy12T1o4kVxOf
 0qzDvV2QsMP/ZdkPrhYp4wevyt80xHQKCGKFJSoW5Mf2k5BTySZy33ZeAp2J8PJDmd7xJrPQH
 eFr4iaGgEI27zTE0LWZZvdHF1j0ts8FqVHT//gs1kcYIbAn5UZiGI/yVh76XKwJldaEmxiTaX
 dZ3kOMBU/OP9UnveiPuyg8ulxzp6d7/Jb1+cHChPE1DgC0O6EoJj4pLxJtSYmmIkHLOW0ar+U
 Ol7KGywkITyXXg5l86Zdz7jhsNI5ES11nH2NFSPs5hcdO//AqynlmiIKeoffiRHA8eHFBUJUH
 jrvz27l2kD3CkwFDAT6DTaLnL5MZcJTbjY86TC0DqMqmITP8Pe/J4+hu5y26yl0iEp+EYel4W
 mlsIlXMP8AqLbMe9vGKGWk3P16Oys7wLneHZDMrq+0wpmRQQ4hJXM+DGvJJlG3KH+Y7X11NX5
 oOJclEYmkh+HAXWifz5WjyYk0BActf9Vui6SeZVrbVPjIKJjE/8wI0LJ41nS16wlK5se9DFJL
 NJJYgqGXj9ORdOlc3Ig8x+Owpdox8VMFRwA/XtY9Z5iVl5D7GSNCY4tPH9ds1+RK5fsuvpqWu
 p1r2D9mBu/9nwb9uUYLVagLltwXIytmYGJ3ZAwapVipp87aEsV058NIBpyG37XH96OwVmACP/
 kIOeL0vqfL45CnIvRYazpfLfiN/Jl9seYFiOHdLHaLhgD3yVezMFAIQlkCJVNuj4hTp3Zl7cg
 fzdYonFwghzSkMVLXo0oGvhWuW2fuS6FDCJSYub/mQtgk23TXTuN9P3X9g8XsY89pZwdlJK4L
 9SWB6fGTzPofyIFjLyfVnqOKH4hLE5vP+mxflXGn6XcvWIc6qGG3OlFcClRjPKilWyyHR20qn
 xymykVFScDl+dMrPc+w6DFaoFBIy9l+rIt0QWp2WdFSiLwRMG78ql5gS8x/uTdanoyDHuh9iJ
 jd0QyS9kpPdogs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051952_563550_0944ECA3 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Fix checkpatch warnings over spaces around operators.
Many were around operations that can be replaced with the
BIT(x) macro, so replace with that where appropriate.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/controls.c        | 32 +++++++++++-----------
 .../vc04_services/bcm2835-camera/mmal-msg.h        |  3 +-
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 12 ++++----
 3 files changed, 24 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index b142130..e79e7cd 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1130,10 +1130,10 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
 		MMAL_CONTROL_TYPE_STD_MENU,
-		~((1<<V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE) |
-			(1<<V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE) |
-			(1<<V4L2_MPEG_VIDEO_H264_PROFILE_MAIN) |
-			(1<<V4L2_MPEG_VIDEO_H264_PROFILE_HIGH)),
+		~(BIT(V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE) |
+		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE) |
+		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_MAIN) |
+		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_HIGH)),
 		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
 		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
@@ -1142,18 +1142,18 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_LEVEL, MMAL_CONTROL_TYPE_STD_MENU,
-		~((1<<V4L2_MPEG_VIDEO_H264_LEVEL_1_0) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_1B) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_1_1) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_1_2) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_1_3) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_2_0) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_2_1) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_2_2) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_3_0) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_3_1) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_3_2) |
-			(1<<V4L2_MPEG_VIDEO_H264_LEVEL_4_0)),
+		~(BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_0) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1B) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_1) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_2) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_3) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_0) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_1) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_2) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_0) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_1) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_2) |
+		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_0)),
 		V4L2_MPEG_VIDEO_H264_LEVEL_4_0,
 		V4L2_MPEG_VIDEO_H264_LEVEL_4_0, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index f165ddf..8e0aee8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -223,7 +223,8 @@ struct mmal_msg_port_action_reply {
 #define MMAL_BUFFER_HEADER_FLAG_FRAME_END              BIT(2)
 /* Signals that the current payload contains only complete frames (>1) */
 #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
-	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
+	(MMAL_BUFFER_HEADER_FLAG_FRAME_START | \
+	 MMAL_BUFFER_HEADER_FLAG_FRAME_END)
 /* Signals that the current payload is a keyframe (i.e. self decodable) */
 #define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               BIT(3)
 /*
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index 96e987d..6d21594 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -23,17 +23,17 @@
 #define __MMAL_PARAMETERS_H

 /** Common parameter ID group, used with many types of component. */
-#define MMAL_PARAMETER_GROUP_COMMON            (0<<16)
+#define MMAL_PARAMETER_GROUP_COMMON            (0 << 16)
 /** Camera-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_CAMERA            (1<<16)
+#define MMAL_PARAMETER_GROUP_CAMERA            (1 << 16)
 /** Video-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_VIDEO             (2<<16)
+#define MMAL_PARAMETER_GROUP_VIDEO             (2 << 16)
 /** Audio-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_AUDIO             (3<<16)
+#define MMAL_PARAMETER_GROUP_AUDIO             (3 << 16)
 /** Clock-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_CLOCK             (4<<16)
+#define MMAL_PARAMETER_GROUP_CLOCK             (4 << 16)
 /** Miracast-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_MIRACAST       (5<<16)
+#define MMAL_PARAMETER_GROUP_MIRACAST       (5 << 16)

 /* Common parameters */
 enum mmal_parameter_common_type {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
