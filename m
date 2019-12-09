Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CB0117127
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=INfB+XTO8LEvgRR1YBOwKbhk692caZyAoc0IKURlfw0=; b=HgU
	ir+ksIQYo+TAWgCiPYo3ZnixM2MuQ/zglC2oXexpY9l1WBgLl3Bix0dUceYB7yUYB808yPyFWthJl
	WyR8AYaDExMsNpwSoV8ZQ3/BeD28QsW7+o7bydrwLUFqjk2bpKDSOg3h0hjE/GJ1Gb99QaNFKhm4p
	tutGEzSb34Vhiu5OnzfiuKu/N7ndaWDn6ca/cf++6PG8OdIPCBAs3ioK3cSLhCf9U5kT4eCoq7hf2
	5NMfNy+XrWWvD2pFjtG+kXTuYRijxyuqwYr5CUTQ6aYmyIrgjmMLKc8SXlcen/bqiaVflHBRR9cMh
	K1GwegcuzIjmCXPK3J/R5tdfQ55jxYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLYr-0003aI-2E; Mon, 09 Dec 2019 16:07:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLYj-0003Z4-L0
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:06:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 383451FB;
 Mon,  9 Dec 2019 08:06:46 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BD9A3F718;
 Mon,  9 Dec 2019 08:06:44 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Subject: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
Date: Mon,  9 Dec 2019 16:06:38 +0000
Message-Id: <20191209160638.141431-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_080653_780133_DAE13851 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Deepak Pandey <Deepak.Pandey@arm.com>

The Arm N1SDP SoC suffers from some PCIe integration issues, most
prominently config space accesses to not existing BDFs being answered
with a bus abort, resulting in an SError.
To mitigate this, the firmware scans the bus before boot (catching the
SErrors) and creates a table with valid BDFs, which acts as a filter for
Linux' config space accesses.

Add code consulting the table as an ACPI PCIe quirk, also register the
corresponding device tree based description of the host controller.
Also fix the other two minor issues on the way, namely not being fully
ECAM compliant and config space accesses being restricted to 32-bit
accesses only.

This allows the Arm Neoverse N1SDP board to boot Linux without crashing
and to access *any* devices (there are no platform devices except UART).

Signed-off-by: Deepak Pandey <Deepak.Pandey@arm.com>
[Sudipto: extend to cover the CCIX root port as well]
Signed-off-by: Sudipto Paul <sudipto.paul@arm.com>
[Andre: fix coding style issues, rewrite some parts, add DT support]
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/configs/defconfig        |   1 +
 drivers/acpi/pci_mcfg.c             |   7 +
 drivers/pci/controller/Kconfig      |  11 ++
 drivers/pci/controller/Makefile     |   1 +
 drivers/pci/controller/pcie-n1sdp.c | 196 ++++++++++++++++++++++++++++
 include/linux/pci-ecam.h            |   2 +
 6 files changed, 218 insertions(+)
 create mode 100644 drivers/pci/controller/pcie-n1sdp.c

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2aea3e..58124ef5070b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -177,6 +177,7 @@ CONFIG_NET_9P=y
 CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
+CONFIG_PCI_QUIRKS=y
 CONFIG_PCI_IOV=y
 CONFIG_HOTPLUG_PCI=y
 CONFIG_HOTPLUG_PCI_ACPI=y
diff --git a/drivers/acpi/pci_mcfg.c b/drivers/acpi/pci_mcfg.c
index 6b347d9920cc..7a2b41b9ab57 100644
--- a/drivers/acpi/pci_mcfg.c
+++ b/drivers/acpi/pci_mcfg.c
@@ -142,6 +142,13 @@ static struct mcfg_fixup mcfg_quirks[] = {
 	XGENE_V2_ECAM_MCFG(4, 0),
 	XGENE_V2_ECAM_MCFG(4, 1),
 	XGENE_V2_ECAM_MCFG(4, 2),
+
+#define N1SDP_ECAM_MCFG(rev, seg, ops) \
+	{"ARMLTD", "ARMN1SDP", rev, seg, MCFG_BUS_ANY, ops }
+
+	/* N1SDP SoC with v1 PCIe controller */
+	N1SDP_ECAM_MCFG(0x20181101, 0, &pci_n1sdp_pcie_ecam_ops),
+	N1SDP_ECAM_MCFG(0x20181101, 1, &pci_n1sdp_ccix_ecam_ops),
 };
 
 static char mcfg_oem_id[ACPI_OEM_ID_SIZE];
diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index c77069c8ee5d..45700d32f02e 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -37,6 +37,17 @@ config PCI_FTPCI100
 	depends on OF
 	default ARCH_GEMINI
 
