Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B379782D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 13:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMO7I/a6UJYTAUHCanUBIsOS1j6sHhoPyL52+vjfKtQ=; b=dqEbN6n/23LEoE
	/ejshAjfQ4Hs6kDLZSefHI0pKIdNuaWJDXZipbNdtYn/1/AV2ydCxVjbBCIvzH1HS7S8uIsRsWO2P
	2YjvjUqNLEhHQKxu1QlOBC1NjMQf+qSd6JtytJ+uJJCuRbPAwkvFAlsbdzt1D5acsR2JT7ZxZqNcb
	vtHvTuReyKWmYItT89Z7FB/lO0Y/l3P9pdGcIueLDcXvDncLi93SEII2Aubxi5LbDTDsFc2H/J7TX
	IllAf9osG2puO+V6OXPSbs/DRY+Kt/IU/CIQWP3Qcq6eXQsajFaCDkNIIyYfDcLgk7knhJjJ5AXDi
	ZtcD2c7MaQynmJZoAOuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0P0z-0001wm-LX; Wed, 21 Aug 2019 11:42:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0OzY-0001HA-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 11:41:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id m125so1794304wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 04:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nXVc7lr79gHa7m2sNFALcMUoOAv3CwAI7GPYmurLn+Y=;
 b=1BiiCed95tDSvHVGTZllJjEiEJMFAZX3aD6cXcJBpCYemPQaGTPNJ9lk4GsAgvu5Pu
 y4Wvilxp2y6EajxG+jDTiWymetYAqhePfVDIC0iSMtQJyVwkTWXfc/XVnMkWPEaD1av2
 dhAWYscKj+3KtZ6REmEqofnEfDUSqrpjkewdok2v8RHt1wd/wq/U1Ub+X77kD1TVHjrZ
 4B7UB+beTzk3VZFtjoKe+VI1G4dDPcU3QxCAatCyhOtLw+PWo+lE+NKoV1Axl+Qp8FO9
 IAGEDFW79L7tPqmcY98bXSt3tctsWWwYP1PZNDf9WK7MnX2IJaGfSE8pokzGzlLt6gPo
 1Xig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nXVc7lr79gHa7m2sNFALcMUoOAv3CwAI7GPYmurLn+Y=;
 b=nR8OjlYDC8IqSmSSxs9Q+5cR5ETItjiOr6NN17a3/HdaLy7evhWMyEtUwyLVxlEXtD
 baDgA8i2wJfTQJJ55UL3q1YpkNpSg/DrBYOTRLo0o57uBudXeiVqmV63V0rO7I5khs0g
 qfynGmGi+YAo2xHTwaxvmME9zUpuIb80+j2TrrAneTm8AeGf0PzYCGNRz7KQGFOxCwF+
 S1A3Z09ZtgRWCxNMRujm536nAExnF4yt2O0X5VRwP1RVxGsBDBAq101H8XNA00de5qaQ
 6iTxukmi9FgGPDxWmy3AECwgQ2G5pLYxDuEiLz64xzIn78n1RGZG10Yi/QF1zk9R+Hcd
 /G8A==
X-Gm-Message-State: APjAAAXxB6UasjCKcJWZBAGunmpZ4JMb8Ljvj90SRvKzZz5MqNdhBBtB
 n94KNvOQFWH/K2BpzqqQhXhrXg==
X-Google-Smtp-Source: APXvYqwzpbcA3BoowKeJ2lY/IYM8N9VambEPsXXvQjL+XeoEJlr/Yk8FGH1G9BzSvx8SaUUtHNblEQ==
X-Received: by 2002:a1c:c4:: with SMTP id 187mr5357676wma.132.1566387686043;
 Wed, 21 Aug 2019 04:41:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g12sm24049686wrv.9.2019.08.21.04.41.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 04:41:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	ulf.hansson@linaro.org
Subject: [PATCH 3/5] arm64: meson-g12: add Everything-Else power domain
 controller
Date: Wed, 21 Aug 2019 13:41:19 +0200
Message-Id: <20190821114121.10430-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821114121.10430-1-narmstrong@baylibre.com>
References: <20190821114121.10430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_044128_260499_B9650F7A 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the VPU-centric power domain controller by the generic system-wide
Everything-Else power domain controller and setup the right power-domains
properties on the VPU, Ethernet & USB nodes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 92 ++++++++++---------
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  9 ++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  9 ++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    | 15 ++-
 4 files changed, 77 insertions(+), 48 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index a921d6334e5b..8baa6318f180 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1426,6 +1426,53 @@
 						clocks = <&xtal>;
 						clock-names = "xtal";
 					};
