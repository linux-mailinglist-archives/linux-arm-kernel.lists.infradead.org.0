Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3BAF1F0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnA9izzGv/pRvWtK1kQGOA1JZsyS/moOYHohrZuZA9U=; b=tR7wHiONSjyik1
	Q1ghDk/usosYKlCku4QluiQ5BGx70xVoufwodldHxJejB/XQhjRNnV8iYAGQvHdjksHuTpaSG/K1L
	NVuy3LgGdD+lRFL0j/nO5GU0Gz3OJfZ8OOw8PrSUwEUZfMSg3oYcVDjsURul2+DHNoyc7+QQHrNHC
	ZMYEzepmSknzTmvtEjAJ3DlLmnDBku++r4ffKBFwaFFuW4kav4LKr/9Jlcs81kdBLqFM0lXM55toB
	HoxayxfPufnQMDrldxYpsJAWFnC7ieUEH2azIDtAw2rAEQgNSw4j2yJKS7RguU/7kvjMRBKdZgOw+
	nrT1nKVQ+fC2zPzBhoXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR8A-0004xu-4l; Wed, 06 Nov 2019 19:38:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR6Y-0002iF-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:36:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id a11so27452670wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 11:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bwhrmv5UfgGgWMhu+AtTF22Lejf/mvmfLcMF+rDjjno=;
 b=jhsBsjh50dBS1GuJsiURwmkBz2ShlKnTZD2rBR2hp5v2x4hLAI9mYLQa94QNBeVDmx
 pJrDWBdT+XQ3Wqt32DuZNkw+NbxbOoFGNTnX41Hr2u+yIlgcQeLglnzh6+11hJEKaTxj
 4ZYmKzPXsD9s4ESHKYJFoIET4uyShQOIqSw43TU5lbRXuX2tk7eqnJuaIyuLKtHGGv0l
 l1QUB5T/wc46P1Ue0cwUyrRHUMNIiGwEbswamdPIOKjttL6Cs1dj0eg5ZUplu1axMond
 NyyOvaX66bfrJ4ZqRnQnnEdIL8Io0UaTUsvfSJOHZ/Ejkt+mihQlywh6aIWHr8Y0ra8Y
 Tl5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bwhrmv5UfgGgWMhu+AtTF22Lejf/mvmfLcMF+rDjjno=;
 b=O9eH1N2DANrIIeIqkXt9QOvhoDLJfit1CsHwKmRwj+a7n4oYz3fuI0L7nomf1o7Bjo
 bEJ2ODAgphKl7SZzwgnaD6rINzqEdaa+t5WHYw++VmiFenbBH62xpwRnCBsV0WQu5Fpq
 giLgeQtU/sndoPJx4ZF4JjKvNOsh9xpOKdrlEQvpIZXpo6lfwL4+ulAroa6QdqLbz3lG
 s4yYITAqfzoqS485Wq0kp4gv5QAf7ygKyUjMNur4IWB83U2vjByZqZbbsv2OB1RqpQh2
 i7krQNc0ZwzU6xqi7+WfaFm7fsT7BplSk71quQD3ftqEZYMZzWFMcQTsXhmu8cmDiFoz
 4tbw==
X-Gm-Message-State: APjAAAW1WlJ0JMy/+ZhnnILHZ37mF+8pczTpuQQMKrBxHFto5AKbQVW1
 e/SkE1T7m/bL+5HRqRaNV1E=
X-Google-Smtp-Source: APXvYqzggg+ge8ICFUAwLFglvuGMDhubTjsDw8+TBlQYTuCkpafjvdAZZSFI9SZPK7hhz0rcVdjKEQ==
X-Received: by 2002:adf:8481:: with SMTP id 1mr4655853wrg.189.1573068993263;
 Wed, 06 Nov 2019 11:36:33 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:1d3d:daa8:4e74:8240])
 by smtp.gmail.com with ESMTPSA id 76sm4311737wma.0.2019.11.06.11.36.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 11:36:32 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 4/5] pci: rcar: add support for rcar pcie controller in
 endpoint mode
Date: Wed,  6 Nov 2019 19:36:08 +0000
Message-Id: <20191106193609.19645-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113635_193912_700EFB8F 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/Kconfig        |   7 +
 drivers/pci/controller/Makefile       |   1 +
 drivers/pci/controller/pcie-rcar-ep.c | 483 ++++++++++++++++++++++++++
 3 files changed, 491 insertions(+)
 create mode 100644 drivers/pci/controller/pcie-rcar-ep.c

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 01c238e5ea1e..94c541267bbc 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -89,6 +89,13 @@ config PCIE_RCAR_HOST
 	help
 	  Say Y here if you want PCIe controller support on R-Car SoCs in host mode.
 
