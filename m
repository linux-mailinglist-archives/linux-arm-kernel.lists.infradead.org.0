Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ABA1B7910
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PI1Q4fvbxc/k3kkSAsPiYQvU9dowG5OGJlI1fIN+Lp4=; b=Cm48hX369lCFiw
	WsODp+XmVony6Q7pMtdB6Hsl5BBU2iiBVj5oG3tC4XW9qUKK0Fo/GW0XayWg0KNkmfd/xUDzf94L0
	ILpT/4lTdGe4UxURmndmsnOhizWZzsxJ1qfCblulZwIrvjmW71/WgO5SAdFFUzZbHzmNtb6xmBnvk
	F17mavzQGl8flW+zntlEOsouIbbiupUpO5AvDqridB4HTeSJmf4OQGMvCozMM9FIUm72hZlXmN903
	zsoU6/j3sb5NlsAkUweE+i3HW/W46CuRwn3Q1IHPmF/N239xyLpkYSckvM8qoz656a47cT8wRb6w7
	1UZAiGGHZajC0zKCPmrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS01I-0003sh-5q; Fri, 24 Apr 2020 15:13:36 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00l-0003bk-D6
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:05 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCx27044746;
 Fri, 24 Apr 2020 10:12:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741179;
 bh=MYAT0Aa9owA9g0FLmyO6mDeC8O5iim+uAuNm5Ll70/Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=JFjqIn+JkAU1mcr0d2656JN/0AiDfEJbgH05Ofr7ulJxwG2M2tzjsF6P7RPQBqwOY
 vlvkhEHaLbOmRnxls9QU96crxLDi4JbathM5AOjpIZyB7j1J5hlkpFwmXh2oCMNzLS
 2FwjFEj+mM8lbmtn6u2VQqFxYzOuMlvE7OAdjIJY=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFCxqD006407
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:12:59 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:12:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:12:59 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu79122378;
 Fri, 24 Apr 2020 10:12:58 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 01/17] ARM: dts: dra7: add timer_sys_ck entries for IPU/DSP
 timers
Date: Fri, 24 Apr 2020 18:12:28 +0300
Message-ID: <20200424151244.3225-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081303_596654_7FA5C005 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s-anna@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With this, the clocksource driver can setup the timers properly.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7-l4.dtsi | 50 ++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
index 2119a78e9c15..1abd455cf15a 100644
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -1163,8 +1163,8 @@
 			timer2: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER2_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER2_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -1191,8 +1191,8 @@
 			timer3: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER3_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER3_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -1210,8 +1210,9 @@
 					<SYSC_IDLE_SMART>,
 					<SYSC_IDLE_SMART_WKUP>;
 			/* Domains (P, C): l4per_pwrdm, l4per_clkdm */
-			clocks = <&l4per_clkctrl DRA7_L4PER_TIMER4_CLKCTRL 0>;
-			clock-names = "fck";
+			clocks = <&l4per_clkctrl DRA7_L4PER_TIMER4_CLKCTRL 0>,
+				 <&timer_sys_clk_div>;
+			clock-names = "fck", "timer_sys_ck";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x36000 0x1000>;
@@ -1219,8 +1220,8 @@
 			timer4: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER4_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER4_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -1246,8 +1247,8 @@
 			timer9: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER9_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER9_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -1853,8 +1854,8 @@
 			timer10: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER10_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER10_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -1880,8 +1881,8 @@
 			timer11: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER11_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&l4per_clkctrl DRA7_L4PER_TIMER11_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -3354,8 +3355,8 @@
 					<SYSC_IDLE_SMART>,
 					<SYSC_IDLE_SMART_WKUP>;
 			/* Domains (P, C): ipu_pwrdm, ipu_clkdm */
-			clocks = <&ipu_clkctrl DRA7_IPU_TIMER5_CLKCTRL 0>;
-			clock-names = "fck";
+			clocks = <&ipu_clkctrl DRA7_IPU_TIMER5_CLKCTRL 0>, <&timer_sys_clk_div>;
+			clock-names = "fck", "timer_sys_ck";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x20000 0x1000>;
@@ -3381,8 +3382,9 @@
 					<SYSC_IDLE_SMART>,
 					<SYSC_IDLE_SMART_WKUP>;
 			/* Domains (P, C): ipu_pwrdm, ipu_clkdm */
-			clocks = <&ipu_clkctrl DRA7_IPU_TIMER6_CLKCTRL 0>;
-			clock-names = "fck";
+			clocks = <&ipu_clkctrl DRA7_IPU_TIMER6_CLKCTRL 0>,
+				 <&timer_sys_clk_div>;
+			clock-names = "fck", "timer_sys_ck";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x22000 0x1000>;
@@ -3417,8 +3419,8 @@
 			timer7: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&ipu_clkctrl DRA7_IPU_TIMER7_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&ipu_clkctrl DRA7_IPU_TIMER7_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -3444,8 +3446,8 @@
 			timer8: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&ipu_clkctrl DRA7_IPU_TIMER8_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&ipu_clkctrl DRA7_IPU_TIMER8_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 			};
 		};
@@ -3471,8 +3473,8 @@
 			timer13: timer@0 {
 				compatible = "ti,omap5430-timer";
 				reg = <0x0 0x80>;
-				clocks = <&l4per3_clkctrl DRA7_L4PER3_TIMER13_CLKCTRL 24>;
-				clock-names = "fck";
+				clocks = <&l4per3_clkctrl DRA7_L4PER3_TIMER13_CLKCTRL 24>, <&timer_sys_clk_div>;
+				clock-names = "fck", "timer_sys_ck";
 				interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
 				ti,timer-pwm;
 			};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
