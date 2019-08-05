Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0BB827F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XJeVox1HpUP7EJKBpkr6MhYEK6XKmgVnPg2ot/xX5Xo=; b=FzR4fEbq2oAoCRFu/V9+rz6TGx
	jgJOUPnsc7y7xHW/pqfuD6p9IHwwyAN8KcpJ3Cc9+WzeFLFGE8SK+imqXjJHZTBo/eS5t11U6D9Yn
	BvS2GDA+bmW7nvnjCa0UdOk6G83qiYJowNtKx27UbLZeJBU597RW+mMUP01VEGC21ckVSbIKGNpRV
	zNZMGYo75yldhyW0G3sauhrauLfCrRJHzHOvxi8wooIA36isxdekaEdy332KjG7MBHMOiVa5yNPqf
	m96xruHLYBq3TKK1/1wXzl8TeJu7aTkzvDFMQd9Fy74Vkwt03NF0SiV2D39ui+0lJ5Oq+rqV85QMW
	eBWGX3cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humVl-0004hY-7D; Mon, 05 Aug 2019 23:35:29 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVc-0004gN-H6
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id y15so40432850pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C0KFhBb04zphSNDFERKuxXP3f//3wIxB1UOM6YjQ1JA=;
 b=N8D9sJ8lCraliMA+o+xwJJNn4uLnig+zXYMH3wlaLT8ULMzCNaeUSEU0z+LO6EIjBC
 AWS6UIjR7QJUd2kW28gVO3LhUHbLxHffRXPueaVYg+1IHZCt5otJXvkmdOKu5ZOeDGTq
 yiDWN493oTmlmm55dPslo65IJvjEIlCObuTHWbTKKsJm8CUfhh27x3O6/LTh4DQcuwf9
 VIjHAmYhLNzdYHZmuMXXVzMskpckOEi7P/qyoS0vqpAZG/kfSQFjK4M6cyMLo8VICOr5
 FVuoy2OnI+auXXhD/oFNc9GxsxWpErFmKUSRSUmA7hxo9OMC6C9ZwV+n9fMR42T84Q/F
 rQwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C0KFhBb04zphSNDFERKuxXP3f//3wIxB1UOM6YjQ1JA=;
 b=PgrXBDWDWazZTa/04wXV6uxwW20rTR1TBa5xJkyHr08Vmoq1xb7EFUMWAV5bmH0uZQ
 r1uhlkYQdpC3h/jcSJcR/QI0Gus/P9obyzPEHrpNOaQ81pK+lDk6f45LPHDs41dTMXqN
 vIsHbyTRULmt4LRyUN/W99yF0u3+oYfvjsDcgIpeyLb6p6FblV0EcWrurkPJOsQgIXUx
 E0NgfZtekh13s42InMm/3tafJ+WoG1wLCcX0YbHiCkmarJ6TdTFrwxz5BinmTRbJumL9
 6XeDF0rMTjuYn6MpGDsNQAucrSnwm5G8KQywb1bBg1IGa+Q9Kuwjm3tYLWRuL7rXOpr/
 /O9w==
X-Gm-Message-State: APjAAAWMIfh633VpaG5aIxC/J8aizHrkGBnNzvAi/qferEBx0fH30s8A
 3Ru0kxzOqsyA/aNgOROZ7lg=
X-Google-Smtp-Source: APXvYqx1h2MYP9gOdii1NHHm4eOTFfUILZD0i85u26GABo+FgCNCOKhGylZXC4n1bVflBRkJrtiLFg==
X-Received: by 2002:a63:6206:: with SMTP id w6mr331230pgb.428.1565048118835;
 Mon, 05 Aug 2019 16:35:18 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:18 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to driver
 base
Date: Mon,  5 Aug 2019 16:34:47 -0700
Message-Id: <20190805233505.21167-5-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163520_581253_D7B2CE57 
X-CRM114-Status: GOOD (  20.16  )
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Len Brown <lenb@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Enrico Weigelt <info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing v4l2-specific about v4l2_fwnode_{parse|put}_link().
Make these functions more generally available by moving them to driver
base, with the appropriate name changes to the functions and struct.

