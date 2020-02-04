Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8241A15239E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:53:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mwmgWa93MglqaFOpCpsTKjhuF2gUvKTDjCBjKcy0IIg=; b=rbZB7mshc/dh11tWy3C7wbKQSG
	G/QLKenrPq7FQVnfjiFaeO+fv9OjWgxeowQdWrpmAbNx3f3QatK9phljCwGHJ/uP86i3L+AwYOLIX
	SGp1egGje98gdGIx8Jm1CpOd8BjliYlJZ5Av6HnXxwVsGuTssvkd7p0NMhyVNtsDCdcmjKJ3+gUWP
	xZj21urQf2aG2pa1WbTzWZkLWTmPdQ/Lb/0ZNAXaT79buaN7dNb+HO0084XgqEm42xcH9jNAyHDzS
	JScrF8ZOb7hjXwECUZSYIwOQVJ/wzliPkaIXZpyL9IXBAu0vBBN4kKKKzdK+MH1O9K2p+hVZtM+XJ
	KareOsYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz807-0000Ur-70; Tue, 04 Feb 2020 23:53:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7x9-0004k7-MJ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:50:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id u131so10461816pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bHkoLoAopDh/1dv+BwgYSSiMTnq6CBi7MdRZKVUgkME=;
 b=OnhOeTnL8j+tQhl0J2QwQllf0/LcmRUjaAJhn9h31tZDYc+UHsX8PHE0pCYlcYUAfZ
 pRVCGs+Q+b0WX96fvvKW+Zoi+2UCYMiXWiwSjvWTCrTZv+1RhDnkNsmAO7YJ4MS6eUxb
 QHhLmiAeN0iiVk4aeMhlBIZsHAAlU5j5AOuhYcBHtpSIO34gm6vSdZd12yUNOZHoWeVR
 tSez0AO7uHaf2rolk5fDiS1yUJ8L77RGZHGpO0rNi3HxWB4oVG+nhnzo3vjSizNE73wj
 GUxhVc0wHkQ/Nk2JtbhS2Bt2mGLTIqb8ECgn0BvR67IfqZh5n9svPSg38UdIiyyo5z6M
 iZow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bHkoLoAopDh/1dv+BwgYSSiMTnq6CBi7MdRZKVUgkME=;
 b=rv+RaianZnzFe1Gb9U2encvS8dnE9um1NYuUpOJT9s8S3M+5UC5TdIO473bHxkK4P2
 YIaplspcbB3SWcXtfWD24BZNghTGm7BloeKK4VDREHxDKqn9P1npZ8a2sI2HZTGYcywt
 O+dkoeZHiqyXZloK9vlgxK+soirryjz7r3qbtifQUb6IryHjFNx7NKN1kYQzHJyBY7Y5
 /f1k5ZFhvmYX3AuwQxQdQ4Hp1OEG+bDujnz0u8JdLvT7ttpqTggjjfWh5BY/K1OPU/3N
 8j44p2QYtgxzgvLqvvXtZW7x/tg2TP9r5vw5/PpaCJUAPgDq0QRkUtPPCwive//lEFkm
 9+7A==
X-Gm-Message-State: APjAAAWpoIFO9ADrWSfMkYUyH8fOnLXE89Vxq5akVCLwz4Pn/ASe362m
 wF4nlRBaKWf2s26x0C6KmGY=
X-Google-Smtp-Source: APXvYqzaAZC2PfzKi8U4riquIjtcm+Kd+InTwISM6YhM4lCAk8kgeaUyQEoCzW/Y1bX6/oEqDADZ8Q==
X-Received: by 2002:a63:c846:: with SMTP id l6mr10114760pgi.144.1580860197353; 
 Tue, 04 Feb 2020 15:49:57 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:56 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 15/17] media: imx: Create missing links from CSI-2 receiver
Date: Tue,  4 Feb 2020 15:49:16 -0800
Message-Id: <20200204234918.20425-16-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154959_819403_9AF27CD3 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

The entities external to the i.MX6 IPU and i.MX7 now create the links
to their fwnode-endpoint connected entities in their notifier bound
callbacks. Which means imx_media_create_of_links() and
imx_media_create_csi_of_links() are no longer needed and are removed.

