Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0CD160047
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GnpVjbtliKd9dZwRMSTZpTuzVduaHnvb0uibko2evKw=; b=LGAzvzxQsXZgQMXXmyOajah4ux
	Osh7jjQSVN6Ugu7cj67fh+XbmllxVmT8Kd8wX8VeUG4XppHRReP9KrXtVUEugDhjMUmBNmirRUsmI
	12me4FqMCdHoN2a67+u2Dh3/h1I7aIbMKScr/qsf/Ui1Q/euo7vraWaBqShMhDlTyuHrOnURajx55
	VN0yfTBSCN5isK88eBNMiIPB8p2CZYOvXiaDnBZDbf1FIqJJH5kK9Jf8VWUS/J2a5zi1taFPnWiFS
	0mxuiuWaTlPQplM6BEXrGHUIhxPGnGeeJ3UA65hLhC2j0JTqAFFetWUPnuKuB5MqJYwfU/tUiQ4yq
	iAo1bU5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33Lf-0000g5-3m; Sat, 15 Feb 2020 19:43:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33KZ-0008K6-66
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so5144667plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=TlHXKi9U8uiS2fkx2BPSRGo8YoyUc6hHaVvyRF/ec4V6f3e2pH8hLJC5vKohYdzCWn
 cmCCKy/flrosl+0iPDsZgqdwIe/WgrsSGa//kLYqxgKrVxMWqWKotlrBSh6orJ7ljBYn
 oa+Bv5oefAEIME3xifu6PzgaINoMr2vpri9DEznRfFt34Pi5hSTp+5MRTqVP6jnRBHij
 4kBrKqeI+8u0bsVvSJ9fNm6YYDR/WwQHpfkQ5Ip57liK8BFvYVQNKb37cX5YxTpcjbY0
 B2FZctlpPUNGIrt//nirJ9SqU3qwnHkBersRETRBze0OHHVC4HNmIUbSKxzVnmjpkZGA
 PnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=tjMxjJrI16FeTLeFbnLcEdC7AQ7/ellDZKQHphmm0E4zmmVJiFheDgDJ+BkQYeqMkD
 k/vMmbyckRueMxm7kUT1hl8gtZPba8mZdM/zTRzh/I1salNWHbVJKzeZZpu8ENVQghNv
 QhNWI6FJNmnT+NA2SusEcr4hNgfPdn2s6PvnBpJng6Z+ZlViT1wt97kyPbbKaEqOgCNO
 E36a26/KGhyWVycxYmmDZPVtZ5Eh85r6Frh0k2KV4BVmQJBIXOgvcr4fdxo5PWkKCbtz
 o6dwZ9xffi8Sas6wCgrXqWiIi3KNDYH3TU2DD37LRwZf2SKENEhKsUYrlOYqKVRTU5/+
 fCfw==
X-Gm-Message-State: APjAAAXtkbfKrDPnUN+zG7haT9NXbBa+GpGXVg2uPYRai9wE2wAvouDL
 ok0xmxTWpaPowEJ8eToRmQY=
X-Google-Smtp-Source: APXvYqzMiPby3ABFgdEWNgjVyH0LYRY9+ahPWNR0Ixl7qauNjkEXOJEmC9DbQ6oumPosWwBAam5/vQ==
X-Received: by 2002:a17:902:ff11:: with SMTP id
 f17mr8898260plj.273.1581795741629; 
 Sat, 15 Feb 2020 11:42:21 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:21 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 08/17] media: imx: mipi csi-2: Create media links in
 bound notifier
Date: Sat, 15 Feb 2020 11:41:27 -0800
Message-Id: <20200215194136.10131-9-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114223_262487_42D2E67E 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