+config PCIE_HOST_N1SDP_ECAM
+	bool "ARM N1SDP PCIe Controller"
+	depends on ARM64
+	depends on OF || (ACPI && PCI_QUIRKS)
+	select PCI_HOST_COMMON
+	default y if ARCH_VEXPRESS
+	help
+	  Say Y here if you want PCIe support for the Arm N1SDP platform.
+	  The controller is ECAM compliant, but needs a quirk to workaround
+	  an integration issue.
+
 config PCI_TEGRA
 	bool "NVIDIA Tegra PCIe controller"
 	depends on ARCH_TEGRA || COMPILE_TEST
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 3d4f597f15ce..5f47fefbd67d 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_PCIE_MEDIATEK) += pcie-mediatek.o
 obj-$(CONFIG_PCIE_MOBIVEIL) += pcie-mobiveil.o
 obj-$(CONFIG_PCIE_TANGO_SMP8759) += pcie-tango.o
 obj-$(CONFIG_VMD) += vmd.o
+obj-$(CONFIG_PCIE_HOST_N1SDP_ECAM) += pcie-n1sdp.o
 # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
 obj-y				+= dwc/
 
diff --git a/drivers/pci/controller/pcie-n1sdp.c b/drivers/pci/controller/pcie-n1sdp.c
new file mode 100644
index 000000000000..620ab221466c
--- /dev/null
+++ b/drivers/pci/controller/pcie-n1sdp.c
@@ -0,0 +1,196 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018/2019 ARM Ltd.
+ *
+ * This quirk is to mask the following issues:
+ * - PCIE SLVERR: config space accesses to invalid PCIe BDFs cause a bus
+ *		  error (signalled as an asynchronous SError)
+ * - MCFG BDF mapping: the root complex is mapped separately from the device
+ *		       config space
+ * - Non 32-bit accesses to config space are not supported.
+ *
+ * At boot time the SCP board firmware creates a discovery table with
+ * the root complex' base address and the valid BDF values, discovered while
+ * scanning the config space and catching the SErrors.
+ * Linux responds only to the EPs listed in this table, returning NULL
+ * for the rest.
+ */
+
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/ioport.h>
+#include <linux/sizes.h>
+#include <linux/of_pci.h>
+#include <linux/of.h>
+#include <linux/pci-ecam.h>
+#include <linux/platform_device.h>
+#include <linux/module.h>
+
+/* Platform specific values as hardcoded in the firmware. */
+#define AP_NS_SHARED_MEM_BASE	0x06000000
+#define MAX_SEGMENTS		2		/* Two PCIe root complexes. */
+#define BDF_TABLE_SIZE		SZ_16K
+
+/*
+ * Shared memory layout as written by the SCP upon boot time:
+ *  ----
+ *  Discover data header --> RC base address
+ *                       \-> BDF Count
+ *  Discover data        --> BDF 0...n
+ *  ----
+ */
+struct pcie_discovery_data {
+	u32 rc_base_addr;
+	u32 nr_bdfs;
+	u32 valid_bdfs[0];
+} *pcie_discovery_data[MAX_SEGMENTS];
+
+void __iomem *rc_remapped_addr[MAX_SEGMENTS];
+
+/*
+ * map_bus() is called before we do a config space access for a certain
+ * device. We use this to check whether this device is valid, avoiding
+ * config space accesses which would result in an SError otherwise.
+ */
+static void __iomem *pci_n1sdp_map_bus(struct pci_bus *bus, unsigned int devfn,
+				       int where)
+{
+	struct pci_config_window *cfg = bus->sysdata;
+	unsigned int devfn_shift = cfg->ops->bus_shift - 8;
+	unsigned int busn = bus->number;
+	unsigned int segment = bus->domain_nr;
+	unsigned int bdf_addr;
+	unsigned int table_count, i;
+
+	if (segment >= MAX_SEGMENTS ||
+	    busn < cfg->busr.start || busn > cfg->busr.end)
+		return NULL;
+
+	/* The PCIe root complex has a separate config space mapping. */
+	if (busn == 0 && devfn == 0)
+		return rc_remapped_addr[segment] + where;
+
+	busn -= cfg->busr.start;
+	bdf_addr = (busn << cfg->ops->bus_shift) + (devfn << devfn_shift);
+	table_count = pcie_discovery_data[segment]->nr_bdfs;
+	for (i = 0; i < table_count; i++) {
+		if (bdf_addr == pcie_discovery_data[segment]->valid_bdfs[i])
+			return pci_ecam_map_bus(bus, devfn, where);
+	}
+
+	return NULL;
+}
+
+static int pci_n1sdp_init(struct pci_config_window *cfg, unsigned int segment)
+{
+	phys_addr_t table_base;
+	struct device *dev = cfg->parent;
+	struct pcie_discovery_data *shared_data;
+	size_t bdfs_size;
+
+	if (segment >= MAX_SEGMENTS)
+		return -ENODEV;
+
+	table_base = AP_NS_SHARED_MEM_BASE + segment * BDF_TABLE_SIZE;
+
+	if (!request_mem_region(table_base, BDF_TABLE_SIZE,
+				"PCIe valid BDFs")) {
+		dev_err(dev, "PCIe BDF shared region request failed\n");
+		return -ENOMEM;
+	}
+
+	shared_data = devm_ioremap(dev,
+				   table_base, BDF_TABLE_SIZE);
+	if (!shared_data)
+		return -ENOMEM;
+
+	/* Copy the valid BDFs structure to allocated normal memory. */
+	bdfs_size = sizeof(struct pcie_discovery_data) +
+		    sizeof(u32) * shared_data->nr_bdfs;
+	pcie_discovery_data[segment] = devm_kmalloc(dev, bdfs_size, GFP_KERNEL);
+	if (!pcie_discovery_data[segment])
+		return -ENOMEM;
+
+	memcpy_fromio(pcie_discovery_data[segment], shared_data, bdfs_size);
+
+	rc_remapped_addr[segment] = devm_ioremap_nocache(dev,
+						shared_data->rc_base_addr,
+						PCI_CFG_SPACE_EXP_SIZE);
+	if (!rc_remapped_addr[segment]) {
+		dev_err(dev, "Cannot remap root port base\n");
+		return -ENOMEM;
+	}
+
+	devm_iounmap(dev, shared_data);
+
+	return 0;
+}
+
+static int pci_n1sdp_pcie_init(struct pci_config_window *cfg)
+{
+	return pci_n1sdp_init(cfg, 0);
+}
+
+static int pci_n1sdp_ccix_init(struct pci_config_window *cfg)
+{
+	return pci_n1sdp_init(cfg, 1);
+}
+
+struct pci_ecam_ops pci_n1sdp_pcie_ecam_ops = {
+	.bus_shift	= 20,
+	.init		= pci_n1sdp_pcie_init,
+	.pci_ops	= {
+		.map_bus        = pci_n1sdp_map_bus,
+		.read           = pci_generic_config_read32,
+		.write          = pci_generic_config_write32,
+	}
+};
+
+struct pci_ecam_ops pci_n1sdp_ccix_ecam_ops = {
+	.bus_shift	= 20,
+	.init		= pci_n1sdp_ccix_init,
+	.pci_ops	= {
+		.map_bus        = pci_n1sdp_map_bus,
+		.read           = pci_generic_config_read32,
+		.write          = pci_generic_config_write32,
+	}
+};
+
+static const struct of_device_id n1sdp_pcie_of_match[] = {
+	{ .compatible = "arm,n1sdp-pcie" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, n1sdp_pcie_of_match);
+
+static int n1sdp_pcie_probe(struct platform_device *pdev)
+{
+	const struct device_node *of_node = pdev->dev.of_node;
+	u32 segment;
+
+	if (of_property_read_u32(of_node, "linux,pci-domain", &segment)) {
+		dev_err(&pdev->dev, "N1SDP PCI controllers require linux,pci-domain property\n");
+		return -EINVAL;
+	}
+
+	switch (segment) {
+	case 0:
+		return pci_host_common_probe(pdev, &pci_n1sdp_pcie_ecam_ops);
+	case 1:
+		return pci_host_common_probe(pdev, &pci_n1sdp_ccix_ecam_ops);
+	}
+
+	dev_err(&pdev->dev, "Invalid segment number, must be smaller than %d\n",
+		MAX_SEGMENTS);
+
+	return -EINVAL;
+}
+
+static struct platform_driver n1sdp_pcie_driver = {
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = n1sdp_pcie_of_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = n1sdp_pcie_probe,
+};
+builtin_platform_driver(n1sdp_pcie_driver);
diff --git a/include/linux/pci-ecam.h b/include/linux/pci-ecam.h
index a73164c85e78..03cdea69f4e8 100644
--- a/include/linux/pci-ecam.h
+++ b/include/linux/pci-ecam.h
@@ -57,6 +57,8 @@ extern struct pci_ecam_ops pci_thunder_ecam_ops; /* Cavium ThunderX 1.x */
 extern struct pci_ecam_ops xgene_v1_pcie_ecam_ops; /* APM X-Gene PCIe v1 */
 extern struct pci_ecam_ops xgene_v2_pcie_ecam_ops; /* APM X-Gene PCIe v2.x */
 extern struct pci_ecam_ops al_pcie_ops; /* Amazon Annapurna Labs PCIe */
+extern struct pci_ecam_ops pci_n1sdp_pcie_ecam_ops; /* Arm N1SDP PCIe */
+extern struct pci_ecam_ops pci_n1sdp_ccix_ecam_ops; /* Arm N1SDP PCIe */
 #endif
 
 #ifdef CONFIG_PCI_HOST_COMMON
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
