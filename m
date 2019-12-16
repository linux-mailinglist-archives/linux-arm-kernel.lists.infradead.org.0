Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACE4120324
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:02:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iItojdIKeV2oJC/4nHltnSdo0OFytKQEQSG83gc3mIo=; b=L57a4G/zV1L3EX
	zFjTyLpmW4uweymZSoPuNKRbbLfHfV8GJzdk0+AIcGY8T/0LDSubyqm52QwbEIKIZF6q1tYQMV01x
	dCx/B3rV8B0EcUM/RedeUUqXgMXKYn7pdmzUYR2jRB1NEOucFv6xZA1Ap8ZF1k7A2oACSkf/SBoXA
	PKbjs2hB/33AoX7kK98vVxVctzuUBE2CkGB419pPh1eXx3QyybSGYoBsNLsQ1BFfL3YwCV2unHoCx
	h4QSzJ7vBkuNHDVCdq/t6NRFs98dk6ooDHlISOhJW6F3bdR36Vx1/+5tC1MBjm/Wy1oZmLGR+MeSo
	0J11yccg2BRitcgEv2gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igo9A-00043K-FG; Mon, 16 Dec 2019 11:02:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igo83-00037J-Ob; Mon, 16 Dec 2019 11:01:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 502A3AC7D;
 Mon, 16 Dec 2019 11:01:30 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 4/6] PCI: brcmstb: Add MSI support
Date: Mon, 16 Dec 2019 12:01:10 +0100
Message-Id: <20191216110113.30436-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216110113.30436-1-nsaenzjulienne@suse.de>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_030132_128008_DE7B462C 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 jeremy.linton@arm.com, wahrenst@gmx.net, james.quinlan@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <james.quinlan@broadcom.com>

This adds MSI support to the Broadcom STB PCIe host controller. The MSI
controller is physically located within the PCIe block, however, there
is no reason why the MSI controller could not be moved elsewhere in the
future. MSIX is not supported by the HW.

Since the internal Brcmstb MSI controller is intertwined with the PCIe
controller, it is not its own platform device but rather part of the
PCIe platform device.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>

---

