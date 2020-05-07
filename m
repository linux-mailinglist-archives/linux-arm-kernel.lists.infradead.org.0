Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4931B1C882A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H3id5zungD0GbWYPXdf1WqIX5kDZ+YDUVMDLgtfLdNY=; b=SYMl+JWSpt4NyRCCfuvyAYa92k
	Yxr6u9GBok7wyt6jcnhPFNPOQHm4619bb3u+vzxPe8cpuO32moLI2jcvMOTJSRcOY8aov+CtvoZMX
	ZqXpe6e3IYqsCgSGtTrlGA3oWBpY8VUaoSt/RL0XHs4P2uxqFZDPCTuxe9ahy39sPnyge9UVak7rE
	2pxsZ12pLbJdzTmBKLPVJARDhGnRc185PtTKw0v9aywfKmtYZ1g6IN+uBLz1IRL/hCAvBpfRFfJUG
	z01FJhSouo6ueMxSPlMqIRP1owcj/+35OrU9O4kLA6AVhBEkMyKCvKKwhHi5zKFnoj0dyv3/NKc20
	DoSuombw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeh0-0003LI-9z; Thu, 07 May 2020 11:27:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeeA-0006ql-K8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:25:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 679121FB;
 Thu,  7 May 2020 04:24:58 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E8EF3F68F;
 Thu,  7 May 2020 04:24:57 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 11/17] arm64: dts: fvp: Fix SMMU DT node
Date: Thu,  7 May 2020 12:24:24 +0100
Message-Id: <20200507112430.183940-12-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042458_706649_435B88F0 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMU name in the RevC FVP DT file was not fully binding compliant.

Adjust the node name to match the binding's list of allowed names, also
shuffle the order of the interrupts to comply with the expected order.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 0cf96ceff431..b8a21092db4d 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -172,14 +172,14 @@
 		dma-coherent;
 	};
 
-	smmu: smmu@2b400000 {
+	smmu: iommu@2b400000 {
 		compatible = "arm,smmu-v3";
 		reg = <0x0 0x2b400000 0x0 0x100000>;
 		interrupts = <GIC_SPI 74 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 79 IRQ_TYPE_EDGE_RISING>,
 			     <GIC_SPI 75 IRQ_TYPE_EDGE_RISING>,
-			     <GIC_SPI 77 IRQ_TYPE_EDGE_RISING>,
-			     <GIC_SPI 79 IRQ_TYPE_EDGE_RISING>;
-		interrupt-names = "eventq", "priq", "cmdq-sync", "gerror";
+			     <GIC_SPI 77 IRQ_TYPE_EDGE_RISING>;
+		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
 		dma-coherent;
 		#iommu-cells = <1>;
 		msi-parent = <&its 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
