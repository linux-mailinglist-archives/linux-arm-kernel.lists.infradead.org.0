Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AF96098B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q9X8+YRqhOpncpX/0IThmWxKcDd9vkKWLaCfcYEEHaM=; b=MJoD+f1+E9aHPnrsJ/Q7KJaTnf
	Dc9H9CdNyNewCB4Ter5HU6JwfozLaa5fCXTDsEt56UZCaC5fcecrR6mHCoE37/2N34R3G8bZ3YSsn
	5Xs5LSHW9PoLKu4o0J0hrCEz9KrPq2H74XMv73FOla02uEPItSdp+23eBlvPB9IKxpATY+swVqvjc
	SftxjnZSTzC7+tTsU6WctEuBV4eIW9vSEjyeghSjBaHCsivSbY5HZkV0PKC8bCiwX0WxbLaIWfVvf
	9XQFFOB+CnwQI6MJeIvGKsEGSk9DVpjM9vRnuauupRObfnXUt8Hp7JwCjDI1q0GQsNHxEw75dKL4w
	+LJ5t/pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQPF-0008Md-64; Fri, 05 Jul 2019 15:45:49 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNJ-0005SS-2i
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xcws14ALyfbixABgft8gTHL1DrP7bw4klLG8z8WXaqA=; b=qPLE03MSppjQeulJXb3Az+ZxX
 aino/LLY8e6nlaBlsF9L+oTGXYqrcDHgoBp75UpqUSwMcsceW9Ncm/LaquH9dA8nxWYF4aa+PJM5E
 UmGx2CUcS5wjf74uuPCte2nYT80NGjtuDqiHHga7RBmtlBGp30scFoZ5Onjowf5GydfaOdHfBLR/O
 aOzoTKK5pRqjxlI65nbfTzeQUKWolvy/QkbzTOq+KzXYF4vtMer71I4Qh26SMI6cqTO94yNbYS2kS
 Cbx1FoV9khPakqLnwJzG0omHcWyDofm771g0hPnHeDQ2tZIxaOyKkgz41SYiBI+G5J9Tim3XDYsUw
 uYae1pr0Q==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7z-00010C-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2A1A11A0EAC;
 Fri,  5 Jul 2019 12:07:38 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A14B21A0EB9;
 Fri,  5 Jul 2019 12:07:29 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4D0B54032A;
 Fri,  5 Jul 2019 18:07:19 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 22/28] PCI: mobiveil: Mask out the lower 10-bit hardcode
 window size
Date: Fri,  5 Jul 2019 17:56:50 +0800
Message-Id: <20190705095656.19191-23-Zhiqiang.Hou@nxp.com>
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

The lower 10-bit of window size field is hardcode to zero,
and then the lower 10-bit of PAB_AXI_AMAP_CTRL register are
used to control fields, so mask out the lower 10-bit of
window size in case override the control bits.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #9 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 7d18e59..4f50fe6 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -474,7 +474,7 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
 	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT | WIN_SIZE_MASK);
 	value |= type << AMAP_CTRL_TYPE_SHIFT | 1 << AMAP_CTRL_EN_SHIFT |
-		 lower_32_bits(size64);
+		 (lower_32_bits(size64) & WIN_SIZE_MASK);
 	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
 
 	csr_writel(pcie, upper_32_bits(size64),
@@ -509,7 +509,7 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
 	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT | WIN_SIZE_MASK);
 	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
-		 lower_32_bits(size64);
+		 (lower_32_bits(size64) & WIN_SIZE_MASK);
 	csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
 
 	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