Changes since v3 (kept Marc's reviewed by as changes seem small enough):
  - Use define to access MSI_DATA_CONFIG_VAL
  - Update commit message

Changes since v2:
  - Use standard APIs on register operations
  - Get rid of revision code
  - Update rules to msi_target_addr selection
  - Remove unwarranted MSI_FLAG_PCI_MSIX
  - Small cosmetic changes

Changes since v1:
  - Move revision code and some registers to this patch
  - Use PCIE_MSI_IRQ_DOMAIN in Kconfig
  - Remove redundant register read from ISR
  - Fail probe on MSI init error
  - Get rid of msi_internal
  - Use bitmap family of functions
  - Use edge triggered setup
  - Add comment regarding MultiMSI
  - Simplify compose_msi_msg to avoid reg read

This is based on Jim's original submission[1] with some slight changes
regarding how pcie->msi_target_addr is decided.

[1] https://patchwork.kernel.org/patch/10605955/

 drivers/pci/controller/Kconfig        |   1 +
 drivers/pci/controller/pcie-brcmstb.c | 261 +++++++++++++++++++++++++-
 2 files changed, 261 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 27504f108ee5..918e283bbff1 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -257,6 +257,7 @@ config PCIE_BRCMSTB
 	tristate "Broadcom Brcmstb PCIe host controller"
 	depends on ARCH_BCM2835 || COMPILE_TEST
 	depends on OF
+	depends on PCI_MSI_IRQ_DOMAIN
 	help
 	  Say Y here to enable PCIe host controller support for
 	  Broadcom STB based SoCs, like the Raspberry Pi 4.
diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index dd681164faa0..7ba06a0e1a71 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2009 - 2019 Broadcom */
 
 #include <linux/bitfield.h>
+#include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/compiler.h>
 #include <linux/delay.h>
@@ -9,11 +10,13 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/ioport.h>
+#include <linux/irqchip/chained_irq.h>
 #include <linux/irqdomain.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
 #include <linux/log2.h>
 #include <linux/module.h>
+#include <linux/msi.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
 #include <linux/of_pci.h>
@@ -67,6 +70,12 @@
 #define PCIE_MISC_RC_BAR3_CONFIG_LO			0x403c
 #define  PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_MASK		0x1f
 
+#define PCIE_MISC_MSI_BAR_CONFIG_LO			0x4044
+#define PCIE_MISC_MSI_BAR_CONFIG_HI			0x4048
+
+#define PCIE_MISC_MSI_DATA_CONFIG			0x404c
+#define  PCIE_MISC_MSI_DATA_CONFIG_VAL			0xffe06540
+
 #define PCIE_MISC_PCIE_CTRL				0x4064
 #define  PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK	0x1
 
@@ -114,6 +123,11 @@
 
 /* PCIe parameters */
 #define BRCM_NUM_PCIE_OUT_WINS		0x4
+#define BRCM_INT_PCI_MSI_NR		32
+
+/* MSI target adresses */
+#define BRCM_MSI_TARGET_ADDR_LT_4GB	0x0fffffffcULL
+#define BRCM_MSI_TARGET_ADDR_GT_4GB	0xffffffffcULL
 
 /* MDIO registers */
 #define MDIO_PORT0			0x0
@@ -135,6 +149,19 @@
 #define SSC_STATUS_SSC_MASK		0x400
 #define SSC_STATUS_PLL_LOCK_MASK	0x800
 
+struct brcm_msi {
+	struct device		*dev;
+	void __iomem		*base;
+	struct device_node	*np;
+	struct irq_domain	*msi_domain;
+	struct irq_domain	*inner_domain;
+	struct mutex		lock; /* guards the alloc/free operations */
+	u64			target_addr;
+	int			irq;
+	/* used indicates which MSI interrupts have been alloc'd */
+	unsigned long		used;
+};
+
 /* Internal PCIe Host Controller Information.*/
 struct brcm_pcie {
 	struct device		*dev;
@@ -144,6 +171,8 @@ struct brcm_pcie {
 	struct device_node	*np;
 	bool			ssc;
 	int			gen;
+	u64			msi_target_addr;
+	struct brcm_msi		*msi;
 };
 
 /*
@@ -309,6 +338,214 @@ static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
 	writel(tmp, pcie->base + PCIE_MEM_WIN0_LIMIT_HI(win));
 }
 
+static struct irq_chip brcm_msi_irq_chip = {
+	.name            = "BRCM STB PCIe MSI",
+	.irq_ack         = irq_chip_ack_parent,
+	.irq_mask        = pci_msi_mask_irq,
+	.irq_unmask      = pci_msi_unmask_irq,
+};
+
+static struct msi_domain_info brcm_msi_domain_info = {
+	/* Multi MSI is supported by the controller, but not by this driver */
+	.flags	= (MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS),
+	.chip	= &brcm_msi_irq_chip,
+};
+
+static void brcm_pcie_msi_isr(struct irq_desc *desc)
+{
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	unsigned long status, virq;
+	struct brcm_msi *msi;
+	struct device *dev;
+	u32 bit;
+
+	chained_irq_enter(chip, desc);
+	msi = irq_desc_get_handler_data(desc);
+	dev = msi->dev;
+
+	status = readl(msi->base + PCIE_MSI_INTR2_STATUS);
+	for_each_set_bit(bit, &status, BRCM_INT_PCI_MSI_NR) {
+		virq = irq_find_mapping(msi->inner_domain, bit);
+		if (virq)
+			generic_handle_irq(virq);
+		else
+			dev_dbg(dev, "unexpected MSI\n");
+	}
+
+	chained_irq_exit(chip, desc);
+}
+
+static void brcm_msi_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
+{
+	struct brcm_msi *msi = irq_data_get_irq_chip_data(data);
+
+	msg->address_lo = lower_32_bits(msi->target_addr);
+	msg->address_hi = upper_32_bits(msi->target_addr);
+	msg->data = (0xffff & PCIE_MISC_MSI_DATA_CONFIG_VAL) | data->hwirq;
+}
+
+static int brcm_msi_set_affinity(struct irq_data *irq_data,
+				 const struct cpumask *mask, bool force)
+{
+	return -EINVAL;
+}
+
+static void brcm_msi_ack_irq(struct irq_data *data)
+{
+	struct brcm_msi *msi = irq_data_get_irq_chip_data(data);
+
+	writel(1 << data->hwirq, msi->base + PCIE_MSI_INTR2_CLR);
+}
+
+
+static struct irq_chip brcm_msi_bottom_irq_chip = {
+	.name			= "BRCM STB MSI",
+	.irq_compose_msi_msg	= brcm_msi_compose_msi_msg,
+	.irq_set_affinity	= brcm_msi_set_affinity,
+	.irq_ack                = brcm_msi_ack_irq,
+};
+
+static int brcm_msi_alloc(struct brcm_msi *msi)
+{
+	int hwirq;
+
+	mutex_lock(&msi->lock);
+	hwirq = bitmap_find_free_region(&msi->used, BRCM_INT_PCI_MSI_NR, 0);
+	mutex_unlock(&msi->lock);
+
+	return hwirq;
+}
+
+static void brcm_msi_free(struct brcm_msi *msi, unsigned long hwirq)
+{
+	mutex_lock(&msi->lock);
+	bitmap_release_region(&msi->used, hwirq, 0);
+	mutex_unlock(&msi->lock);
+}
+
+static int brcm_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
+				 unsigned int nr_irqs, void *args)
+{
+	struct brcm_msi *msi = domain->host_data;
+	int hwirq;
+
+	hwirq = brcm_msi_alloc(msi);
+
+	if (hwirq < 0)
+		return hwirq;
+
+	irq_domain_set_info(domain, virq, (irq_hw_number_t)hwirq,
+			    &brcm_msi_bottom_irq_chip, domain->host_data,
+			    handle_edge_irq, NULL, NULL);
+	return 0;
+}
+
+static void brcm_irq_domain_free(struct irq_domain *domain,
+				 unsigned int virq, unsigned int nr_irqs)
+{
+	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
+	struct brcm_msi *msi = irq_data_get_irq_chip_data(d);
+
+	brcm_msi_free(msi, d->hwirq);
+}
+
+static const struct irq_domain_ops msi_domain_ops = {
+	.alloc	= brcm_irq_domain_alloc,
+	.free	= brcm_irq_domain_free,
+};
+
+static int brcm_allocate_domains(struct brcm_msi *msi)
+{
+	struct fwnode_handle *fwnode = of_node_to_fwnode(msi->np);
+	struct device *dev = msi->dev;
+
+	msi->inner_domain = irq_domain_add_linear(NULL, BRCM_INT_PCI_MSI_NR,
+						  &msi_domain_ops, msi);
+	if (!msi->inner_domain) {
+		dev_err(dev, "failed to create IRQ domain\n");
+		return -ENOMEM;
+	}
+
+	msi->msi_domain = pci_msi_create_irq_domain(fwnode,
+						    &brcm_msi_domain_info,
+						    msi->inner_domain);
+	if (!msi->msi_domain) {
+		dev_err(dev, "failed to create MSI domain\n");
+		irq_domain_remove(msi->inner_domain);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static void brcm_free_domains(struct brcm_msi *msi)
+{
+	irq_domain_remove(msi->msi_domain);
+	irq_domain_remove(msi->inner_domain);
+}
+
+static void brcm_msi_remove(struct brcm_pcie *pcie)
+{
+	struct brcm_msi *msi = pcie->msi;
+
+	if (!msi)
+		return;
+	irq_set_chained_handler(msi->irq, NULL);
+	irq_set_handler_data(msi->irq, NULL);
+	brcm_free_domains(msi);
+}
+
+static void brcm_msi_set_regs(struct brcm_msi *msi)
+{
+	writel(0xffffffff, msi->base + PCIE_MSI_INTR2_MASK_CLR);
+
+	/*
+	 * The 0 bit of PCIE_MISC_MSI_BAR_CONFIG_LO is repurposed to MSI
+	 * enable, which we set to 1.
+	 */
+	writel(lower_32_bits(msi->target_addr) | 0x1,
+	       msi->base + PCIE_MISC_MSI_BAR_CONFIG_LO);
+	writel(upper_32_bits(msi->target_addr),
+	       msi->base + PCIE_MISC_MSI_BAR_CONFIG_HI);
+
+	writel(PCIE_MISC_MSI_DATA_CONFIG_VAL,
+	       msi->base + PCIE_MISC_MSI_DATA_CONFIG);
+}
+
+static int brcm_pcie_enable_msi(struct brcm_pcie *pcie)
+{
+	struct brcm_msi *msi;
+	int irq, ret;
+	struct device *dev = pcie->dev;
+
+	irq = irq_of_parse_and_map(dev->of_node, 1);
+	if (irq <= 0) {
+		dev_err(dev, "cannot map MSI interrupt\n");
+		return -ENODEV;
+	}
+
+	msi = devm_kzalloc(dev, sizeof(struct brcm_msi), GFP_KERNEL);
+	if (!msi)
+		return -ENOMEM;
+
+	msi->dev = dev;
+	msi->base = pcie->base;
+	msi->np = pcie->np;
+	msi->target_addr = pcie->msi_target_addr;
+	msi->irq = irq;
+
+	ret = brcm_allocate_domains(msi);
+	if (ret)
+		return ret;
+
+	irq_set_chained_handler_and_data(msi->irq, brcm_pcie_msi_isr, msi);
+
+	brcm_msi_set_regs(msi);
+	pcie->msi = msi;
+
+	return 0;
+}
+
 /* The controller is capable of serving in both RC and EP roles */
 static bool brcm_pcie_rc_mode(struct brcm_pcie *pcie)
 {
@@ -490,6 +727,18 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 			  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
 	writel(tmp, base + PCIE_MISC_MISC_CTRL);
 
+	/*
+	 * We ideally want the MSI target address to be located in the 32bit
+	 * addressable memory area. Some devices might depend on it. This is
+	 * possible either when the inbound window is located above the lower
+	 * 4GB or when the inbound area is smaller than 4GB (taking into
+	 * account the rounding-up we're forced to perform).
+	 */
+	if (rc_bar2_offset >= SZ_4G || (rc_bar2_size + rc_bar2_offset) < SZ_4G)
+		pcie->msi_target_addr = BRCM_MSI_TARGET_ADDR_LT_4GB;
+	else
+		pcie->msi_target_addr = BRCM_MSI_TARGET_ADDR_GT_4GB;
+
 	/* disable the PCIe->GISB memory window (RC_BAR1) */
 	tmp = readl(base + PCIE_MISC_RC_BAR1_CONFIG_LO);
 	tmp &= ~PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK;
@@ -639,6 +888,7 @@ static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
 
 static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 {
+	brcm_msi_remove(pcie);
 	brcm_pcie_turn_off(pcie);
 	clk_disable_unprepare(pcie->clk);
 	clk_put(pcie->clk);
@@ -657,7 +907,7 @@ static int brcm_pcie_remove(struct platform_device *pdev)
 
 static int brcm_pcie_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
+	struct device_node *np = pdev->dev.of_node, *msi_np;
 	struct pci_host_bridge *bridge;
 	struct brcm_pcie *pcie;
 	struct pci_bus *child;
@@ -701,6 +951,15 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto fail;
 
+	msi_np = of_parse_phandle(pcie->np, "msi-parent", 0);
+	if (pci_msi_enabled() && msi_np == pcie->np) {
+		ret = brcm_pcie_enable_msi(pcie);
+		if (ret) {
+			dev_err(pcie->dev, "probe of internal MSI failed");
+			goto fail;
+		}
+	}
+
 	bridge->dev.parent = &pdev->dev;
 	bridge->busnr = 0;
 	bridge->ops = &brcm_pcie_ops;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
