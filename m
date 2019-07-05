Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72C360981
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5Vm+NvqFyDbpSBDO+lpoZRrHcY4WnGKCHX+1q0QIxKE=; b=FUXj6fRIuPeu9MIYNZhMsFPNfc
	zJhflEjnR+hJa1XCxlEM1bLxpUa6fz1in+EF7dfngKwgdXgWo3r/LUIMLiNweEcMAHw/wzZc5HZNG
	iQP9ZeOWUDC+sVU+IycvnFiFhqLck4ixFeZYgwPlRgFSytEUUENchMHUXesVgLlup2gfmLywOvZM5
	2WRvgt5V9i1dCG025TNKUjkFpMBRCE3Gj5NHovUXFgkjkyro9cNAlPHv0xM+sP3eMZSOP8scRzG8c
	opbnJMAp+fbkuo8wbzlJo4M/wP+Yo0UBXosOVfpTF86WwSXG+t/5gFYhAPXcdpHDrCBbvknWldMWB
	4FbDI3YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQN7-00059k-BX; Fri, 05 Jul 2019 15:43:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQMw-00059J-R4
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v8dRz2I2BYnxS4wlY6Q+LLDOh9mMxYSMnF5NezamMGk=; b=s9YLUa7/I1CZxR276DlOcXJMr
 QSJ42l1mzF/NB90aLDD25LoXKPD+fCyuAl71BH5DqWehA+ryIojv3SIxsHWDEbPoLfjSOYjLeKWuw
 spK/mOKNVDsUva5pI+B7x9YeZY8bKoIUFyzryepqCv4FfKcOG799jcIXGAyB7zjUYiK7kF3fisAx3
 H5LQZ1TB8IuN4enM55AHNNUSZKhkCXD62tGB8Spma4Ketn/yV1NCTOUcc1Rr9jnpeEeWnlgFJm8PK
 1qogS80+ahbEHcKyIbg7/F+jsbXkVwvqBDiSKpfK2TH5oRij5n+KZCPZfaZ4XEqDnwZnvxWD6RThK
 fGAN3QkKQ==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL83-00010Y-UH
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 07ABA1A0EA4;
 Fri,  5 Jul 2019 12:07:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 787331A0779;
 Fri,  5 Jul 2019 12:07:34 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6D1E840297;
 Fri,  5 Jul 2019 18:07:24 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 25/28] PCI: mobiveil: Fix the CPU base address setup in
 inbound window
Date: Fri,  5 Jul 2019 17:56:53 +0800
Message-Id: <20190705095656.19191-26-Zhiqiang.Hou@nxp.com>
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

In function program_ib_windows(), currently it use the parameter
'pci_addr' to initialize both CPU base address and PCI base address
of the inbound window, it is not correct, and another problem is
the upper 32-bit CPU address is not initialized. So, this patch
adds an new parameter 'u64 cpu_addr' for the CPU base address
setup and adds upper 32-bit CPU base address initialization.

Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #9 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 75494f0..aeba37c 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -88,6 +88,7 @@
 #define  AMAP_CTRL_TYPE_MASK		3
 
 #define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
+#define PAB_EXT_PEX_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0xb4a0, win)
 #define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
 #define PAB_PEX_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x4ba8, win)
 #define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
@@ -457,7 +458,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 }
 
 static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
-			       u64 pci_addr, u32 type, u64 size)
+			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
 {
 	u32 value;
 	u64 size64 = ~(size - 1);
@@ -481,7 +482,10 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 	csr_writel(pcie, upper_32_bits(size64),
 		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
 
-	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_AXI_WIN(win_num));
+	csr_writel(pcie, lower_32_bits(cpu_addr),
+		   PAB_PEX_AMAP_AXI_WIN(win_num));
+	csr_writel(pcie, upper_32_bits(cpu_addr),
+		   PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
 
 	csr_writel(pcie, lower_32_bits(pci_addr),
 		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
@@ -618,7 +622,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 			   CFG_WINDOW_TYPE, resource_size(pcie->ob_io_res));
 
 	/* memory inbound translation window */
-	program_ib_windows(pcie, WIN_NUM_0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
+	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
 
 	/* Get the I/O and memory ranges from DT */
 	resource_list_for_each_entry(win, &pcie->resources) {
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
