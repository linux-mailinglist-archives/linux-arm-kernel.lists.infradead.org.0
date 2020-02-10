Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32896156F8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 07:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMxJdPLYmtSGJOWnVsrj+W1Wu9VxVCAcb4p/tqwkzzA=; b=UIllBZdV6QK0y/
	G1jz7ik4kWAwbsyoOOvqqkJV2Vj0G0ZBaKOmWqvQBo+CTjBF+mlh1Ccfcubax7M+7x9PyDb25Srsk
	JBx5vEB4pOHzSXZBHfmm14SwEJMIXRJeXq7tYMgKMCDQfLfw/vqmWZ5VcdxTxxb+l24OEisq4PQKk
	tmXTBBFQ6WkZGxrd5iLz4zMblSDptkGUlklqVd/IrnrWy4Nh84q4ARxd9KbdvQLu0gIysbzoV4tho
	HBGK4WPRGsQqNR5CK2w4glDRbxBoYZh2edUXYwS/aMVmaouYDilOyclx5Wm+VC9WwcyR0L2pn+yjA
	XdPWgG1SKCMok5DIXr5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12h5-0001oV-J0; Mon, 10 Feb 2020 06:37:19 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12gJ-0001Bn-JD
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 06:36:33 +0000
Received: by mail-pg1-x52f.google.com with SMTP id g3so3350053pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 22:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hyAZ9vYdcLRitaWkueSPpRE9ACzjySSGPJECXo05uy8=;
 b=e5mDLHIFROOAFmulhf3G1svIPP58exgblf/Pi89UzaQiUP0vJwhtKDpEvRIdRJckhm
 w4RYMDvoiAsXA9OlpNF6/So2gWh9GKZRMuv08K/Z9W7jS3XgHPJBVcGOVh+LMQmhQQA/
 FVZInSBza7TuiBWA/b//4Os86DakMIr4CVt0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hyAZ9vYdcLRitaWkueSPpRE9ACzjySSGPJECXo05uy8=;
 b=YqPh+qF1cQlHo2yqG2aj9x4vzu/nGwLq6gBtvEjhKAzYtAJ65hlfaamNAseGCEG/oL
 ++ah9NYLma3cB3RSHyDUTrvGnYr3WthVABNa8NEb6DyScs+XFwKtv/BnIbiGJvrp+jeq
 CfaCclNkMISK3SHhd/ogJWIVbHhWu691DYdnOBrOktZEXXk3mQUL16CG2CkmURWramdp
 OTwI6Vbk3AKHxHnYIywAaD2oseeRpcA2AUj1dmtwlRbuu8E49w8MrnIW/YikbssH7Lb6
 /8IF6PdjGUVws3rGf0D3s0kzPjAqB4+/U4p0KWy12VvRNuJz2J/9pORiCZvIl8ajnqDg
 k3DQ==
X-Gm-Message-State: APjAAAWLpNetZlWeLAlDpftD8ltkS01Mfo1cQhUBis61OEP6xng19uA4
 v/6TL+riK8WT3ixI4fxcyqQekaNN5wU59A==
X-Google-Smtp-Source: APXvYqzI1fw3uNIEEpd0cDgFyhcL6Aljgkeqo1xce2knj+0T57wYZdYhiodoYWU/LDs+WCPKuloWqw==
X-Received: by 2002:aa7:84cd:: with SMTP id x13mr12085761pfn.130.1581316589239; 
 Sun, 09 Feb 2020 22:36:29 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id f15sm11070041pgj.30.2020.02.09.22.36.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 22:36:28 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 3/5] arm64: dts: mt8173: fix unit name warnings
Date: Mon, 10 Feb 2020 14:35:22 +0800
Message-Id: <20200210063523.133333-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
In-Reply-To: <20200210063523.133333-1-hsinyi@chromium.org>
References: <20200210063523.133333-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_223631_687342_5A882AF3 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixing several unit name warnings:

