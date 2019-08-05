Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2247882823
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9NmCRkTGdJPve/Fu1OEh0L+WbARH53bJI8jiBgvNieg=; b=nmMDUz1b6eNKBxnnrMZBnRFOZu
	Zd2HCTL/j+cK8HRn/j7B+UpAP65LynrHFIp+2TMupdBkKinp3SPssjYkyL0ijffCajwiIHAAgpiP6
	ToBA4v9bqm0kvNzQzcga7+oKdGpB2UE6iE0+Qlot3OQOILiABzSbbkveWGTjagznqwm6zcnARXIjK
	k7E64XJsMpmW5W1rhQezXWm7gM/GKXRCpkA/5Yk50+7a2rvR23JPRVZArI4EexCm0/R9b6v768jAu
	lytGqz2kmnJZOQS/xHOzQJrXOVSJhLltG9jMU+2AOT6jdOcdhkcwhCYNSBiT0hHtaPLyl0vMixDTZ
	IiqmauDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humWw-00061p-Pq; Mon, 05 Aug 2019 23:36:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVp-0004u7-9W
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:34 +0000
Received: by mail-pg1-x542.google.com with SMTP id l21so40512187pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=80zZuvj+LjB7muc1lRSag1oD8GSQkupjbn/Cdl2Z1us=;
 b=m9+1Z16t7VCOSQhnktxeXV9tpgKBUk4i4dqvz1AUM2uLciXya2YHvUdXKQPg0nahrp
 Ls2DL2gNH8qovIXjYf3Ou4K404eivEwkhL8C+H1EjVAuTSOaDqxBoT63k1fy4l7adTzQ
 A8FZAf4UVV73lJCmwuyKdNwn+s/AHZiFq+Lfy7cgnR0uOjHpcX4BXip0NbwJaeDsALPC
 POF+Gbq9VZLBATGU2wh30Jfth38krYE1Tlw/3A1u8v02JkC6ye9uz57r4S+AHmfDMw/Q
 Sy8FW41P88uHNyoSkU+TtXlmHiDG1qLCBe2VO7hgLpTe/I1MZqUKNtKVgKmQSdu5Q+x8
 6Prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=80zZuvj+LjB7muc1lRSag1oD8GSQkupjbn/Cdl2Z1us=;
 b=Jm2QvmjakAY1PNEXDpxSZwGN3vY2YUdvnNIN9w2ax26naEGxhCSlqO0vtUcVftgsWk
 jfNbGaiKC3lweI8P0koORTDn9DSkHBAqYk6hUHR/3O3NPOSiA1Y6giwKLrs1GMGLzAKT
 U8cpRlhjZXU3Tnb33tfvE/nRd5dQzzYHH9WCZvmklsOs3CSyP2FBYlzqqYWVci1RI6Fv
 W8UjoYiVfCJ4xOEpvL92V3uCSyRNxrK66PNymNjocKb0JdP/6+ZrpadCdevXV4rqAejO
 upqkfHD51bFDgzO0/Dv3qJXewrzoXDUiFruF9QSdBwWzbyQ9LYKfb1s40/G7AVkTPbJ2
 Ca/Q==
X-Gm-Message-State: APjAAAUeEU/KzoGf58rX/u/ey9OZZmoT4OXyz7tbsohQTxhLB6FfYnMV
 YgZ5itcEcP9J6b4ZEY/avnw=
X-Google-Smtp-Source: APXvYqynuc9WSN7P4iFLSAjU9euUo/l2aSIhsQXrCHSGZFYLHfCOnZ0+BnlOVd8HxGgj63ZeqPGtRw==
X-Received: by 2002:aa7:9481:: with SMTP id z1mr560979pfk.92.1565048132680;
 Mon, 05 Aug 2019 16:35:32 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:32 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 15/22] media: imx7-media-csi: Create media links in bound
 notifier
Date: Mon,  5 Aug 2019 16:34:58 -0700
Message-Id: <20190805233505.21167-16-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163533_435198_A9764E99 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement a notifier bound op to register media links from the remote
sub-device's source pad(s) to the CSI sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx7-media-csi.c | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index a1c96c52a606..f71ac485f780 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -196,6 +196,11 @@ struct imx7_csi {
 	struct completion last_eof_completion;
 };
 
+static inline struct imx7_csi *notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct imx7_csi, notifier);
+}
+
 static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
 {
 	return readl(csi->regbase + offset);
@@ -1173,6 +1178,23 @@ static int imx7_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
 }
 
+static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				 struct v4l2_subdev *sd,
+				 struct v4l2_async_subdev *asd)
+{
+	struct imx7_csi *csi = notifier_to_dev(notifier);
+	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(csi->sd.dev),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
+	.bound = imx7_csi_notify_bound,
+};
+
 static int imx7_csi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1253,6 +1275,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
 
 	v4l2_async_notifier_init(&csi->notifier);
 
+	csi->notifier.ops = &imx7_csi_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
 						sizeof(struct v4l2_async_subdev),
 						NULL, 0,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
