Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E99E460AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SW9nz2p4PaA0A66TFkdFVsTeByIWhGpzBkYfWMvTFTY=; b=EtH
	Vq7vyWf9zmvBA4IY509LrtjV7r1qhHO3ZQjGJSYNT0ht+DhEAmqZhNQ1sJ+6gYoDLv9zWz/9mET1Q
	olybFS5BBSMiOLgIffQgRaebt7E7W4WP+ePCYJWTsV/hgdhGLpuS5FiTVkHMJVlXSDP+9d7mgf6Wp
	GY3Z71vshBCUsP4pNMA/3Bcz2REY2gEJcNXnMvfZnjz8Khawn3LGzngihtSKFW7Ja6l1i2vlOphad
	ptJ1fxswKDQo366JEF7Y2sGxZKuveKwi0dV5xBYhBrjPMjvo0bbuyyY0Hyho527aFBvw7sbeAs96D
	9pe+fRd1rpbFOHKUTClvTRFngdMDGbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnAP-0005O6-9C; Fri, 14 Jun 2019 14:26:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnAE-0005Ng-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:26:47 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4538520866;
 Fri, 14 Jun 2019 14:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560522405;
 bh=gLPYiKNlVZyeJBqzSMBS8jUdMgiD9fjJjnKZnvHHlSY=;
 h=From:To:Cc:Subject:Date:From;
 b=WxzwwUJ1i+vWCIZdcZ/gu57471NyDP1ca6EcHwkZl8/HurL+wOodywTy8m55QIPRV
 CaGZX7vye3cjmdPiW5xgeQNcW1aJmbZi8hNhIyzbMm3N5KPD327TCAEr2jB23WQ0xO
 8DkWqrIUw1MUR2cFJc8R1ss18CbkAsyW7Buw2bJA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: exynos: Add PMU interrupt affinity to Exynos4 boards
Date: Fri, 14 Jun 2019 16:26:40 +0200
Message-Id: <1560522400-31086-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_072646_816007_F15D3F2A 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: notify@kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move SoC-specific PMU properties from exynos4.dtsi to respective SoC
(4210 or 4412) so common DTSI would have only common properties.

Define there also interrupt affinity to remove the boot warning message:

    hw perfevents: no interrupt-affinity property for /pmu, guessing.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/exynos4.dtsi    | 2 +-
 arch/arm/boot/dts/exynos4210.dtsi | 6 ++++++
 arch/arm/boot/dts/exynos4412.dtsi | 2 ++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos4.dtsi b/arch/arm/boot/dts/exynos4.dtsi
index 36ccf227434d..dde27451faa8 100644
--- a/arch/arm/boot/dts/exynos4.dtsi
+++ b/arch/arm/boot/dts/exynos4.dtsi
@@ -54,7 +54,7 @@
 	pmu: pmu {
 		compatible = "arm,cortex-a9-pmu";
 		interrupt-parent = <&combiner>;
-		interrupts = <2 2>, <3 2>;
+		status = "disabled";
 	};
 
 	soc: soc {
diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
index b491c345b2e8..ce29e026e226 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -461,6 +461,12 @@
 		 <&clock CLK_MOUT_MIXER>, <&clock CLK_SCLK_MIXER>;
 };
 
+&pmu {
+	interrupts = <2 2>, <3 2>;
+	interrupt-affinity = <&cpu0>, <&cpu1>;
+	status = "okay";
+};
+
 &pmu_system_controller {
 	clock-names = "clkout0", "clkout1", "clkout2", "clkout3",
 			"clkout4", "clkout8", "clkout9";
diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index e5c041ec0756..4a58b70df125 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -737,6 +737,8 @@
 
 &pmu {
 	interrupts = <2 2>, <3 2>, <18 2>, <19 2>;
+	interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	status = "okay";
 };
 
 &pmu_system_controller {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
