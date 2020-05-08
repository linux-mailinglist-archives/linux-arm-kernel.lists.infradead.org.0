Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B601CAE05
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJUQoRVUiFOFqXu9f6HijxZLf7MgyDmtLs+qxkmF57c=; b=mBOeKNHM9EioDP
	kmdmT7E4fdsZJzms58ZGHsajuhs5/eMMBFygpckKMYSc71hfGEKSl3sTaMg+sMKrLUZzIWWeiT11w
	DsJI2D1DYwvXIGDGgKC3DsJJOD7p/QXbK+Ju8V0Jbk3WIIC2Pc0dO6ksyh3rDoMQLe1av8x+259cL
	XZc+URhycILw0PfFGY1E/jnFeo4KqwmmtnTElRlNB3+ZgzPeBjFdWkrgZAHqTtnKat7ZuAXD7DJAz
	dO44tVQ0oQYVsX27+KwkxNCs3OFxkpVSIPMS6nYmBZAqmBhOnvDPLP5NIK84ux7l45kzba3kyoAzP
	wVUHLog7DbBBi3uN5Zdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2k8-0002jo-4Y; Fri, 08 May 2020 13:08:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2ib-0001cu-Uk
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:07:12 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 048D74PE088083;
 Fri, 8 May 2020 08:07:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588943224;
 bh=tDC1pjicYjkUm+KPLaJb1qehvPKazM9rDiMFSqZ4yQ4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=EjKbh+Z7iN1NOlO7sVNZ6eCv51YzOA6gDOeBA0ovesAObpj9mYYT4XZ3fa//2ycl2
 6zt4rC4jpkhVEhrsXR4chSnwJkkMos5iptoaxXk4C2Z6U89qxhk5sZ0zNoZBm6iPDL
 CzG/qda4Hr2PSJ5uTzXcW6gKhmAE2V+W8i/EahH0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 048D73nH105107
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 8 May 2020 08:07:03 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 8 May
 2020 08:07:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 8 May 2020 08:07:03 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048D6kYo018673;
 Fri, 8 May 2020 08:07:00 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robin Murphy
 <robin.murphy@arm.com>, Tom Joseph <tjoseph@cadence.com>
Subject: [PATCH v3 4/4] PCI: cadence: Use "dma-ranges" instead of "cdns,
 no-bar-match-nbits" property
Date: Fri, 8 May 2020 18:36:46 +0530
Message-ID: <20200508130646.23939-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508130646.23939-1-kishon@ti.com>
References: <20200508130646.23939-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_060710_103082_A73271A2 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci@vger.kernel.org, kishon@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cadence PCIe core driver (host mode) uses "cdns,no-bar-match-nbits"
property to configure the number of bits passed through from PCIe
address to internal address in Inbound Address Translation register.
This only used the NO MATCH BAR.

However standard PCI dt-binding already defines "dma-ranges" to
describe the address ranges accessible by PCIe controller. Add support
in Cadence PCIe host driver to parse dma-ranges and configure the
inbound regions for BAR0, BAR1 and NO MATCH BAR. Cadence IP specifies
maximum size for BAR0 as 256GB, maximum size for BAR1 as 2 GB, so if
the dma-ranges specifies a size larger than the maximum allowed, the
driver will split and configure the BARs.

Legacy device tree binding compatibility is maintained by retaining
support for "cdns,no-bar-match-nbits".

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../controller/cadence/pcie-cadence-host.c    | 141 ++++++++++++++++--
 drivers/pci/controller/cadence/pcie-cadence.h |  17 ++-
 2 files changed, 141 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index 6ecebb79057a..2485ecd8434d 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -11,6 +11,12 @@
 
 #include "pcie-cadence.h"
 
+static u64 cdns_rp_bar_max_size[] = {
+	[RP_BAR0] = _ULL(128 * SZ_2G),
+	[RP_BAR1] = SZ_2G,
+	[RP_NO_BAR] = SZ_64T,
+};
+
 void __iomem *cdns_pci_map_bus(struct pci_bus *bus, unsigned int devfn,
 			       int where)
 {
@@ -106,6 +112,117 @@ static int cdns_pcie_host_init_root_port(struct cdns_pcie_rc *rc)
 	return 0;
 }
 
