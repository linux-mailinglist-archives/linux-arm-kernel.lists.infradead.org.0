Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245A0609C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BbzpNPeo5QKYhHrMvDHAYak7/c/MJKdt8qIxYZux3tQ=; b=ppiaY4tGU/konXrIjb3fjgNZT5
	w33TYiH4lxJU00zcgwF5/Sz2qcI8es9iBbQbTwZBls9P9tmJ9nlJIjyUGdjFceR1MDUEpkGfzWQxB
	K3R6eNtMROhAj9Ngf4VarTvoFHGt1sE8tcPDbp2YjhOE1ijDHyKDKo7bpt4yCd8SOkQGoZn9/c2wk
	qABNDABFibSD0Lj4105Y9UBAbA9npr2HyCQWNFLEscIHD0JDuZIwtJsZPE9Tw9+jgmh0wBQTbvcKo
	qmN1gIdgW0l/8qieKaJVzSJJxbIx1cKjdzJM+yjI9g4cyrk6YuJHLKoIT1yOYRWLMVqDQHe0EneOi
	3obQL8cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQU1-00061O-7I; Fri, 05 Jul 2019 15:50:45 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQO0-0006AD-68
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7M6ujh+FDmRBK5eZnO4mpI8VvsqJlRPDUfO9bkpDCmI=; b=qt7SUuXwOHcyA65wbtpXRhJme
 B0h5hCdwfNL/Agh34LSHBD+e7p9NHlqz//DOboOsijBi8rd3V2odPT7yRnz4RKec25gP93KqmvR4f
 /G4Z2c0TDw1vnPfBn6HDbjsnkd7VidQlmZjxsoJOiQvBy0kDJVo4ZwJiop41+JWxVjXWldMKDc2MG
 2tcgopz5wHBwrEkXPaE7idkOiGqZZb8UdERWsosddSikWRihrFtk2siOREKin/CpUTTOl2DYv+sVC
 G9AAefgFQ6anXMubjC8nEmejWCa7PavXXZW/DEzQj1YAswhrVBjiQNfD4W94ZmsQ8ZkyJJjaRcXMl
 SHRCom4Tg==;
Received: from inva021.nxp.com ([92.121.34.21])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL8M-00010z-ME
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:08:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B2FC1200E90;
 Fri,  5 Jul 2019 12:07:31 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E725E200E78;
 Fri,  5 Jul 2019 12:07:22 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E2811402EC;
 Fri,  5 Jul 2019 18:07:12 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 18/28] PCI: mobiveil: Remove redundant var definitions and
 register read operations
Date: Fri,  5 Jul 2019 17:56:46 +0800
Message-Id: <20190705095656.19191-19-Zhiqiang.Hou@nxp.com>
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
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

From the function program_ob_windows(), remove the redundant read
operations to registers PAB_AXI_AMAP_AXI_WIN and PAB_AXI_AMAP_PEX_WIN_H,
and remove the useless definition of 'value'. Rename the parameter
'config_io_bit' to 'type' and then remove the definition of 'type'.
From the function program_ib_windows(), remove the definitions of
'pio_ctrl_val' and 'amap_ctrl_dw' and reduce to only one var 'value'
to keep the temporary value read from registers.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #9 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |   25 ++++++++-----------------
 1 files changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index ddc20d3..ccf9bb1 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -455,8 +455,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 			       int pci_addr, u32 type, u64 size)
 {
-	int pio_ctrl_val;
-	int amap_ctrl_dw;
+	u32 value;
 	u64 size64 = ~(size - 1);
 
 	if ((pcie->ib_wins_configured + 1) > pcie->ppio_wins) {
@@ -465,15 +464,15 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 		return;
 	}
 
-	pio_ctrl_val = csr_readl(pcie, PAB_PEX_PIO_CTRL);
-	pio_ctrl_val |= 1 << PIO_ENABLE_SHIFT;
-	csr_writel(pcie, pio_ctrl_val, PAB_PEX_PIO_CTRL);
+	value = csr_readl(pcie, PAB_PEX_PIO_CTRL);
+	value |= 1 << PIO_ENABLE_SHIFT;
+	csr_writel(pcie, value, PAB_PEX_PIO_CTRL);
 
-	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
-	amap_ctrl_dw |= (type << AMAP_CTRL_TYPE_SHIFT) |
+	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
+	value |= (type << AMAP_CTRL_TYPE_SHIFT) |
 			(1 << AMAP_CTRL_EN_SHIFT) |
 			lower_32_bits(size64);
-	csr_writel(pcie, amap_ctrl_dw, PAB_PEX_AMAP_CTRL(win_num));
+	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
 
 	csr_writel(pcie, upper_32_bits(size64),
 		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
@@ -488,11 +487,8 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
  * routine to program the outbound windows
  */
 static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
-			       u64 cpu_addr, u64 pci_addr,
-			       u32 config_io_bit, u64 size)
+			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
 {
-
-	u32 value, type;
 	u64 size64 = ~(size - 1);
 
 	if ((pcie->ob_wins_configured + 1) > pcie->apio_wins) {
@@ -505,8 +501,6 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
 	 * to 4 KB in PAB_AXI_AMAP_CTRL register
 	 */
-	type = config_io_bit;
-	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
 	csr_writel(pcie, 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
 		   lower_32_bits(size64), PAB_AXI_AMAP_CTRL(win_num));
 
@@ -516,12 +510,9 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 	 * program AXI window base with appropriate value in
 	 * PAB_AXI_AMAP_AXI_WIN0 register
 	 */
-	value = csr_readl(pcie, PAB_AXI_AMAP_AXI_WIN(win_num));
 	csr_writel(pcie, cpu_addr & (~AXI_WINDOW_ALIGN_MASK),
 		   PAB_AXI_AMAP_AXI_WIN(win_num));
 
-	value = csr_readl(pcie, PAB_AXI_AMAP_PEX_WIN_H(win_num));
-
 	csr_writel(pcie, lower_32_bits(pci_addr),
 		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
 	csr_writel(pcie, upper_32_bits(pci_addr),
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
