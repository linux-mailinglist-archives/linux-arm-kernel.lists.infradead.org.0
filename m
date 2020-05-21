Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8641DCDA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cSg1ScyeeNEvx7/TUdG4IfWsTyumj+yCqfE94DFHyQs=; b=aK8ys1E46oVsJW
	inxwFGlgeB/VWG15T0HXKL3sZ7TU5gwRnC+2RYevwCO2Q8KnG/wWd7AGqKdsv/vp4dAcRbJdie9lG
	wLR1ZeTmg9H2YQtpL6z6oV6rBTG3t8A2QwiJNK2YQEGmSmALf8PndhcZ3IKoRx/QxyHtvJxF0568D
	oQqzsv0cG6OZMmqbLc0slLMbUwH6Qv1wc1b8dj/+S1nSvNjXXajYAUfvOsKuFfyA/vmv/y7o/Blja
	eEF1TRRclqne7CRGC8wYyDYAncCJ1qmBLP8Ce4yp05v0udmKaWFVMs9ihHUkZaBcQR5+aBLvFocN3
	peM9NInYlC1qd8t7ZlEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkqW-0001Ka-Pg; Thu, 21 May 2020 13:02:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkoO-00089G-Ij
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:00:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2126B1042;
 Thu, 21 May 2020 06:00:36 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.29.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D9AE3F305;
 Thu, 21 May 2020 06:00:33 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/12] of/device: Add input id to of_dma_configure()
Date: Thu, 21 May 2020 14:00:03 +0100
Message-Id: <20200521130008.8266-8-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_060036_714553_0B6D6124 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Devices sitting on proprietary busses have a device ID space that
is owned by the respective bus and related firmware bindings. In order
to let the generic OF layer handle the input translations to
an IOMMU id, for such busses the current of_dma_configure() interface
should be extended in order to allow the bus layer to provide the
device input id parameter - that is retrieved/assigned in bus
specific code and firmware.

Augment of_dma_configure() to add an optional input_id parameter,
leaving current functionality unchanged.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: Laurentiu Tudor <laurentiu.tudor@nxp.com>
---
 drivers/bus/fsl-mc/fsl-mc-bus.c |  4 ++-
 drivers/iommu/of_iommu.c        | 53 +++++++++++++++++++++------------
 drivers/of/device.c             |  8 +++--
 include/linux/of_device.h       | 16 ++++++++--
 include/linux/of_iommu.h        |  6 ++--
 5 files changed, 60 insertions(+), 27 deletions(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index 40526da5c6a6..8ead3f0238f2 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -118,11 +118,13 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
 static int fsl_mc_dma_configure(struct device *dev)
 {
 	struct device *dma_dev = dev;
+	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
+	u32 input_id = mc_dev->icid;
 
 	while (dev_is_fsl_mc(dma_dev))
 		dma_dev = dma_dev->parent;
 
-	return of_dma_configure(dev, dma_dev->of_node, 0);
+	return of_dma_configure_id(dev, dma_dev->of_node, 0, &input_id);
 }
 
 static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index ad96b87137d6..4516d5bf6cc9 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -139,25 +139,53 @@ static int of_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
 	return err;
 }
 
