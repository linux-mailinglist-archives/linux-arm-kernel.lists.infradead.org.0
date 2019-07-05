Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2926609AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mOIXRJNcg0NCzMyMIJM3CNF4chtEEbEK0HDCQEYZ5/w=; b=HkCVMDzrQN1+HOuydSNlaVMLAU
	kSJnbRzXpuKK55KEB5QHEXr+QqtdxGDe8/uBVwv09KjYtRbWBfV+yDgWHHzfRwk5CxSLfYVQh2TCF
	YCtZo595LyTRnUamYq1BUdBSK8mmn0TrYM3DyIXUWhVdSYwbO6TJy4DtopcuEH8fy0yaPRhGz2ayu
	IKE1/zqlc1GSGJ0k7bI/X3jPubc046B36CD0DzNXQHjpbKuI4TuuKKzSiVGpu7r4rU8zBQ3RiPpPy
	CCwkOBD2cPunUXCfwiSxIsG4hlq0T7TcrfKGHa6FsnhJs9PQ5iIRoX9TmxwOv0MHpxWqYNsTqoNIY
	C9ZU5elw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQTX-0004IW-Bv; Fri, 05 Jul 2019 15:50:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNw-00066L-JE
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PoD/LNZ3WAuKAbzbfxk+ccktwp+WRdRw3IUZAYLIStA=; b=ls6zGv6m5SZ5vwpmliWDLkadc
 JV6J3dnKt8HyCYL6yuhAn4Kz2IuFKDI7uCvVcttzBgfVYAf/FXER1IO2xkNRbMIFZxuB9QaRW1MzJ
 YZLGrX1pevAIkX8g2Gtf6jfXgAmlM0cyv+QKVKb/Ens5a1dqnQMTe8kwczo1lUEzP/UDluRiAFmsB
 BSpTt/EWsr8sRAKSYrhBhJgLkd+AAB+Kcp0XI0j2dvfds1j5Otb2Zmk5sv3Wo0t/gdT1kx1LT2/GH
 zF4Pg3tRiw5FKNKBItc4yyzSgJNQBcVTLHqDQIaH/7taWt/PJZ4jLYvg7XiAm4/WdcXoiIklwvJER
 Ve/KHf9rg==;
Received: from inva021.nxp.com ([92.121.34.21])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7q-0000zh-Ry
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D6EF7200706;
 Fri,  5 Jul 2019 12:07:29 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 58AED200044;
 Fri,  5 Jul 2019 12:07:21 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4B4D240332;
 Fri,  5 Jul 2019 18:07:11 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 17/28] PCI: mobiveil: Remove an unnecessary return value
 check
Date: Fri,  5 Jul 2019 17:56:45 +0800
Message-Id: <20190705095656.19191-18-Zhiqiang.Hou@nxp.com>
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

The memory of private structure has been allocated together with the
pci_host_bridge structure in function devm_pci_alloc_host_bridge().
So it is unnecessary to check the return value when get the private
structure pointer.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #3 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 51cbe53..ddc20d3 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -851,8 +851,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	pcie = pci_host_bridge_priv(bridge);
-	if (!pcie)
-		return -ENOMEM;
 
 	pcie->pdev = pdev;
 
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
