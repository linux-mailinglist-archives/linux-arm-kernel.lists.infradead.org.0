Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE4458A97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qVWNM39UXjHpN2xLvzEz1c72KtPMx2crMDvKNcjoJYE=; b=rOIb+rYmINLWdh/rDYb9zwFKZM
	h8HXO+cTxbohzpgbf4V8BjV+ChVPKQlHmwfW6yMznX0400BBMmFup5a+hDDMYXEyuT60LpFNQHAvw
	OmmEejXCyACkDBiSVEU6VKqERiDGzR/Kr/wr31zo0npV6lxHCURYbcxAt8ssgzY1XaQLA573zjtmQ
	hwLBZXcxqqu97fM1RG7LD6yP3Cj/k9oCXQXLVU8X5a/rWzVDmFpNcAKtJD10W3Vs1+kwXRVH9YnwH
	bNsVYt9Sdmw8AMb5JMQKP1nnjGeQeDgA0e5DJMg6L09UthvRtamVa62EZWCAoxZ79ehHu7y4caSxc
	/SLfkufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZfp-0007yp-En; Thu, 27 Jun 2019 19:03:09 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002S0-TR; Thu, 27 Jun 2019 18:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661809;
 bh=lZmOeAftlgqo1vdHP3EjpsXSMad709JwC3ovNFUjiwQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YlYRsrJx3moT3XGmZzynd1klvf22rerTxmigVrvdXQWeUPm0hCd/v2PaVgW3NzYLe
 s2qmVG6OPIS/o3vh+X6K4xiE8QVzr+RzviwTjTZYPAlsXYEBWeEGKgKfEuxyHtldvU
 DWJc6xDjkUpBtpljK/+sU26VeQzlFWdQtWaGur5k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M9ra4-1hrcBl0tDc-00B3Zb; Thu, 27 Jun 2019 20:56:49 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 02/31] staging: bcm2835-camera: Check the error for
 REPEAT_SEQ_HEADER
Date: Thu, 27 Jun 2019 20:55:59 +0200
Message-Id: <1561661788-22744-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:xRoSxi74f4luJ+Wk+0kZTsX3xHfSkTrMrkgOD1IOPvxzVJjunLe
 uZ+aAlxUHYIg6CvrOviaV/iIGAl9mLUUr3noPuL5j2LLEUogEle+eM280eSTHoYX0PQE3O4
 K1AViH65lOMhThZSKZA5BRSUzVHQtv4k4wCA5YvrJsvrbd+0urJdyCWB61pL8szP6DZ/NFx
 ZrjMX6kZR6umiAFEOP7Eg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L8WFhcwKCGs=:Ys1zgqTPTO+npU8LQsHmfC
 1d48g2/7lNUJALcj5MPVIlqzwiV0dJcDISjgjozwjyoJcPdkJ602j+CUQ8DxPRl/VO9j0XPSB
 tOxdrTQK+Irfqkx1cWFMXNB4H3Bjam6DVLxPD8N4AKp8OY6nlbjzx6gAKMc9Cf6iEm4n2Vckk
 dDiiLeXYnhaphVOEzjOA5WxGtPSpuROzohdTRHE69Y8BxDvQ/5PVnT8md8hYg2jI1hXBgOQU3
 RMRDVeDbCvZ3lWHNgLGKc9xoVckFEojTXTpe++Kww0L93NhtGCCzEcDx2BeHZ2xDVIAkk+NAu
 4JTJhHFKr7YzJFJrk2uoWop3R4E/YlZP18tKKx7VFfOM3D4I4yTsOK8qM04RbZ30dutE4AWww
 LNtrCz+qqYszluUR4WkjXnqtGkk4j/LzOqW4SpI5DFECQ/e7++x22lPJorQpRI3Sy5u32KN+b
 dlbts5kFLZMr6wsVG3Y3+KLxgHk3pP7VEyDCHKf2tLpZ2NC2QmZteTqS0mpuhbju0z9RyRSW9
 gFY8h5Jl1wYWHXWB8dMYONiU6foQbUkbjIm0ioO+G0q7+swx8rKdsIL9ZmZOL+zMbqHXlxVZ+
 UNUkpq34PifnperGy9ijc9nX1I07ZsjuGWV9E2NsX8Y4EBf8Pt/D2DCUgiWvVCdMcaeIb68ek
 FLn0R4kBlMSoRFk38lNN8AKEeO2MLvqLMsN4/QJZQ6B+iKhRFFjJ1JRmAPcHiWCrIUfVm/GYB
 CzL+oUEq+eu7Di9KxG0C3DqS4H1DIbIQydU7BrVmabeESvALAuwFD4MszV8lXMOkKRCcrhu7d
 K9iV5xY3TA/0N9ohy1x4z5+xN0UBfLbEanZXKIxn8MAH7TxcLTLb8/Yng3mFiVSPPkUhtuk85
 hp/g6vjkKFtF4QjM2I+/3D2gK5jNmeQtXooSfaxfFi0R3stSC569J8GIHS8TwhNZx1m8kkV0d
 SRTnsJ8FMdJAi6Udk7s99uqNGT7t8wW2bp71FkQ6tEidrnnPB1D9+TRJlxX3L1BZEr5089LJv
 YRxTp5ARi7MSfalo6ZbNbXawbN7fyYOD7Fe/xbJAycKkP4mMrSZehY9Kj+Eu0ylxvMvLQJGVy
 +ssb39vGj+6PBo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115703_240627_6D852821 
X-CRM114-Status: GOOD (  10.09  )
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

When handling for V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER was added
the firmware would reject the setting if H264 hadn't already been
selected. This was fixed in the firmware at that point, but to
enable backwards compatibility the returned error was ignored.

That was Dec 2013, so the chances of having a firmware that still
has that issue is so close to zero that the workaround can be
removed.

Link: https://github.com/raspberrypi/linux/pull/2782/
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index c251164..133aa6e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1124,7 +1124,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 1, NULL,
 		MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
 		ctrl_set_video_encode_param_output,
-		true	/* Errors ignored as requires latest firmware to work */
+		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