+config PCIE_RCAR_EP
+	bool "Renesas R-Car PCIe endpoint controller"
+	depends on ARCH_RENESAS || COMPILE_TEST
+	depends on PCI_ENDPOINT
+	help
+	  Say Y here if you want PCIe controller support on R-Car SoCs in endpoint mode.
+
 config PCI_HOST_COMMON
 	bool
 	select PCI_ECAM
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 3577902a0d40..16aa1f7cdc1c 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
 obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
 obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
 obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar.o pcie-rcar-host.o
+obj-$(CONFIG_PCIE_RCAR_EP) += pcie-rcar.o pcie-rcar-ep.o
 obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
 obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
 obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
new file mode 100644
index 000000000000..ef4115d17052
--- /dev/null
+++ b/drivers/pci/controller/pcie-rcar-ep.c
@@ -0,0 +1,483 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe endpoint driver for Renesas R-Car SoCs
+ *  Copyright (c) 2019 Renesas Electronics Europe GmbH
+ *
+ * Author: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_pci.h>
+#include <linux/of_platform.h>
+#include <linux/pci.h>
+#include <linux/pci-epc.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+
+#include "pcie-rcar.h"
+
+#define MAX_NR_INBOUND_MAPS	6
+#define MAX_NR_OUTBOUND_MAPS	4
+
+/* Structure representing the PCIe interface */
+struct rcar_pcie {
+	phys_addr_t		*ob_addr;
+	struct pci_epc_mem_window *ob_window;
+	struct pci_epc		*epc;
+	struct device		*dev;
+	void __iomem		*base;
+	u8			max_functions;
+	unsigned int		bar_to_atu[MAX_NR_INBOUND_MAPS];
+	unsigned long		*ib_window_map;
+	u32			num_ib_windows;
+	u32			num_ob_windows;
+};
+
+static void rcar_pcie_ep_hw_init(struct rcar_pcie *pcie)
+{
+	u32 val;
+
+	rcar_pci_write_reg(pcie->base, 0, PCIETCTLR);
+
+	/* Set endpoint mode */
+	rcar_pci_write_reg(pcie->base, 0, PCIEMSR);
+
+	/* Initialize default capabilities. */
+	rcar_rmw32(pcie->base, REXPCAP(0), 0xff, PCI_CAP_ID_EXP);
+	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_FLAGS),
+		   PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ENDPOINT << 4);
+	rcar_rmw32(pcie->base, RCONF(PCI_HEADER_TYPE), 0x7f,
+		   PCI_HEADER_TYPE_NORMAL);
+
+	/* Write out the physical slot number = 0 */
+	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);
+
+	val = rcar_pci_read_reg(pcie->base, EXPCAP(1));
+	/* device supports fixed 128 bytes MPSS */
+	val &= ~GENMASK(2, 0);
+	/* L1 to L0 transition latency no time limit */
+	val |= GENMASK(11, 9);
+	/* L0s to L0 transistion no time limit */
+	val |= GENMASK(8, 6);
+	rcar_pci_write_reg(pcie->base, val, EXPCAP(1));
+
+	val = rcar_pci_read_reg(pcie->base, EXPCAP(2));
+	/* read requests size 128 bytes */
+	val &= ~GENMASK(14, 12);
+	/* payload size 128 bytes */
+	val &= ~GENMASK(7, 5);
+	/* disable relaxed ordering transaction */
+	val &= ~BIT(4);
+	rcar_pci_write_reg(pcie->base, val, EXPCAP(2));
+
+	val = rcar_pci_read_reg(pcie->base, EXPCAP(4));
+	/* disable ASPM control */
+	val &= ~GENMASK(1, 0);
+	rcar_pci_write_reg(pcie->base, val, EXPCAP(4));
+
+	/* Set target link speed to 5.0 GT/s */
+	rcar_rmw32(pcie->base, EXPCAP(12), PCI_EXP_LNKSTA_CLS,
+		   PCI_EXP_LNKSTA_CLS_5_0GB);
+
+	/* Set the completion timer timeout to the maximum 50ms. */
+	rcar_rmw32(pcie->base, TLCTLR + 1, 0x3f, 50);
+
+	/* Terminate list of capabilities (Next Capability Offset=0) */
+	rcar_rmw32(pcie->base, RVCCAP(0), 0xfff00000, 0);
+
+	/* flush modifications */
+	wmb();
+}
+
+static int rcar_pcie_ep_get_pdata(struct rcar_pcie *pcie,
+				  struct platform_device *pdev)
+{
+	struct pci_epc_mem_window *window;
+	struct device *dev = pcie->dev;
+	char outbound_name[10];
+	struct resource *res;
+	unsigned int i;
+	int err;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb-base");
+	pcie->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(pcie->base)) {
+		dev_err(dev, "pcie apb-base missing\n");
+		return PTR_ERR(pcie->base);
+	}
+
+	pcie->ob_window = devm_kcalloc(dev, MAX_NR_OUTBOUND_MAPS,
+				       sizeof(*window), GFP_KERNEL);
+	if (!pcie->ob_window)
+		return -ENOMEM;
+
+	pcie->num_ob_windows = 0;
+	for (i = 0; i < MAX_NR_OUTBOUND_MAPS; i++) {
+		sprintf(outbound_name, "memory%u", i);
+		res = platform_get_resource_byname(pdev,
+						   IORESOURCE_MEM,
+						   outbound_name);
+		if (!res) {
+			dev_err(dev, "missing outbound window %u\n", i);
+			return -EINVAL;
+		}
+		if (!devm_request_mem_region(&pdev->dev, res->start,
+					     resource_size(res),
+					     outbound_name)) {
+			dev_err(dev,
+				"Cannot request memory region %s.\n",
+				outbound_name);
+			return -EIO;
+		}
+		pcie->ob_window[i].phys_base = res->start;
+		pcie->ob_window[i].size = resource_size(res);
+		pcie->num_ob_windows++;
+	}
+
+	err = of_property_read_u8(dev->of_node, "max-functions",
+				  &pcie->max_functions);
+	if (err < 0)
+		pcie->max_functions = 1;
+
+	return 0;
+}
+
+static int rcar_pcie_ep_write_header(struct pci_epc *epc, u8 fn,
+				     struct pci_epf_header *hdr)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	u32 val;
+
+	if (!fn)
+		val = hdr->vendorid;
+	else
+		val = rcar_pci_read_reg(ep->base, IDSETR0);
+	val |= hdr->deviceid << DEVICE_ID_SHFIT;
+	rcar_pci_write_reg(ep->base, val, IDSETR0);
+
+	val = hdr->revid;
+	val |= hdr->progif_code << 8;
+	val |= hdr->subclass_code << 16;
+	val |= hdr->baseclass_code << 24;
+	rcar_pci_write_reg(ep->base, val, IDSETR1);
+
+	if (!fn)
+		val = hdr->subsys_vendor_id;
+	else
+		val = rcar_pci_read_reg(ep->base, SUBIDSETR);
+	val |= hdr->subsys_id << 16;
+	rcar_pci_write_reg(ep->base, val, SUBIDSETR);
+
+	if (hdr->interrupt_pin > PCI_INTERRUPT_INTA)
+		return -EINVAL;
+	val = rcar_pci_read_reg(ep->base, PCICONF(15));
+	val |= (hdr->interrupt_pin << 8);
+	rcar_pci_write_reg(ep->base, val, PCICONF(15));
+
+	return 0;
+}
+
+static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
+				struct pci_epf_bar *epf_bar)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	dma_addr_t cpu_addr = epf_bar->phys_addr;
+	int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
+	enum pci_barno bar = epf_bar->barno;
+	u64 size = 1ULL << fls64(epf_bar->size - 1);
+	u32 mask;
+	int idx;
+	int err;
+
+	idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
+	if (idx >= ep->num_ib_windows) {
+		dev_err(ep->dev, "no free inbound window\n");
+		return -EINVAL;
+	}
+
+	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
+		flags |= IO_SPACE;
+
+	ep->bar_to_atu[bar] = idx;
+	/* use 64 bit bars */
+	set_bit(idx, ep->ib_window_map);
+	set_bit(idx + 1, ep->ib_window_map);
+
+	if (cpu_addr > 0) {
+		unsigned long nr_zeros = __ffs64(cpu_addr);
+		u64 alignment = 1ULL << nr_zeros;
+
+		size = min(size, alignment);
+	} else {
+		size = size;
+	}
+
+	size = min(size, 1ULL << 32);
+
+	mask = roundup_pow_of_two(size) - 1;
+	mask &= ~0xf;
+
+	rcar_pcie_set_inbound(ep->base, cpu_addr,
+			      0x0, mask | flags, idx, false);
+
+	err = rcar_pcie_wait_for_phyrdy(ep->base);
+	if (err) {
+		dev_err(ep->dev, "phy not ready\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void rcar_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
+				   struct pci_epf_bar *epf_bar)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	enum pci_barno bar = epf_bar->barno;
+	u32 atu_index = ep->bar_to_atu[bar];
+
+	rcar_pcie_set_inbound(ep->base, 0x0, 0x0, 0x0, bar, false);
+
+	clear_bit(atu_index, ep->ib_window_map);
+	clear_bit(atu_index + 1, ep->ib_window_map);
+}
+
+static int rcar_pcie_ep_map_addr(struct pci_epc *epc, u8 fn,
+				 phys_addr_t addr, int window,
+				 u64 pci_addr, size_t size)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	struct resource res;
+	int err;
+
+	/* check if we have a link. */
+	err = rcar_pcie_wait_for_dl(ep->base);
+	if (err) {
+		dev_err(ep->dev, "link not up\n");
+		memset(&res, 0x0, sizeof(res));
+		rcar_pcie_set_outbound(window, ep->base, &res, false);
+		return err;
+	}
+
+	if (window >= ep->num_ob_windows) {
+		dev_err(ep->dev, "no free outbound window\n");
+		return -EINVAL;
+	}
+
+	memset(&res, 0x0, sizeof(res));
+	res.start = pci_addr;
+	res.end = pci_addr + size - 1;
+	res.flags = IORESOURCE_MEM;
+
+	rcar_pcie_set_outbound(window, ep->base, &res, false);
+
+	ep->ob_addr[window] = addr;
+
+	return 0;
+}
+
+static void rcar_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn,
+				    phys_addr_t addr)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+	struct resource res;
+	int idx;
+
+	for (idx = 0; idx < ep->num_ob_windows; idx++)
+		if (ep->ob_addr[idx] == addr)
+			break;
+
+	if (idx >= ep->num_ob_windows)
+		return;
+
+	memset(&res, 0x0, sizeof(res));
+	rcar_pcie_set_outbound(idx, ep->base, &res, false);
+
+	ep->ob_addr[idx] = 0;
+}
+
+static int rcar_pcie_ep_assert_intx(struct rcar_pcie *ep, u8 fn, u8 intx)
+{
+	u32 val;
+
+	val = rcar_pci_read_reg(ep->base, PCIEMSITXR);
+	if ((val & PCI_MSI_FLAGS_ENABLE)) {
+		dev_err(ep->dev, "MSI is enabled, cannot assert INTx\n");
+		return -EINVAL;
+	}
+
+	val = rcar_pci_read_reg(ep->base, PCICONF(1));
+	if ((val & INTDIS_SHIFT)) {
+		dev_err(ep->dev, "INTx message transmission is disabled\n");
+		return -EINVAL;
+	}
+
+	val = rcar_pci_read_reg(ep->base, PCIEINTXR);
+	if ((val & ASTINTX_SHIFT)) {
+		dev_err(ep->dev, "INTx is already asserted\n");
+		return -EINVAL;
+	}
+
+	val |= ASTINTX_SHIFT;
+	rcar_pci_write_reg(ep->base, val, PCIEINTXR);
+	mdelay(1);
+	val = rcar_pci_read_reg(ep->base, PCIEINTXR);
+	val &= ~ASTINTX_SHIFT;
+	rcar_pci_write_reg(ep->base, val, PCIEINTXR);
+
+	return 0;
+}
+
+static int rcar_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
+				  enum pci_epc_irq_type type,
+				  u16 interrupt_num)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+
+	switch (type) {
+	case PCI_EPC_IRQ_LEGACY:
+		return rcar_pcie_ep_assert_intx(ep, fn, 0);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int rcar_pcie_ep_start(struct pci_epc *epc)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+
+	rcar_pci_write_reg(ep->base, CFINIT, PCIETCTLR);
+
+	return 0;
+}
+
+static void rcar_pcie_ep_stop(struct pci_epc *epc)
+{
+	struct rcar_pcie *ep = epc_get_drvdata(epc);
+
+	rcar_pci_write_reg(ep->base, 0, PCIETCTLR);
+}
+
+static const struct pci_epc_features rcar_pcie_epc_features = {
+	.linkup_notifier = false,
+	.msi_capable = false,
+	.msix_capable = false,
+	/* use 64-bit bars so mark bar1/3/5 as reserved */
+	.reserved_bar = 1 << BAR_1 | 1 << BAR_3 | 1 << BAR_5,
+	.bar_fixed_64bit =  (1 << BAR_0) | (1 << BAR_2) | (1 << BAR_4),
+	.bar_fixed_size[0] = 128,
+	.bar_fixed_size[2] = 256,
+	.bar_fixed_size[4] = 256,
+};
+
+static const struct pci_epc_features*
+rcar_pcie_ep_get_features(struct pci_epc *epc, u8 func_no)
+{
+	return &rcar_pcie_epc_features;
+}
+
+static const struct pci_epc_ops rcar_pcie_epc_ops = {
+	.write_header	= rcar_pcie_ep_write_header,
+	.set_bar	= rcar_pcie_ep_set_bar,
+	.clear_bar	= rcar_pcie_ep_clear_bar,
+	.map_addr	= rcar_pcie_ep_map_addr,
+	.unmap_addr	= rcar_pcie_ep_unmap_addr,
+	.raise_irq	= rcar_pcie_ep_raise_irq,
+	.start		= rcar_pcie_ep_start,
+	.stop		= rcar_pcie_ep_stop,
+	.get_features	= rcar_pcie_ep_get_features,
+};
+
+static const struct of_device_id rcar_pcie_ep_of_match[] = {
+	{
+		.compatible = "renesas,pcie-ep-rcar-gen3"
+	},
+	{},
+};
+
+static int rcar_pcie_ep_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rcar_pcie *pcie;
+	struct pci_epc *epc;
+	int err;
+
+	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
+	if (!pcie)
+		return -ENOMEM;
+
+	pcie->dev = dev;
+
+	pm_runtime_enable(pcie->dev);
+	err = pm_runtime_get_sync(pcie->dev);
+	if (err < 0) {
+		dev_err(pcie->dev, "pm_runtime_get_sync failed\n");
+		goto err_pm_disable;
+	}
+
+	err = rcar_pcie_ep_get_pdata(pcie, pdev);
+	if (err < 0) {
+		dev_err(dev, "failed to request resources: %d\n", err);
+		goto err_pm_put;
+	}
+
+	pcie->num_ib_windows = MAX_NR_INBOUND_MAPS;
+	pcie->ib_window_map =
+			devm_kcalloc(dev, BITS_TO_LONGS(pcie->num_ib_windows),
+				     sizeof(long), GFP_KERNEL);
+	if (!pcie->ib_window_map) {
+		err = -ENOMEM;
+		dev_err(dev, "failed to allocate memory for inbound map\n");
+		goto err_pm_put;
+	}
+
+	pcie->ob_addr = devm_kcalloc(dev, pcie->num_ob_windows,
+				     sizeof(*pcie->ob_addr), GFP_KERNEL);
+	if (!pcie->ob_addr) {
+		err = -ENOMEM;
+		dev_err(dev, "failed to allocate memory for outbound memory pointers\n");
+		goto err_pm_put;
+	}
+
+	epc = devm_pci_epc_create(dev, &rcar_pcie_epc_ops);
+	if (IS_ERR(epc)) {
+		dev_err(dev, "failed to create epc device\n");
+		err = PTR_ERR(epc);
+		goto err_pm_put;
+	}
+
+	epc->max_functions = pcie->max_functions;
+	pcie->epc = epc;
+	epc_set_drvdata(epc, pcie);
+
+	err = pci_epc_mem_init(epc, pcie->ob_window, pcie->num_ob_windows);
+	if (err < 0) {
+		dev_err(dev, "failed to initialize the epc memory space\n");
+		goto err_pm_put;
+	}
+
+	rcar_pcie_ep_hw_init(pcie);
+
+	return 0;
+
+err_pm_put:
+	pm_runtime_put(dev);
+
+err_pm_disable:
+	pm_runtime_disable(dev);
+
+	return err;
+}
+
+static struct platform_driver rcar_pcie_ep_driver = {
+	.driver = {
+		.name = "rcar-pcie-ep",
+		.of_match_table = rcar_pcie_ep_of_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = rcar_pcie_ep_probe,
+};
+builtin_platform_driver(rcar_pcie_ep_driver);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
