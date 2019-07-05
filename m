Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C9860992
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9iSXvosFSiAbGpN6iVKD/y6/AhpF0ObAkRaaoxu4VmE=; b=BOJFDdPW6vzq2KRt+pps+0RIbQ
	7I1jGFWn2h5RFPkJjcFMsuvjBhzF3cOjmSUsjGImf8ourSmk07R+Hapn8sWaMydPGAST+/YYKEb/P
	mf0lVtsmEZggASx9IK+/VemOJcDYTbaGZsaRGskxfdK5oxd+oPfV1wLc/sDicNiukePhR2DqoshcM
	f+a/N0C531JS9e+LD4FewB2nqyqBB6f08OZbbN86GBtpwCzmfHsEX+RflZHDasAaNunm3hmOu80mk
	LMYadmIKOSiEuKljKQV2u6sb3/qfGDUfam/RTidIYWS8X7UyBaay8DTRhERQHAB/NixVTdJLOpsmg
	Dujk0bOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQQJ-000176-O4; Fri, 05 Jul 2019 15:46:55 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNS-0005bE-MS
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jUGOmklqYPrQCQoUGcNnmBpEbvXXYDlCzvq8PPCjx64=; b=o+Yj4w6Wr4v/tHcytP4WA98iS
 Buag2IxcjWI+hz/fPD1FoGL7IfYMyOmDWkEVyYT3Wk+d5QDG4D5AbWFZvZpg2i94LPZGbMBsHnn+q
 4pAs/Egx2JFy4mht57sEmOXkzwJf00KCPCuebPcJwHSScn335PzBKGEdEJf9D/V8rLUEr2W5NS+iP
 dFfDv0oIVxbPy8MmVsEZCUuQIkF1j9hpHhATDlvGcqxwga7MX/0QXgRS9YkpSfOZa3ADU/qfJegFL
 jt3df2cX5T6DZshHCmQ8GAQmqnLoYlV+46rq/Vwx5AcyjPw46bFu+scTbkC6kxlv1mnYLK9ZUUEDX
 0yOfNnJ3g==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7v-000101-TK
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 093B01A0772;
 Fri,  5 Jul 2019 12:07:05 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 44FA91A077A;
 Fri,  5 Jul 2019 12:06:56 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A8FBD402E1;
 Fri,  5 Jul 2019 18:06:45 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 01/28] PCI: mobiveil: Unify register accessors
Date: Fri,  5 Jul 2019 17:56:29 +0800
Message-Id: <20190705095656.19191-2-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is confusing to have two sets of functions to read/write
registers, some with csr_readl()/csr_writel(), while others with
read_paged_register()/write_paged_register().

In the register space the lower 3KB of 4KB PCIe configure space can be
accessed directly and higher 1KB through a simple paging mechanism.

Unify the register accessors in csr_readl() and csr_writel() by
comparing the register offset with page access boundary 3KB in the
accessor internal so that the paging mechanism is hidden behind
the csr_read()/write() common function calls.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - No change.

 drivers/pci/controller/pcie-mobiveil.c |  179 ++++++++++++++++++++++----------
 1 files changed, 124 insertions(+), 55 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 77052a0..d55c7e7 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -47,7 +47,6 @@
 #define  PAGE_SEL_SHIFT	13
 #define  PAGE_SEL_MASK		0x3f
 #define  PAGE_LO_MASK		0x3ff
-#define  PAGE_SEL_EN		0xc00
 #define  PAGE_SEL_OFFSET_SHIFT	10
 
 #define PAB_AXI_PIO_CTRL	0x0840
@@ -117,6 +116,12 @@
 #define LINK_WAIT_MIN	90000
 #define LINK_WAIT_MAX	100000
 
