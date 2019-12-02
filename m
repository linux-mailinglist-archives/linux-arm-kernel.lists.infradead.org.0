Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8682510EBBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4FKoUM3F1kwXKfzK1e5RLdEIn5igIAAoZlKVNqEScg=; b=Tn6L2On2T+k+tC
	mNYq+HoOe/BEl0mkqt3yxr+g5/qsouPGIW5DmgyTI3Wk9FT+EFRF98J7QXmlR52HUzZruZgdwr3Di
	P0gz9b+kJwSoDSuh5PldRBqfglcwk85toVxaIX8j487UuxOiYMpakEL85VHopTIR2OCyRm/j7ce/v
	VbicV4lk3F7k14e3FtOMqZz5pnmEgqtDPGg0vjz1LFp2/ATsq9/npdp9C3NUnfU7ejGXtJjEzMjUZ
	kXh/mT0VDqPXhapAgsOmk9MVeDsiUcBPKTNUrrBnAFOPvXFVFkaNZsPLSt1NMES3J35RrbPxq68lJ
	fdoZsL42MMTi48IF4Kww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmyI-000512-J1; Mon, 02 Dec 2019 14:46:42 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmxg-0004cR-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:46:06 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s8so17004597pji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 06:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=EgBc9VM9B5hJ1sbfALHA6E1zLVyhAXo1MFpBabae6qw=;
 b=IL49D1ORHBkEdylQCbcNyzrvk/s+gfJ3eVsYP6RsGiV7EE1k6MxMgfqF6jxlyIg9Mr
 LuQMh32Ztk/TegedcU++/D2/w3wQeIS6OMSzufbBrS2nhUcS2Eu22wFKZq8bU15gvKma
 PaecF9ntDUa12mIcfoQZVRwObp6W7NAuHDZypBEldvUa2hyxdgdySLETEhLGOxsGR3K5
 2U/Pdm4XlZsgQC56HI928JmsRUEZ7HiTjjr5LEckMbFtB3RVeoD72m8VDt8+/LFLSPgp
 9qyC5mxd8+89fRAQQCtZ2JDxc1MA9fRUbK4DTdoIe3RpOiImO4NRy99US2lTuRk8v6xt
 iApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=EgBc9VM9B5hJ1sbfALHA6E1zLVyhAXo1MFpBabae6qw=;
 b=bSsq1eSuWREJUP9+X1Dk93E4m8KYl7fVhu0N6QmGeunczY0iIkkzNrb3BMsMt0S1ds
 MJd9k89TlEHOg7I+qFEx9LCk2lC3y0UUoE3HUqiLXLGi0eR19sLkn5bvfeNSN2aCQ0/V
 qAKkqX12YpUlkJM7XLizxJKKSg3/EP+ZH1rBX6KBsG1s8cn/KuOygQKOAkcz6+8V2hyU
 v6TkVIceKoyWdS8CAjF+RUEKsH3lnfpgP4M/xLgVeaZzIqaY6CARAoNFPHCiIuMO3DJa
 pk9Kz8nhSvw+i3W6lKmVHmCb/Sciev6HB4Rre0/oS0W00i2lukMpsRX0fzHYirwcgVba
 MVEA==
X-Gm-Message-State: APjAAAWZyewBGV9xaIUYVoAeryqvbVoOCLNZuP1HApZSFR+L50yOL/pT
 FW9BLfdeBgClpTNwadfv9I3C9Q==
X-Google-Smtp-Source: APXvYqx4po8E82VeygFNfDxWOAhVE4Y4E3I4YFNShd+lN7Z3Y+pV99JNLF/PHhiBTzaj70JsQBmr1Q==
X-Received: by 2002:a17:90a:353:: with SMTP id
 19mr37365251pjf.128.1575297963291; 
 Mon, 02 Dec 2019 06:46:03 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id f10sm34347813pfd.28.2019.12.02.06.45.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 06:46:02 -0800 (PST)
From: Jun Nie <jun.nie@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, xuwei5@hisilicon.com, p.zabel@pengutronix.de,
 opensource@jilayne.com, swinslow@gmail.com, jun.nie@linaro.org,
 allison@lohutok.net, yuehaibing@huawei.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, xuejiancheng@hisilicon.com
