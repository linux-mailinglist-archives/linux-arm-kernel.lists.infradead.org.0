Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EED13141
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzkMYC9IrdIJddzIXtpGCuszOecBchCR/AvBwhQhGkI=; b=egBMHweONihHHf
	gzNcVmbpL9KWvw8KK5+kXW9kr62xL7IKsdnPMJlQUE1qhHUqFv2+r9SAmr9en4i2K79feL3rN5Ht+
	dMNDkqolmY57qdsgAdhrxKyVOgwz83Fhy8mtfLGpLvs89vxfMcbUbJ+sEBmnNYVEz44nz5euw6kQ+
	c9ocrwPyxDE0MxJDa/IvIjUuY8QWTxwjCwiiuzjWPFpEDeryjzJu5JX+amfOfqZWmHBSV5j/UqFjC
	tMG0FeaIuL15n1PGm2Z5AHFfmA5CmSLQWUWJvWVfbyDRsFE5oEfHJUPEC5g0tZDYjXufXiFJW7Bve
	nn3+ZSI9YFaTvne0lwDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaBK-0003aE-Ss; Fri, 03 May 2019 15:33:02 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaAP-0002VC-To
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:32:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8802480D;
 Fri,  3 May 2019 08:32:05 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 489A53F557;
 Fri,  3 May 2019 08:32:04 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com
Subject: [RFC 5/4] arm64: dts: juno: add GPU subsystem
Date: Fri,  3 May 2019 16:31:46 +0100
Message-Id: <0d17a3c08fb435e54b3b5b748ac83b6a016e0525.1556896081.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1556195258.git.robin.murphy@arm.com>
References: <cover.1556195258.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_083205_966001_24D4C92B 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
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

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

Just in case anyone else is interested. Note that I've not been using
this exact patch, since my Juno is running the new SCMI-based firmware
which needs not-yet-upstream MHU changes, but this should in theory be
the equivalent change for the upstream SCPI-based DT.

 .../bindings/gpu/arm,mali-midgard.txt         |  1 +
 arch/arm64/boot/dts/arm/juno-base.dtsi        | 25 +++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
index 18a2cde2e5f3..c17f8e96d1e6 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
@@ -16,6 +16,7 @@ Required properties:
     + "arm,mali-t880"
   * which must be preceded by one of the following vendor specifics:
     + "amlogic,meson-gxm-mali"
+    + "arm,juno-mali"
     + "rockchip,rk3288-mali"
     + "rockchip,rk3399-mali"
 
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 995a7107cdd3..6edaf03620f9 100644
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
+		power-domains = <&scpi_devpd 3>;
+		dma-coherent;
+		status = "disabled";
+	};
+
 	smmu_pcie: iommu@2b500000 {
 		compatible = "arm,mmu-401", "arm,smmu-v1";
 		reg = <0x0 0x2b500000 0x0 0x10000>;
@@ -487,6 +499,19 @@
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
+		power-domains = <&scpi_devpd 3>;
+		dma-coherent;
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
