Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65EE609AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DEGQ2cI3UMJRGuoR6lWrn/lAOPoOHXMccTuBek76plo=; b=bRHXp3hHnekQHGUlSItUlsKThU
	oN6jA2Qu6LIiklf3pUnZxjQl1sq73VkEB6XkW/+/Mx8gOLK31NuJmmoNVd0BFLSPBcR3k8Ox6FZOS
	R7kixShrfingEkZTEpaI+kmXwqSYQLmoj92ZMvmhNGS7wU5GVs1l7HtzMJp25RCff7ojG3Lwao7m6
	YXA4PRTM/oNWnM2ItWWRoSXyP5ozjosJgLOnbM+gBlt+PAx/3GpDVhtxtUhVG4qVfNenadpPRGGWu
	oI2jlx21XLdgykvCD+CtPsW2zzcAr8kjroD+Z2miGef55g15iVeoiSmeGKn1Z1h2X9wmi1QoFvnMd
	w+WwKLrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQSy-0003oQ-7v; Fri, 05 Jul 2019 15:49:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNt-000636-5Y
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3lAgQLqJN9ArF1u8aZFFWe76JdISr34vNoFXYtbh1qw=; b=LfYSZdSarcAUQHfrwY1BGBU0R
 A5ITzO22O0kPp1IyJgTAA9jykAZ9eRxaNDtdveE/jh/U5mPE1xsVTDNyir76VD2MplgE4ZV43gg47
 ZeRSoJdFlOhYl7EGlVh+VLHujMgc991kXfDtM2VvsCCYy13Xh9yDIqBz1EYC6TMFElfzPdK5JR384
 5tPrl9jye7F/nLo0WkfOtHjHzFsqkQXV3GIU7Af28boCpu7PeiGt18Sbfxv3jYVsHLiO6mYAoHPQB
 hrrnWmB7LFkqESIabifUOtZVaT+jpGYa1NCfNfaB7udh4Sk1NqD/kyPbUM2SBpCd7wQ9UhGmJ3ro4
 mEgRmVFZg==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL8A-00010i-8b
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6ECB91A0EAE;
 Fri,  5 Jul 2019 12:07:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E57361A077B;
 Fri,  5 Jul 2019 12:07:37 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E3FE2402E5;
 Fri,  5 Jul 2019 18:07:27 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 27/28] PCI: mobiveil: Fix infinite-loop in the INTx process
Date: Fri,  5 Jul 2019 17:56:55 +0800
Message-Id: <20190705095656.19191-28-Zhiqiang.Hou@nxp.com>
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

In the loop block, there is not code to update the loop key,
this patch updates the loop key by re-read the INTx status
register.

Note: Need MV to test this fix.

Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
Acked-by: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Tested-by: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
---
V6:
 - Splited from #10 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |   12 +++++++++---
 1 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index f35d14b..a5549cf 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -359,8 +359,9 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 
 	/* Handle INTx */
 	if (intr_status & PAB_INTP_INTX_MASK) {
-		shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT) >>
-					   PAB_INTX_START;
+		shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
+		shifted_status &= PAB_INTP_INTX_MASK;
+		shifted_status >>= PAB_INTX_START;
 		do {
 			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
 				virq = irq_find_mapping(pcie->intx_domain,
@@ -376,7 +377,12 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 					   shifted_status << PAB_INTX_START,
 					   PAB_INTP_AMBA_MISC_STAT);
 			}
-		} while ((shifted_status >> PAB_INTX_START) != 0);
+
+			shifted_status = csr_readl(pcie,
+						   PAB_INTP_AMBA_MISC_STAT);
+			shifted_status &= PAB_INTP_INTX_MASK;
+			shifted_status >>= PAB_INTX_START;
+		} while (shifted_status != 0);
 	}
 
 	/* read extra MSI status register */
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
