Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04861D1000
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H3id5zungD0GbWYPXdf1WqIX5kDZ+YDUVMDLgtfLdNY=; b=l92+weFG3LtsfTmYHo7C+BhmBd
	pSc6zcsWAFGRkVzR7fjM1zoVNebGYifSTXxNsVrUwikGiV1A2RgYVfPOkVhZ5MQUDGoVSYKo5owRu
	SEm4CUzB8ATX4NpXYEu1twEMsjS2eXazLR83FQVpoLZcVbn1LYCQ0i79tXUxlcBc2qvf5nGaDF6Ti
	LSaVWKZf70p4y8D7h8GlI8T+pVpp6TQojLiJSwfPlauPvnGJ0CdiVxyibynDGxvoIJZv86fHKgqc/
	M1ASspoW2UjkJJYBOB+A2jDoIDGcS2Uz0UR1jKKHsVTU5NkjoRAM8altmf9VpFfAAlq7U4VdoIjQe
	QIggI6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYohT-0007UM-VL; Wed, 13 May 2020 10:33:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYof3-0005GZ-BG
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 082B8D6E;
 Wed, 13 May 2020 03:30:49 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2AB93F305;
 Wed, 13 May 2020 03:30:47 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 14/20] arm64: dts: fvp: Fix SMMU DT node
Date: Wed, 13 May 2020 11:30:10 +0100
Message-Id: <20200513103016.130417-15-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033049_563891_FD06107A 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