However there is still one case in which imx-media needs to create
fwnode-endpoint based links at probe completion. The v4l2-async framework
does not allow multiple subdevice notifiers to contain a duplicate
subdevice in their asd_list. Only the first subdev notifier that discovers
and adds that one subdevice to its asd_list will receive a bound callback
for it. Other subdevices that also have firmware endpoint connections to
this duplicate subdevice will not have it in their asd_list, and thus will
never receive a bound callback for it. In the case of imx-media, the one
duplicate subdevice in question is the i.MX6 MIPI CSI-2 receiver.

Until there is a solution to that problem, rewrite imx_media_create_links()
to add the missing links from the CSI-2 receiver to the CSIs and CSI muxes.
The function is renamed imx_media_create_csi2_links().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_links().
Changes in v2:
- this is a rewrite of v1 "media: imx: Use media_create_fwnode_links for
  external links", which only adds the missing CSI-2 receiver links.
---
 .../staging/media/imx/imx-media-dev-common.c  |  46 +++----
 drivers/staging/media/imx/imx-media-of.c      | 114 ------------------
 drivers/staging/media/imx/imx-media.h         |   4 -
 3 files changed, 17 insertions(+), 147 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index 66b505f7e8df..f7ad3cbbeec2 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -30,41 +30,31 @@ static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
 }
 
 /*
- * Create the media links for all subdevs that registered.
+ * Create the missing media links from the CSI-2 receiver.
  * Called after all async subdevs have bound.
  */