+#define PAGED_ADDR_BNDRY			0xc00
+#define OFFSET_TO_PAGE_ADDR(off)		\
+	((off & PAGE_LO_MASK) | PAGED_ADDR_BNDRY)
+#define OFFSET_TO_PAGE_IDX(off)			\
+	((off >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK)
+
 struct mobiveil_msi {			/* MSI information */
 	struct mutex lock;		/* protect bitmap variable */
 	struct irq_domain *msi_domain;
@@ -145,15 +150,119 @@ struct mobiveil_pcie {
 	struct mobiveil_msi msi;
 };
 
-static inline void csr_writel(struct mobiveil_pcie *pcie, const u32 value,
-		const u32 reg)
+/*
+ * mobiveil_pcie_sel_page - routine to access paged register
+ *
+ * Registers whose address greater than PAGED_ADDR_BNDRY (0xc00) are paged,
+ * for this scheme to work extracted higher 6 bits of the offset will be
+ * written to pg_sel field of PAB_CTRL register and rest of the lower 10
+ * bits enabled with PAGED_ADDR_BNDRY are used as offset of the register.
+ */
+static void mobiveil_pcie_sel_page(struct mobiveil_pcie *pcie, u8 pg_idx)
 {
-	writel_relaxed(value, pcie->csr_axi_slave_base + reg);
+	u32 val;
+
+	val = readl(pcie->csr_axi_slave_base + PAB_CTRL);
+	val &= ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT);
+	val |= (pg_idx & PAGE_SEL_MASK) << PAGE_SEL_SHIFT;
+
+	writel(val, pcie->csr_axi_slave_base + PAB_CTRL);
 }
 
-static inline u32 csr_readl(struct mobiveil_pcie *pcie, const u32 reg)
+static void *mobiveil_pcie_comp_addr(struct mobiveil_pcie *pcie, u32 off)
 {
-	return readl_relaxed(pcie->csr_axi_slave_base + reg);
+	if (off < PAGED_ADDR_BNDRY) {
+		/* For directly accessed registers, clear the pg_sel field */
+		mobiveil_pcie_sel_page(pcie, 0);
+		return pcie->csr_axi_slave_base + off;
+	}
+
+	mobiveil_pcie_sel_page(pcie, OFFSET_TO_PAGE_IDX(off));
+	return pcie->csr_axi_slave_base + OFFSET_TO_PAGE_ADDR(off);
+}
+
+static int mobiveil_pcie_read(void __iomem *addr, int size, u32 *val)
+{
+	if ((uintptr_t)addr & (size - 1)) {
+		*val = 0;
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	switch (size) {
+	case 4:
+		*val = readl(addr);
+		break;
+	case 2:
+		*val = readw(addr);
+		break;
+	case 1:
+		*val = readb(addr);
+		break;
+	default:
+		*val = 0;
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int mobiveil_pcie_write(void __iomem *addr, int size, u32 val)
+{
+	if ((uintptr_t)addr & (size - 1))
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
+	switch (size) {
+	case 4:
+		writel(val, addr);
+		break;
+	case 2:
+		writew(val, addr);
+		break;
+	case 1:
+		writeb(val, addr);
+		break;
+	default:
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
+{
+	void *addr;
+	u32 val;
+	int ret;
+
+	addr = mobiveil_pcie_comp_addr(pcie, off);
+
+	ret = mobiveil_pcie_read(addr, size, &val);
+	if (ret)
+		dev_err(&pcie->pdev->dev, "read CSR address failed\n");
+
+	return val;
+}
+
+static void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)
+{
+	void *addr;
+	int ret;
+
+	addr = mobiveil_pcie_comp_addr(pcie, off);
+
+	ret = mobiveil_pcie_write(addr, size, val);
+	if (ret)
+		dev_err(&pcie->pdev->dev, "write CSR address failed\n");
+}
+
+static u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
+{
+	return csr_read(pcie, off, 0x4);
+}
+
+static void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
+{
+	csr_write(pcie, val, off, 0x4);
 }
 
 static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
@@ -342,45 +451,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 	return 0;
 }
 
-/*
- * select_paged_register - routine to access paged register of root complex
- *
- * registers of RC are paged, for this scheme to work
- * extracted higher 6 bits of the offset will be written to pg_sel
- * field of PAB_CTRL register and rest of the lower 10 bits enabled with
- * PAGE_SEL_EN are used as offset of the register.
- */
-static void select_paged_register(struct mobiveil_pcie *pcie, u32 offset)
-{
-	int pab_ctrl_dw, pg_sel;
-
-	/* clear pg_sel field */
-	pab_ctrl_dw = csr_readl(pcie, PAB_CTRL);
-	pab_ctrl_dw = (pab_ctrl_dw & ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT));
-
-	/* set pg_sel field */
-	pg_sel = (offset >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK;
-	pab_ctrl_dw |= ((pg_sel << PAGE_SEL_SHIFT));
-	csr_writel(pcie, pab_ctrl_dw, PAB_CTRL);
-}
-
-static void write_paged_register(struct mobiveil_pcie *pcie,
-		u32 val, u32 offset)
-{
-	u32 off = (offset & PAGE_LO_MASK) | PAGE_SEL_EN;
-
-	select_paged_register(pcie, offset);
-	csr_writel(pcie, val, off);
-}
-
-static u32 read_paged_register(struct mobiveil_pcie *pcie, u32 offset)
-{
-	u32 off = (offset & PAGE_LO_MASK) | PAGE_SEL_EN;
-
-	select_paged_register(pcie, offset);
-	return csr_readl(pcie, off);
-}
-
 static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 		int pci_addr, u32 type, u64 size)
 {
@@ -397,19 +467,19 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 	pio_ctrl_val = csr_readl(pcie, PAB_PEX_PIO_CTRL);
 	csr_writel(pcie,
 		pio_ctrl_val | (1 << PIO_ENABLE_SHIFT), PAB_PEX_PIO_CTRL);
-	amap_ctrl_dw = read_paged_register(pcie, PAB_PEX_AMAP_CTRL(win_num));
+	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
 	amap_ctrl_dw = (amap_ctrl_dw | (type << AMAP_CTRL_TYPE_SHIFT));
 	amap_ctrl_dw = (amap_ctrl_dw | (1 << AMAP_CTRL_EN_SHIFT));
 
-	write_paged_register(pcie, amap_ctrl_dw | lower_32_bits(size64),
-				PAB_PEX_AMAP_CTRL(win_num));
+	csr_writel(pcie, amap_ctrl_dw | lower_32_bits(size64),
+		   PAB_PEX_AMAP_CTRL(win_num));
 
-	write_paged_register(pcie, upper_32_bits(size64),
-				PAB_EXT_PEX_AMAP_SIZEN(win_num));
+	csr_writel(pcie, upper_32_bits(size64),
+		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
 
-	write_paged_register(pcie, pci_addr, PAB_PEX_AMAP_AXI_WIN(win_num));
-	write_paged_register(pcie, pci_addr, PAB_PEX_AMAP_PEX_WIN_L(win_num));
-	write_paged_register(pcie, 0, PAB_PEX_AMAP_PEX_WIN_H(win_num));
+	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_AXI_WIN(win_num));
+	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_PEX_WIN_L(win_num));
+	csr_writel(pcie, 0, PAB_PEX_AMAP_PEX_WIN_H(win_num));
 }
 
 /*
@@ -437,8 +507,7 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 	csr_writel(pcie, 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
 			lower_32_bits(size64), PAB_AXI_AMAP_CTRL(win_num));
 
-	write_paged_register(pcie, upper_32_bits(size64),
-				PAB_EXT_AXI_AMAP_SIZE(win_num));
+	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
 
 	/*
 	 * program AXI window base with appropriate value in
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
