Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A43E4EE67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 20:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+KzYDKyGe+yfEjxiUUylNvMYWZqNRGtHbvKEocOSTV8=; b=BqmCBfH55nqxR+1m6yngk4bpom
	MqRvF6zVPJ9r3a2fi6+59ytxRQ1vSpgJblY68BnoJRPzl0x4SgUR5qlYdb1vWYuMNYU4C7/T2VBxT
	+oVP+3ExDymKvgsF+NcDEGF72iGJd5XRHM26hAKCD5kfWIoy1gvJLQkVubU4Jv2bqb7QGUeGMJNCL
	j9ee4+CjC4iZEgn4/RrRB4uFfJUFYQPy/a7/g1MjQc9y+SQDVgaquoeOH4yoID9V11sOR/WG91UjX
	2MGew+e23F3fCoJyrLQ9divdC7d6nxG3ASMJRQ47vamNM+T82oXtrWqIjvOZtc63PVORyq4r7WxCE
	od5+TO0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNsm-0005Ry-Tm; Fri, 21 Jun 2019 18:03:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNrt-0004sb-78
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 18:02:34 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73B372070B;
 Fri, 21 Jun 2019 18:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561140152;
 bh=+9ohOiGJvzsfdxdaZ7ushjCiWCiAUtxItMfExsJy6aU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1fovcbJeTqAWebQeHMR9VsOZ2R+LEgekORRRhKfZJhlbn1dB7xfsPmjLhHX423sys
 o7xO+690+48K00MUTDzp7lspIM7t+7OK08oGk6bdRBcYCjxQ2V4JHVVTS265DRGwtk
 +0nlTjexuqLJRxBW5CJykqnsYtEuBuJ3cBvOjTxw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/7] arm64: dts: exynos: Add GPU/Mali T760 node to
 Exynos5433
Date: Fri, 21 Jun 2019 20:02:04 +0200
Message-Id: <20190621180208.25361-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621180208.25361-1-krzk@kernel.org>
References: <20190621180208.25361-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_110233_317848_D66BF252 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for GPU (Mali T760) to Exynos5433.  Missing element is the
cooling device.  Not tested on HW.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. None
---
 .../dts/exynos/exynos5433-tm2-common.dtsi     |  5 ++
 arch/arm64/boot/dts/exynos/exynos5433.dtsi    | 51 +++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index d2de16645e10..6f90b0e62cba 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -350,6 +350,11 @@
 	pinctrl-0 = <&te_irq>;
 };
 
+&gpu {
+	mali-supply = <&buck6_reg>;
+	status = "okay";
+};
+
 &hdmi {
 	hpd-gpios = <&gpa3 0 GPIO_ACTIVE_HIGH>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
index d29d13f4694f..a76f620f7f35 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
@@ -249,6 +249,57 @@
 		};
 	};
 
+	gpu: gpu@14ac0000 {
+		compatible = "samsung,exynos5433-mali", "arm,mali-t760";
+		reg = <0x14ac0000 0x5000>;
+		interrupts = <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
+		clocks = <&cmu_g3d CLK_ACLK_G3D>;
+		clock-names = "core";
+		power-domains = <&pd_g3d>;
+		operating-points-v2 = <&gpu_opp_table>;
+		status = "disabled";
+
+		gpu_opp_table: opp_table {
+			compatible = "operating-points-v2";
+
+			opp-160000000 {
+				opp-hz = /bits/ 64 <160000000>;
+				opp-microvolt = <1000000>;
+			};
+			opp-267000000 {
+				opp-hz = /bits/ 64 <267000000>;
+				opp-microvolt = <1000000>;
+			};
+			opp-350000000 {
+				opp-hz = /bits/ 64 <350000000>;
+				opp-microvolt = <1025000>;
+			};
+			opp-420000000 {
+				opp-hz = /bits/ 64 <420000000>;
+				opp-microvolt = <1025000>;
+			};
+			opp-500000000 {
+				opp-hz = /bits/ 64 <500000000>;
+				opp-microvolt = <1075000>;
+			};
+			opp-550000000 {
+				opp-hz = /bits/ 64 <550000000>;
+				opp-microvolt = <1125000>;
+			};
+			opp-600000000 {
+				opp-hz = /bits/ 64 <600000000>;
+				opp-microvolt = <1150000>;
+			};
+			opp-700000000 {
+				opp-hz = /bits/ 64 <700000000>;
+				opp-microvolt = <1150000>;
+			};
+		};
+	};
+
 	psci {
 		compatible = "arm,psci";
 		method = "smc";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
