Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87F38282F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C/IQPOYjk9W4LBOU0oqG8nj9dEonPsl1ge3v1FwAUVQ=; b=toIsMmBIIVN7XU6KJoGxRFnSqa
	QDWbBvuCpdTYs4bTWigzvLzmoKZdp4dFYK6RE2uWWl7SDlsfJ5jxDmNhVT39nalI9ZRAo2K05vYd9
	fL1i/frgOb3y/ePrnvE+eODmD8J1Jb3Ny3W5ubH+dSWg/a6zZJmd3Bloy0mB9DGSATSl3cdm6Ex8O
	X1/XQlPVm+9va3JxYSSaW+YDqsaVQ13fB52F+cN90UtUVuLoyPje1HmHTr5gRJlLYjVNSv12i+VdW
	fwlNWygQN5JzSYtBdkAgb7twnq2DtcvLWMOmUdp0Vk4SN8pMtsGHzhNTT9EGPbp7U+03RMgzWR6RG
	35pzX7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humXB-0006Jb-4n; Mon, 05 Aug 2019 23:36:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVq-0004w9-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id r7so40423659pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dlPssYq0ryvhz0STq2y2DANQYDQwBzmO+X3pNrhAOiU=;
 b=HauhLk8diwPqoMNLaCvVs+Va+/vM1Lotb6yd4g0srzVoCT4ME7KaWNu46fQtchpf/Y
 4jTYQIFp17uXOCGxJEVna4L87qT8UKZ4PxAgbP0E6TajvP0s8uJ8RAlATnruwoMXZ0xQ
 km1KDe2Qx7lImi9sH0snspt9BhAQc6j2B6PdzFEZwxOsk/Mul5as2/6VJiQAcDwXUfNX
 AcbzzFdw4/Ea7UZibCr/bs+/nMXotUYIrcImd2RbnlZKvt0xXYl8v79Cx8tLs1G0goQF
 09ZJu2P2wAhzIzFe8JYfWdcle5OunSW837g9RZb0iDfm/DZBfy2XiEi+hElxP0oulYap
 ikOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dlPssYq0ryvhz0STq2y2DANQYDQwBzmO+X3pNrhAOiU=;
 b=BMm+YjNRzRhnulqrHhv/1/gAAgKNOtg7sEZ44Em5hQOtBv9cpIfwd8btkjdlVLJY31
 SbzE8Ou/rzF71+vkbMVe7eYg/BIPUApHYhXmiHELapI6Q2hhgq5ResMhHXPJctwY0wPx
 zLBkfU/IHmlXtwHoTcPwW/7asb9Fx5jNnNQumocEYxBzUz3MG04on4iG649JryUCcj7S
 KgEQ7hDkZxd/8+/Zt0VDSqq6a6GNgcTT6u6w4OmEK4d8k3Xss8sIOlku+/geOLKLIius
 ksS6RiGRfERIKGBL0vJ2NMWwS7OqDzBZuG1CGMlcemi3NuNeCXd3xInA69ns2cGYlgtP
 Q48Q==
X-Gm-Message-State: APjAAAVfZhjNaEjCZi/1m63B281yCSGkuxDV4gwox46oHHRPG/oeu+Ql
 fe0dpYvLYkxnzSqRL75KXxQ=
X-Google-Smtp-Source: APXvYqyC9KlTqQHjqDVHhWoeilDLM2Elce3C2IsDg6J+VQpzucQEZbF8tGngST/M5+v2rf41OtR9fw==
X-Received: by 2002:aa7:956d:: with SMTP id x13mr553906pfq.132.1565048133803; 
 Mon, 05 Aug 2019 16:35:33 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:33 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 16/22] media: imx: csi: Implement get_fwnode_pad
Date: Mon,  5 Aug 2019 16:34:59 -0700
Message-Id: <20190805233505.21167-17-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163534_651064_E63AA8C1 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

The CSI does not have a 1:1 relationship between fwnode port numbers and
pad indexes. In fact the CSI fwnode device is itself a port which is the
sink, containing only a single fwnode endpoint. Implement media_entity
operation get_fwnode_pad to first verify the given endpoint is the CSI's
sink endpoint, and if so return the CSI sink pad index.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 367e39f5b382..e193f66fa230 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1824,9 +1824,32 @@ static void csi_unregistered(struct v4l2_subdev *sd)
 		ipu_csi_put(priv->csi);
 }
 
+/*
+ * The CSI has only one fwnode endpoint, at the sink pad. Verify the
+ * endpoint belongs to us, and return CSI_SINK_PAD.
+ */
+static int csi_get_fwnode_pad(struct media_entity *entity,
+			      struct fwnode_endpoint *endpoint)
+{
+	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
+	struct csi_priv *priv = v4l2_get_subdevdata(sd);
+	struct fwnode_handle *csi_port = dev_fwnode(priv->dev);
+	struct fwnode_handle *csi_ep;
+	int ret;
+
+	csi_ep = fwnode_get_next_child_node(csi_port, NULL);
+
+	ret = endpoint->local_fwnode == csi_ep ? CSI_SINK_PAD : -ENXIO;
+
+	fwnode_handle_put(csi_ep);
+
+	return ret;
+}
+
 static const struct media_entity_operations csi_entity_ops = {
 	.link_setup = csi_link_setup,
 	.link_validate = v4l2_subdev_link_validate,
+	.get_fwnode_pad = csi_get_fwnode_pad,
 };
 
 static const struct v4l2_subdev_core_ops csi_core_ops = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
