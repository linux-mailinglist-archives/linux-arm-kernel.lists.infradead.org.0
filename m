Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192404AADB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3bSSVB786LR2GWxW78zi4BHB8X97USGIuxkowOuQjPQ=; b=l7BHw+1ZGlUV0IgWHFHqFgzgjP
	jZqCXM/3nq4yxRMt33khH7ooOOmZ2mjpdzMELzuy1ITTabjVvMXyOscenJ3XM3aRZ9Fhb0LQdGdHi
	u+i6yhoWoOfplceKjhDIpOVZVARfYjBKtQMN5w/hTUDBGlsmnHo0hGYSgmqpAKN8P9ob5aqmw35d8
	AZnBv8QBL+5tUkG+RXDNDlRLS1g2nF2lLZ3gHC8YkwQB5aLaqTUaS8cuUBFTNVAm7j35hzsG2EfZ3
	/NFY/0SliwMX3xXJI9pt07SQcsNP319Xm7Nd2vhCKJTQRKdJKPIeoU5neOG7WZaQiwi/1sW31YDOs
	E+8l3h+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJSn-0005Zq-PC; Tue, 18 Jun 2019 19:08:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJR2-0004A8-De
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:06:26 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11A9620B1F;
 Tue, 18 Jun 2019 19:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560884783;
 bh=U1Sq2C8IHuHyw6zehGQwxbLEKHLGFo/rZxykEE20tJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GOJlh6xX8RowOZwKzGM/sZj/b6cHPgAWKCLHuKqSgWi7kuEA9bODYFmGFXib7vcqK
 pCu42ENT2P9W/tfQUVbFMlTmg6xdX+tSo1xo0abbKciDKR1Zzkd9zl442fInpXrqOz
 3NI8uy35FQ1m7j+pAZEGBT23Tpar+4JgO5oZa0jg=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Olof Johansson <olof@lixom.net>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [RFT 07/10] arm64: dts: exynos: Add GPU/Mali T760 node to Exynos7
Date: Tue, 18 Jun 2019 21:05:31 +0200
Message-Id: <20190618190534.4951-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618190534.4951-1-krzk@kernel.org>
References: <20190618190534.4951-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_120624_699264_338E71FA 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for GPU (Mali T760) to Exynos7.  Current support for Exynos7
misses a lot, including proper clocks, power domains, frequency and
voltage scaling and cooling.  However this still can provide basic GPU
description.  Not tested on HW.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/exynos/exynos7-espresso.dts |  5 +++++
 arch/arm64/boot/dts/exynos/exynos7.dtsi         | 11 +++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
index 00dd89b92b42..080e0f56e108 100644
--- a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
@@ -59,6 +59,11 @@
 	clock-frequency = <24000000>;
 };
 
+&gpu {
+	mali-supply = <&buck6_reg>;
+	status = "okay";
+};
+
 &serial_2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index 077d23478901..bcb9d8cee267 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -78,6 +78,17 @@
 		};
 	};
 
+	gpu: gpu@14ac0000 {
+		compatible = "samsung,exynos5433-mali", "arm,mali-t760";
+		reg = <0x14ac0000 0x5000>;
+		interrupts = <GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
+		status = "disabled";
+		/* TODO: operating points for DVFS, cooling device */
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
