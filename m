Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBC482834
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8Ae3ObngKhPcSAzXi0lyyZFvlUVq1Lgq1H3sALjDDPM=; b=Sc5jtC3hYwmcEh9c2JjNWPEvP5
	ya2XHDl9Qh7ZtkiukNgn+ahVKWPMzTZB/jEkizG7eWZ2q1b5M+F7EypBKCGnF7EUHyAg5K/8RFzV8
	om8xmQbsj1crt/pW9VoeESxhYZPE/IJ20X9zZIqoQ2UhiwndHc/IzAMKrFJCvcQgw5gaNi1XNu++v
	QutAQ3DVp78lU1yTgFoHHV4gJn47FH0iSeQkvmZrjtB2HXNiKupYvJGNG1PqU+6HqBWPqreVOtJmd
	j3VBUcZKdiRvZr4IIUYMBcIUMbkMyc/mm5ySokTJ3dWnm0QqpuEnfRVpQsMl2lx7Oud+W2yW/GfkC
	VgUoBDFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humYB-0007Vn-PN; Mon, 05 Aug 2019 23:37:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVx-00055q-BN
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id b3so37084969plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0S1ar2fMdERTJzIO99lo9VyZc288UAn1DrH6O+6xG3A=;
 b=Tg9MUibHxcwDQfGvRWXjw3IaHbqAI3CNSNU94W3GDMVrNbYxaWalkgmaZG9xLSdcdC
 RWB/02yluRHJjyCd9jgp/t4tUYWHrBj/Y4Tj3e/05X+9GMEoJwuKvu3ZI6BnbQzoZ6sX
 0Ha64RCnDaDxQ5Mn4igGvJn+cvDlfx9BFinUjymmVINucui/sV9MJopRFBwGsFGAdgOv
 BsSNrturNVt+kJdz96eJTgOyVs86jIDpmHeBY7IyrKP8tC7sVnmaIRI964/ktYq4hoI5
 QH196OBdiu9Lr7dD8F0HUv86fYgx7+E8zI9F472sQo7jzhoNtp1ULH5Fj1gYWEUnIbEE
 0ACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0S1ar2fMdERTJzIO99lo9VyZc288UAn1DrH6O+6xG3A=;
 b=M7EoTfTJF0gt2Bjmg7s0NhnDxAEPJ1+AzAoh8ZSLUhdncT+oH7XY9qIZ4N/hhSBVi2
 XFY19EEP7QNnCYbR8uRVP5F4lG5IG9+L7ffQq0flilBbR85hWIfhZD7emnwvbVpp7BGd
 ExSN+JS8S5oO9exDeNgewWvZHvp/Qy/6aVpyO6Ibrj0ulqDG7UGepSJu6mwodWvUYXKj
 56ABadnoy8IbkiAr8sZNYMrcMEzFpnAhnyIi82ze5bS8vU/CMhv01fGwg5C/e/VVtnY/
 1aNzHe+jfVWaevDG5BDiRXHIdZWcXOUbkX05hoByM8bi71wHz+XnPufejRfbmnSM6G9R
 HHKA==
X-Gm-Message-State: APjAAAUS4K7q90gKXAASke1ZZt8v9DxtsYe3HOJ6vNvmNrDCOEpb4XKT
 cScWlfTh21IiwNGEYN4md1s=
X-Google-Smtp-Source: APXvYqxarRCZVmeKkHTq+3l7c5xuS2KTn9u0u55xlL4X1ShwB8l5jm4IbrYWk7boV6jD2FtQt8b7oA==
X-Received: by 2002:a17:902:bd06:: with SMTP id
 p6mr243778pls.189.1565048140051; 
 Mon, 05 Aug 2019 16:35:40 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:39 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 21/22] media: imx: Use media_create_fwnode_links for external
 links
Date: Mon,  5 Aug 2019 16:35:04 -0700
Message-Id: <20190805233505.21167-22-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163541_603934_C842664D 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

The entities external to the i.MX6 IPU and i.MX7 now create the links
to their fwnode-endpoint connected entities in their notifier bound
callbacks.

This should mean that there is no longer a need for the imx-media driver
to create these external fwnode-endpoint based links. But the v4l2-async
framework does not allow multiple subdevice notifiers to contain a
duplicate subdevice in their asd_list. Only the first subdev notifier that
discovers and adds that one subdevice to its asd_list will receive a bound
callback for it. Other subdevices that also have firmware endpoint
connections to this duplicate subdevice will not have it in their asd_list,
and thus will never receive a bound callback for it.

Until there is a solution to that problem, imx_media_create_links() is
still needed to create media links for subdevices that never received a
bound callback.

