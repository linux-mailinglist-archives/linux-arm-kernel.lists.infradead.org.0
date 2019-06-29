Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DE95AB1D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cxd35hRWUpEirQAt/19ZNHnjnEWJ7Ps7EZ9wDj1X2zc=; b=AyEQtTsQaQKfKOcec1Sfk+5Cud
	Q7TWursA4Z3c5EIR/04HFwpIFji9zxawUuG6ILHg7tSFrwb6brCeI73fzSBsFHtHdOPbyKbTUOob9
	hH0jKuQVg1/IxVqiG/s4xq8UkYLDjlZxVpOnsTkqhlrXhWiZNYkNs+sVlhGW9xV2k+0zwWNCVE+0c
	fjYd6zbBhCh7v9V5j8PjUZOJ/UENNKqqYG3hVanRLf1x8qw75s5s/1PVVs39C774ym/wlL5icLAtL
	5GqQBSKBFxAKmuZEprKRdDoNZS/JlKI66F0x95BmQBQNbxNO/rPp2FY1fdeO5Bw/45LBfIh67QQmV
	KMPfiKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCpE-0000hi-0Z; Sat, 29 Jun 2019 12:51:28 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCn1-0006He-Jx; Sat, 29 Jun 2019 12:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812540;
 bh=y9m97Wf190flRY/FkjssAEHMINPsT0DgpJSYt7gV5jk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SBVowYsxUrIPB3LmgQtaC4QKvIlrowGhIoEbXoPWy6xP+XFd9FkyxztiE5HZqWsQf
 IyC9TfMSrOEzzMbhYlwrgMcLx5oROxhYByeFO9D83eHK4/4onMwzSKQmmBk+VRSKhR
 ofnEcQ1r5bPDNYQKYIEIjKsR/j3LB0HjeOMmOJSI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MYNNy-1i2bHC2lRy-00VRcW; Sat, 29 Jun 2019 14:49:00 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 22/29] staging: bcm2835-camera: Use enums for max value in
 controls
Date: Sat, 29 Jun 2019 14:48:29 +0200
Message-Id: <1561812516-9087-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:xAm5i4guJHEE2OzWyqtVW+g+GY6h9CQ5fCfoYk7BWskckUgggKA
 1gd/Z1LbxBlTvCDkpeF6xhQPAlQ1P7AqRcK48LHPZQHWlFDjnwdvNLZAUwKuAfjxHn3/MTl
 +vpkibuOvRWp23BvxnmSzB1+07VJWyGfF0t2sv1XG/U5XyN1/Hi1hSCrCvPRkvAT2anI77O
 3fy0Gn5aij+7gRm47P5hQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nlycN+a7BJ4=:flC5BhW5HIdydHoAOBxPCx
 dQBMzEVxz8+He0UUfVqO+C+jpjxqwIjtUX9eZrOywqBteseMHyK5Af6APhFWDx15Z8nDYdT99
 t4lj45U7ihpK3LqtHpJNeND76uU0WebYrzs+xbbQnpqs4VJ+aMe5lznzlbfmLcksdMziEXauQ
 zMzapiyIy5y4IELHMQBpTvKK0d3nGK2+3agUD/72qBkAC123tdYBht8FzMOAxQt0ZgZNsdPnO
 q16KGStT8zfJv/wumfM/9bYwTGS4nKWTfReEKORFCJu6z8fqn/gLZUd5XOTBoajtd0NpVIbcJ
 uN9ON0/wCqsLfwmtTidPLoJoUl7XtVFJty52MSmneYGlmC2o0NuU+WH77y2lC+PN29yd9Ftfb
 W4vzCVJY7URVnbWr1pypRbegj5IOz/cx+NGMOHvAIDKcxPSXywSxvLbrD1l4TcfoyJJWd6cn8
 7sUnJAEguAxsrK1Kx3b6UJIXP5Rs+OFMf1uENbJdpv9zOvWUPG8NQx9nUFJIIVfEXKHsaKwdV
 cU0dTcWcNhk7qC/xLOs4Cmys0T47kbyyZMK2i7dOsyh3DfpOl3gKWUencvM5WDJA5krSNydGJ
 2XCfXpTXg8KKan9ZJlNbZeeb+EWlIkmG1f87pGPlBnVp9vGcYR4IJaEuREVg3CV9P+ihF2YQu
 WzPC9OlDgRaNpznPwOyYE/QPv+xUh+V9ZUOjIIldMTPg4KDlEc1depMRf1p6bAwUeaNsQbd3r
 FA2iFSMPKby/6r65KVe5oZFnFUmh4wejxB3MjLCXhyYuur6IC6U/WOEfSWn3MGWl5nsuEq/Vo
 zGkHHSql3LncDosGvAmqMdpqiemAeUOs/N3gL8T7RH56SYq3haUQ6DKQYZiD+cabMhj+tVhyR
 H5zKLX8qxNojG5H2QsmA9gmEivlR+OPk6wmxepGKWiCclIa8cUxddznBYHrMBbRv70Xs3zOfI
 Fnc2xzkutT3WRq21T2d5hkZnmx4bn5hpTRsNRrf4Rt51sHYQ4/lK6XYUJfzM58ulNi+FGYFqE
 n1cOTUN8R3JY45+6FfRfIfCg18LcMwPN7UFaRYS4IgbenYh7E3VIPx0nvP+TbeAhdnZtyKdB4
 AiJY+ypyhvJEnA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_054911_983944_1B44B7C0 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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

