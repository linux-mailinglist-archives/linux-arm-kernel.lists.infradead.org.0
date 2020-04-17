Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7C81ADCED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTuGfP/bpKOrOlcKN29wDhs8l2J5NrBfVe4J0aLy7C4=; b=tJQGXSxuqrHV/m
	9q0T08rwxO+MKmmdCokHTzpNrTWW9DTzMQDH/1fv/SbOC1U5Abb9pFTx4o4wRxufzFpiwBRhhhoYK
	/NNlEys9t8J1mWweTZc3ej2hrrn20FKy+7c5AvlmUC3nInsmQf9sPNDCcldYYuTyso6Ffq8k7Rzc7
	KQneXSuriYAbs+x/e3VGMbXA+1s7BmPTh927t0dM5qWm/03E9sLUY+LIyuVD7gzTZdVQRKkfbhGq2
	q7mgZbOJD/yJIAk6tdwJBrkllwS/Pzc16vP/twSFD7CN19ks/SC1fEh5uwobPiuZ28raZu1yRiYBx
	SaRfwltRjFpnsYpBfIfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPnh-0007zh-HQ; Fri, 17 Apr 2020 12:08:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPnW-0007zI-5Y; Fri, 17 Apr 2020 12:08:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E89CD30E;
 Fri, 17 Apr 2020 05:08:40 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 45C903F6C4;
 Fri, 17 Apr 2020 05:08:40 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Correct PMU compatibles
Date: Fri, 17 Apr 2020 13:08:34 +0100
Message-Id: <6dfed94a99780c2314b38ff2b55a7efa0be4edbc.1587125314.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_050842_254452_76BFFF65 
X-CRM114-Status: GOOD (  13.09  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A proper binding for the Cortex-A35 PMU actually predates these DTs
being upstreamed, so use it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f809dd6d5dc3..adc9b8bf5eaa 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -143,7 +143,7 @@
 	};
 
 	arm-pmu {
-		compatible = "arm,cortex-a53-pmu";
+		compatible = "arm,cortex-a35-pmu";
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac43bc3f7031..ac7f694079d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -127,7 +127,7 @@
 	};
 
 	arm-pmu {
-		compatible = "arm,cortex-a53-pmu";
+		compatible = "arm,cortex-a35-pmu";
 		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
