Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DEC152398
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/Mxf+aZmVZ0VQF4pLZQYOvn/jrVprJWts6Hl9vUuuU=; b=UwyLYhEu5xTLHL5BbtV3IiXFYX
	cnlD7lpOvdndZ/kEp2FAk55RGPIKEvy3VnW2Uttx9KgScyweIBAdfBRHGWdJzWFooeaYKbBuJF1r6
	085V61JUymuUHDQ5K53mm6FYFcZIVb3K938ePtb75I/aYZNKsK+5wLCqhpEWsvzaW240GAeOSicug
	P2dWuwr/Tp1fLzudyXEx0+h1UjxgRlnCy2Q2CmvZPrrPah65kmYGc7YouZb9oj3PTvmbiwkYFHpiA
	Gv6mwbsNejI1VQAAj9ZwQuSDZCk34WpAaiTmW561YsD+rVYClIBzZ5xeQjjBCFNrYNI6UNqfnPNRX
	ciFwHYHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7z3-0007op-W0; Tue, 04 Feb 2020 23:51:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7x5-0004f3-6w
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:49:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id k29so155870pfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=iLQH3OQ/O/+RY2/knhPODGNM2ct4fcN0lZHWtdgDvI2We0LfUzXOKX2vqsi1rMDnBB
 0AGtySTTUvyreBqOa9GXwj6JmkE/8/4IpJ6keZb7o9GBZ6wTE5ycCUgUDkY8xwmsCVXk
 6RDR6faOd47TPhAdkgtuqahcRO3Fpz60TZTshVxVocsPQLNnIpVKiVk6pfb4ZcS67lhl
 Ex/1P5MByc6QhtVDhEzobTJ02ls08pPmY+FbOZumQ2xki8iWuXe71Lwl7EA9MBtL+eQ8
 qkVviCdflEt6ISteRSFbSoYbMllJGASrJr6ZZrVN6Cjgiam9C+ueat/yYvuBHYzSkZRj
 t5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=e4HMJ7jUFxfZsuDXkIPbX6k1D9616SL517TuFFEv/pgNRDcCOW7Pu8lDdOqndMQ9iq
 sVuRP3/NjM9Y2m1rwX3klfhgbjZaVk5x08GdHwaRBJ+ZfOsDeTV6rcvsHf4bJXlFRFdY
 JI55e8wliVmnCPeFzrbYQxDNCFcFJal1hYDao/EeGNPeCNR07hEuSddeoutYAcu0+DKg
 TQFRMSiIFoyEt43lw9Kwz19wlkvUEnSLAKN7vyboe8qcdXpoLXelMfQ3/NSLhuOpi/l3
 nhkK3KJ56R4CySCUwIOftPIVbdCnbgQwGBJ1nqlOgZ2cWgj/OJu/iPAT7qT5mrf7om8t
 rfjA==
X-Gm-Message-State: APjAAAUPv5VuLHOe+HdNFwVLb4ysxjfVBFW5x1gsaBR6TgzagZE3+sqE
 htenpZU43HdaMSuVSpLt1OA=
X-Google-Smtp-Source: APXvYqzaJhAf6Pam+Cmnn2otTi81LaNdN5atab+90zvh137fxqERYqBVQ5oubpzGkJCsB0HBp4QJsw==
X-Received: by 2002:aa7:96b6:: with SMTP id g22mr21060221pfk.206.1580860194433; 
 Tue, 04 Feb 2020 15:49:54 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:54 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 13/17] media: imx: csi: Create media links in bound notifier
Date: Tue,  4 Feb 2020 15:49:14 -0800
Message-Id: <20200204234918.20425-14-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154955_269059_996849EF 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
---
 drivers/staging/media/imx/imx-media-csi.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index bea6a70cc353..2a8f01375f78 100644
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
@@ -1896,6 +1901,20 @@ static int imx_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -ENOTCONN;
 }
 
+static int imx_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				struct v4l2_subdev *sd,
+				struct v4l2_async_subdev *asd)
+{
+	struct csi_priv *priv = notifier_to_dev(notifier);
+	struct media_pad *sink = &priv->sd.entity.pads[CSI_SINK_PAD];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations csi_notify_ops = {
+	.bound = imx_csi_notify_bound,
+};
+
 static int imx_csi_async_register(struct csi_priv *priv)
 {
 	struct fwnode_handle *fwnode;
@@ -1904,6 +1923,8 @@ static int imx_csi_async_register(struct csi_priv *priv)
 
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
