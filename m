Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE3460988
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IBLBOGfwRTcayPVmzBxTERNsRyE9kk9EvVNtWz58uoY=; b=LnrMh0w5eTntEZLV6bR8j1isVQ
	2TlWbXXSUerzbwoRWHB7YvondPf+PzIbQC4rPDr5G+gTqia7HPYicTMGNyhX5efjlkmgCsVOz00ms
	uqJI9v+eYMYc13Pdt9R1Oy265jBs6kCo8590DSPb3qW1b9oZuYAD9qQUuTr3VYME2nKlYYQQuITP1
	jgzWZlbVj73vezZCC1x8rJpCyab/fSwmSfxdA2m45c4cRFe175ydM4EtE3JZWIfJR3IO6n/zg9rk4
	N5VgVZhHwJZyee+ahHWbOBFGC0jwqOJL9Mj6ftfJsNNYu+7qnv7Z9WzJDWeFdB8fPClXqHiyk3f9o
	BJB1K13A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQOm-0006bi-Ti; Fri, 05 Jul 2019 15:45:20 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNC-0005LM-MB
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZQo3Fqy4Jbi9ieCicIMc3WEMcEK088b3muG06855GAE=; b=HeWc4FUYKy8+VE980lth4Ab0v
 jpjfh1IenDGqfrqC2xyB7e8oupTcqmKbt5AkJHrDnA/pgEqTI3g93xkQyk0Cw3LAnB5IaOkC7xWRm
 qNce17yWCO/LvWQug1l45sLGWoT/2JQGkbutb6Himzt55aTf79i8Bk9r5DD99VKFQNbhrUAY/94UX
 BQjeAEVhhkys1mtDv0HSCbFFZz+7bfWhhWeOnlLF4jrXIz99adiTBl2WlXglOuCB1iArIVo1fx4aX
 Piu02I6pNBwno8Qgg0m4ZXbaLQsJWFAVqQ/7Gn1x0oqZ6O1oovROXfuvH4n3ZjQ6X4CUxwUILefAF
 Y/5qivT7A==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL8C-00010q-Lt
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D93951A077C;
 Fri,  5 Jul 2019 12:07:44 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5A03B1A0775;
 Fri,  5 Jul 2019 12:07:36 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0F846402E1;
 Fri,  5 Jul 2019 18:07:25 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 26/28] PCI: mobiveil: Move PCIe PIO enablement out of
 inbound window routine
Date: Fri,  5 Jul 2019 17:56:54 +0800
Message-Id: <20190705095656.19191-27-Zhiqiang.Hou@nxp.com>
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

Move the PCIe PIO master enablement to function mobiveil_host_init().

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #9 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index aeba37c..f35d14b 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -469,10 +469,6 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 		return;
 	}
 
-	value = csr_readl(pcie, PAB_PEX_PIO_CTRL);
-	value |= 1 << PIO_ENABLE_SHIFT;
-	csr_writel(pcie, value, PAB_PEX_PIO_CTRL);
-
 	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
 	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT | WIN_SIZE_MASK);
 	value |= type << AMAP_CTRL_TYPE_SHIFT | 1 << AMAP_CTRL_EN_SHIFT |
@@ -610,6 +606,11 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	value |= APIO_EN_MASK;
 	csr_writel(pcie, value, PAB_AXI_PIO_CTRL);
 
+	/* Enable PCIe PIO master */
+	value = csr_readl(pcie, PAB_PEX_PIO_CTRL);
+	value |= 1 << PIO_ENABLE_SHIFT;
+	csr_writel(pcie, value, PAB_PEX_PIO_CTRL);
+
 	/*
 	 * we'll program one outbound window for config reads and
 	 * another default inbound window for all the upstream traffic
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
