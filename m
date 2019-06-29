Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E995AAC7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f9+1Q0L9eLetqBxG2tj/r6yh5EF9N0Sh9i6fpSVBXLY=; b=bXcgn80E9RmDZDH7LWc8kOjoqY
	RFi/dQ3a9hmdLYyYv/TnY5IDyy0tO96UB8Fwjz4nbFR4HFEduV8ZZgQkeBevS+mK1crWpvrQxIPJK
	AtQ5OAPxXzBj6iYTL8A/DoJPy4sYbbB6Wfu+4QtEg2VpM3vdwJQdklS3xyoF/OO6x8kRp0Eibtc8S
	vBPUwvQUpnUyilyAsPmNZNz50NjE2Jr3L8JGPJypoB1ILOawkZG+xk5Mxf5iouEAzj4L+A0ufsmpe
	eezIbOoJSx4iA1F9O2233jsXeTs4yYFO22F6lVu3OdKK64IJo8kVgCqE3nWJ++WExtZJobX6Y1HF6
	ih0dwrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCG6-0008QS-R5; Sat, 29 Jun 2019 12:15:10 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCFL-0008AN-0x; Sat, 29 Jun 2019 12:14:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810449;
 bh=DRr7lscebZ8wctMokVnVvWYIcPpsVGDYxVCVDlgab8Y=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Jf73JgXLpu8P1OqTc1ysI742Dp0LsmYDy3Yw/BJDEjcjOFA7ek79lVphxS7fIZHMU
 3C9WWmAXEGLjT8ube1N4xz4lFfbdoQddRtwap8ohiNb7K6MX7LBNKu0J3Dn4meChgy
 ZMDX/GSQyk8HoEyX6kQCge4wmXSt0ysomBP+gRB4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LfTC1-1iMsrB3eoL-00p35n; Sat, 29 Jun 2019 14:14:09 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 10/29] staging: bcm2835-camera: Fix multiple line
 dereference errors
Date: Sat, 29 Jun 2019 14:13:25 +0200
Message-Id: <1561810410-8829-11-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:mIp1k00YLYIRTQPgciwE7hDEy8fupJdyLOgpvG+ZfkBfWRhYiKK
 1B0oaaIJL/kqiFJmDpE0dfUdRMrRQgkbIKy/V7QTD2kAYIrp1T5WtP5HwVy2Ac3ZieJwJew
 BW5g8PtgmP7z0oumhPN+lOolZOvwijqvBIZVfPCFlcIx02Nmtq8+ghOSLMSigc+vDJU+ze5
 lwnIhbS+fMLP79hGE9Obg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Tym/dFtHE4A=:OinOAHIJJfCiT0JGpKiVS6
 7tMQHsZ5Lk2yhUAou1py6asMsBoRqXt2Of+eFscNozQFRxvm1gCdY6YBjrmL0dfvmq60fePy4
 DVV3XciQb5IDvNfMIexplpaSdN8y/M0m8hbZk5LbVn0HgER+0q1nDRiONl9/F3KFXJjFDFoW7
 KVkfe2+EX9hsLKaZ7L3e/gaup0SDnliYzIAN+6GwZuXc9V71D8cQN/FM4meEwlXcKALqJGywl
 NN2hPn/Cuz01SdC2UPIyMnjtbLb8sBEFoyB4CpfSacWKXgbWXy7lW77JBnRi0oSihfI+fHDMB
 +eAQSd+V+hn1WSaa3he0BetbwPvckNiaTUaq/KQxp5St68xIX30JSjPBzv4f7UARO7q9bgn1J
 3NCTzWXbLIDtwMGYFOC3H+G1miFr5hj52L6nNRegzw9HG/eXjHsWFCAs2FJWEoLq1xqeYeY1i
 5yqAbNqREkjY0HHmMpioayAfyMabSb1piZBTPoenQLEHLpFd4XCeaZSak4VeoD0cZkuE4/BBX
 aqg1rHN8nOy/ueiScBFKjC6Tiwd4prRK0UCi++vIeihqwY1ykSeeRt7t5p0Fi3s/GKEFFLHjq
 juaBpKiWp76hlzMAzfgicA7zF4Z2IU3ijLIsM/sdnUZ9CfrVaIg41I14ujMl4DjgMHTs4O8rs
 I7yw/yKC4K1r+Hanjzkuo00SLtFH/YJDwyixeDYuzTmdsm7dDYQtG8WXq3RorwjuAVsetHFU8
 vzCDBP/guic3CRX9pvQ0zvSI9XD+lK6pe0/ex36lpSyrUq6uX2Kv/zZXotUdbXuImtHP38Q8X
 qNP32Jnjl4TFiKznLHXnefLQ/Ea16d45853LHRTqtx+/gsjZ4pRgsW5A1x1BZiUAVVs5qbNK/
 ySla07DiMiLaQCeqHB6h8/9es1IRVodazoW4dp+AVWtvUPSmII76hm7zHj6CENETiI3Xmm+/2
 bDm1sYedAw/tm2tNDychX7iqVvZ/8xynwNNkXqkmjjr9NEZu+q8eyHWdAJZfovvSfmJ33lnnm
 R56EdO6dQoZAJDQUZ+jznUNM8Rs6zV0sUsT2XfplWhnx+flBC/y8D2gdTR/C/aR3ugF8nWMcb
 LugtI+f3Fh0tXU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051423_414355_8E7368F5 
X-CRM114-Status: UNSURE (   9.15  )
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

Fix checkpatch errors "Avoid multiple line dereference"

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c16a206..753c3cb 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1015,12 +1015,10 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		if (f->fmt.pix.width <= max_video_width &&
 		    f->fmt.pix.height <= max_video_height)
 			camera_port = port =
-			    &dev->component[COMP_CAMERA]->
-			    output[CAM_PORT_VIDEO];
+			    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO];
 		else
 			camera_port = port =
-			    &dev->component[COMP_CAMERA]->
-			    output[CAM_PORT_CAPTURE];
+			    &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE];
 		break;
 	case COMP_IMAGE_ENCODE:
 		encode_component = dev->component[COMP_IMAGE_ENCODE];
@@ -1211,9 +1209,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 						 port->current_buffer.size);
 					port->current_buffer.size =
 					    (f->fmt.pix.sizeimage <
-					     (100 << 10))
-					    ? (100 << 10)
-					    : f->fmt.pix.sizeimage;
+					     (100 << 10)) ?
+					    (100 << 10) : f->fmt.pix.sizeimage;
 				}
 				v4l2_dbg(1, bcm2835_v4l2_debug,
 					 &dev->v4l2_dev,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
