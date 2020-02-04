Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322F0152395
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2+CxuIdp69Svnr3RHL2NPt9Dffa8op3FQWCuwPK0CXY=; b=nEnxKj18wiSM7SOr17Ir4fOb4X
	l9DKRid8xHsv0OU6g35ILnqDppzN77rXkAVENXEJ5O1EYQX9rwzJ8TmwKCwhgtgKEUxfS3ZpSCFcN
	lVaNAcM7yuhmDcnCaZ5LzghWakhZLRwD9vXZNJmZsqkooyn7DxV4ar8porI1CeIDqNBPYcgvBcsj+
	5/AzlxLfY2PsTLKnGpOw196Z5EQOJ330iYE2NI7ozRfp6V4l2Y6l3kV/SrdgGyYOohE0Asq9oQijT
	+qPnc0oU1ZHETBcCLabf2eoNhhCQG2rJwBkIyThVVYS5zeIlSXL/XHDAqECNrZeVrVu5omi+DHf6H
	UhZKFgyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7yW-0007Hq-DX; Tue, 04 Feb 2020 23:51:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7x1-0004aH-4W
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:49:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay11so80299plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=clTHQOua5ugicz9SFwYMbXH1AC4U17gwJLFJXrYA19wFEZDaqG55wLKVpjnmar9k2w
 l2EduYB1bF7nKZUnVZV4SL1XhMKpPrwfuWJtzUexjbwcMPkP06YmdQWipoSiSsjtufK5
 rgaGo7AUYzb2+4Qh6EGgxdlgr9KADsuDZ1sxa7zQJoEf7p9dDCDmDep8tihLj5RkgiSF
 9YTTW61j1iz/Si2iudelXlgRkCGFPAwoctMg1+MCoaKLnqqajhrFYD8kmNds5jBUGCVu
 tyfV9t15GS18zC8XrBF98Wk+AH/PndxU40jgsCWpq2p9DW+uvMHlRAiUSJcmmB5pp2To
 8mgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=D0CdPGEt986+0G9qWKPQD+YQaEfGNvMCmRuXyJ/8PChlx3/RlAUjea8YltIocmKfeR
 l85YgVAJUdzlho/R7Q2k6B3D+ctRnVH2k5eBgOZODIfwHodV7BFdfJOScejHYElL6HwP
 z7zWmM/iRt+myWzw2XXCEUnWZhW7BOxEZ2+6U+yArzel2ceWRfi+pog5qpe11KMGLef3
 WROgBmNofrAICtvTEm1HyevZLr9Ly3kAbt4MniHY5q0DU6FcVOJHHDlsB6Dk3Mw3yVNW
 Zq3Zzgz4KLrTN7G/W3VXZEMXcE/Vp6LTdN7HB0dKDLOXOvT3e0+7XSFtiVQ/auaidOBA
 Tzuw==
X-Gm-Message-State: APjAAAWBEwlJGcMBm9Ro6Ifqjo8uSus/r/j8gzDLAqqCKRlNC6bIdImy
 T7itUi7UbEkQWTFOUXYFbfM=
X-Google-Smtp-Source: APXvYqwyLzleegvKCr9D4YaahTk1C9/W40AyYBCK/ry/o6dQcN67cWcYH3Eh8r0Gqgv52nHZiPiPWQ==
X-Received: by 2002:a17:90a:c691:: with SMTP id
 n17mr2098311pjt.41.1580860190466; 
 Tue, 04 Feb 2020 15:49:50 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:50 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 10/17] media: imx7-media-csi: Create media links in bound
 notifier
Date: Tue,  4 Feb 2020 15:49:11 -0800
Message-Id: <20200204234918.20425-11-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154951_216148_E3AEE2B7 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
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
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
Changes in v2:
- Rename notifier_to_dev() to imx7_csi_notifier_to_dev() and remove
  unnecessary inline. Suggested by Rui Silva.
---
 drivers/staging/media/imx/imx7-media-csi.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index dc6d1a28fde7..cf9f675c53a3 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -196,6 +196,12 @@ struct imx7_csi {
 	struct completion last_eof_completion;
 };
 
+static struct imx7_csi *
+imx7_csi_notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct imx7_csi, notifier);
+}
+
 static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
 {
 	return readl(csi->regbase + offset);
@@ -1187,6 +1193,20 @@ static int imx7_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
 }
 
+static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				 struct v4l2_subdev *sd,
+				 struct v4l2_async_subdev *asd)
+{
+	struct imx7_csi *csi = imx7_csi_notifier_to_dev(notifier);
+	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
+	.bound = imx7_csi_notify_bound,
+};
+
 static int imx7_csi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1269,6 +1289,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
 
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
