Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EF060807
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bp1ivzNUAGBOkQzKH/Xhqsb9DLDneI5uNjRTvXZCcDg=; b=lAA3PZtq49V51hsKYHCYkvWR4M
	LZwK4rTz/99ZqjL/psvBfdGbkpyPrxB2/2wnRh1qyGvqM9g4bL8ClxiAKkf/liJhJ+0mDIl1BchLN
	ww978HPvw74NsOeyURUDI/cEh1Elc86WcfOojZOeo0biwbFjZlijsQmDglzBWC+nIRrkmSxiIvQRN
	KNaUkp+MWTx4/iAqBgkBzR6K166IvIl5McrTbnMzth1pgOFJgzuEgUW+zRW1u78W5t8r73sG9AP8U
	cwsZTuBnMG4SkCKNdq1ljwh1m56bUx3qzc5IVy+zqxbK+FBs1Jahp+Sg+YkPBo+Xdy8UyFwMDHn21
	ovcuKYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPNE-0001Hr-A3; Fri, 05 Jul 2019 14:39:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPKA-0006GL-GC
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oziflfcty1mKBENUKu7/r0VapR6jAQAb3mlY52sqX2Q=; b=mfd4WQWZeAca/HJ4PkkbUg2bW
 R+ZFREKJrq9IgikQqbU0r1DUuZatUOmX/49E/nWp46z//GLFQszVaQEq+LGjCCa7Xdrv0JBfRBdqP
 rqAjWaUommwaQR2QC7hwE86GiufUhYPW+iaS662+QhAbgQBGGI/5pSFEDSSlQGxXoY0dcUD3gu8N9
 3utRuRh0NjmEfe3X9+Rb/fcoLuW83KhfQoOf3Y1lCV3JY1sQRJkvCoItqbVEPatd4z7/UR74VcV8u
 ZbTI92LbKnjdBOQBJ1ezmo/r3XMXAm6frkTPEMBQ1TGlTDaUAMECCdTUGFZ2gghMEpiE+Gz1iffAk
 bhYzcX0vQ==;
Received: from inva021.nxp.com ([92.121.34.21])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL8b-000252-Ki
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:08:19 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5DD3F2006F9;
 Fri,  5 Jul 2019 12:07:41 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D4176200706;
 Fri,  5 Jul 2019 12:07:32 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CE81D402C0;
 Fri,  5 Jul 2019 18:07:22 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 24/28] PCI: mobiveil: Add upper 32-bit PCI base address
 setup in inbound window
Date: Fri,  5 Jul 2019 17:56:52 +0800
Message-Id: <20190705095656.19191-25-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110817_707699_41DF2456 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code only setup the lower 32-bit PCI base address in
inbound window, it can result in inbound transactions drop on
64-bit platforms.

Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #9 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    9 ++++++---
 1 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 9382fed..75494f0 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -457,7 +457,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 }
 
 static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
-			       int pci_addr, u32 type, u64 size)
+			       u64 pci_addr, u32 type, u64 size)
 {
 	u32 value;
 	u64 size64 = ~(size - 1);
@@ -483,8 +483,11 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 
 	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_AXI_WIN(win_num));
 
-	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_PEX_WIN_L(win_num));
-	csr_writel(pcie, 0, PAB_PEX_AMAP_PEX_WIN_H(win_num));
+	csr_writel(pcie, lower_32_bits(pci_addr),
+		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
+	csr_writel(pcie, upper_32_bits(pci_addr),
+		   PAB_PEX_AMAP_PEX_WIN_H(win_num));
+
 	pcie->ib_wins_configured++;
 }
 
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
