Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D86BD1A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDk1ESu68bkwQ/YtTjC58gid+ClJu4zkuDzr0i84y/U=; b=SRb+nOzx32gDyj
	JjJiPh/bWLHS9+Oqsr3X/+cu+ntODz6Oeky1Sb5TFt8bnO3qZyG2KCBoyW8woo72TjEJ9l9AploDy
	6sx1frgJ71HaBlX8ePDHwbrgt6bL8mPhwPHHTOhfFOD8K+ebG/a4gkXAAINUr9TvVyOpgUdqjH4Z3
	n8EttkGFdiyDqFEIP9ONiVWb0QU0J0b9gyeurqIULVV1T1xjAukHH4APf7OOu8yOdSy0flJUovIVr
	PV1ukrOxM0FOVRIFRF5fKjKaX+Vq7RiB1EwxyZq7kEyStJHnt9rmWv4VEfT6+1VBVGHfC7jCe17xF
	iR0PVGXx1JPxp6utoA8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpKZ-00040W-TO; Tue, 24 Sep 2019 18:14:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpJ1-00034Q-N0
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:12:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A1202AF03;
 Tue, 24 Sep 2019 18:12:52 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [PATCH 02/11] of: base: introduce __of_n_*_cells_parent()
Date: Tue, 24 Sep 2019 20:12:33 +0200
Message-Id: <20190924181244.7159-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924181244.7159-1-nsaenzjulienne@suse.de>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_111256_128302_95D7F25C 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, robin.murphy@arm.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Master PCI devices might not appear in the device tree, yet they still
need to get the underlying cells properties in order to calculate the
bus DMA constraints. This conflicts with of_n_*_cells() as it's designed
under the assumption it'll receive a device OF node.

Create __of_n_*_cells_parent() in order to deal with this limitation.
For now, it'll only be available privately to OF code.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 drivers/of/base.c       | 44 +++++++++++++++++++++++++++++------------
 drivers/of/of_private.h |  3 +++
 2 files changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1d667eb730e1..94f83051910c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -86,34 +86,52 @@ static bool __of_node_is_type(const struct device_node *np, const char *type)
 	return np && match && type && !strcmp(match, type);
 }
 
-int of_n_addr_cells(struct device_node *np)
+int __of_n_addr_cells_parent(struct device_node *parent)
 {
 	u32 cells;
 
-	do {
-		if (np->parent)
-			np = np->parent;
-		if (!of_property_read_u32(np, "#address-cells", &cells))
+	while (parent) {
+		if (!of_property_read_u32(parent, "#address-cells", &cells))
 			return cells;
-	} while (np->parent);
+
+		parent = parent->parent;
+	}
+
 	/* No #address-cells property for the root node */
 	return OF_ROOT_NODE_ADDR_CELLS_DEFAULT;
 }
+
+int of_n_addr_cells(struct device_node *np)
+{
+	if (np->parent)
+		np = np->parent;
+
+	return __of_n_addr_cells_parent(np);
+}
 EXPORT_SYMBOL(of_n_addr_cells);
 
-int of_n_size_cells(struct device_node *np)
+int __of_n_size_cells_parent(struct device_node *parent)
 {
 	u32 cells;
 
-	do {
-		if (np->parent)
-			np = np->parent;
-		if (!of_property_read_u32(np, "#size-cells", &cells))
+	while (parent) {
+		if (!of_property_read_u32(parent, "#size-cells", &cells))
 			return cells;
-	} while (np->parent);
-	/* No #size-cells property for the root node */
+
+		parent = parent->parent;
+	}
+
+	/* No #address-cells property for the root node */
 	return OF_ROOT_NODE_SIZE_CELLS_DEFAULT;
 }
+
+int of_n_size_cells(struct device_node *np)
+{
+	if (np->parent)
+		np = np->parent;
+
+	return __of_n_size_cells_parent(np);
+}
 EXPORT_SYMBOL(of_n_size_cells);
 
 #ifdef CONFIG_NUMA
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index 24786818e32e..b528304be244 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -39,6 +39,9 @@ extern struct mutex of_mutex;
 extern struct list_head aliases_lookup;
 extern struct kset *of_kset;
 
+int __of_n_addr_cells_parent(struct device_node *parent);
+int __of_n_size_cells_parent(struct device_node *parent);
+
 #if defined(CONFIG_OF_DYNAMIC)
 extern int of_property_notify(int action, struct device_node *np,
 			      struct property *prop, struct property *old_prop);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
