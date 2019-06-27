Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9DE58C89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 23:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sJptNFSdvb3LiE/zs5J40c0gWanJKSM+Hc7mQTjSDcA=; b=eYejS8w5K2Rc1UW2CkHVrbYUDx
	Y3EW3L1QWT/WG2rmCxIUdh/EsjwYcaqxpZbGRsG5hzD80KsH/fGs9QYTU88/8hlsbstKQ31VTMIkZ
	fOn9lWDAuy0HS+urHJuv9QYisi+P7mf9cb3Z71JSe23ugHVUjNIxfGSURy8Ycqh8KOSZ+x2/QJUMx
	EyU8upGQGJKfm44oc5oRfKe3sgciRoxv01wOK6dn1+bqwDZK6tJT+4Aia1CNGYRSvS7A2FhFolJaV
	gnB2MS4K6wuUJKGSjRsq6i7q4qmwTic3ycJWVL9ft+j9grCnERBspO2SMuJPzGx9uIaRzFllf0eJf
	bBafE9oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgbff-0001tS-1I; Thu, 27 Jun 2019 21:11:07 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgbef-0000J2-7f; Thu, 27 Jun 2019 21:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561669792;
 bh=ttpEs1jpLEZYuVPaNhB5NUXKeu5GWnJTmxgKtFVsZ/E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gMEVQ0kdpgS4z/iWG9q+I1R0jN91fex3/I9NMhsIyLNA4DvAPg18uQHUmWA6lGMOU
 s1MuiUBiTtUHUm0epHAeNhyjQYbIoexjIsPugFdUieD3eF3YEO4RASFj191wx24Emx
 yH9hcc2lChBPMTOASr1FlgTOwrrczltPTsc9S+IA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MzyuS-1iSeG93GZq-00x4FN; Thu, 27 Jun 2019 23:09:51 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 31/31] staging: bcm2835-camera: Correct ctrl min/max/step/def
 to 64bit
Date: Thu, 27 Jun 2019 23:09:29 +0200
Message-Id: <1561669769-2498-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
References: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:r8Us6r3bVX5kevDTW9x6AqdZPb7soLP6SbFXLB/ALq4FGi16Z0q
 BLCqJ4aT6jj1Sc8pIg5fyywuHv53mbTvxkAV2npWu3TUECFUaIV9TKLny43YDpefXb7be9f
 X1wG6PmPL6UmMQWGqyOYwEiiphuxZQY1eIkEmvrgoS7pTp2x/aEZ/yZRKY6EsLz+5swW4Z9
 aq5gQcacPy3aT1BuWwRzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:thW8iTalx6U=:uzQ9Jy4TB1gBUkNwErgS5W
 cwJdOoSd4G5duDcnifUJPU2BNYupQQCBlw/PuXukgk+aJBjFtW+4JwbrfX4w24d+NeHt2XcAq
 at/9WbfLsnsPrI1eIy3unyLpGZYCW1qBzO6fC+rj4HchNYCz5V/IzCdV6m50D01KctS/sLOrU
 DLWlmFUKgT7b42kQpv8xhWqUsjIJZgALT3p8an15C1fLUmmxCwTDH8sYzgMWULCCTfxDHyxIb
 7BhT5sNquvvFFIPNP1tKPTfBsC/0NwmOSl9v/Ng+B3pUxJqY8EzTjBQfEO4D8CqpzGDjUDQcP
 z2oodm5POxmwSt7zrw0DlFT2KXe/1aUAD9Tw/xktmbroPwYy892Vj1zITsggBFh1YZUJAejTX
 5yOcXSTVJ30iNiqYsIqzgEsBp6FUSg/Us5SGbafzAcE2LAnXVN6/ZDQBd/QR0qNtwlhd6+RmS
 k9mbHjpWlHFlR5NRiL61JY/7Z1Tuh1mYjOkW/RTasYXeB23e/kMIcgu8A/aicjPnYES40R0sa
 PJzie+8QyS3Gk9CVXxKCjDa7AFFhWHEAIM8hdYTPK+9bX9gUQd3B6oLhGsrVDPL/O+kw1XUUA
 Y1aMEGSr4uup9z0WQFG9CF9pvdjE0D+4xqv7zbAIfiFNm84UGk97e2q1P29u7Tbc8yD4zOER9
 ZJWyyF1VwyJxQkzdsFXJ0xuy2vaxPRExlEzIUXZzV8yCSvoYszPzYRgLWOJ0Dm6WGJt0Hky+R
 UmCrKLZhlOhGviqoAQ7yopCmfe3IgXNiQQ84Mi55uwq7YfLr3+XLv78XbgvnL8OMbQbFa5jcG
 btDad1pIjyE9RA13JKAzWkrmrfTUvaZTmEQR7SbZFn0DeiYC514ij7qNXsMnmmkjqc3BR6KUw
 SqyQSvHOf5sxmOe45pXJu5Q3Yo6MUD6NbNN/h6fO2QBVly++S/97pgazpwwQi6w6k8GyvFnwn
 B3KwSrEiWCbaUiGxPS//Aeh6wpTdB44N+3MEddgpGCXuJQGTcTa+/S5/bAi40Y6IaELDIfxJu
 LxqgQkWrZBlNqd9QX+eCJauRUV+VUEPrwlicjZe+wNOSqoIog+qSTrNZM61yn2LZ9vFQwCt9Q
 Oi2ZGXaFIKxYwc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_141005_582466_C2F58BB1 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

The V4L2 control API was expanded to take 64 bit values in commit
0ba2aeb6dab (Apr 16 2014), but as this driver wasn't in the mainline
kernel at that point this was overlooked.

Update to use 64 bit values. This also fixes a couple of warnings
in 64 bit builds.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 848b14a..89786c2 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -78,10 +78,10 @@ struct bm2835_mmal_v4l2_ctrl {
 	/* control minimum value or
 	 * mask for MMAL_CONTROL_TYPE_STD_MENU
 	 */
-	s32 min;
-	s32 max; /* maximum value of control */
-	s32 def;  /* default value of control */
-	s32 step; /* step size of the control */
+	s64 min;
+	s64 max; /* maximum value of control */
+	s64 def;  /* default value of control */
+	u64 step; /* step size of the control */
 	const s64 *imenu; /* integer menu array */
 	u32 mmal_id; /* mmal parameter id */
 	bm2835_mmal_v4l2_ctrl_cb *setter;
@@ -1250,7 +1250,7 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,

 		case MMAL_CONTROL_TYPE_STD_MENU:
 		{
-			int mask = ctrl->min;
+			u64 mask = ctrl->min;

 			if (ctrl->id == V4L2_CID_SCENE_MODE) {
 				/* Special handling to work out the mask
@@ -1260,11 +1260,11 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				 */
 				int i;

-				mask = 1 << V4L2_SCENE_MODE_NONE;
+				mask = BIT(V4L2_SCENE_MODE_NONE);
 				for (i = 0;
 				     i < ARRAY_SIZE(scene_configs);
 				     i++) {
-					mask |= 1 << scene_configs[i].v4l2_scene;
+					mask |= BIT(scene_configs[i].v4l2_scene);
 				}
 				mask = ~mask;
 			}
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
