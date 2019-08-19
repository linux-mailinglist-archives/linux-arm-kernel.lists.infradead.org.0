Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E3094CA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aScoYlbf9uDM6TVdjG9z5S8oMYnufx4/43pwuR/zVpE=; b=Rnwn0MCbELgKlZ
	al++6tt9K8RbA5Deuu9/iISl7ZHn0miK3G2AGjSuGQ3j/hhFR3UP65xPVEuR/HEkkn51hISgTQRBJ
	3EmeFMhxP9YQ2Wg5snOpjR3N1TScg+gvEvo1rbnV5BlO0qLq800VCmunYc277t+j2xwgfDKm3YtsC
	FuuPczaAlxdIcCz4dvSYe0ZAIQzu9rGw3haIB6J4QRHZ9sDkVf1kHgOVe8tKXa1GidNFfemRlRjiP
	Lrzto+oAPymg6XRaFeM0PEWeWtk77MV7ytxpiJZ9ITWzeUmWWeJV76wIAYTKrz9nWg2Jm1mayslkv
	5ea2ZY9iHrcvkdeXnUGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmJK-0007Mi-Ch; Mon, 19 Aug 2019 18:23:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmH6-0005mB-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:21:02 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0810522D37;
 Mon, 19 Aug 2019 18:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566238859;
 bh=DR8UW12UvXBzHziBJM5O1282RrrigPgwf72SVgezW2I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=APxCLNujF1cl6IRg77iOPwcEBrRWDhA1AlGn5HPcT3nR3TMDi51KAWiQEypXizr16
 XdqAHyKpxi03Pam8iZFvhdce//zlCmT7sDya9ybQMQZjZTQ8M0wimh6LILrMlJH2ZF
 U/9gHB5F3/b7kSs1AtoMsAdg3hJZlb/NEDGrPuqo=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH v2 6/6] ARM: dts: sunxi: Add missing watchdog clocks
Date: Mon, 19 Aug 2019 20:20:39 +0200
Message-Id: <20190819182039.24892-6-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190819182039.24892-1-mripard@kernel.org>
References: <20190819182039.24892-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_112100_415991_9451A775 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The watchdog has a clock on all our SoCs, but it wasn't always listed.
Add it to the devicetree where it's missing.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - New patch
---
 arch/arm/boot/dts/sun4i-a10.dtsi              | 1 +
 arch/arm/boot/dts/sun5i.dtsi                  | 1 +
 arch/arm/boot/dts/sun6i-a31.dtsi              | 1 +
 arch/arm/boot/dts/sun7i-a20.dtsi              | 1 +
 arch/arm/boot/dts/sun8i-a23-a33.dtsi          | 1 +
 arch/arm/boot/dts/sun8i-r40.dtsi              | 1 +
 arch/arm/boot/dts/sun8i-v3s.dtsi              | 1 +
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 2 ++
 10 files changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/sun4i-a10.dtsi b/arch/arm/boot/dts/sun4i-a10.dtsi
index eed9fcb46185..ce823c44e98a 100644
--- a/arch/arm/boot/dts/sun4i-a10.dtsi
+++ b/arch/arm/boot/dts/sun4i-a10.dtsi
@@ -816,6 +816,7 @@
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
 			interrupts = <24>;
+			clocks = <&osc24M>;
 		};
 
 		rtc: rtc@1c20d00 {
diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index 29a825f7afd1..cfb1efc8828c 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -601,6 +601,7 @@
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
 			interrupts = <24>;
+			clocks = <&osc24M>;
 		};
 
 		ir0: ir@1c21800 {
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index b32d2d7cad4e..72282fd6c2d0 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -745,6 +745,7 @@
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x01c20ca0 0x20>;
 			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		spdif: spdif@1c21000 {
diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index aeb682e757f2..02fad11c125e 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -1116,6 +1116,7 @@
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
 			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		rtc: rtc@1c20d00 {
diff --git a/arch/arm/boot/dts/sun8i-a23-a33.dtsi b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
index 954489b4ec66..52eed0ae3607 100644
--- a/arch/arm/boot/dts/sun8i-a23-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
@@ -452,6 +452,7 @@
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x01c20ca0 0x20>;
 			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		pwm: pwm@1c21400 {
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index f1be554b5894..bde068111b85 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -405,6 +405,7 @@
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
 			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		uart0: serial@1c28000 {
diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index ddbcc28dc541..23ba56df38f7 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -339,6 +339,7 @@
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x01c20ca0 0x20>;
 			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		lradc: lradc@1c22800 {
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 224e105a994a..eba190b3f9de 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -574,6 +574,7 @@
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x01c20ca0 0x20>;
 			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		spdif: spdif@1c21000 {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index ddb6f11e89df..69128a6dfc46 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1169,6 +1169,7 @@
 				     "allwinner,sun6i-a31-wdt";
 			reg = <0x01c20ca0 0x20>;
 			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index e8bed58e7246..78e5b9e97c52 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -225,6 +225,7 @@
 				     "allwinner,sun6i-a31-wdt";
 			reg = <0x030090a0 0x20>;
 			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 			/* Broken on some H6 boards */
 			status = "disabled";
 		};
@@ -648,6 +649,7 @@
 				     "allwinner,sun6i-a31-wdt";
 			reg = <0x07020400 0x20>;
 			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		r_intc: interrupt-controller@7021000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