+static void cdns_pcie_host_bar_ib_config(struct cdns_pcie_rc *rc,
+					 enum cdns_pcie_rp_bar bar,
+					 u64 cpu_addr, u32 aperture)
+{
+	struct cdns_pcie *pcie = &rc->pcie;
+	u32 addr0, addr1;
+
+	addr0 = CDNS_PCIE_AT_IB_RP_BAR_ADDR0_NBITS(aperture) |
+		(lower_32_bits(cpu_addr) & GENMASK(31, 8));
+	addr1 = upper_32_bits(cpu_addr);
+	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR0(bar), addr0);
+	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR1(bar), addr1);
+}
+
+static int cdns_pcie_host_bar_config(struct cdns_pcie_rc *rc,
+				     struct resource_entry *entry,
+				     enum cdns_pcie_rp_bar *index)
+{
+	u64 cpu_addr, pci_addr, size, winsize;
+	struct cdns_pcie *pcie = &rc->pcie;
+	struct device *dev = pcie->dev;
+	enum cdns_pcie_rp_bar bar;
+	unsigned long flags;
+	u32 aperture;
+	u32 value;
+
+	cpu_addr = entry->res->start;
+	flags = entry->res->flags;
+	pci_addr = entry->res->start - entry->offset;
+	size = resource_size(entry->res);
+	bar = *index;
+
+	if (entry->offset) {
+		dev_err(dev, "Cannot map PCI addr: %llx to CPU addr: %llx\n",
+			pci_addr, cpu_addr);
+		return -EINVAL;
+	}
+
+	value = cdns_pcie_readl(pcie, CDNS_PCIE_LM_RC_BAR_CFG);
+	while (size > 0) {
+		if (bar > RP_NO_BAR) {
+			dev_err(dev, "Failed to map inbound regions!\n");
+			return -EINVAL;
+		}
+
+		winsize = size;
+		if (size > cdns_rp_bar_max_size[bar])
+			winsize = cdns_rp_bar_max_size[bar];
+
+		aperture = ilog2(winsize);
+
+		cdns_pcie_host_bar_ib_config(rc, bar, cpu_addr, aperture);
+
+		if (bar == RP_NO_BAR)
+			break;
+
+		if (winsize + cpu_addr >= SZ_4G) {
+			if (!(flags & IORESOURCE_PREFETCH))
+				value |= LM_RC_BAR_CFG_CTRL_MEM_64BITS(bar);
+			value |= LM_RC_BAR_CFG_CTRL_PREF_MEM_64BITS(bar);
+		} else {
+			if (!(flags & IORESOURCE_PREFETCH))
+				value |= LM_RC_BAR_CFG_CTRL_MEM_32BITS(bar);
+			value |= LM_RC_BAR_CFG_CTRL_PREF_MEM_32BITS(bar);
+		}
+
+		value |= LM_RC_BAR_CFG_APERTURE(bar, aperture);
+
+		size -= winsize;
+		cpu_addr += winsize;
+		bar++;
+	}
+	cdns_pcie_writel(pcie, CDNS_PCIE_LM_RC_BAR_CFG, value);
+	*index = bar;
+
+	return 0;
+}
+
+static int cdns_pcie_host_map_dma_ranges(struct cdns_pcie_rc *rc)
+{
+	enum cdns_pcie_rp_bar bar = RP_BAR0;
+	struct cdns_pcie *pcie = &rc->pcie;
+	struct device *dev = pcie->dev;
+	struct device_node *np = dev->of_node;
+	struct pci_host_bridge *bridge;
+	struct resource_entry *entry;
+	u32 no_bar_nbits = 32;
+	int err;
+
+	bridge = pci_host_bridge_from_priv(rc);
+	if (!bridge)
+		return -ENOMEM;
+
+	if (list_empty(&bridge->dma_ranges)) {
+		of_property_read_u32(np, "cdns,no-bar-match-nbits",
+				     &no_bar_nbits);
+		cdns_pcie_host_bar_ib_config(rc, RP_NO_BAR, 0x0, no_bar_nbits);
+		return 0;
+	}
+
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
+		err = cdns_pcie_host_bar_config(rc, entry, &bar);
+		if (err) {
+			dev_err(dev, "Fail to configure IB using dma-ranges\n");
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 static int cdns_pcie_host_init_address_translation(struct cdns_pcie_rc *rc)
 {
 	struct cdns_pcie *pcie = &rc->pcie;
@@ -160,16 +277,9 @@ static int cdns_pcie_host_init_address_translation(struct cdns_pcie_rc *rc)
 		r++;
 	}
 
-	/*
-	 * Set Root Port no BAR match Inbound Translation registers:
-	 * needed for MSI and DMA.
-	 * Root Port BAR0 and BAR1 are disabled, hence no need to set their
-	 * inbound translation registers.
-	 */
-	addr0 = CDNS_PCIE_AT_IB_RP_BAR_ADDR0_NBITS(rc->no_bar_nbits);
-	addr1 = 0;
-	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR0(RP_NO_BAR), addr0);
-	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR1(RP_NO_BAR), addr1);
+	err = cdns_pcie_host_map_dma_ranges(rc);
+	if (err)
+		return err;
 
 	return 0;
 }