+
+					pwrc: power-controller {
+						compatible = "amlogic,meson-g12a-pwrc";
+						#power-domain-cells = <1>;
+						amlogic,ao-sysctrl = <&rti>;
+						resets = <&reset RESET_VIU>,
+							 <&reset RESET_VENC>,
+							 <&reset RESET_VCBUS>,
+							 <&reset RESET_BT656>,
+							 <&reset RESET_RDMA>,
+							 <&reset RESET_VENCI>,
+							 <&reset RESET_VENCP>,
+							 <&reset RESET_VDAC>,
+							 <&reset RESET_VDI6>,
+							 <&reset RESET_VENCL>,
+							 <&reset RESET_VID_LOCK>;
+						reset-names = "viu", "venc", "vcbus", "bt656",
+							      "rdma", "venci", "vencp", "vdac",
+							      "vdi6", "vencl", "vid_lock";
+						clocks = <&clkc CLKID_VPU>,
+							 <&clkc CLKID_VAPB>;
+						clock-names = "vpu", "vapb";
+						/*
+						 * VPU clocking is provided by two identical clock paths
+						 * VPU_0 and VPU_1 muxed to a single clock by a glitch
+						 * free mux to safely change frequency while running.
+						 * Same for VAPB but with a final gate after the glitch free mux.
+						 */
+						assigned-clocks = <&clkc CLKID_VPU_0_SEL>,
+								  <&clkc CLKID_VPU_0>,
+								  <&clkc CLKID_VPU>, /* Glitch free mux */
+								  <&clkc CLKID_VAPB_0_SEL>,
+								  <&clkc CLKID_VAPB_0>,
+								  <&clkc CLKID_VAPB_SEL>; /* Glitch free mux */
+						assigned-clock-parents = <&clkc CLKID_FCLK_DIV3>,
+									 <0>, /* Do Nothing */
+									 <&clkc CLKID_VPU_0>,
+									 <&clkc CLKID_FCLK_DIV4>,
+									 <0>, /* Do Nothing */
+									 <&clkc CLKID_VAPB_0>;
+						assigned-clock-rates = <0>, /* Do Nothing */
+								       <666666666>,
+								       <0>, /* Do Nothing */
+								       <0>, /* Do Nothing */
+								       <250000000>,
+								       <0>; /* Do Nothing */
+					};
 				};
 			};
 
@@ -1773,50 +1820,6 @@
 					clock-names = "xtal", "mpeg-clk";
 				};
 
-				pwrc_vpu: power-controller-vpu {
-					compatible = "amlogic,meson-g12a-pwrc-vpu";
-					#power-domain-cells = <0>;
-					amlogic,hhi-sysctrl = <&hhi>;
-					resets = <&reset RESET_VIU>,
-						 <&reset RESET_VENC>,
-						 <&reset RESET_VCBUS>,
-						 <&reset RESET_BT656>,
-						 <&reset RESET_RDMA>,
-						 <&reset RESET_VENCI>,
-						 <&reset RESET_VENCP>,
-						 <&reset RESET_VDAC>,
-						 <&reset RESET_VDI6>,
-						 <&reset RESET_VENCL>,
-						 <&reset RESET_VID_LOCK>;
-					clocks = <&clkc CLKID_VPU>,
-						 <&clkc CLKID_VAPB>;
-					clock-names = "vpu", "vapb";
-					/*
-					 * VPU clocking is provided by two identical clock paths
-					 * VPU_0 and VPU_1 muxed to a single clock by a glitch
-					 * free mux to safely change frequency while running.
-					 * Same for VAPB but with a final gate after the glitch free mux.
-					 */
-					assigned-clocks = <&clkc CLKID_VPU_0_SEL>,
-							  <&clkc CLKID_VPU_0>,
-							  <&clkc CLKID_VPU>, /* Glitch free mux */
-							  <&clkc CLKID_VAPB_0_SEL>,
-							  <&clkc CLKID_VAPB_0>,
-							  <&clkc CLKID_VAPB_SEL>; /* Glitch free mux */
-					assigned-clock-parents = <&clkc CLKID_FCLK_DIV3>,
-								 <0>, /* Do Nothing */
-								 <&clkc CLKID_VPU_0>,
-								 <&clkc CLKID_FCLK_DIV4>,
-								 <0>, /* Do Nothing */
-								 <&clkc CLKID_VAPB_0>;
-					assigned-clock-rates = <0>, /* Do Nothing */
-							       <666666666>,
-							       <0>, /* Do Nothing */
-							       <0>, /* Do Nothing */
-							       <250000000>,
-							       <0>; /* Do Nothing */
-				};
-
 				ao_pinctrl: pinctrl@14 {
 					compatible = "amlogic,meson-g12a-aobus-pinctrl";
 					#address-cells = <2>;
@@ -2169,7 +2172,6 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 			amlogic,canvas = <&canvas>;
-			power-domains = <&pwrc_vpu>;
 
 			/* CVBS VDAC output port */
 			cvbs_vdac_port: port@0 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 733a9d46fc4b..eb5d177d7a99 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include "meson-g12-common.dtsi"
+#include <dt-bindings/power/meson-g12a-power.h>
 
 / {
 	compatible = "amlogic,g12a";
@@ -110,6 +111,14 @@
 	};
 };
 
+&ethmac {
+	power-domains = <&pwrc PWRC_G12A_ETH_ID>;
+};
+
+&vpu {
+	power-domains = <&pwrc PWRC_G12A_VPU_ID>;
+};
+
 &sd_emmc_a {
 	amlogic,dram-access-quirk;
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index d5edbc1a1991..5628ccd54531 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include "meson-g12-common.dtsi"
+#include <dt-bindings/power/meson-g12a-power.h>
 
 / {
 	compatible = "amlogic,g12b";
@@ -101,6 +102,14 @@
 	compatible = "amlogic,g12b-clkc";
 };
 
+&ethmac {
+	power-domains = <&pwrc PWRC_G12A_ETH_ID>;
+};
+
+&vpu {
+	power-domains = <&pwrc PWRC_G12A_VPU_ID>;
+};
+
 &sd_emmc_a {
 	amlogic,dram-access-quirk;
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index e902d4f9165f..37064d7f66c1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include "meson-g12-common.dtsi"
+#include <dt-bindings/power/meson-sm1-power.h>
 
 / {
 	compatible = "amlogic,sm1";
@@ -59,10 +60,18 @@
 	compatible = "amlogic,meson-sm1-clk-measure";
 };
 
-&pwrc_vpu {
-	status = "disabled";
+&ethmac {
+	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
+};
+
+&pwrc {
+	compatible = "amlogic,meson-sm1-pwrc";
 };
 
 &vpu {
-	status = "disabled";
+	power-domains = <&pwrc PWRC_SM1_VPU_ID>;
+};
+
+&usb {
+	power-domains = <&pwrc PWRC_SM1_USB_ID>;
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