Controls of type MMAL_CONTROL_TYPE_STD_MENU call v4l2_ctrl_new_std_menu
with a max value and a mask. The max value is one of the defined
values for the control, however in the config array there are several
entries where raw numbers have been used instead. Replace these
with the appropriate enum.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/controls.c        | 37 ++++++++--------------
 1 file changed, 13 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index bc2f3f4..038b9b9 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -58,19 +58,6 @@ static const u32 iso_values[] = {
 	0, 100, 200, 400, 800,
 };

-static const s64 mains_freq_qmenu[] = {
-	V4L2_CID_POWER_LINE_FREQUENCY_DISABLED,
-	V4L2_CID_POWER_LINE_FREQUENCY_50HZ,
-	V4L2_CID_POWER_LINE_FREQUENCY_60HZ,
-	V4L2_CID_POWER_LINE_FREQUENCY_AUTO
-};
-
-/* Supported video encode modes */
-static const s64 bitrate_mode_qmenu[] = {
-	(s64)V4L2_MPEG_VIDEO_BITRATE_MODE_VBR,
-	(s64)V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
-};
-
 enum bm2835_mmal_ctrl_type {
 	MMAL_CONTROL_TYPE_STD,
 	MMAL_CONTROL_TYPE_STD_MENU,
@@ -972,8 +959,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_ISO_SENSITIVITY_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		0, 1, V4L2_ISO_SENSITIVITY_AUTO, 1, NULL,
-		MMAL_PARAMETER_ISO,
+		0, V4L2_ISO_SENSITIVITY_AUTO, V4L2_ISO_SENSITIVITY_AUTO, 1,
+		NULL, MMAL_PARAMETER_ISO,
 		ctrl_set_iso,
 		false
 	},
@@ -990,8 +977,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
  */
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		~0x03, 3, V4L2_EXPOSURE_AUTO, 0, NULL,
-		MMAL_PARAMETER_EXPOSURE_MODE,
+		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
+		NULL, MMAL_PARAMETER_EXPOSURE_MODE,
 		ctrl_set_exposure,
 		false
 	},
@@ -1027,7 +1014,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		V4L2_CID_EXPOSURE_METERING,
 		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x7, 2, V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
+		~0x7, V4L2_EXPOSURE_METERING_SPOT,
+		V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
 		MMAL_PARAMETER_EXP_METERING_MODE,
 		ctrl_set_metering_mode,
 		false
@@ -1035,7 +1023,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
 		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x3ff, 9, V4L2_WHITE_BALANCE_AUTO, 0, NULL,
+		~0x3ff, V4L2_WHITE_BALANCE_SHADE, V4L2_WHITE_BALANCE_AUTO, 0,
+		NULL,
 		MMAL_PARAMETER_AWB_MODE,
 		ctrl_set_awb_mode,
 		false
@@ -1056,7 +1045,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_COLORFX, MMAL_CONTROL_TYPE_STD_MENU,
-		0, 15, V4L2_COLORFX_NONE, 0, NULL,
+		0, V4L2_COLORFX_SET_CBCR, V4L2_COLORFX_NONE, 0, NULL,
 		MMAL_PARAMETER_IMAGE_EFFECT,
 		ctrl_set_image_effect,
 		false
@@ -1091,8 +1080,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_BITRATE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		0, ARRAY_SIZE(bitrate_mode_qmenu) - 1,
-		0, 0, bitrate_mode_qmenu,
+		0, V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
+		0, 0, NULL,
 		MMAL_PARAMETER_RATECONTROL,
 		ctrl_set_bitrate_mode,
 		false
@@ -1114,8 +1103,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_POWER_LINE_FREQUENCY, MMAL_CONTROL_TYPE_STD_MENU,
-		0, ARRAY_SIZE(mains_freq_qmenu) - 1,
-		1, 1, mains_freq_qmenu,
+		0, V4L2_CID_POWER_LINE_FREQUENCY_AUTO,
+		1, 1, NULL,
 		MMAL_PARAMETER_FLICKER_AVOID,
 		ctrl_set_flicker_avoidance,
 		false
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
