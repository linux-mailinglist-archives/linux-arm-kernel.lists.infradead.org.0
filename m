Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5009958A8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h8BaMb2DZEv1phYu74ePkfo98dsbvYrFkaDTZ26Wd24=; b=gc0tqL8/fEk7SlMcc3ZpGbaNPr
	tpatEcssqdBAQwjjVA7tts2SBfSxT9kNrQcNfG7+PhjOz+Yxnz9hYnyYB85L0bY+fPtTxf41U1k+n
	FuVKHwlHrxgOIf5BuLJa61lVJDzCD+epUZqVZfYDyaqPQhqMCzg6LHTMGXhyf3UviaJkoG7kGmaI3
	9T3vJX+i3M6vsSNZTWINI14KjEvTtgAOc2p2xI21WckMGFm8hY8V+sZlJF7zd8+l9NI5D3v4bu7VG
	7b8Gus9qq5sbZJzMXzN4mS26bw0sZvy6siuMr9VUR6HiNu43r/gCL83tl69QImu1AySbrzCky7lvD
	CYFo1isQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZeB-0006bm-0Y; Thu, 27 Jun 2019 19:01:27 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Re-Jh; Thu, 27 Jun 2019 18:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661812;
 bh=zPuVzIwG7oo6cIYjOb93FcXMzly3ELJRL6cmztU+WNQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QV+WwnWKRTyIriZCQ+RvGKG3Dk4Ujo/cTOatzw3+eObUwolddk6UFqRI68CCuZh68
 EtFRxZrNkce4RXtVono1p7emYHfCY3T/ZVLcZmNHKljxzEFAhD3U1qrS3fzUs50ZC4
 qXIBpl9yOiFL/bPKaX9CLwpUznVXkaxuJ3+QfOm0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LqQzp-1iBDQT0OLR-00e1fu; Thu, 27 Jun 2019 20:56:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 09/31] staging: bcm2835-camera: Fix spacing around operators
Date: Thu, 27 Jun 2019 20:56:06 +0200
Message-Id: <1561661788-22744-10-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:NT/Mec+cri+fykMHmyqvjkqXqGn5VJZ3ZEojfBcXBu9tYhF80KD
 cxSUBLNchH7OlDk2+f4Sxn7aEI/dT2OGsYchfsIO6TzjWFiRJ6og4GVj5dr/7QaVNBjbNW5
 ZBaTcThWYAqN24Xx4K5b0MwHVCliVoxHGD/G3Khnh9YIZ9VSMs/krXArkb+OYXpyu8EDWJL
 6HZCL8HnPLIaJAm+DpWbw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:X0KZXUA+KFQ=:FYJv15bP809Y5HZebAIlBR
 RpL5SdtC0AqGskMrZ53Qkt23k2Lnp18M96ruYUSDW2E+OhJvB1nB4tCdQ8Qc6Vz+wFjHc9Fmt
 7Yvoq32rqjUYg9s1t19fdHOfJEQHqwd2yio9p7Mx4rBB0lhesrhZnfxG162V2NZKOwJ5EFD6G
 yd/L30f/4p7b/Hij+c6T8+JfgnKUCvMdLubFhM1F6I2JUz539b7cqAGeiuJm9p/UcMxrEvGXm
 crEqRfTEGvaBK98Dhg4lhiAOPIGg+weksyBsqSRIpstUffnYBeaAQTXtlDaLi/CS7IjVyLY7R
 4LpmAdlcZChIbdD/nhD7WLflAtSUQjoPNhlkZxPhss821iX+eFQXSuwvd3rwWOAJ8eH3WBmJe
 qMfYUMUk000IsvmYBuPJlfCNIApp88IAd1VaojqvIFBaqGwtR/da8z84VeRE5c++IfPcoTbpH
 fx49obV8vpHNySJdDTPd+VScc+Eg+Ro50oI42w/BI6IYFF3wK9tMh2WoYZyxDcKhAhXxvjWgF
 PQeEJ/qwpc9JaTkZL8AwfuBAEL2czSvUVeDrvSyM2+X9sct0PcEOKZbjAMC3bJw9+a2xQjoRQ
 9zqpZgGAq/zhzkqhgxBKBU9ojET1fIEGmitEA28qnqiKwfyn2b0sGLJcwD1i7MlCs2GcKyLOs
 5BpqGdcnqL6ZwVoxcnoJmgcVhxyKgKSoXVYg0VPxalDIMjKYxKOdTLGEo/hrpOS7xw1bT6s/u
 iT6P5HQJLKdAHGx2N/8AGzSeGfbIXT+sKMnbj6HfHm5leHmViWVGkGbx0NWL9URTzMBAf+YUq
 P5Jcn1TpwmmN53XeQugyxKY9P4FKHQ3HEWmoV+lNBu2F1MQ8951HRCP82Xsq3/bHpYOREnNzl
 sw18VKXn8KKMQz+z0BAxXiR+af0zmhSzxCnQQ6rwXH74pKRwUWWoNpEC3NA34gmG/2Ytt854n
 4FH7TFJF58OtMhAk1vPlnbFOIrXNa1uLrxVdpXiBPbw2dzs+iQtHKIVRrs2HnRnEtbgXjey/J
 wnNq++idhSp9e2egKIthRjboJrvvvPssXEZcdF6vwfgei3cnaWYA7VqhzoSnWsYOGHQ6ayWeX
 riTNMArq39kUkY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_936651_16D6451D 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
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
