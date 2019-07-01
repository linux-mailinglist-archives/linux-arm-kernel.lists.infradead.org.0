Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2013E56E08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qjzvJkBweFVGZWCHd7cHawZMDpcLTzSf2CjoVEIv+0Q=; b=eu5
	ABKzcpImxwkRcYCdHG/4eTgYM8nrpBaJqeKW2TNWEhNUjvnfU8TgkbD4nsIXkBXSb/riyKYzEcGJo
	91zXHR6clQ6yf7eRtaHSX9IMfiwGPTC2YQvr6vQ+CrVJs+xDhlH/1V1+9myF4ySIX+mLOnm+w3pgi
	j1JeP7vd7fpr8iyG29kaFoDH7FdC5Sw66TINVyaE5igT9yKcrFoAITGfRZevp1dd3uq5EKxs/+oo3
	9BvpwHZ3Bdb+bWzFc9kS4udjL8V4+u7aesLq8tOOPLZab+W8ZW1iq4PHENzdHblrJyrK/2pGEECPx
	bVAV7MIHqms4tvAAyXSlPai0wU/j12A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgAAV-00030G-Ka; Wed, 26 Jun 2019 15:49:07 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgAAH-0002yg-2E; Wed, 26 Jun 2019 15:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561564113;
 bh=mWLTbdtxGfwZ13vnfxlQDfv6DzwTGycBEng3zNk/XaE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=KYHDR8XZmzxft+7qC8J8cyQ71BSi6JkTsAhWvd+vK2f+YjWqjT42uTfrjNGCcQfdV
 Z9gkAVPhUJWqXcu/GipMjVfx/QmxN65eJI1oHCOZ/vhkhzCqY9CuiJjHWnxF6jmydK
 5QSqYnKAOWM3NXmd6pWkd6wlKwIFV9zX8+x8R0gE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx102 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LyS5K-1ibrK32soI-015u60; Wed, 26 Jun 2019 17:48:33 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH V2] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
Date: Wed, 26 Jun 2019 17:48:11 +0200
Message-Id: <1561564091-14248-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:oGZaaF0VyX9aU1B2KlshIgSdbA6j0aZLN7PhhBatNb+3vHD/bim
 IAE1eOdpYqQunHD6Pg0lTq7WJELowblFluMBHzPg8LdD02e6QUAOnsxpP9+ZsegmN4310bJ
 qbWyOk73ZUf0L+ErExAilg9x9ygGjCdTujEDRrk0vloZc12lmdHMEA8VQs/4HDu6WGeOoac
 M59q+7daHAsSTIgJrRUuA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+5QZJxEbxD4=:fxpwesVoxYf61efHxmcTKK
 BddiAtw8+v4csO9cTNV4qSFAebPmgWlPv8KyLXPbOQdcjOl72FUcevKvhsznxi/uv5leFw9uX
 Sr99W78EPj3EmJmQT1KZ8GMPWcB/hQa1h/t4bhjHByFu4VQ2xaIdpsJfZlFcR2poK1E6dEFT6
 jHlzWYjt2kP7anvsjMJvdSVILf9+ei6ysWz1aaMCKFLhxNUNmXH9onDdO8WOanGVr15zb+cVv
 N4ecxzj0SonMoADsz1UJqgwb8Pi5/me809KQd8pQ/GhKDeLPNwQPXJMMhRbyPgmg5bJVCRUgp
 MaMwDNiIn3qPl6t4jPx9uiSL5n47PAyt6vVlyufqp1lOr4EqgQFWp+2hknWJYJ8hzkBLgXrdZ
 gfNGAtlqG9MdHsJds/KNtpjNvF3iCuOWcIyBEGAYKZL78LQggOcIFSlHn+KZ9JU2t9jGJHKF7
 0E7pkZuWJIQjaWnt7WTAiO/Pv3tNhKukGVQXG7OTxkwS3+BsXI+vBB+xtOP+syI1QFkP3h+5c
 9HVQLB7CA73bkyul1AwmrHNV+OqITaTatTPFXsDojt54X59pz2G3SkQI5z8JZ2aq40Z3vwI6u
 lyMT+gPPFDx2aNm460FX8Gm+2BisA5xrkpjxb4KIDZvTRDCexntK3cadXRyX7GZQWc6poIcVf
 atWNWiKYv6KN6vA+lc2Ffl5FM8p7BFtkX4GA0GZ/XhMTvCqDtgxBdQ4sevKJ4riNMAvRuswrM
 BUrlhaRg3ElFPF3x+S73QaRmNmtv34L7puWW57WxrkKKSJS7Td0oZd1ktx6eAW1CA+I8RmOn3
 A+rcm/ZfBf00TXqxsq3/t9h4mL3cP4KhBAxtyYg4z4yjuWt8AmXR6GfvTwCxk+qioygsV6KyY
 6yh532oUizARrL8gUwZBauRwgH5rk7e2BWINY86y8vr3nSBzocuIFAekTK42reIsJ+qq9OSD5
 IcQroenV1LixMtStvb6CiyHMHMqpxb+Buu+0bdl5qjKcUB4JxBA6KWMPC6Orj+Yf/GKaQlk+k
 VsgZBuZAUHsZFuULBdIsUg//MyQJ0q/13WL31BSqJX9SAMgHFgsGeDo4yAg4YSF2Mbh1EgZu7
 a3+bklRX7SG3Ts=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_084853_443115_5EF1DFC7 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
We cannot do this because of a bug in the firmware, which breaks probing
of bcm2835-camera:

    bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
    Cleanup: Destroy video encoder
    Cleanup: Destroy image encoder
    Cleanup: Destroy video render
    Cleanup: Destroy camera
    bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
    bcm2835-camera: probe of bcm2835-camera failed with error -3

So restore the old behavior, add an explaining comment and a debug message
to verify that the bug has been fixed in firmware.

Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 .../staging/vc04_services/bcm2835-camera/controls.c   | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

Changes in V2:
- add an explaining comment as suggest by Dan and Dave
- add a debug message to verify the firmware behavior

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index d60e378..c251164 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -604,15 +604,28 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
 			    struct v4l2_ctrl *ctrl,
 			    const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
 {
+	int ret;
 	struct vchiq_mmal_port *encoder_out;

 	dev->capture.encode_bitrate = ctrl->val;

 	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];

-	return vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					     mmal_ctrl->mmal_id, &ctrl->val,
-					     sizeof(ctrl->val));
+	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
+					    mmal_ctrl->mmal_id, &ctrl->val,
+					    sizeof(ctrl->val));
+
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "%s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\n",
+		 __func__, mmal_ctrl, ctrl->id, ctrl->val, ret,
+		 (ret == 0 ? 0 : -EINVAL));
+
+	/*
+	 * Older firmware versions (pre July 2019) have a bug in handling
+	 * MMAL_PARAMETER_VIDEO_BIT_RATE that result in the call
+	 * returning -MMAL_MSG_STATUS_EINVAL. So ignore errors from this call.
+	 */
+	return 0;
 }

 static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
