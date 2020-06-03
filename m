Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925D31ED6D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 21:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BBAnpqNJLXyB9lH1ZKsCNXhnoAowccGL8P6jIdLTSA0=; b=Rrvi/JKs3z00b+UyjqDYJeqkWP
	qivp5ERPOMmAClImKE0sy+h3ruYHzNsxKV74BO7WSe6ZoG46qDrnW/Dw9VtfNvWV9u6HtRefcasR9
	0hDTS/W8XNobQO+dsyenvUOT7SWYOkdVqSXvjrv3pHjEoVX8YwRE0vPNql1JbaTJ3Y9LcZFKSzYwV
	M6PsQShU+RVfyHtDBgdNyJpdZgeAmY9JhOgL3Nlu7NLkFYZbj4iw11eXCGQ7jgFdZqnY2IYx/Pxtx
	GkpvtAwgkqO0hgagv1Zyrg1yU8jDX99dz24sQEg6HHMFkReSEPFfpPJ8s3iXUoR51fk4Et/2QJ8I6
	OPzB53jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYz4-0000rX-5l; Wed, 03 Jun 2020 19:23:30 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYxR-0007q5-RW; Wed, 03 Jun 2020 19:21:53 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 4CFD930DD34;
 Wed,  3 Jun 2020 12:21:48 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 4CFD930DD34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1591212108;
 bh=GZF4ihY02EWRtW/JN0j6EDlo6cd9JJEHQFLm4Xnitq4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KLqFOyrM51nhZCMyljHFSI5KulNDMuSqZiAxIPoxLHqzX2hJgxdqq4kRSuWMLsUQi
 totKANQFYM67INzA/d+wpxFmsoRN6tZQYTf+sW8oyUyQmWxtVVztP6YvoSwBmVMRoq
 84/J0vgD8A9/nT+/TezQ6mZ+sFIVauYD11CjQTTY=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id AAC8C14008C;
 Wed,  3 Jun 2020 12:21:46 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v3 11/13] PCI: brcmstb: Accommodate MSI for older chips
Date: Wed,  3 Jun 2020 15:20:43 -0400
Message-Id: <20200603192058.35296-12-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200603192058.35296-1-james.quinlan@broadcom.com>
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_122150_167632_5298DC0A 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

Older BrcmSTB chips do not have a separate register for MSI interrupts; the
MSIs are in a register that also contains unrelated interrupts.  In
addition, the interrupts lie in bits [31..24] for these legacy chips.  This
commit provides common code for both legacy and non-legacy MSI interrupt
registers.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 72 +++++++++++++++++++--------
 1 file changed, 52 insertions(+), 20 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 338e9ed44230..9930419e3ac2 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -80,7 +80,8 @@
 #define PCIE_MISC_MSI_BAR_CONFIG_HI			0x4048
 
 #define PCIE_MISC_MSI_DATA_CONFIG			0x404c
-#define  PCIE_MISC_MSI_DATA_CONFIG_VAL			0xffe06540
+#define  PCIE_MISC_MSI_DATA_CONFIG_VAL_32		0xffe06540
+#define  PCIE_MISC_MSI_DATA_CONFIG_VAL_8		0xfff86540
 
 #define PCIE_MISC_PCIE_CTRL				0x4064
 #define  PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK	0x1
@@ -92,6 +93,9 @@
 #define  PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_MASK	0x10
 #define  PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK	0x40
 
+#define PCIE_MISC_REVISION				0x406c
+#define  BRCM_PCIE_HW_REV_33				0x0303
+
 #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT		0x4070
 #define  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_MASK	0xfff00000
 #define  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_MASK	0xfff0
@@ -112,10 +116,14 @@
 #define  PCIE_MISC_HARD_PCIE_HARD_DEBUG_CLKREQ_DEBUG_ENABLE_MASK	0x2
 #define  PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_MASK		0x08000000
 