In the process embed a 'struct fwnode_endpoint' in 'struct fwnode_link'
for both sides of the link, and make use of fwnode_graph_parse_endpoint()
to fully parse both endpoints. Rename members local_node and
remote_node to more descriptive local_port_parent and
remote_port_parent.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/base/property.c                     | 63 +++++++++++++++++++
 drivers/media/platform/xilinx/xilinx-vipp.c | 69 +++++++++++----------
 drivers/media/v4l2-core/v4l2-fwnode.c       | 39 ------------
 drivers/staging/media/imx/imx-media-of.c    | 49 +++++++--------
 include/linux/fwnode.h                      | 14 +++++
 include/linux/property.h                    |  5 ++
 include/media/v4l2-fwnode.h                 | 44 -------------
 7 files changed, 141 insertions(+), 142 deletions(-)

diff --git a/drivers/base/property.c b/drivers/base/property.c
index 81bd01ed4042..dd82cd150d84 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -1100,6 +1100,69 @@ int fwnode_graph_parse_endpoint(const struct fwnode_handle *fwnode,
 }
 EXPORT_SYMBOL(fwnode_graph_parse_endpoint);
 
+/**
+ * fwnode_graph_parse_link() - parse a link between two endpoints
+ * @local_endpoint: the endpoint's fwnode at the local end of the link
+ * @link: pointer to the fwnode link data structure
+ *
+ * Fill the link structure with the parsed local and remote endpoint info
+ * and the local and remote port parent nodes.
+ *
+ * A reference is taken to both the local and remote port parent nodes,
+ * the caller must use fwnode_graph_put_link() to drop the references
+ * when done with the link.
+ *
+ * Return: 0 on success, or -ENOLINK if the remote endpoint fwnode
+ * can't be found.
+ */
+int fwnode_graph_parse_link(struct fwnode_handle *local_endpoint,
+			    struct fwnode_link *link)
+{
+	struct fwnode_handle *remote_endpoint;
+	int ret;
+
+	memset(link, 0, sizeof(*link));
+
+	ret = fwnode_graph_parse_endpoint(local_endpoint, &link->local);
+	if (ret < 0)
+		return ret;
+
+	remote_endpoint = fwnode_graph_get_remote_endpoint(local_endpoint);
+	if (!remote_endpoint)
+		return -ENOLINK;
+
+	ret = fwnode_graph_parse_endpoint(remote_endpoint, &link->remote);
+	if (ret < 0) {
+		fwnode_handle_put(remote_endpoint);
+		return ret;
+	}
+
+	link->local_port_parent =
+		fwnode_graph_get_port_parent(local_endpoint);
+	link->remote_port_parent =
+		fwnode_graph_get_port_parent(remote_endpoint);
+
+	fwnode_handle_put(remote_endpoint);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fwnode_graph_parse_link);
+
+/**
+ * fwnode_graph_put_link() - drop references to port parent nodes in a link
+ * @link: pointer to the fwnode link data structure
+ *
+ * Drop references to the local and remote port parent nodes in the link.
+ * This function must be called on every link parsed with
+ * fwnode_graph_parse_link().
+ */
+void fwnode_graph_put_link(struct fwnode_link *link)
+{
+	fwnode_handle_put(link->local_port_parent);
+	fwnode_handle_put(link->remote_port_parent);
+}
+EXPORT_SYMBOL_GPL(fwnode_graph_put_link);
+
 const void *device_get_match_data(struct device *dev)
 {
 	return fwnode_call_ptr_op(dev_fwnode(dev), device_get_match_data, dev);
diff --git a/drivers/media/platform/xilinx/xilinx-vipp.c b/drivers/media/platform/xilinx/xilinx-vipp.c
index cc2856efea59..9c0dfc694478 100644
--- a/drivers/media/platform/xilinx/xilinx-vipp.c
+++ b/drivers/media/platform/xilinx/xilinx-vipp.c
@@ -74,7 +74,7 @@ static int xvip_graph_build_one(struct xvip_composite_device *xdev,
 	struct media_pad *local_pad;
 	struct media_pad *remote_pad;
 	struct xvip_graph_entity *ent;
-	struct v4l2_fwnode_link link;
+	struct fwnode_link link;
 	struct fwnode_handle *ep = NULL;
 	int ret = 0;
 
@@ -89,7 +89,7 @@ static int xvip_graph_build_one(struct xvip_composite_device *xdev,
 
 		dev_dbg(xdev->dev, "processing endpoint %p\n", ep);
 
-		ret = v4l2_fwnode_parse_link(ep, &link);
+		ret = fwnode_graph_parse_link(ep, &link);
 		if (ret < 0) {
 			dev_err(xdev->dev, "failed to parse link for %p\n",
 				ep);
@@ -99,54 +99,55 @@ static int xvip_graph_build_one(struct xvip_composite_device *xdev,
 		/* Skip sink ports, they will be processed from the other end of
 		 * the link.
 		 */
-		if (link.local_port >= local->num_pads) {
+		if (link.local.port >= local->num_pads) {
 			dev_err(xdev->dev, "invalid port number %u for %p\n",
-				link.local_port, link.local_node);
-			v4l2_fwnode_put_link(&link);
+				link.local.port, link.local_port_parent);
+			fwnode_graph_put_link(&link);
 			ret = -EINVAL;
 			break;
 		}
 
-		local_pad = &local->pads[link.local_port];
+		local_pad = &local->pads[link.local.port];
 
 		if (local_pad->flags & MEDIA_PAD_FL_SINK) {
 			dev_dbg(xdev->dev, "skipping sink port %p:%u\n",
-				link.local_node, link.local_port);
-			v4l2_fwnode_put_link(&link);
+				link.local_port_parent, link.local.port);
+			fwnode_graph_put_link(&link);
 			continue;
 		}
 
 		/* Skip DMA engines, they will be processed separately. */
-		if (link.remote_node == of_fwnode_handle(xdev->dev->of_node)) {
+		if (link.remote_port_parent ==
+		    of_fwnode_handle(xdev->dev->of_node)) {
 			dev_dbg(xdev->dev, "skipping DMA port %p:%u\n",
-				link.local_node, link.local_port);
-			v4l2_fwnode_put_link(&link);
+				link.local_port_parent, link.local.port);
+			fwnode_graph_put_link(&link);
 			continue;
 		}
 
 		/* Find the remote entity. */
-		ent = xvip_graph_find_entity(xdev, link.remote_node);
+		ent = xvip_graph_find_entity(xdev, link.remote_port_parent);
 		if (ent == NULL) {
 			dev_err(xdev->dev, "no entity found for %p\n",
-				link.remote_node);
-			v4l2_fwnode_put_link(&link);
+				link.remote_port_parent);
+			fwnode_graph_put_link(&link);
 			ret = -ENODEV;
 			break;
 		}
 
 		remote = ent->entity;
 
-		if (link.remote_port >= remote->num_pads) {
+		if (link.remote.port >= remote->num_pads) {
 			dev_err(xdev->dev, "invalid port number %u on %p\n",
-				link.remote_port, link.remote_node);
-			v4l2_fwnode_put_link(&link);
+				link.remote.port, link.remote_port_parent);
+			fwnode_graph_put_link(&link);
 			ret = -EINVAL;
 			break;
 		}
 
-		remote_pad = &remote->pads[link.remote_port];
+		remote_pad = &remote->pads[link.remote.port];
 
-		v4l2_fwnode_put_link(&link);
+		fwnode_graph_put_link(&link);
 
 		/* Create the media link. */
 		dev_dbg(xdev->dev, "creating %s:%u -> %s:%u link\n",
@@ -191,7 +192,7 @@ static int xvip_graph_build_dma(struct xvip_composite_device *xdev)
 	struct media_pad *source_pad;
 	struct media_pad *sink_pad;
 	struct xvip_graph_entity *ent;
-	struct v4l2_fwnode_link link;
+	struct fwnode_link link;
 	struct device_node *ep = NULL;
 	struct xvip_dma *dma;
 	int ret = 0;
@@ -206,7 +207,7 @@ static int xvip_graph_build_dma(struct xvip_composite_device *xdev)
 
 		dev_dbg(xdev->dev, "processing endpoint %pOF\n", ep);
 
-		ret = v4l2_fwnode_parse_link(of_fwnode_handle(ep), &link);
+		ret = fwnode_graph_parse_link(of_fwnode_handle(ep), &link);
 		if (ret < 0) {
 			dev_err(xdev->dev, "failed to parse link for %pOF\n",
 				ep);
@@ -214,11 +215,11 @@ static int xvip_graph_build_dma(struct xvip_composite_device *xdev)
 		}
 
 		/* Find the DMA engine. */
-		dma = xvip_graph_find_dma(xdev, link.local_port);
+		dma = xvip_graph_find_dma(xdev, link.local.port);
 		if (dma == NULL) {
 			dev_err(xdev->dev, "no DMA engine found for port %u\n",
-				link.local_port);
-			v4l2_fwnode_put_link(&link);
+				link.local.port);
+			fwnode_graph_put_link(&link);
 			ret = -EINVAL;
 			break;
 		}
@@ -227,20 +228,20 @@ static int xvip_graph_build_dma(struct xvip_composite_device *xdev)
 			dma->video.name);
 
 		/* Find the remote entity. */
-		ent = xvip_graph_find_entity(xdev, link.remote_node);
+		ent = xvip_graph_find_entity(xdev, link.remote_port_parent);
 		if (ent == NULL) {
 			dev_err(xdev->dev, "no entity found for %pOF\n",
-				to_of_node(link.remote_node));
-			v4l2_fwnode_put_link(&link);
+				to_of_node(link.remote_port_parent));
+			fwnode_graph_put_link(&link);
 			ret = -ENODEV;
 			break;
 		}
 
-		if (link.remote_port >= ent->entity->num_pads) {
+		if (link.remote.port >= ent->entity->num_pads) {
 			dev_err(xdev->dev, "invalid port number %u on %pOF\n",
-				link.remote_port,
-				to_of_node(link.remote_node));
-			v4l2_fwnode_put_link(&link);
+				link.remote.port,
+				to_of_node(link.remote_port_parent));
+			fwnode_graph_put_link(&link);
 			ret = -EINVAL;
 			break;
 		}
@@ -249,15 +250,15 @@ static int xvip_graph_build_dma(struct xvip_composite_device *xdev)
 			source = &dma->video.entity;
 			source_pad = &dma->pad;
 			sink = ent->entity;
-			sink_pad = &sink->pads[link.remote_port];
+			sink_pad = &sink->pads[link.remote.port];
 		} else {
 			source = ent->entity;
-			source_pad = &source->pads[link.remote_port];
+			source_pad = &source->pads[link.remote.port];
 			sink = &dma->video.entity;
 			sink_pad = &dma->pad;
 		}
 