-static int imx_media_create_links(struct v4l2_async_notifier *notifier)
+static void imx_media_create_csi2_links(struct imx_media_dev *imxmd)
 {
-	struct imx_media_dev *imxmd = notifier2dev(notifier);
-	struct v4l2_subdev *sd;
+	struct v4l2_subdev *sd, *csi2 = NULL;
 
 	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
-		switch (sd->grp_id) {
-		case IMX_MEDIA_GRP_ID_IPU_VDIC:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRP:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRPENC:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRPVF:
-			/*
-			 * links have already been created for the
-			 * sync-registered subdevs.
-			 */
-			break;
-		case IMX_MEDIA_GRP_ID_IPU_CSI0:
-		case IMX_MEDIA_GRP_ID_IPU_CSI1:
-		case IMX_MEDIA_GRP_ID_CSI:
-			imx_media_create_csi_of_links(imxmd, sd);
-			break;
-		default:
-			/*
-			 * if this subdev has fwnode links, create media
-			 * links for them.
-			 */
-			imx_media_create_of_links(imxmd, sd);
+		if (sd->grp_id == IMX_MEDIA_GRP_ID_CSI2) {
+			csi2 = sd;
 			break;
 		}
 	}
+	if (!csi2)
+		return;
 
-	return 0;
+	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
+		/* skip if not a CSI or a video mux */
+		if (!(sd->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) &&
+		    !(sd->grp_id & IMX_MEDIA_GRP_ID_CSI) &&
+		    sd->entity.function != MEDIA_ENT_F_VID_MUX)
+			continue;
+
+		imx_media_create_fwnode_pad_links(csi2, sd);
+	}
 }
 
 /*
@@ -196,9 +186,7 @@ int imx_media_probe_complete(struct v4l2_async_notifier *notifier)
 
 	mutex_lock(&imxmd->mutex);
 
-	ret = imx_media_create_links(notifier);
-	if (ret)
-		goto unlock;
+	imx_media_create_csi2_links(imxmd);
 
 	ret = imx_media_create_pad_vdev_lists(imxmd);
 	if (ret)
diff --git a/drivers/staging/media/imx/imx-media-of.c b/drivers/staging/media/imx/imx-media-of.c
index 2d3efd2a6dde..82e13e972e23 100644
--- a/drivers/staging/media/imx/imx-media-of.c
+++ b/drivers/staging/media/imx/imx-media-of.c
@@ -74,117 +74,3 @@ int imx_media_add_of_subdevs(struct imx_media_dev *imxmd,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(imx_media_add_of_subdevs);
-
-/*
- * Create a single media link to/from sd using a fwnode link.
- *
- * NOTE: this function assumes an OF port node is equivalent to
- * a media pad (port id equal to media pad index), and that an
- * OF endpoint node is equivalent to a media link.
- */
-static int create_of_link(struct imx_media_dev *imxmd,
-			  struct v4l2_subdev *sd,
-			  struct v4l2_fwnode_link *link)
-{
-	struct v4l2_subdev *remote, *src, *sink;
-	int src_pad, sink_pad;
-
-	if (link->local_port >= sd->entity.num_pads)
-		return -EINVAL;
-
-	remote = imx_media_find_subdev_by_fwnode(imxmd, link->remote_node);
-	if (!remote)
-		return 0;
-
-	if (sd->entity.pads[link->local_port].flags & MEDIA_PAD_FL_SINK) {
-		src = remote;
-		src_pad = link->remote_port;
-		sink = sd;
-		sink_pad = link->local_port;
-	} else {
-		src = sd;
-		src_pad = link->local_port;
-		sink = remote;
-		sink_pad = link->remote_port;
-	}
-
-	/* make sure link doesn't already exist before creating */
-	if (media_entity_find_link(&src->entity.pads[src_pad],
-				   &sink->entity.pads[sink_pad]))
-		return 0;
-
-	v4l2_info(sd->v4l2_dev, "%s:%d -> %s:%d\n",
-		  src->name, src_pad, sink->name, sink_pad);
-
-	return media_create_pad_link(&src->entity, src_pad,
-				     &sink->entity, sink_pad, 0);
-}
-
-/*
- * Create media links to/from sd using its device-tree endpoints.
- */
-int imx_media_create_of_links(struct imx_media_dev *imxmd,
-			      struct v4l2_subdev *sd)
-{
-	struct v4l2_fwnode_link link;
-	struct device_node *ep;
-	int ret;
-
-	for_each_endpoint_of_node(sd->dev->of_node, ep) {
-		ret = v4l2_fwnode_parse_link(of_fwnode_handle(ep), &link);
-		if (ret)
-			continue;
-
-		ret = create_of_link(imxmd, sd, &link);
-		v4l2_fwnode_put_link(&link);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(imx_media_create_of_links);
-
-/*
- * Create media links to the given CSI subdevice's sink pads,
- * using its device-tree endpoints.
- */
-int imx_media_create_csi_of_links(struct imx_media_dev *imxmd,
-				  struct v4l2_subdev *csi)
-{
-	struct device_node *csi_np = csi->dev->of_node;
-	struct device_node *ep;
-
-	for_each_child_of_node(csi_np, ep) {
-		struct fwnode_handle *fwnode, *csi_ep;
-		struct v4l2_fwnode_link link;
-		int ret;
-
-		memset(&link, 0, sizeof(link));
-
-		link.local_node = of_fwnode_handle(csi_np);
-		link.local_port = CSI_SINK_PAD;
-
-		csi_ep = of_fwnode_handle(ep);
-
-		fwnode = fwnode_graph_get_remote_endpoint(csi_ep);
-		if (!fwnode)
-			continue;
-
-		fwnode = fwnode_get_parent(fwnode);
-		fwnode_property_read_u32(fwnode, "reg", &link.remote_port);
-		fwnode = fwnode_get_next_parent(fwnode);
-		if (is_of_node(fwnode) &&
-		    of_node_name_eq(to_of_node(fwnode), "ports"))
-			fwnode = fwnode_get_next_parent(fwnode);
-		link.remote_node = fwnode;
-
-		ret = create_of_link(imxmd, csi, &link);
-		fwnode_handle_put(link.remote_node);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(imx_media_create_csi_of_links);
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 5f23d852122f..5271b84bea9a 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -248,10 +248,6 @@ void imx_media_unregister_ipu_internal_subdevs(struct imx_media_dev *imxmd);
 /* imx-media-of.c */
 int imx_media_add_of_subdevs(struct imx_media_dev *dev,
 			     struct device_node *np);
-int imx_media_create_of_links(struct imx_media_dev *imxmd,
-			      struct v4l2_subdev *sd);
-int imx_media_create_csi_of_links(struct imx_media_dev *imxmd,
-				  struct v4l2_subdev *csi);
 int imx_media_of_add_csi(struct imx_media_dev *imxmd,
 			 struct device_node *csi_np);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
