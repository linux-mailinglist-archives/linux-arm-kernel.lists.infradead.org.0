Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54542BD1B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtHI+D/ovXOcQ7zqqLhSdkNyPlejUWmfgBtk6M0l2CI=; b=XOR94Y/95WKWdd
	K/X4Wx+p9F+EMwtf9hUxlE9eOQKcqCBeoXin5VWSBsIcSbcFdL60rowtw4CgxXDPWHmipZNkjKEbP
	1vvjRce8p2mZ9q4+dsmn8Pv4hLLg+jzQM6y5KfhoiigL+7KnrFHajQm7uN3Qqc0GUZiF5i5zCmuws
	jUSsI4gKgEcvLc79jC5wzBJHCn2xNOWPSl+VQNZThzdU9j+ARYx6AyrwoHkdBxV4tJ801AlYGa3cK
	495jKUThS9Yvrhkez8MfXWYiLHfnoPymE6544ch/ycfP84pQ0KMkZ1rA4TYnedX5a+oX4rtEIX35B
	mnVziiOIRxiint1FI/gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpNa-0007Aq-Bc; Tue, 24 Sep 2019 18:17:38 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpJB-0003Dc-OC
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:13:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 67856AC93;
 Tue, 24 Sep 2019 18:13:04 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org, Stuart Yoder <stuyoder@gmail.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 10/11] of: device: introduce of_dma_configure_parent()
Date: Tue, 24 Sep 2019 20:12:41 +0200
Message-Id: <20190924181244.7159-11-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924181244.7159-1-nsaenzjulienne@suse.de>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_111306_343154_FF4ED7E6 
X-CRM114-Status: GOOD (  14.88  )
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

Devices not represented in DT, placed behind a bus that autodetects
them, pass of_dma_configure() their bus' DT node. This misses that bus'
'dma-ranges' property as the function's implementation expects the DT
node to be one of a device.

Create of_dma_configure_parent() which takes the given DT node as the
device's underlying bus and parses it accordingly.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 drivers/bus/fsl-mc/fsl-mc-bus.c |  2 +-
 drivers/gpu/host1x/bus.c        |  2 +-
 drivers/of/device.c             | 30 ++++++++++++++++++++++++++++--
 drivers/pci/pci-driver.c        |  3 ++-
 include/linux/of_device.h       | 13 ++++++++++---
 5 files changed, 42 insertions(+), 8 deletions(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index 5c9bf2e06552..217e64119497 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -134,7 +134,7 @@ static int fsl_mc_dma_configure(struct device *dev)
 	while (dev_is_fsl_mc(dma_dev))
 		dma_dev = dma_dev->parent;
 
-	return of_dma_configure(dev, dma_dev->of_node, 0);
+	return of_dma_configure_parent(dev, dma_dev->of_node, false);
 }
 
 static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
diff --git a/drivers/gpu/host1x/bus.c b/drivers/gpu/host1x/bus.c
index 742aa9ff21b8..2fdc04383a60 100644
--- a/drivers/gpu/host1x/bus.c
+++ b/drivers/gpu/host1x/bus.c
@@ -442,7 +442,7 @@ static int host1x_device_add(struct host1x *host1x,
 	device->dev.bus = &host1x_bus_type;
 	device->dev.parent = host1x->dev;
 
-	of_dma_configure(&device->dev, host1x->dev->of_node, true);
+	of_dma_configure_parent(&device->dev, host1x->dev->of_node, true);
 
 	device->dev.dma_parms = &device->dma_parms;
 	dma_set_max_seg_size(&device->dev, SZ_4M);
diff --git a/drivers/of/device.c b/drivers/of/device.c
index 018c52688546..1d0b1127d05e 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -83,6 +83,31 @@ int of_device_add(struct platform_device *ofdev)
  * accordingly.
  */
 int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
+{
+	struct device_node *dma_parent;
+	int ret;
+
+	dma_parent = __of_get_dma_parent(np);
+	ret = of_dma_configure_parent(dev, dma_parent, force_dma);
+	of_node_put(dma_parent);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(of_dma_configure);
+
+/**
+ * of_dma_configure_parent - Setup DMA configuration based on a parent bus'
+ *			     DT node
+ * @dev:	Device to apply DMA configuration
+ * @parent:	Parent bus device node
+ * @force_dma:  Whether device is to be set up by of_dma_configure() even if
+ *		DMA capability is not explicitly described by firmware.
+ *
+ * Try to get devices's DMA configuration from parent bus' DT and update it
+ * accordingly.
+ */
+int of_dma_configure_parent(struct device *dev, struct device_node *parent,
+			    bool force_dma)
 {
 	u64 dma_addr, paddr, size = 0;
 	int ret;
@@ -91,8 +116,9 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
 	const struct iommu_ops *iommu;
 	u64 mask;
 
-	ret = of_dma_get_range(__of_get_dma_parent(np), &dma_addr,
-			       &paddr, &size);
+	dev_dbg(dev, "starting at %pOF\n", parent);
+
+	ret = of_dma_get_range(parent, &dma_addr, &paddr, &size);
 	if (ret < 0) {
 		/*
 		 * For legacy reasons, we have to assume some devices need
diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index a8124e47bf6e..25073d68a0f6 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -1628,7 +1628,8 @@ static int pci_dma_configure(struct device *dev)
 
 	if (IS_ENABLED(CONFIG_OF) && bridge->parent &&
 	    bridge->parent->of_node) {
-		ret = of_dma_configure(dev, bridge->parent->of_node, true);
+		ret = of_dma_configure_parent(dev, bridge->parent->of_node,
+					      true);
 	} else if (has_acpi_companion(bridge)) {
 		struct acpi_device *adev = to_acpi_device_node(bridge->fwnode);
 
diff --git a/include/linux/of_device.h b/include/linux/of_device.h
index 8d31e39dd564..8f319b8c9deb 100644
--- a/include/linux/of_device.h
+++ b/include/linux/of_device.h
@@ -55,9 +55,9 @@ static inline struct device_node *of_cpu_device_node_get(int cpu)
 	return of_node_get(cpu_dev->of_node);
 }
 
-int of_dma_configure(struct device *dev,
-		     struct device_node *np,
-		     bool force_dma);
+int of_dma_configure(struct device *dev, struct devce_node *np, bool force_dma);
+int of_dma_configure_parent(struct device *dev, struct device_node *parent,
+			    bool force_dma);
 #else /* CONFIG_OF */
 
 static inline int of_driver_match_device(struct device *dev,
@@ -112,6 +112,13 @@ static inline int of_dma_configure(struct device *dev,
 {
 	return 0;
 }
+
+static inline int of_dma_configure_parent(struct device *dev,
+					  struct device_node *parent,
+					  bool force_dma)
+{
+	return 0;
+}
 #endif /* CONFIG_OF */
 
 #endif /* _LINUX_OF_DEVICE_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