Warning (unit_address_vs_reg): /oscillator@0: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /oscillator@1: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /oscillator@2: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/trip-point@0: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/trip-point@1: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/cpu_crit@0: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/cooling-maps/map@0: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/cooling-maps/map@1: node has a unit name, but no reg property
Warning (unit_address_vs_reg): /reserved-memory/vpu_dma_mem_region: node has a reg or ranges property, but no unit name
Warning (simple_bus_reg): /soc/pinctrl@10005000: simple-bus unit address format error, expected "1000b000"
Warning (simple_bus_reg): /soc/interrupt-controller@10220000: simple-bus unit address format error, expected "10221000"
Warning (alias_paths): /aliases: aliases property name must include only lowercase and '-'

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 38 ++++++++++++------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 790cd64aa447..2b7f566fb407 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -42,14 +42,14 @@ aliases {
 		dpi0 = &dpi0;
 		dsi0 = &dsi0;
 		dsi1 = &dsi1;
-		mdp_rdma0 = &mdp_rdma0;
-		mdp_rdma1 = &mdp_rdma1;
-		mdp_rsz0 = &mdp_rsz0;
-		mdp_rsz1 = &mdp_rsz1;
-		mdp_rsz2 = &mdp_rsz2;
-		mdp_wdma0 = &mdp_wdma0;
-		mdp_wrot0 = &mdp_wrot0;
-		mdp_wrot1 = &mdp_wrot1;
+		mdp-rdma0 = &mdp_rdma0;
+		mdp-rdma1 = &mdp_rdma1;
+		mdp-rsz0 = &mdp_rsz0;
+		mdp-rsz1 = &mdp_rsz1;
+		mdp-rsz2 = &mdp_rsz2;
+		mdp-wdma0 = &mdp_wdma0;
+		mdp-wrot0 = &mdp_wrot0;
+		mdp-wrot1 = &mdp_wrot1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -246,21 +246,21 @@ psci {
 		cpu_on	      = <0x84000003>;
 	};
 
-	clk26m: oscillator@0 {
+	clk26m: oscillator0 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <26000000>;
 		clock-output-names = "clk26m";
 	};
 
-	clk32k: oscillator@1 {
+	clk32k: oscillator1 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32000>;
 		clock-output-names = "clk32k";
 	};
 
-	cpum_ck: oscillator@2 {
+	cpum_ck: oscillator2 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <0>;
@@ -276,19 +276,19 @@ cpu_thermal: cpu_thermal {
 			sustainable-power = <1500>; /* milliwatts */
 
 			trips {
-				threshold: trip-point@0 {
+				threshold: trip-point0 {
 					temperature = <68000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				target: trip-point@1 {
+				target: trip-point1 {
 					temperature = <85000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				cpu_crit: cpu_crit@0 {
+				cpu_crit: cpu_crit0 {
 					temperature = <115000>;
 					hysteresis = <2000>;
 					type = "critical";
@@ -296,13 +296,13 @@ cpu_crit: cpu_crit@0 {
 			};
 
 			cooling-maps {
-				map@0 {
+				map0 {
 					trip = <&target>;
 					cooling-device = <&cpu0 0 0>,
 							 <&cpu1 0 0>;
 					contribution = <3072>;
 				};
-				map@1 {
+				map1 {
 					trip = <&target>;
 					cooling-device = <&cpu2 0 0>,
 							 <&cpu3 0 0>;
@@ -316,7 +316,7 @@ reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
-		vpu_dma_reserved: vpu_dma_mem_region {
+		vpu_dma_reserved: vpu_dma_mem_region@b7000000 {
 			compatible = "shared-dma-pool";
 			reg = <0 0xb7000000 0 0x500000>;
 			alignment = <0x1000>;
@@ -368,7 +368,7 @@ syscfg_pctl_a: syscfg_pctl_a@10005000 {
 			reg = <0 0x10005000 0 0x1000>;
 		};
 
-		pio: pinctrl@10005000 {
+		pio: pinctrl@1000b000 {
 			compatible = "mediatek,mt8173-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;
 			mediatek,pctl-regmap = <&syscfg_pctl_a>;
@@ -575,7 +575,7 @@ mipi_tx1: mipi-dphy@10216000 {
 			status = "disabled";
 		};
 
-		gic: interrupt-controller@10220000 {
+		gic: interrupt-controller@10221000 {
 			compatible = "arm,gic-400";
 			#interrupt-cells = <3>;
 			interrupt-parent = <&gic>;
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