Subject: [PATCH 3/3] ARM: dts: Update reset for hi3519 and hi3798cv200
Date: Mon,  2 Dec 2019 22:45:24 +0800
Message-Id: <20191202144524.5391-4-jun.nie@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202144524.5391-1-jun.nie@linaro.org>
References: <20191202144524.5391-1-jun.nie@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064604_664770_80F31C9B 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update reset for hi3519 and hi3798cv200 as driver is extended to
support configurable reset operation type.

Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 arch/arm/boot/dts/hi3519.dtsi                 |  2 +-
 .../arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 47 +++++++++++--------
 2 files changed, 28 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boot/dts/hi3519.dtsi b/arch/arm/boot/dts/hi3519.dtsi
index 410409a0ed66..2335c8443d2d 100644
--- a/arch/arm/boot/dts/hi3519.dtsi
+++ b/arch/arm/boot/dts/hi3519.dtsi
@@ -37,7 +37,7 @@
 	crg: clock-reset-controller@12010000 {
 		compatible = "hisilicon,hi3519-crg";
 		#clock-cells = <1>;
-		#reset-cells = <2>;
+		#reset-cells = <3>;
 		reg = <0x12010000 0x10000>;
 	};
 
diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
index 13821a0ff524..0a30aaae6bf2 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
@@ -9,8 +9,10 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/reset/hisilicon-resets.h>
 #include <dt-bindings/reset/ti-syscon.h>
 
+
 / {
 	compatible = "hisilicon,hi3798cv200";
 	interrupt-parent = <&gic>;
@@ -86,7 +88,7 @@
 			compatible = "hisilicon,hi3798cv200-crg", "syscon", "simple-mfd";
 			reg = <0x8a22000 0x1000>;
 			#clock-cells = <1>;
-			#reset-cells = <2>;
+			#reset-cells = <3>;
 
 			gmacphyrst: reset-controller {
 				compatible = "ti,syscon-reset";
@@ -103,7 +105,7 @@
 			compatible = "hisilicon,hi3798cv200-sysctrl", "syscon";
 			reg = <0x8000000 0x1000>;
 			#clock-cells = <1>;
-			#reset-cells = <2>;
+			#reset-cells = <3>;
 		};
 
 		perictrl: peripheral-controller@8a20000 {
@@ -118,20 +120,22 @@
 				compatible = "hisilicon,hi3798cv200-usb2-phy";
 				reg = <0x120 0x4>;
 				clocks = <&crg HISTB_USB2_PHY1_REF_CLK>;
-				resets = <&crg 0xbc 4>;
+				resets = <&crg 0xbc 4 HISI_RESET_DEFAULT>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
 				usb2_phy1_port0: phy@0 {
 					reg = <0>;
 					#phy-cells = <0>;
-					resets = <&crg 0xbc 8>;
+					resets = <&crg 0xbc 8
+						  HISI_RESET_DEFAULT>;
 				};
 
 				usb2_phy1_port1: phy@1 {
 					reg = <1>;
 					#phy-cells = <0>;
-					resets = <&crg 0xbc 9>;
+					resets = <&crg 0xbc 9
+						  HISI_RESET_DEFAULT>;
 				};
 			};
 
@@ -139,14 +143,15 @@
 				compatible = "hisilicon,hi3798cv200-usb2-phy";
 				reg = <0x124 0x4>;
 				clocks = <&crg HISTB_USB2_PHY2_REF_CLK>;
-				resets = <&crg 0xbc 6>;
+				resets = <&crg 0xbc 6 HISI_RESET_DEFAULT>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
 				usb2_phy2_port0: phy@0 {
 					reg = <0>;
 					#phy-cells = <0>;
-					resets = <&crg 0xbc 10>;
+					resets = <&crg 0xbc 10
+						  HISI_RESET_DEFAULT>;
 				};
 			};
 
@@ -155,7 +160,7 @@
 				reg = <0x850 0x8>;
 				#phy-cells = <1>;
 				clocks = <&crg HISTB_COMBPHY0_CLK>;
-				resets = <&crg 0x188 4>;
+				resets = <&crg 0x188 4 HISI_RESET_DEFAULT>;
 				assigned-clocks = <&crg HISTB_COMBPHY0_CLK>;
 				assigned-clock-rates = <100000000>;
 				hisilicon,fixed-mode = <PHY_TYPE_USB3>;
@@ -166,7 +171,7 @@
 				reg = <0x858 0x8>;
 				#phy-cells = <1>;
 				clocks = <&crg HISTB_COMBPHY1_CLK>;
