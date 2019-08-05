Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F0482832
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+rZ2OgQe7bEUovwnERCi9DumwbviSfHcxPikOmCiPjE=; b=YWzwE9Zh0WnsUFPcQinersUDOJ
	UUrLirMKs1oaQI9GYZInz6v7SdHB80pGwg5eGmCnJm0PTDxrzaBUJjir/jefAlpxvAIahz/54GTNE
	RchfIDb6Lk+wwMXM4dySAuR7Ye+iIe7NOC3fg+qpw04HX2OtzzE6H7hla0780tfD85Ijnbz2lLeDS
	MRZeyrDpep+kZqEz0daG5klmY5I1onJeQ7hoREnZnw5KnnAgJQetq5MoGiIrBK8mx6kAe1vPXAIcs
	ZLPkNIFqlJJlCCA7Z9rBhn0JdoqC1/KWfurUB1kVVyVcDj3qk7cuM7+2O0BxfchrwkAUH6ZkLQBFW
	qfWMBlag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humXj-00070J-Vk; Mon, 05 Aug 2019 23:37:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVu-00051t-91
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so5389000pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SzPXhAIDJJVPxRQjm5dl35CCesjMMtT8aLvkE/D76vE=;
 b=AhxGn7uGF82d3u+PITZWpmxompnLOWgJO9HrgllV8YvuhA6O+sm+OT2Fmo4+ReXhIH
 rc6PsyRUFKuyEkruD0L9Dfhx9JKLJSxpD2f3BWRsk+8sj07mfSPzkmQTpF+3axXh7C7a
 BVsnk3jIJSGjF/uLAgHc7jF9s3RsLw87/IFLxVi9JkYVRytq+MD/WlKPogWdJ+klCPW0
 B7RfPX0/Nb9ayS9qH48WFo7uvOYw/3JW59AM4skWrMadcq1XOrkCofBD/jrZ07MlTXA3
 BKNJAL1f2Z4OPtxSfdUgIHu7I9JxQa7LLiQVI+EoXzDX24xu5dotr/IwM0RyEdZ8kCjT
 f1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SzPXhAIDJJVPxRQjm5dl35CCesjMMtT8aLvkE/D76vE=;
 b=FfAXHmJ436Xc6JRVEJFGWsgKvRAQ8C8tYriD5i0Ogr3/Tioiy8PluNg9TTedjZAsKA
 IPJ+55vZt2nkdLIRBtZetxXidWEe09CnmXJUVe6nfxIrDQOse2CpCcYgWj/JT5bxNkUo
 Lf7uHaSy9WpzO53uC/yXxgAyPbRHAeKeRXfy7uvkHJdIOTPovmkkH58n+wq/mVHYDAPK
 RkRCh5HIawVnVdBbc+Ttrq7oEHNNB8r7mjjUUjWFHRi/WJqTHIAPx+IyocbBOsLrU4up
 SSqB1fuBixJ8i/5lgPZQeaYulO8GYFuBTvbI9BsATRXEAxO3RC8jl5sYiUGfhzJprg5c
 71Aw==
X-Gm-Message-State: APjAAAXJFYl+JAMIfDpyAj3MsfMwijpojuEOE0gXqBti8izo1BEsDZUg
 Dh5lKhKgcOJp3qaBXNMlaHc=
X-Google-Smtp-Source: APXvYqzI0G6RmtOIgcu5JlAUTuDB6qP16++PmpcC16BXSP2WyOz+NuOkX6F+YZTN+IpvcZ6pmS1dyg==
X-Received: by 2002:a65:690e:: with SMTP id s14mr336282pgq.47.1565048137522;
 Mon, 05 Aug 2019 16:35:37 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:37 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 19/22] media: imx: csi: Lookup endpoint fwnode with
 media_entity_get_fwnode_pad
Date: Mon,  5 Aug 2019 16:35:02 -0700
Message-Id: <20190805233505.21167-20-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163538_370894_168A23D8 
X-CRM114-Status: GOOD (  16.44  )
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