-static int of_fsl_mc_iommu_init(struct fsl_mc_device *mc_dev,
-				struct device_node *master_np)
+static int of_iommu_configure_dev_id(struct device_node *master_np,
+				     struct device *dev,
+				     const u32 *id)
 {
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int err;
 
-	err = of_map_id(master_np, mc_dev->icid, "iommu-map",
+	err = of_map_id(master_np, *id, "iommu-map",
 			 "iommu-map-mask", &iommu_spec.np,
 			 iommu_spec.args);
 	if (err)
 		return err == -ENODEV ? NO_IOMMU : err;
 
-	err = of_iommu_xlate(&mc_dev->dev, &iommu_spec);
+	err = of_iommu_xlate(dev, &iommu_spec);
 	of_node_put(iommu_spec.np);
 	return err;
 }
 
+static int of_iommu_configure_dev(struct device_node *master_np,
+				  struct device *dev)
+{
+	struct of_phandle_args iommu_spec;
+	int err = NO_IOMMU, idx = 0;
+
+	while (!of_parse_phandle_with_args(master_np, "iommus",
+					   "#iommu-cells",
+					   idx, &iommu_spec)) {
+		err = of_iommu_xlate(dev, &iommu_spec);
+		of_node_put(iommu_spec.np);
+		idx++;
+		if (err)
+			break;
+	}
+
+	return err;
+}
+
+static int of_iommu_configure_device(struct device_node *master_np,
+				     struct device *dev, const u32 *id)
+{
+	return (id) ? of_iommu_configure_dev_id(master_np, dev, id) :
+		      of_iommu_configure_dev(master_np, dev);
+}
+
 const struct iommu_ops *of_iommu_configure(struct device *dev,
-					   struct device_node *master_np)
+					   struct device_node *master_np,
+					   const u32 *id)
 {
 	const struct iommu_ops *ops = NULL;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
@@ -188,21 +216,8 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
 		pci_request_acs();
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     of_pci_iommu_init, &info);
-	} else if (dev_is_fsl_mc(dev)) {
-		err = of_fsl_mc_iommu_init(to_fsl_mc_device(dev), master_np);
 	} else {
-		struct of_phandle_args iommu_spec;
-		int idx = 0;
-
-		while (!of_parse_phandle_with_args(master_np, "iommus",
-						   "#iommu-cells",
-						   idx, &iommu_spec)) {
-			err = of_iommu_xlate(dev, &iommu_spec);
-			of_node_put(iommu_spec.np);
-			idx++;
-			if (err)
-				break;
-		}
+		err = of_iommu_configure_device(master_np, dev, id);
 
 		fwspec = dev_iommu_fwspec_get(dev);
 		if (!err && fwspec)
diff --git a/drivers/of/device.c b/drivers/of/device.c
index 27203bfd0b22..b439c1e05434 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -78,6 +78,7 @@ int of_device_add(struct platform_device *ofdev)
  * @np:		Pointer to OF node having DMA configuration
  * @force_dma:  Whether device is to be set up by of_dma_configure() even if
  *		DMA capability is not explicitly described by firmware.
+ * @id:		Optional const pointer value input id
  *
  * Try to get devices's DMA configuration from DT and update it
  * accordingly.
@@ -86,7 +87,8 @@ int of_device_add(struct platform_device *ofdev)
  * can use a platform bus notifier and handle BUS_NOTIFY_ADD_DEVICE events
  * to fix up DMA configuration.
  */
-int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
+int of_dma_configure_id(struct device *dev, struct device_node *np,
+			bool force_dma, const u32 *id)
 {
 	u64 dma_addr, paddr, size = 0;
 	int ret;
@@ -160,7 +162,7 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
 	dev_dbg(dev, "device is%sdma coherent\n",
 		coherent ? " " : " not ");
 
-	iommu = of_iommu_configure(dev, np);
+	iommu = of_iommu_configure(dev, np, id);
 	if (PTR_ERR(iommu) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
@@ -171,7 +173,7 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(of_dma_configure);
+EXPORT_SYMBOL_GPL(of_dma_configure_id);
 
 int of_device_register(struct platform_device *pdev)
 {
diff --git a/include/linux/of_device.h b/include/linux/of_device.h
index 8d31e39dd564..07ca187fc5e4 100644
--- a/include/linux/of_device.h
+++ b/include/linux/of_device.h
@@ -55,9 +55,15 @@ static inline struct device_node *of_cpu_device_node_get(int cpu)
 	return of_node_get(cpu_dev->of_node);
 }
 
-int of_dma_configure(struct device *dev,
+int of_dma_configure_id(struct device *dev,
 		     struct device_node *np,
-		     bool force_dma);
+		     bool force_dma, const u32 *id);
+static inline int of_dma_configure(struct device *dev,
+				   struct device_node *np,
+				   bool force_dma)
+{
+	return of_dma_configure_id(dev, np, force_dma, NULL);
+}
 #else /* CONFIG_OF */
 
 static inline int of_driver_match_device(struct device *dev,
@@ -106,6 +112,12 @@ static inline struct device_node *of_cpu_device_node_get(int cpu)
 	return NULL;
 }
 
+static inline int of_dma_configure_id(struct device *dev,
+				   struct device_node *np,
+				   bool force_dma)
+{
+	return 0;
+}
 static inline int of_dma_configure(struct device *dev,
 				   struct device_node *np,
 				   bool force_dma)
diff --git a/include/linux/of_iommu.h b/include/linux/of_iommu.h
index f3d40dd7bb66..16f4b3e87f20 100644
--- a/include/linux/of_iommu.h
+++ b/include/linux/of_iommu.h
@@ -13,7 +13,8 @@ extern int of_get_dma_window(struct device_node *dn, const char *prefix,
 			     size_t *size);
 
 extern const struct iommu_ops *of_iommu_configure(struct device *dev,
-					struct device_node *master_np);
+					struct device_node *master_np,
+					const u32 *id);
 
 #else
 
@@ -25,7 +26,8 @@ static inline int of_get_dma_window(struct device_node *dn, const char *prefix,
 }
 
 static inline const struct iommu_ops *of_iommu_configure(struct device *dev,
-					 struct device_node *master_np)
+					 struct device_node *master_np,
+					 const u32 *id)
 {
 	return NULL;
 }
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
