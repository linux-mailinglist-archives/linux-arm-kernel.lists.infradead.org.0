Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80FE17E572
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:11:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Rce4IUgV4gAD1ZgQo88w8PT8Hwvb5i6Ox0vFHBWyU9U=; b=lTO
	DOUH3poV/wmbiIV95k4Vcygn4UmiKVKVjx1OOERQezQP8g4+Iq/vnC8oHDm0NVTvdTyvY89PeDMuU
	Vpta3xCmvXcmuD07tFb/jhuUsFR2Hkd0kpraj7Z9luaOZTjmClzc25ZnbHDfIFYAGDktEbonGZUTI
	fQ+/BO33AQzo1BOl0VtKr0CDVdhdI6R2cx4SAAGFOe40HVcUNTobFKaic4XPU1pqO7kP08h+Tezov
	yu1RHZJPw1kA1PHPF7Vz9P48jfIl1hrYRUp34jsDVNr265jYseUiEMHtiYVb6DgrCLRdSXJMv0CI4
	oC1zFrqLeAKdhVddxj5RjS4bIhJAL2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLwA-000162-5X; Mon, 09 Mar 2020 17:11:30 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLw1-00015W-So
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:11:23 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id CHBD2200E5USYZQ01HBDqH; Mon, 09 Mar 2020 18:11:14 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jBLvt-0007Kw-Hk; Mon, 09 Mar 2020 18:11:13 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jBLvt-0005Ut-G0; Mon, 09 Mar 2020 18:11:13 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] arm64: dts: renesas: r8a77965: Add CPUIdle support for CA57
 cores
Date: Mon,  9 Mar 2020 18:11:12 +0100
Message-Id: <20200309171112.21086-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_101122_501600_CB3883F9 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Takeshi Kihara <takeshi.kihara.df@renesas.com>,
 Ulrich Hecht <uli+renesas@fpond.eu>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takeshi Kihara <takeshi.kihara.df@renesas.com>

Enable cpuidle (core shutdown) support for the CA57 cores on R-Car M3-N.

Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v5.7.

 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
index f7468822e81e41d6..d82dd4e67b62b85c 100644
--- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
@@ -111,6 +111,7 @@
 			power-domains = <&sysc R8A77965_PD_CA57_CPU0>;
 			next-level-cache = <&L2_CA57>;
 			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			#cooling-cells = <2>;
 			dynamic-power-coefficient = <854>;
 			clocks = <&cpg CPG_CORE R8A77965_CLK_Z>;
@@ -124,6 +125,7 @@
 			power-domains = <&sysc R8A77965_PD_CA57_CPU1>;
 			next-level-cache = <&L2_CA57>;
 			enable-method = "psci";
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&cpg CPG_CORE R8A77965_CLK_Z>;
 			operating-points-v2 = <&cluster0_opp>;
 		};
@@ -134,6 +136,19 @@
 			cache-unified;
 			cache-level = <2>;
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP_0: cpu-sleep-0 {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
+				entry-latency-us = <400>;
+				exit-latency-us = <500>;
+				min-residency-us = <4000>;
+			};
+		};
 	};
 
 	extal_clk: extal {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
