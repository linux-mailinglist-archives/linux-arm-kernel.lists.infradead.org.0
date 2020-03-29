Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EE3196CAF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVUzXfyGG32zr3O5C+U4hG6FEdTZsz4SZ9Eg3pyTTmE=; b=O1A8zHVektA+9v
	Qa8yg9FP3luW3R0R5oL49o/rFkoS4JjStLMxV8BzA6t0Tpa3nqFp9bRp7t3ed4K99xX08RQsK559K
	4d4KiKprNAVLZvpuxEWtSLJbj30s6KJOWx/dwCYYn8TmMvE6aZM1RJHmF9tqrnndVibHJYXdyuzdJ
	4htC2jULieAvv+VpVGXEp4AhAhbNleJnWA+1WWtsluIAx3+dNymVyzrpPues1O4U73/EBqN3HqY+K
	MXweeDzPfStVoifTOmdxkx255w3+H13m4NpXnOrP5VJU0ZXWyMpKxx+sU/SDQIMaaJdJkw3foZa2i
	WnGfZMlwMvakjTtST5BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVVn-0005L9-8f; Sun, 29 Mar 2020 10:49:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVVC-0004zo-Vl
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 10:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vXYY5z/ib46qhy4U0CkhLW8/nfu/Rd7Z0xRYxAP+zvg=; b=EPP3zCmvtwDEKZ34xgnrULqxyR
 5Q/QgHDRH4o0axsJX7Rnlgv1EWspoyyXL/IBDi7/IoSbv0xVFplWfk18V3s4lSHjW7MJyDN1oP7eY
 AinoNgFi066dRPKpQTiQp0HpqwbFUtxfAdqVD8WJ6rIiPcJYNjXA1vEaRjKsFYXfWZk77iTtemWZG
 vELSsVzzjWi6qZFahx4v5IZ/ufwzOJ2rREjldloy2l5nvnWtk2djg5D8tWTu54604m6jqYpyT3kwa
 CnjAoXH1W2nogBdH91OI5eDsL0mC1ebUg1rPhkURQL9rsTqwcAZYkniok7p666rd2Eunyd9k2HE0s
 1dhXJrow==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:45286 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVUN-0004Vu-4x; Sun, 29 Mar 2020 11:48:23 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVUK-0005hJ-33; Sun, 29 Mar 2020 11:48:20 +0100
In-Reply-To: <20200329104549.GX25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-pwm@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "Uwe Kleine-Konig" <u.kleine-koenig@pengutronix.de>
Subject: [PATCH RFC 4/6] arm64: dts: armada-cp11x: add pwm support to GPIO
 blocks
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jIVUK-0005hJ-33@rmk-PC.armlinux.org.uk>
Date: Sun, 29 Mar 2020 11:48:20 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_034915_098806_585DC402 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PWM support to the GPIO blocks.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
index 024073edfc1c..dfd251acc194 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
@@ -311,6 +311,7 @@
 				ngpios = <32>;
 				gpio-controller;
 				#gpio-cells = <2>;
+				#pwm-cells = <2>;
 				gpio-ranges = <&CP11X_LABEL(pinctrl) 0 0 32>;
 				interrupt-controller;
 				interrupts = <86 IRQ_TYPE_LEVEL_HIGH>,
@@ -319,6 +320,8 @@
 					<83 IRQ_TYPE_LEVEL_HIGH>;
 				#interrupt-cells = <2>;
 				status = "disabled";
+				clock-names = "core";
+				clocks = <&CP11X_LABEL(clk) 1 21>;
 			};
 
 			CP11X_LABEL(gpio2): gpio@140 {
@@ -327,6 +330,7 @@
 				ngpios = <31>;
 				gpio-controller;
 				#gpio-cells = <2>;
+				#pwm-cells = <2>;
 				gpio-ranges = <&CP11X_LABEL(pinctrl) 0 32 31>;
 				interrupt-controller;
 				interrupts = <82 IRQ_TYPE_LEVEL_HIGH>,
@@ -335,6 +339,8 @@
 					<79 IRQ_TYPE_LEVEL_HIGH>;
 				#interrupt-cells = <2>;
 				status = "disabled";
+				clock-names = "core";
+				clocks = <&CP11X_LABEL(clk) 1 21>;
 			};
 		};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