-		v4l2_fwnode_put_link(&link);
+		fwnode_graph_put_link(&link);
 
 		/* Create the media link. */
 		dev_dbg(xdev->dev, "creating %s:%u -> %s:%u link\n",
diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
index 3bd1888787eb..5d4ce4aa3fdc 100644
--- a/drivers/media/v4l2-core/v4l2-fwnode.c
+++ b/drivers/media/v4l2-core/v4l2-fwnode.c
@@ -556,45 +556,6 @@ int v4l2_fwnode_endpoint_alloc_parse(struct fwnode_handle *fwnode,
 }
 EXPORT_SYMBOL_GPL(v4l2_fwnode_endpoint_alloc_parse);
 
-int v4l2_fwnode_parse_link(struct fwnode_handle *__fwnode,
-			   struct v4l2_fwnode_link *link)
-{
-	const char *port_prop = is_of_node(__fwnode) ? "reg" : "port";
-	struct fwnode_handle *fwnode;
-
-	memset(link, 0, sizeof(*link));
-
-	fwnode = fwnode_get_parent(__fwnode);
-	fwnode_property_read_u32(fwnode, port_prop, &link->local_port);
-	fwnode = fwnode_get_next_parent(fwnode);
-	if (is_of_node(fwnode) && of_node_name_eq(to_of_node(fwnode), "ports"))
-		fwnode = fwnode_get_next_parent(fwnode);
-	link->local_node = fwnode;
-
-	fwnode = fwnode_graph_get_remote_endpoint(__fwnode);
-	if (!fwnode) {
-		fwnode_handle_put(fwnode);
-		return -ENOLINK;
-	}
-
-	fwnode = fwnode_get_parent(fwnode);
-	fwnode_property_read_u32(fwnode, port_prop, &link->remote_port);
-	fwnode = fwnode_get_next_parent(fwnode);
-	if (is_of_node(fwnode) && of_node_name_eq(to_of_node(fwnode), "ports"))
-		fwnode = fwnode_get_next_parent(fwnode);
-	link->remote_node = fwnode;
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(v4l2_fwnode_parse_link);
-
-void v4l2_fwnode_put_link(struct v4l2_fwnode_link *link)
-{
-	fwnode_handle_put(link->local_node);
-	fwnode_handle_put(link->remote_node);
-}
-EXPORT_SYMBOL_GPL(v4l2_fwnode_put_link);
-
 static int
 v4l2_async_notifier_fwnode_parse_endpoint(struct device *dev,
 					  struct v4l2_async_notifier *notifier,
diff --git a/drivers/staging/media/imx/imx-media-of.c b/drivers/staging/media/imx/imx-media-of.c
index 2d3efd2a6dde..736c954a8ff5 100644
--- a/drivers/staging/media/imx/imx-media-of.c
+++ b/drivers/staging/media/imx/imx-media-of.c
@@ -84,28 +84,29 @@ EXPORT_SYMBOL_GPL(imx_media_add_of_subdevs);
  */
 static int create_of_link(struct imx_media_dev *imxmd,
 			  struct v4l2_subdev *sd,
-			  struct v4l2_fwnode_link *link)
+			  struct fwnode_link *link)
 {
 	struct v4l2_subdev *remote, *src, *sink;
 	int src_pad, sink_pad;
 
-	if (link->local_port >= sd->entity.num_pads)
+	if (link->local.port >= sd->entity.num_pads)
 		return -EINVAL;
 
-	remote = imx_media_find_subdev_by_fwnode(imxmd, link->remote_node);
+	remote = imx_media_find_subdev_by_fwnode(imxmd,
+						 link->remote_port_parent);
 	if (!remote)
 		return 0;
 
-	if (sd->entity.pads[link->local_port].flags & MEDIA_PAD_FL_SINK) {
+	if (sd->entity.pads[link->local.port].flags & MEDIA_PAD_FL_SINK) {
 		src = remote;
-		src_pad = link->remote_port;
+		src_pad = link->remote.port;
 		sink = sd;
-		sink_pad = link->local_port;
+		sink_pad = link->local.port;
 	} else {
 		src = sd;
-		src_pad = link->local_port;
+		src_pad = link->local.port;
 		sink = remote;
-		sink_pad = link->remote_port;
+		sink_pad = link->remote.port;
 	}
 
 	/* make sure link doesn't already exist before creating */
@@ -126,17 +127,17 @@ static int create_of_link(struct imx_media_dev *imxmd,
 int imx_media_create_of_links(struct imx_media_dev *imxmd,
 			      struct v4l2_subdev *sd)
 {
-	struct v4l2_fwnode_link link;
-	struct device_node *ep;
+	struct fwnode_handle *endpoint;
+	struct fwnode_link link;
 	int ret;
 
-	for_each_endpoint_of_node(sd->dev->of_node, ep) {
-		ret = v4l2_fwnode_parse_link(of_fwnode_handle(ep), &link);
+	fwnode_graph_for_each_endpoint(dev_fwnode(sd->dev), endpoint) {
+		ret = fwnode_graph_parse_link(endpoint, &link);
 		if (ret)
 			continue;
 
 		ret = create_of_link(imxmd, sd, &link);
-		v4l2_fwnode_put_link(&link);
+		fwnode_graph_put_link(&link);
 		if (ret)
 			return ret;
 	}
@@ -152,35 +153,33 @@ EXPORT_SYMBOL_GPL(imx_media_create_of_links);
 int imx_media_create_csi_of_links(struct imx_media_dev *imxmd,
 				  struct v4l2_subdev *csi)
 {
-	struct device_node *csi_np = csi->dev->of_node;
-	struct device_node *ep;
+	struct fwnode_handle *csi_np = dev_fwnode(csi->dev);
+	struct fwnode_handle *csi_ep;
 
-	for_each_child_of_node(csi_np, ep) {
-		struct fwnode_handle *fwnode, *csi_ep;
-		struct v4l2_fwnode_link link;
+	fwnode_for_each_child_node(csi_np, csi_ep) {
+		struct fwnode_handle *fwnode;
+		struct fwnode_link link;
 		int ret;
 
 		memset(&link, 0, sizeof(link));
 
-		link.local_node = of_fwnode_handle(csi_np);
-		link.local_port = CSI_SINK_PAD;
-
-		csi_ep = of_fwnode_handle(ep);
+		link.local_port_parent = csi_np;
+		link.local.port = CSI_SINK_PAD;
 
 		fwnode = fwnode_graph_get_remote_endpoint(csi_ep);
 		if (!fwnode)
 			continue;
 
 		fwnode = fwnode_get_parent(fwnode);
-		fwnode_property_read_u32(fwnode, "reg", &link.remote_port);
+		fwnode_property_read_u32(fwnode, "reg", &link.remote.port);
 		fwnode = fwnode_get_next_parent(fwnode);
 		if (is_of_node(fwnode) &&
 		    of_node_name_eq(to_of_node(fwnode), "ports"))
 			fwnode = fwnode_get_next_parent(fwnode);
-		link.remote_node = fwnode;
+		link.remote_port_parent = fwnode;
 
 		ret = create_of_link(imxmd, csi, &link);
-		fwnode_handle_put(link.remote_node);
+		fwnode_handle_put(link.remote_port_parent);
 		if (ret)
 			return ret;
 	}
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index a11c8c56c78b..c2063ae2affe 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -31,6 +31,20 @@ struct fwnode_endpoint {
 	const struct fwnode_handle *local_fwnode;
 };
 
+/**
+ * struct fwnode_link - a link between two fwnode graph endpoints
+ * @local: parsed local endpoint of the link
+ * @local_port_parent: port parent fwnode of local endpoint
+ * @remote: parsed remote endpoint of the link
+ * @remote_port_parent: port parent fwnode of the remote endpoint
+ */
+struct fwnode_link {
+	struct fwnode_endpoint local;
+	struct fwnode_handle *local_port_parent;
+	struct fwnode_endpoint remote;
+	struct fwnode_handle *remote_port_parent;
+};
+
 #define NR_FWNODE_REFERENCE_ARGS	8
 
 /**
diff --git a/include/linux/property.h b/include/linux/property.h
index 5a910ad79591..3923906fc314 100644
--- a/include/linux/property.h
+++ b/include/linux/property.h
@@ -374,6 +374,11 @@ fwnode_graph_get_endpoint_by_id(const struct fwnode_handle *fwnode,
 int fwnode_graph_parse_endpoint(const struct fwnode_handle *fwnode,
 				struct fwnode_endpoint *endpoint);
 
+int fwnode_graph_parse_link(struct fwnode_handle *fwnode,
+			    struct fwnode_link *link);
+
+void fwnode_graph_put_link(struct fwnode_link *link);
+
 /* -------------------------------------------------------------------------- */
 /* Software fwnode support - when HW description is incomplete or missing */
 
diff --git a/include/media/v4l2-fwnode.h b/include/media/v4l2-fwnode.h
index f6a7bcd13197..f81f8bf34526 100644
--- a/include/media/v4l2-fwnode.h
+++ b/include/media/v4l2-fwnode.h
@@ -109,20 +109,6 @@ struct v4l2_fwnode_endpoint {
 	unsigned int nr_of_link_frequencies;
 };
 
-/**
- * struct v4l2_fwnode_link - a link between two endpoints
- * @local_node: pointer to device_node of this endpoint
- * @local_port: identifier of the port this endpoint belongs to
- * @remote_node: pointer to device_node of the remote endpoint
- * @remote_port: identifier of the port the remote endpoint belongs to
- */
-struct v4l2_fwnode_link {
-	struct fwnode_handle *local_node;
-	unsigned int local_port;
-	struct fwnode_handle *remote_node;
-	unsigned int remote_port;
-};
-
 /**
  * v4l2_fwnode_endpoint_parse() - parse all fwnode node properties
  * @fwnode: pointer to the endpoint's fwnode handle
@@ -203,36 +189,6 @@ void v4l2_fwnode_endpoint_free(struct v4l2_fwnode_endpoint *vep);
 int v4l2_fwnode_endpoint_alloc_parse(struct fwnode_handle *fwnode,
 				     struct v4l2_fwnode_endpoint *vep);
 
-/**
- * v4l2_fwnode_parse_link() - parse a link between two endpoints
- * @fwnode: pointer to the endpoint's fwnode at the local end of the link
- * @link: pointer to the V4L2 fwnode link data structure
- *
- * Fill the link structure with the local and remote nodes and port numbers.
- * The local_node and remote_node fields are set to point to the local and
- * remote port's parent nodes respectively (the port parent node being the
- * parent node of the port node if that node isn't a 'ports' node, or the
- * grand-parent node of the port node otherwise).
- *
- * A reference is taken to both the local and remote nodes, the caller must use
- * v4l2_fwnode_put_link() to drop the references when done with the
- * link.
- *
- * Return: 0 on success, or -ENOLINK if the remote endpoint fwnode can't be
- * found.
- */
-int v4l2_fwnode_parse_link(struct fwnode_handle *fwnode,
-			   struct v4l2_fwnode_link *link);
-
-/**
- * v4l2_fwnode_put_link() - drop references to nodes in a link
- * @link: pointer to the V4L2 fwnode link data structure
- *
- * Drop references to the local and remote nodes in the link. This function
- * must be called on every link parsed with v4l2_fwnode_parse_link().
- */
-void v4l2_fwnode_put_link(struct v4l2_fwnode_link *link);
-
 /**
  * typedef parse_endpoint_func - Driver's callback function to be called on
  *	each V4L2 fwnode endpoint.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
