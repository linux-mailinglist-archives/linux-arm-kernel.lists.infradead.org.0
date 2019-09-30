Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89677C2437
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5V3CQKiQgxNQNuvsqVM1GVl7K3AUiTzRty+Jievd2xQ=; b=Yn+iAwYQGUCe3J
	4+belglW5Gpq2pZ2NpBH3s4MU352FFCohkVkw43azPgNNYHkpkVqXpDTW9hbbD5vHiUYEv0C03QzR
	MkPxHDdj8XWVvjaBBXfPnccd9c7D1vYCbs/hzvrFFadtACgJ2obBJjiGFAkvvmVXbEfY//H+Emokq
	wZ2+37IkIxEhGqaqqAWkU3sgagJLUfyL1Nzt6i02irYGseNEbfW4vu8cJuVuN4mTJtxjnlYRdqTdk
	UMKllO8y9OjKuQGmZ/vNCC4tVfPUXRT9J20w4I2Rfu8WQw1OJ3zOmlbVoPIiVF9RET7SXo06Sk0D9
	zNtUoPcc+Hty4tBK/fXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExYL-00042f-9w; Mon, 30 Sep 2019 15:25:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExYC-000427-QP
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:25:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 096E01000;
 Mon, 30 Sep 2019 08:25:24 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C561D3F706;
 Mon, 30 Sep 2019 08:25:22 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com,
	sudeep.holla@arm.com
Subject: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
Date: Mon, 30 Sep 2019 16:24:58 +0100
Message-Id: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_082524_900170_CB988B95 
X-CRM114-Status: GOOD (  14.50  )
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com, liviu.dudau@arm.com,
 dri-devel@lists.freedesktop.org, steven.price@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we now have bindings for Mali Midgard GPUs, let's use them to
describe Juno's GPU subsystem, if only because we can. Juno sports a
Mali-T624 integrated behind an MMU-400 (as a gesture towards
virtualisation), in their own dedicated power domain with DVFS
controlled by the SCP.

CC: Liviu Dudau <liviu.dudau@arm.com>
CC: Sudeep Holla <sudeep.holla@arm.com>
CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
 arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
index 47bc1ac36426..018f3ae4b43c 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
@@ -22,6 +22,10 @@ properties:
           - enum:
              - amlogic,meson-gxm-mali
           - const: arm,mali-t820
+      - items:
+          - enum:
+             - arm,juno-mali
+          - const: arm,mali-t624
       - items:
           - enum:
              - rockchip,rk3288-mali
@@ -39,7 +43,6 @@ properties:
              - samsung,exynos5433-mali
           - const: arm,mali-t760
 
-          # "arm,mali-t624"
           # "arm,mali-t628"
           # "arm,mali-t830"
           # "arm,mali-t880"
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 26a039a028b8..9e3e8ce6adfe 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -35,6 +35,18 @@
 		clock-names = "apb_pclk";
 	};
 
+	smmu_gpu: iommu@2b400000 {
+		compatible = "arm,mmu-400", "arm,smmu-v1";
+		reg = <0x0 0x2b400000 0x0 0x10000>;
+		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+		#iommu-cells = <1>;
+		#global-interrupts = <1>;
+		power-domains = <&scpi_devpd 1>;
+		dma-coherent;
+		status = "disabled";
+	};
+
 	smmu_pcie: iommu@2b500000 {
 		compatible = "arm,mmu-401", "arm,smmu-v1";
 		reg = <0x0 0x2b500000 0x0 0x10000>;
@@ -487,6 +499,21 @@
 		};
 	};
 
+	gpu: gpu@2d000000 {
+		compatible = "arm,juno-mali", "arm,mali-t624";
+		reg = <0 0x2d000000 0 0x10000>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "gpu", "job", "mmu";
+		clocks = <&scpi_dvfs 2>;
+		power-domains = <&scpi_devpd 1>;
+		dma-coherent;
+		/* The SMMU is only really of interest to bare-metal hypervisors */
+		/* iommus = <&smmu_gpu 0>; */
+		status = "disabled";
+	};
+
 	sram: sram@2e000000 {
 		compatible = "arm,juno-sram-ns", "mmio-sram";
 		reg = <0x0 0x2e000000 0x0 0x8000>;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
