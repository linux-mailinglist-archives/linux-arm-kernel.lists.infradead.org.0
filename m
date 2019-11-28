Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B0C10CBF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WJFP8neYkTDGKIyPUWQqhUN3J309dMSLHqo/5n+Csnw=; b=tvv/5pVRI5Y9VL/EfUpd8crYab
	LgwdT0jK21l9HBj2W5dV8jy4AMGLKU5sW+x8TlI3ceb38bGPyj+Ceo5CdctqotTNCR4nZ6FoM4T0y
	idlGEYtcLmH2g16jC0UwZbtOVNiMGjXKuHEf5zQaDgsoQPg8P0W2WCrwJxsue1II5ff9+caKP1Bft
	TW7bZBK2CZ55ZCYECODu5l3a2A303Kuk2/QWtENrqD5PrVbuzsV/1b0nC1r2DsS/cjsWBL02ag2Kb
	bJYEcbAaGXrr8mmMZ1FqhukuWkxzUXqZjankoTh0WCBt8WEqI4mtanzcDOMv3oGLtC08/Wopp4Uzp
	0D9H/Eog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLwe-0004NB-9i; Thu, 28 Nov 2019 15:43:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLwS-0004Mq-Ja
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 15:42:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6305330E;
 Thu, 28 Nov 2019 07:42:49 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6276F3F68E;
 Thu, 28 Nov 2019 07:42:48 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] Revert "arm64: dts: juno: add dma-ranges property"
Date: Thu, 28 Nov 2019 15:42:42 +0000
Message-Id: <20191128154242.1035-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191126165355.6696-1-sudeep.holla@arm.com>
References: <20191126165355.6696-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_074252_687350_4E845A16 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 193d00a2b35ee3353813b4006a18131122087205.

Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
reworked the logic such that of_dma_get_range() works correctly
starting from a bus node containing "dma-ranges".

Since on Juno we don't have a SoC level bus node and "dma-ranges" is
present only in the root node, we get the following error:

OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
...
OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)

So let's fix it by dropping the "dma-ranges" property for now. We can
add it later with a proper SoC bus node and moving all the devices that
belong there along with the "dma-ranges" if required.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 9e3e8ce6adfe..1f3c80aafbd7 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -6,7 +6,6 @@
 	/*
 	 *  Devices shared by all Juno boards
 	 */
-	dma-ranges = <0 0 0 0 0x100 0>;
 
 	memtimer: timer@2a810000 {
 		compatible = "arm,armv7-timer-mem";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