-#define PCIE_MSI_INTR2_STATUS				0x4500
-#define PCIE_MSI_INTR2_CLR				0x4508
-#define PCIE_MSI_INTR2_MASK_SET				0x4510
-#define PCIE_MSI_INTR2_MASK_CLR				0x4514
+
+#define PCIE_INTR2_CPU_BASE		0x4300
+#define PCIE_MSI_INTR2_BASE		0x4500
+/* Offsets from PCIE_INTR2_CPU_BASE and PCIE_MSI_INTR2_BASE */
+#define  MSI_INT_STATUS			0x0
+#define  MSI_INT_CLR			0x8
+#define  MSI_INT_MASK_SET		0x10
+#define  MSI_INT_MASK_CLR		0x14
 
 #define PCIE_EXT_CFG_DATA				0x8000
 
@@ -130,6 +138,8 @@
 /* PCIe parameters */
 #define BRCM_NUM_PCIE_OUT_WINS		0x4
 #define BRCM_INT_PCI_MSI_NR		32
+#define BRCM_INT_PCI_MSI_LEGACY_NR	8
+#define BRCM_INT_PCI_MSI_SHIFT		0
 
 /* MSI target adresses */
 #define BRCM_MSI_TARGET_ADDR_LT_4GB	0x0fffffffcULL
@@ -247,6 +257,12 @@ struct brcm_msi {
 	int			irq;
 	/* used indicates which MSI interrupts have been alloc'd */
 	unsigned long		used;
+	bool			legacy;
+	/* Some chips have MSIs in bits [31..24] of a shared register. */
+	int			legacy_shift;
+	int			nr; /* No. of MSI available, depends on chip */
+	/* This is the base pointer for interrupt status/set/clr regs */
+	void __iomem		*intr_base;
 };
 
 /* Internal PCIe Host Controller Information.*/