-				resets = <&crg 0x188 12>;
+				resets = <&crg 0x188 12 HISI_RESET_DEFAULT>;
 				assigned-clocks = <&crg HISTB_COMBPHY1_CLK>;
 				assigned-clock-rates = <100000000>;
 				hisilicon,mode-select-bits = <0x0008 11 (0x3 << 11)>;
@@ -306,7 +311,7 @@
 			clocks = <&crg HISTB_SDIO0_CIU_CLK>,
 				 <&crg HISTB_SDIO0_BIU_CLK>;
 			clock-names = "ciu", "biu";
-			resets = <&crg 0x9c 4>;
+			resets = <&crg 0x9c 4 HISI_RESET_DEFAULT>;
 			reset-names = "reset";
 			status = "disabled";
 		};
@@ -320,7 +325,7 @@
 				 <&crg HISTB_MMC_SAMPLE_CLK>,
 				 <&crg HISTB_MMC_DRV_CLK>;
 			clock-names = "ciu", "biu", "ciu-sample", "ciu-drive";
-			resets = <&crg 0xa0 4>;
+			resets = <&crg 0xa0 4 HISI_RESET_DEFAULT>;
 			reset-names = "reset";
 			status = "disabled";
 		};
@@ -525,8 +530,8 @@
 			clocks = <&crg HISTB_ETH0_MAC_CLK>,
 				 <&crg HISTB_ETH0_MACIF_CLK>;
 			clock-names = "mac_core", "mac_ifc";
-			resets = <&crg 0xcc 8>,
-				 <&crg 0xcc 10>,
+			resets = <&crg 0xcc 8 HISI_RESET_DEFAULT>,
+				 <&crg 0xcc 10 HISI_RESET_DEFAULT>,
 				 <&gmacphyrst 0>;
 			reset-names = "mac_core", "mac_ifc", "phy";
 			status = "disabled";
@@ -540,8 +545,8 @@
 			clocks = <&crg HISTB_ETH1_MAC_CLK>,
 				 <&crg HISTB_ETH1_MACIF_CLK>;
 			clock-names = "mac_core", "mac_ifc";
-			resets = <&crg 0xcc 9>,
-				 <&crg 0xcc 11>,
+			resets = <&crg 0xcc 9 HISI_RESET_DEFAULT>,
+				 <&crg 0xcc 11 HISI_RESET_DEFAULT>,
 				 <&gmacphyrst 1>;
 			reset-names = "mac_core", "mac_ifc", "phy";
 			status = "disabled";
@@ -578,7 +583,9 @@
 				 <&crg HISTB_PCIE_SYS_CLK>,
 				 <&crg HISTB_PCIE_BUS_CLK>;
 			clock-names = "aux", "pipe", "sys", "bus";
-			resets = <&crg 0x18c 6>, <&crg 0x18c 5>, <&crg 0x18c 4>;
+			resets = <&crg 0x18c 6 HISI_RESET_DEFAULT>,
+				 <&crg 0x18c 5 HISI_RESET_DEFAULT>,
+				 <&crg 0x18c 4 HISI_RESET_DEFAULT>;
 			reset-names = "soft", "sys", "bus";
 			phys = <&combphy1 PHY_TYPE_PCIE>;
 			phy-names = "phy";
@@ -593,7 +600,7 @@
 				 <&crg HISTB_USB2_12M_CLK>,
 				 <&crg HISTB_USB2_48M_CLK>;
 			clock-names = "bus", "clk12", "clk48";
-			resets = <&crg 0xb8 12>;
+			resets = <&crg 0xb8 12 HISI_RESET_DEFAULT>;
 			reset-names = "bus";
 			phys = <&usb2_phy1_port0>;
 			phy-names = "usb";
@@ -608,9 +615,9 @@
 				 <&crg HISTB_USB2_PHY_CLK>,
 				 <&crg HISTB_USB2_UTMI_CLK>;
 			clock-names = "bus", "phy", "utmi";
-			resets = <&crg 0xb8 12>,
-				 <&crg 0xb8 16>,
-				 <&crg 0xb8 13>;
+			resets = <&crg 0xb8 12 HISI_RESET_DEFAULT>,
+				 <&crg 0xb8 16 HISI_RESET_DEFAULT>,
+				 <&crg 0xb8 13 HISI_RESET_DEFAULT>;
 			reset-names = "bus", "phy", "utmi";
 			phys = <&usb2_phy1_port0>;
 			phy-names = "usb";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
