Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761DE152393
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GnpVjbtliKd9dZwRMSTZpTuzVduaHnvb0uibko2evKw=; b=hJrwI84D3nQ3bhBFzCMbKokwKV
	lVwn6botJUOSgV1dSTpzCK6W+sVDQtybp/JkXUOe7/HtS1rsmMtWv0KJwy98ut59uCWE0nJLEIGBt
	+9qaFvc0PurK6/xNaCGhihuEp176vByEKvQVfqJmq9BK8ZSjJzil3Eu6QKDRRiGAQj9psPHmY6KYi
	YTqSGDBwCI5WKpdrQhUw0Q/zzFZNlrzkbsocMmtBvDSNLIrNoDmoz0QtuSrniP9dNNviQU8kQCcwW
	yaHcZ8z8Ok0509m1KGSFywPitINoOgScGujtigczWiVB8pf2RmQQF1GeEaHvRY8RL4LMmZeFGxzJA
	1bJ4lLng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7y9-0006lF-FK; Tue, 04 Feb 2020 23:51:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7wy-0004Wl-9V
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:49:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id y1so66965plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=Le9ycugOfEEybykcT8+miCmVKrq1TITIUOBemZS+jQOP3orUFyi38fSpfiRSq1UyOB
 pf3wQI/DtHAfBlQpH/0VDZOe5UYWreuBz1Y/+MDCTgy6j66TIQr3MN4Vd0IB2qDRjGZi
 xAxZ/tExX08f3od/rBpZ1SHFML1yWq540pS4Wd8rvs6xrUurW1w2xy563mxmtgM7JPaV
 cq/cE4uhXMt7XyQ+SlAz9gA1yvX9f3sPhyUww6iz2tGkwvHyr3soulGOUCbbjfJhPJAZ
 ZNZlnK9SPDu6AXDVtKSgFlxbWa5feYE4EvPIKzlb1aDS98rtw7a3cMC1XvRijjJAF7hr
 eZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=lgAzMhCF8/XImMi53cYX0fyhIAqU39TzSMmvPJMMpxFArwJthBXRJW3a/J4exGo/6y
 X6Yjfbt0ftoXCgXOE2NMpPdM2GZ23duII+A0fG3k54QsIyPGLrA3tKOZgPx0wzokA763
 qcSSBzkDTcarwhZUT95qY2cwkp9pzauDX9iPkaw9tjRMweX1KIAHjzspvMGGuXGevZL8
 E/1cZy7OvuDtrYwKKrDLdexX7yYZkFtMnGDktaF+/EAJRZQe1qYGxih9f0OpnwJZ/uNH
 I1Fura2Y2Qn9V/ZqR2Gmv3g8JfR+ZgPBXlbHYp+8BZd7QC+K+VqAML+5FLgs6HfpCUSz
 uTQQ==
X-Gm-Message-State: APjAAAWM1gI8A9G+ujlMNNWY8r2Q1Qb6ZO1GizLqwN9G/1BFknPgSK81
 H/sbYtaBVahK4VlLXDlkpyQ=
X-Google-Smtp-Source: APXvYqzd5F1QfdHZ4Puy966CryZKh3FhnnA+0FjfKGt35fUDUUvC8HOzxic58qwpCy2MTsi8+gEBzA==
X-Received: by 2002:a17:90a:cc02:: with SMTP id
 b2mr1960199pju.137.1580860187663; 
 Tue, 04 Feb 2020 15:49:47 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:47 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 08/17] media: imx: mipi csi-2: Create media links in bound
 notifier
Date: Tue,  4 Feb 2020 15:49:09 -0800
Message-Id: <20200204234918.20425-9-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154948_351286_FE606D7F 
X-CRM114-Status: GOOD (  13.18  )
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
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link()
  that creates a single link.
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index e27a342751fc..fddf6388348a 100644
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
@@ -584,6 +589,20 @@ static int csi2_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int csi2_notify_bound(struct v4l2_async_notifier *notifier,
+			     struct v4l2_subdev *sd,
+			     struct v4l2_async_subdev *asd)
+{
+	struct csi2_dev *csi2 = notifier_to_dev(notifier);
+	struct media_pad *sink = &csi2->sd.entity.pads[CSI2_SINK_PAD];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations csi2_notify_ops = {
+	.bound = csi2_notify_bound,
+};
+
 static int csi2_probe(struct platform_device *pdev)
 {
 	unsigned int sink_port = 0;
@@ -667,6 +686,8 @@ static int csi2_probe(struct platform_device *pdev)
 
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