@@ -179,10 +289,16 @@ static int cdns_pcie_host_init(struct device *dev,
 			       struct cdns_pcie_rc *rc)
 {
 	struct resource *bus_range = NULL;
+	struct pci_host_bridge *bridge;
 	int err;
 
+	bridge = pci_host_bridge_from_priv(rc);
+	if (!bridge)
+		return -ENOMEM;
+
 	/* Parse our PCI ranges and request their resources */
-	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
+	err = pci_parse_request_of_pci_ranges(dev, resources,
+					      &bridge->dma_ranges, &bus_range);
 	if (err)
 		return err;
 
@@ -239,9 +355,6 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 	pcie = &rc->pcie;
 	pcie->is_rc = true;
 
-	rc->no_bar_nbits = 32;
-	of_property_read_u32(np, "cdns,no-bar-match-nbits", &rc->no_bar_nbits);
-
 	rc->vendor_id = 0xffff;
 	of_property_read_u32(np, "vendor-id", &rc->vendor_id);
 
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index f349f5828a58..336237a7025c 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -92,6 +92,20 @@
 #define  CDNS_PCIE_LM_BAR_CFG_CTRL_MEM_64BITS		0x6
 #define  CDNS_PCIE_LM_BAR_CFG_CTRL_PREFETCH_MEM_64BITS	0x7
 
+#define LM_RC_BAR_CFG_CTRL_DISABLED(bar)		\
+		(CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED << (((bar) * 8) + 6))
+#define LM_RC_BAR_CFG_CTRL_IO_32BITS(bar)		\
+		(CDNS_PCIE_LM_BAR_CFG_CTRL_IO_32BITS << (((bar) * 8) + 6))
+#define LM_RC_BAR_CFG_CTRL_MEM_32BITS(bar)		\
+		(CDNS_PCIE_LM_BAR_CFG_CTRL_MEM_32BITS << (((bar) * 8) + 6))
+#define LM_RC_BAR_CFG_CTRL_PREF_MEM_32BITS(bar)	\
+	(CDNS_PCIE_LM_BAR_CFG_CTRL_PREFETCH_MEM_32BITS << (((bar) * 8) + 6))
+#define LM_RC_BAR_CFG_CTRL_MEM_64BITS(bar)		\
+		(CDNS_PCIE_LM_BAR_CFG_CTRL_MEM_64BITS << (((bar) * 8) + 6))
+#define LM_RC_BAR_CFG_CTRL_PREF_MEM_64BITS(bar)	\
+	(CDNS_PCIE_LM_BAR_CFG_CTRL_PREFETCH_MEM_64BITS << (((bar) * 8) + 6))
+#define LM_RC_BAR_CFG_APERTURE(bar, aperture)		\
+					(((aperture) - 2) << ((bar) * 8))
 
 /*
  * Endpoint Function Registers (PCI configuration space for endpoint functions)
@@ -266,8 +280,6 @@ struct cdns_pcie {
  * @bus_range: first/last buses behind the PCIe host controller
  * @cfg_base: IO mapped window to access the PCI configuration space of a
  *            single function at a time
- * @no_bar_nbits: Number of bits to keep for inbound (PCIe -> CPU) address
- *                translation (nbits sets into the "no BAR match" register)
  * @vendor_id: PCI vendor ID
  * @device_id: PCI device ID
  */
@@ -276,7 +288,6 @@ struct cdns_pcie_rc {
 	struct resource		*cfg_res;
 	struct resource		*bus_range;
 	void __iomem		*cfg_base;
-	u32			no_bar_nbits;
 	u32			vendor_id;
 	u32			device_id;
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