Fix the 1:1 port-id:pad-index assumption for the upstream subdevice
connected to a CSI via one of the subdevice's pads, by searching the
upstream subdevice's endpoints for one that maps to the pad's index,
using media_entity_get_fwnode_pad(). This is carried out by a new
reverse mapping function imx_media_get_pad_fwnode().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c   | 22 ++++----------
 drivers/staging/media/imx/imx-media-utils.c | 33 +++++++++++++++++++++
 drivers/staging/media/imx/imx-media.h       |  1 +
 drivers/staging/media/imx/imx7-media-csi.c  | 25 +++++-----------
 4 files changed, 47 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 37b10cbf3c1a..38e70082ff2d 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -164,7 +164,7 @@ static inline bool requires_passthrough(struct v4l2_fwnode_endpoint *ep,
 static int csi_get_upstream_endpoint(struct csi_priv *priv,
 				     struct v4l2_fwnode_endpoint *ep)
 {
-	struct device_node *endpoint, *port;
+	struct fwnode_handle *endpoint;
 	struct media_entity *src;
 	struct v4l2_subdev *sd;
 	struct media_pad *pad;
@@ -203,23 +203,13 @@ static int csi_get_upstream_endpoint(struct csi_priv *priv,
 	if (!pad)
 		return -ENODEV;
 
-	sd = media_entity_to_v4l2_subdev(pad->entity);
+	endpoint = imx_media_get_pad_fwnode(pad);
+	if (IS_ERR(endpoint))
+		return PTR_ERR(endpoint);
 
-	/*
-	 * NOTE: this assumes an OF-graph port id is the same as a
-	 * media pad index.
-	 */
-	port = of_graph_get_port_by_id(sd->dev->of_node, pad->index);
-	if (!port)
-		return -ENODEV;
-
-	endpoint = of_get_next_child(port, NULL);
-	of_node_put(port);
-	if (!endpoint)
-		return -ENODEV;
+	v4l2_fwnode_endpoint_parse(endpoint, ep);
 
-	v4l2_fwnode_endpoint_parse(of_fwnode_handle(endpoint), ep);
-	of_node_put(endpoint);
+	fwnode_handle_put(endpoint);
 
 	return 0;
 }
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 4cc6a7462ae2..2e4f27c214c4 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -908,6 +908,39 @@ imx_media_pipeline_video_device(struct media_entity *start_entity,
 }
 EXPORT_SYMBOL_GPL(imx_media_pipeline_video_device);
 
+/*
+ * Find a fwnode endpoint that maps to the given subdevice's pad.
+ * If there are multiple endpoints that map to the pad, only the
+ * first endpoint encountered is returned.
+ *
+ * On success the refcount of the returned fwnode endpoint is
+ * incremented.
+ */
+struct fwnode_handle *imx_media_get_pad_fwnode(struct media_pad *pad)
+{
+	struct fwnode_handle *endpoint;
+	struct v4l2_subdev *sd;
+
+	if (!is_media_entity_v4l2_subdev(pad->entity))
+		return ERR_PTR(-ENODEV);
+
+	sd = media_entity_to_v4l2_subdev(pad->entity);
+
+	fwnode_graph_for_each_endpoint(dev_fwnode(sd->dev), endpoint) {
+		int pad_idx = media_entity_get_fwnode_pad(&sd->entity,
+							  endpoint,
+							  pad->flags);
+		if (pad_idx < 0)
+			continue;
+
+		if (pad_idx == pad->index)
+			return endpoint;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(imx_media_get_pad_fwnode);
+
 /*
  * Turn current pipeline streaming on/off starting from entity.
  */
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 4d124a86b358..d75b3c80101a 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -195,6 +195,7 @@ imx_media_pipeline_subdev(struct media_entity *start_entity, u32 grp_id,
 struct video_device *
 imx_media_pipeline_video_device(struct media_entity *start_entity,
 				enum v4l2_buf_type buftype, bool upstream);
+struct fwnode_handle *imx_media_get_pad_fwnode(struct media_pad *pad);
 
 struct imx_media_dma_buf {
 	void          *virt;
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index f71ac485f780..50826e637cb5 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -438,9 +438,8 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
 					  struct v4l2_fwnode_endpoint *ep,
 					  bool skip_mux)
 {
-	struct device_node *endpoint, *port;
+	struct fwnode_handle *endpoint;
 	struct media_entity *src;
-	struct v4l2_subdev *sd;
 	struct media_pad *pad;
 
 	if (!csi->src_sd)
@@ -462,29 +461,19 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
 	if (!pad)
 		return -ENODEV;
 
-	sd = media_entity_to_v4l2_subdev(pad->entity);
-
 	/* To get bus type we may need to skip video mux */
 	if (skip_mux && src->function == MEDIA_ENT_F_VID_MUX) {
-		src = &sd->entity;
+		src = pad->entity;
 		goto skip_video_mux;
 	}
 
-	/*
-	 * NOTE: this assumes an OF-graph port id is the same as a
-	 * media pad index.
-	 */
-	port = of_graph_get_port_by_id(sd->dev->of_node, pad->index);
-	if (!port)
-		return -ENODEV;
+	endpoint = imx_media_get_pad_fwnode(pad);
+	if (IS_ERR(endpoint))
+		return PTR_ERR(endpoint);
 
-	endpoint = of_get_next_child(port, NULL);
-	of_node_put(port);
-	if (!endpoint)
-		return -ENODEV;
+	v4l2_fwnode_endpoint_parse(endpoint, ep);
 
-	v4l2_fwnode_endpoint_parse(of_fwnode_handle(endpoint), ep);
-	of_node_put(endpoint);
+	fwnode_handle_put(endpoint);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