But media_create_fwnode_links() can now be used to do that work, so
imx_media_create_of_links() and imx_media_create_csi_of_links() are
removed.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 .../staging/media/imx/imx-media-dev-common.c  |  49 ++++----
 drivers/staging/media/imx/imx-media-of.c      | 113 ------------------
 drivers/staging/media/imx/imx-media.h         |   4 -
 3 files changed, 27 insertions(+), 139 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index 66b505f7e8df..4dbe983af030 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -36,31 +36,36 @@ static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
 static int imx_media_create_links(struct v4l2_async_notifier *notifier)
 {
 	struct imx_media_dev *imxmd = notifier2dev(notifier);
-	struct v4l2_subdev *sd;
+	struct fwnode_handle *sda_fwnode, *sdb_fwnode;
+	struct v4l2_subdev *sda, *sdb;
+
+	list_for_each_entry(sda, &imxmd->v4l2_dev.subdevs, list) {
+		/* links have already been created for the IPU subdevs */
+		if (is_ipu_internal_subdev(sda))
+			continue;
+
+		sda_fwnode = (sda->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) ?
+			dev_fwnode(sda->dev->parent) :
+			dev_fwnode(sda->dev);
+
+		list_for_each_entry(sdb, &imxmd->v4l2_dev.subdevs, list) {
+			if (sda == sdb)
+				continue;
+			if (is_ipu_internal_subdev(sdb))
+				continue;
+
+			sdb_fwnode = (sdb->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) ?
+				dev_fwnode(sdb->dev->parent) :
+				dev_fwnode(sdb->dev);
 
-	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
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
 			/*
-			 * if this subdev has fwnode links, create media
-			 * links for them.
+			 * if there are fwnode endpoint connections between
+			 * these subdevs, create media links for them.
 			 */
-			imx_media_create_of_links(imxmd, sd);
-			break;
+			__media_create_fwnode_links(&sda->entity,
+						    sda_fwnode,
+						    &sdb->entity,
+						    sdb_fwnode, 0);
 		}
 	}
 
diff --git a/drivers/staging/media/imx/imx-media-of.c b/drivers/staging/media/imx/imx-media-of.c
index 736c954a8ff5..82e13e972e23 100644
--- a/drivers/staging/media/imx/imx-media-of.c
+++ b/drivers/staging/media/imx/imx-media-of.c
@@ -74,116 +74,3 @@ int imx_media_add_of_subdevs(struct imx_media_dev *imxmd,
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
-			  struct fwnode_link *link)
-{
-	struct v4l2_subdev *remote, *src, *sink;
-	int src_pad, sink_pad;
-
-	if (link->local.port >= sd->entity.num_pads)
-		return -EINVAL;
-
-	remote = imx_media_find_subdev_by_fwnode(imxmd,
-						 link->remote_port_parent);
-	if (!remote)
-		return 0;
-
-	if (sd->entity.pads[link->local.port].flags & MEDIA_PAD_FL_SINK) {
-		src = remote;
-		src_pad = link->remote.port;
-		sink = sd;
-		sink_pad = link->local.port;
-	} else {
-		src = sd;
-		src_pad = link->local.port;
-		sink = remote;
-		sink_pad = link->remote.port;
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
-	struct fwnode_handle *endpoint;
-	struct fwnode_link link;
-	int ret;
-
-	fwnode_graph_for_each_endpoint(dev_fwnode(sd->dev), endpoint) {
-		ret = fwnode_graph_parse_link(endpoint, &link);
-		if (ret)
-			continue;
-
-		ret = create_of_link(imxmd, sd, &link);
-		fwnode_graph_put_link(&link);
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
-	struct fwnode_handle *csi_np = dev_fwnode(csi->dev);
-	struct fwnode_handle *csi_ep;
-
-	fwnode_for_each_child_node(csi_np, csi_ep) {
-		struct fwnode_handle *fwnode;
-		struct fwnode_link link;
-		int ret;
-
-		memset(&link, 0, sizeof(link));
-
-		link.local_port_parent = csi_np;
-		link.local.port = CSI_SINK_PAD;
-
-		fwnode = fwnode_graph_get_remote_endpoint(csi_ep);
-		if (!fwnode)
-			continue;
-
-		fwnode = fwnode_get_parent(fwnode);
-		fwnode_property_read_u32(fwnode, "reg", &link.remote.port);
-		fwnode = fwnode_get_next_parent(fwnode);
-		if (is_of_node(fwnode) &&
-		    of_node_name_eq(to_of_node(fwnode), "ports"))
-			fwnode = fwnode_get_next_parent(fwnode);
-		link.remote_port_parent = fwnode;
-
-		ret = create_of_link(imxmd, csi, &link);
-		fwnode_handle_put(link.remote_port_parent);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(imx_media_create_csi_of_links);
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index c42a2cafb8fb..7bdeecd29248 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -238,10 +238,6 @@ void imx_media_unregister_ipu_internal_subdevs(struct imx_media_dev *imxmd);
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
