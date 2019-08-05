Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C134D82831
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/8WdkvdzJkw/d/WGSZnoOcBnjyBcVu+jghBTBPXXKkk=; b=ihuf+lF2d2kpIS8m/VbAtaGhbl
	AAMiQCfGT68Q4bxJpJ/7MbVk5aoHsv7l9NWwaIH3aTvFf3e9hP+c2YUCdavWuflUBT1JRINYvVHMK
	l2GEutx4QAl9dN95kR5Yd+kpbpWY06lHyiPLmYd2Lfsn07Gr1ntLghGcdG/fAlN+g5vAM8/HxLsoU
	15/I6aoee5a2b/XiEJqTc4QUIufEed9M5hZI/CwPwckzJBwltQ1IPlC7htSZVSEpXDNhRJVCfsDXv
	WFF3ILyC+E47Wf1BDf06K5i51YaynnFEpWZ2te+hydlZIE5I6XiTU+grrMo0zteSQ24FX+IrDOpPZ
	lQJitJtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humXX-0006ll-1z; Mon, 05 Aug 2019 23:37:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVt-000505-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so40516553pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6Pj12shXDJ0qL2ITkdFID+0sK7YPIfnJU0EODI45PAo=;
 b=P0cWEJqDtIxlI1iTv4y7nWfH9E/dxbKOHhDEh1Ldkd4KsNCON8XIrlTGdDK1ATCV24
 1pIOi/RmvDSo99JRk88cCOrbmxC7aRhJu7psaA0w/Wb8Dy7uQd0qAqeAWD6gS89htzum
 IXoJG5CORpjEXHBRY0klwJJh1HpapaZ7g5kv2Ar2lryCWFh4NwADK88QZxREjbpWskO1
 7iRKe9s9zr0BQS6lPdiqAHIyjO62zig/8ZcIipv999RP/bKmNDcwpPVac7YKd6ubANy3
 M8sIgODKgXP1t/GSK4n0bavVAMcyuHQzQnpD3Pg/Ld/IKwiHaxJMhawz31vUWPTDcSym
 W54w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6Pj12shXDJ0qL2ITkdFID+0sK7YPIfnJU0EODI45PAo=;
 b=CyC/0NmImcnK4V6wApaujgGSSRV0Ys3ltOJtF0A+1ydexfoCJNsHbPGFBr3rNjFEnb
 ecX2ah0qQCJXZAsGLwxIrAfiARRU5FsCgCLHb42wVHKINiEZFipyBpEweD4NN/uWyOuz
 Q6/nAHIQcHWj4EU/8HtjYJgzsiouGd5mHqHs63oDHCmhIMpDUJgYj+WO3ytzxiOJaosV
 DWmQ9AdUz1fh3k9h20EUOkW8JH7MeyxFyhG8OVGykZTq8Ydzvpgl24zqJLg1GD0PdGei
 osN0EcbXjrUvtQEvGjVMvvMzY9fd3sFrJhYNM1yvnSwmQ3fAL4ica4X5HH1WAM0fqvMq
 iKHQ==
X-Gm-Message-State: APjAAAWP7VbsyPSJwHUn+MgR8859jH/ldIIbz2u2WERGdWMYXi9RTh7I
 2XX6qgVgEYTAPj1keyQUbn0=
X-Google-Smtp-Source: APXvYqwCuNAlXO9lVulSaYfkaEjh7QPRwoh7y+NSTuatvygZigIcX3cPqTy4WpLO+oFiGtP3uC0Vaw==
X-Received: by 2002:a17:90a:ca11:: with SMTP id
 x17mr194531pjt.107.1565048136137; 
 Mon, 05 Aug 2019 16:35:36 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:35 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 18/22] media: imx: csi: Create media links in bound notifier
Date: Mon,  5 Aug 2019 16:35:01 -0700
Message-Id: <20190805233505.21167-19-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163537_432944_4E3FE2C4 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
sub-device's source pad(s) to the CSI sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 24 +++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index b39d79e63ac2..37b10cbf3c1a 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -120,6 +120,11 @@ static inline struct csi_priv *sd_to_dev(struct v4l2_subdev *sdev)
 	return container_of(sdev, struct csi_priv, sd);
 }
 
+static inline struct csi_priv *notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_priv, notifier);
+}
+
 static inline bool is_parallel_bus(struct v4l2_fwnode_endpoint *ep)
 {
 	return ep->bus_type != V4L2_MBUS_CSI2_DPHY;
@@ -1895,6 +1900,23 @@ static int imx_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -ENOTCONN;
 }
 
+static int imx_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				struct v4l2_subdev *sd,
+				struct v4l2_async_subdev *asd)
+{
+	struct csi_priv *priv = notifier_to_dev(notifier);
+	struct media_pad *sink = &priv->sd.entity.pads[CSI_SINK_PAD];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(priv->dev->parent),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations csi_notify_ops = {
+	.bound = imx_csi_notify_bound,
+};
+
 static int imx_csi_async_register(struct csi_priv *priv)
 {
 	struct fwnode_handle *fwnode;
@@ -1903,6 +1925,8 @@ static int imx_csi_async_register(struct csi_priv *priv)
 
 	v4l2_async_notifier_init(&priv->notifier);
 
+	priv->notifier.ops = &csi_notify_ops;
+
 	fwnode = dev_fwnode(priv->dev);
 
 	/* get this CSI's port id */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
