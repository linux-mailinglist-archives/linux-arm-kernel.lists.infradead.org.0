Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E06182818
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Igk6SpkyvJRn5exEGw1cahxv+BfRV59IlEapx99GxTo=; b=SzZrrky6pz18sri56UsmGXRqNb
	tdSwgTs5CjI9a0Ub5TVTtABp5VP7jHvEVCiAayTHU+d589ge2ZQqVILKKo1brySAhRDNaXLjzbZMz
	8S+thkkK+ABdX7JBPXpqWMJ56JyVGvMQa2/m4eVWEkhYt7RibmYQ4vpEd4Ay+zUSzQKQ/B/llsraj
	j52lZW7swcpSwEMIZhx4qEOxImUNje/ARyjJPd1krsq7AzrObVc4vendzLIVG4Rd7eQdYblcwrTzb
	Bqm0dz0PGYpWGDcLMi6NTRekIq8EVy5J4Vr2Ip/oJnYrXDfJPYqbsGGAWGlFoCElNQgHHYZmQFhAr
	S+IVKcyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humWX-0005XK-HF; Mon, 05 Aug 2019 23:36:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVm-0004qI-QP
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id o13so40498503pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fq0ktF/hBsnVFU7IozmhPFjtW2ydpZCCyFzM6I7LgOw=;
 b=X1OFNeqhQV0f90G9Q7+G/pt7EmUwrtUkbHW/9JOGxoTbmYiXMk1Gj8dkdpGlNnMIGU
 wlOOqDsjYDIbpNdCyuIysrh8YqS3FTQHYSEsfxu6VJSZV5FBXrd9ZVMZkzOSiUR3yA7q
 EAktoUHQQMN5VidRCbgrtsBJqlD4u9AH8Dm6kJwWq5rluZLYfKVE6zRJIScYE3HNRgY2
 xXDcJi1j75wi81PTvQQXY3CRCCF1fL1MkxWwNbdulab2B9AxUf4/X8cRgu5k9ittbDTD
 fXbDLmVbTjoaPuzBDLcfgAcjPvA4XeY6rSQEgAl2eIpxNNDhoQSNJUtKymgqCZv9GaaG
 30JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fq0ktF/hBsnVFU7IozmhPFjtW2ydpZCCyFzM6I7LgOw=;
 b=oe2mw2LE1TKfzhCf+dhsJXhBDCrHqf8k+Wg9c9tw+zdaxglEahXSrTzxCtFANHmkl2
 7zvpxTyPZ2+HNiQs90W9pbREFwqvvVvsPVAuLgWIdCZqp435TDC3UNFETdY4BSFJTsES
 BQjesZuIo5hhvXSI9DNEHpa6Ku9DWDNzcjy8fu8ITCPzyiz+6Z0ZF3CgM6dRhVs8A+ma
 l8u2WbqV3mz2epBgT7OBWFoVNTjLFMYc/PjzKFsZGdi5Z5/1+KrIlujVixuRNnRvHxT6
 lj0BEuax44eorf05LhSGPRjAz/89gSFdiDMQ54L6wuMVW9GsoK0LNlV9axntd5OmWXub
 q4IA==
X-Gm-Message-State: APjAAAVQkNvH0zMenJJpsIF1OeyYMz1EL977hP1hoDJR3Caa7mti0ugw
 CwXe7h14WXqzZUcxZlf0ToM=
X-Google-Smtp-Source: APXvYqz//7Zz8md/vVO2OPMxigo9UdlkkrkEJTsuzTyBl7CXjyfMV9TJYqhZbR9u7wNriFPY1YaD/w==
X-Received: by 2002:a17:90a:cb81:: with SMTP id a1mr189808pju.81.1565048130114; 
 Mon, 05 Aug 2019 16:35:30 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:29 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 13/22] media: imx: mipi csi-2: Create media links in bound
 notifier
Date: Mon,  5 Aug 2019 16:34:56 -0700
Message-Id: <20190805233505.21167-14-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163530_864064_6925ACAF 
X-CRM114-Status: GOOD (  12.48  )
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
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
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
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index 408ee2765e77..5b2258156781 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -91,6 +91,11 @@ static inline struct csi2_dev *sd_to_dev(struct v4l2_subdev *sdev)
 	return container_of(sdev, struct csi2_dev, sd);
 }
 
+static inline struct csi2_dev *notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi2_dev, notifier);
+}
+
 /*
  * The required sequence of MIPI CSI-2 startup as specified in the i.MX6
  * reference manual is as follows:
@@ -573,6 +578,23 @@ static int csi2_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int csi2_notify_bound(struct v4l2_async_notifier *notifier,
+			     struct v4l2_subdev *sd,
+			     struct v4l2_async_subdev *asd)
+{
+	struct csi2_dev *csi2 = notifier_to_dev(notifier);
+	struct media_pad *sink = &csi2->sd.entity.pads[CSI2_SINK_PAD];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(csi2->dev),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations csi2_notify_ops = {
+	.bound = csi2_notify_bound,
+};
+
 static int csi2_probe(struct platform_device *pdev)
 {
 	unsigned int sink_port = 0;
@@ -646,6 +668,8 @@ static int csi2_probe(struct platform_device *pdev)
 
 	v4l2_async_notifier_init(&csi2->notifier);
 
+	csi2->notifier.ops = &csi2_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(
 		&csi2->sd, &csi2->notifier, sizeof(struct v4l2_async_subdev),
 		&sink_port, 1, csi2_parse_endpoint);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