@@ -266,6 +282,7 @@ struct brcm_pcie {
 	struct reset_control	*rescal;
 	int			num_memc;
 	u64			memc_size[PCIE_BRCM_MAX_MEMC];
+	u32			hw_rev;
 };
 
 /*
@@ -456,8 +473,10 @@ static void brcm_pcie_msi_isr(struct irq_desc *desc)
 	msi = irq_desc_get_handler_data(desc);
 	dev = msi->dev;
 
-	status = readl(msi->base + PCIE_MSI_INTR2_STATUS);
-	for_each_set_bit(bit, &status, BRCM_INT_PCI_MSI_NR) {
+	status = readl(msi->intr_base + MSI_INT_STATUS);
+	status >>= msi->legacy_shift;
+
+	for_each_set_bit(bit, &status, msi->nr) {
 		virq = irq_find_mapping(msi->inner_domain, bit);
 		if (virq)
 			generic_handle_irq(virq);
@@ -474,7 +493,7 @@ static void brcm_msi_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
 
 	msg->address_lo = lower_32_bits(msi->target_addr);
 	msg->address_hi = upper_32_bits(msi->target_addr);
-	msg->data = (0xffff & PCIE_MISC_MSI_DATA_CONFIG_VAL) | data->hwirq;
+	msg->data = (0xffff & PCIE_MISC_MSI_DATA_CONFIG_VAL_32) | data->hwirq;
 }
 
 static int brcm_msi_set_affinity(struct irq_data *irq_data,
@@ -486,8 +505,9 @@ static int brcm_msi_set_affinity(struct irq_data *irq_data,
 static void brcm_msi_ack_irq(struct irq_data *data)
 {
 	struct brcm_msi *msi = irq_data_get_irq_chip_data(data);
+	const int shift_amt = data->hwirq + msi->legacy_shift;
 
-	writel(1 << data->hwirq, msi->base + PCIE_MSI_INTR2_CLR);
+	writel(1 << shift_amt, msi->intr_base + MSI_INT_CLR);
 }
 
 
@@ -503,7 +523,7 @@ static int brcm_msi_alloc(struct brcm_msi *msi)
 	int hwirq;
 
 	mutex_lock(&msi->lock);
-	hwirq = bitmap_find_free_region(&msi->used, BRCM_INT_PCI_MSI_NR, 0);
+	hwirq = bitmap_find_free_region(&msi->used, msi->nr, 0);
 	mutex_unlock(&msi->lock);
 
 	return hwirq;
@@ -552,7 +572,7 @@ static int brcm_allocate_domains(struct brcm_msi *msi)
 	struct fwnode_handle *fwnode = of_node_to_fwnode(msi->np);
 	struct device *dev = msi->dev;
 
-	msi->inner_domain = irq_domain_add_linear(NULL, BRCM_INT_PCI_MSI_NR,
+	msi->inner_domain = irq_domain_add_linear(NULL, msi->nr,
 						  &msi_domain_ops, msi);
 	if (!msi->inner_domain) {
 		dev_err(dev, "failed to create IRQ domain\n");
@@ -590,7 +610,10 @@ static void brcm_msi_remove(struct brcm_pcie *pcie)
 
 static void brcm_msi_set_regs(struct brcm_msi *msi)
 {
-	writel(0xffffffff, msi->base + PCIE_MSI_INTR2_MASK_CLR);
+	u32 val = __GENMASK(31, msi->legacy_shift);
+
+	writel(val, msi->intr_base + MSI_INT_MASK_CLR);
+	writel(val, msi->intr_base + MSI_INT_CLR);
 
 	/*
 	 * The 0 bit of PCIE_MISC_MSI_BAR_CONFIG_LO is repurposed to MSI
@@ -601,8 +624,10 @@ static void brcm_msi_set_regs(struct brcm_msi *msi)
 	writel(upper_32_bits(msi->target_addr),
 	       msi->base + PCIE_MISC_MSI_BAR_CONFIG_HI);
 
-	writel(PCIE_MISC_MSI_DATA_CONFIG_VAL,
-	       msi->base + PCIE_MISC_MSI_DATA_CONFIG);
+	val = msi->legacy ? PCIE_MISC_MSI_DATA_CONFIG_VAL_8 :
+		PCIE_MISC_MSI_DATA_CONFIG_VAL_32;
+
+	writel(val, msi->base + PCIE_MISC_MSI_DATA_CONFIG);
 }
 
 static int brcm_pcie_enable_msi(struct brcm_pcie *pcie)
@@ -627,6 +652,17 @@ static int brcm_pcie_enable_msi(struct brcm_pcie *pcie)
 	msi->np = pcie->np;
 	msi->target_addr = pcie->msi_target_addr;
 	msi->irq = irq;
+	msi->legacy = pcie->hw_rev < BRCM_PCIE_HW_REV_33;
+
+	if (msi->legacy) {
+		msi->intr_base = msi->base + PCIE_INTR2_CPU_BASE;
+		msi->nr = BRCM_INT_PCI_MSI_LEGACY_NR;
+		msi->legacy_shift = 24;
+	} else {
+		msi->intr_base = msi->base + PCIE_MSI_INTR2_BASE;
+		msi->nr = BRCM_INT_PCI_MSI_NR;
+		msi->legacy_shift = 0;
+	}
 
 	ret = brcm_allocate_domains(msi);
 	if (ret)
@@ -885,12 +921,6 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	tmp &= ~PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_MASK;
 	writel(tmp, base + PCIE_MISC_RC_BAR3_CONFIG_LO);
 
-	/* Mask all interrupts since we are not handling any yet */
-	writel(0xffffffff, pcie->base + PCIE_MSI_INTR2_MASK_SET);
-
-	/* clear any interrupts we find on boot */
-	writel(0xffffffff, pcie->base + PCIE_MSI_INTR2_CLR);
-
 	if (pcie->gen)
 		brcm_pcie_set_gen(pcie, pcie->gen);
 
@@ -1220,6 +1250,8 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto fail;
 
+	pcie->hw_rev = readl(pcie->base + PCIE_MISC_REVISION);
+
 	msi_np = of_parse_phandle(pcie->np, "msi-parent", 0);
 	if (pci_msi_enabled() && msi_np == pcie->np) {
 		ret = brcm_pcie_enable_msi(pcie);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
