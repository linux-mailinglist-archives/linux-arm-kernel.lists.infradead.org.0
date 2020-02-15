Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E3A160032
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j4NDwUfdrYKoddGHtyyo3vW0nDaTQXLYbItAMeJrx/M=; b=uFGsVqN/esNINpVP0DXhkDHkgI
	Oxy2fa+BxjEyelgoAf4EyO4e59Pc+pEJLjy4O2fdxb4NMYNEP8XNXLP7Wajb/X7ohJiMIhYWRki1S
	fEgP8lTAUFXfNcfApnCKN3dW33JoLnoAbiBU7e5SLLC9Bt5zjI37gxSnBlfq6D/3jt7yoCaAex7sd
	LV96USwalWE9gkkMnItEtWB1tFJaKf2Pe9tFXaYZqmkJ+XWSSyVCXnedDPgwujIkPHhauW1tC3BNC
	f36uOpMcoVabmNF6AxbmEIt0b+me8cuCLHTJOCSgrbm05Z5uKtl80N4lLQDr/cCb4PIjjU0186KqW
	Ddn0iLvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33Kp-0008D8-KY; Sat, 15 Feb 2020 19:42:39 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33KJ-00083X-Me
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:08 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n96so5450312pjc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tEFP9EfjLyBSm2GDbhHW2vsbKN5BJT5FKVyhRHQNMY8=;
 b=NeCzqZcsM4ip7J7p8r3xMhsXey+xbtIN2mBvJ1q8bfFgPJcbmjrWbrDeqdjK0DaecD
 Xn6Hx2DveLYiARrGYdhFJqPFL3phkhmYxwMj/taPdb4kAY/PMyVVCVoUzXc/AAGWMq/9
 cmY0pdFaf5/Gk657YOPDH47MNlvWDnyQ67bR/2n8cVvGuUmi16t7Pb3F26FTeQ2RMzdY
 R7xpokIM8VXtXh8FwXuPRrodGtsPNn06qB+IXrlmU1Kew7168WXEqqo9S0B23ax6rAEj
 i1yapst7ruP2VALkb6DRCsokK4vdJWKeEjRqugfgQ3+m6bo63ay3YLHulpWfonSQlgzP
 noDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tEFP9EfjLyBSm2GDbhHW2vsbKN5BJT5FKVyhRHQNMY8=;
 b=b5enfrEQywohqFI39Ql5JMjgxmMdbkfzFF+Ou77YowAWSxu89AkaQ1BLplsYEQbJEi
 Tsw+b43QnZKmp9xhPeNLPqMi4ZnH6pQt7NWsdMlZk+T3E4RAYn4sa2qjnauJb8deWjyB
 9vpBQmQDjYVJc11BQZozLfZoFeDZvuKBZADpN0I/3gKCC+KfCu0w4j4BpKayo2pHA4TT
 LXawhu8iJdTK1Uk0+hQkdWPINqcNi8TOXZepmRNVzdmAFQvIxDxo97gvguVUC9W2+r3s
 9RE/66WikuQ2rxkJXj/+Q1oGfNpVovNFHC09QEDpvXtAM7WgMLt3i4E54C1M10FE5mv/
 DShw==
X-Gm-Message-State: APjAAAUIwHEvi9d7DynD0RRHnaebpHb4+nXeLK3vszjKOwreN6Q5Oxxu
 jZ8Et78JHqNmUkPsXsQWVyU=
X-Google-Smtp-Source: APXvYqx/mg4tIU1tr63Knwf6hjq0RDp8xtlDDNDD8XPHG9TpxACQT79+bFj90QYux56vF+roPlpqSA==
X-Received: by 2002:a17:902:7d93:: with SMTP id
 a19mr9130882plm.283.1581795726696; 
 Sat, 15 Feb 2020 11:42:06 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:06 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 03/17] media: imx: csi: Implement get_fwnode_pad op
Date: Sat, 15 Feb 2020 11:41:22 -0800
Message-Id: <20200215194136.10131-4-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114207_735381_25130B02 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
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
index b60ed4f22f6d..dc5fe25fe7b8 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1825,9 +1825,32 @@ static void csi_unregistered(struct v4l2_subdev *sd)
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
