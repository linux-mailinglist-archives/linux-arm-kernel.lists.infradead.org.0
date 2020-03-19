Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D925818BABA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uaH8ftEypVAW3wRyykkdCEUJuB4q12nnidNzgswOl2I=; b=D3k7vXS0Ul7PV8
	DSy/1bR9vdWF6ctJuz6zZVNEhrmoYFV6jCK7RmgPvqlMyr/USCXK3NhXmIsSZd7Y4pzxtA4MpvFCx
	dT8ZxuVGGNGaA55ehScocmObinqs4wbhUXfr/KH70BNxoI4XvvoWnW1Dppe3Ngmhj5dvrV+SwDf9/
	uhbwjfCt8HYD6m7bX0KsqdmPOXV99AbU9uNJEM+n5Z47UgvgqIZxk3SLsLxc9pI4zcwZXg7b91dMq
	XdQ78zdcWZ+mPcRNZRNYZrPJL+oo9bIWU7PyRUnnDI5KysnJPtehLvFgWOyjSAv+183OisuLQYOA2
	FEH9YNIxx10xM1XHA4bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwrx-0004lJ-6S; Thu, 19 Mar 2020 15:14:01 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwrn-0004jw-68; Thu, 19 Mar 2020 15:13:53 +0000
Received: from fsav303.sakura.ne.jp (fsav303.sakura.ne.jp [153.120.85.134])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02JFDj1l032351;
 Fri, 20 Mar 2020 00:13:45 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav303.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav303.sakura.ne.jp);
 Fri, 20 Mar 2020 00:13:45 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav303.sakura.ne.jp)
Received: from localhost.localdomain (121.252.232.153.ap.dti.ne.jp
 [153.232.252.121]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 02JFDeaK032340
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Fri, 20 Mar 2020 00:13:45 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: move uart2 pinctrl settings to each dts
 for rk3288
Date: Fri, 20 Mar 2020 00:13:39 +0900
Message-Id: <20200319151339.17909-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_081351_567309_2D1B0159 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch removes conflicted pinctrl settings uart2 and pwm 2/3
from common rk3288.dtsi and moves exist uart2 pinctrl settings
into each rk3288*.dts files.

  - pwm2_pin  : use GPIO7_C6
  - pwm3_pin  : use GPIO7_C7
  - uart2_xfer: use GPIO7_C6, GPIO7_C7

Currently uart2 rk3288 user is the following:

  - rk3288-evb.dtsi:&uart2 {
  - rk3288-firefly-reload.dts:&uart2 {
  - rk3288-firefly.dtsi:&uart2 {
  - rk3288-miqi.dts:&uart2 {
  - rk3288-phycore-rdk.dts:&uart2 {
  - rk3288-popmetal.dts:&uart2 {
  - rk3288-r89.dts:&uart2 {
  - rk3288-rock2-square.dts:&uart2 {
  - rk3288-tinker.dtsi:&uart2 {
  - rk3288-veyron.dtsi:&uart2 {
  - rk3288-vyasa.dts:&uart2 {

And no one is using pwm2 nor pwm3.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm/boot/dts/rk3288-evb.dtsi           | 2 ++
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 2 ++
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 2 ++
 arch/arm/boot/dts/rk3288-miqi.dts           | 2 ++
 arch/arm/boot/dts/rk3288-phycore-rdk.dts    | 2 ++
 arch/arm/boot/dts/rk3288-popmetal.dts       | 2 ++
 arch/arm/boot/dts/rk3288-r89.dts            | 2 ++
 arch/arm/boot/dts/rk3288-rock2-square.dts   | 2 ++
 arch/arm/boot/dts/rk3288-tinker.dtsi        | 2 ++
 arch/arm/boot/dts/rk3288-veyron.dtsi        | 2 ++
 arch/arm/boot/dts/rk3288-vyasa.dts          | 2 ++
 arch/arm/boot/dts/rk3288.dtsi               | 6 ------
 12 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 018802df4c0e..74091f831ecf 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -285,6 +285,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index 8c38bda21a7c..b0c976c8e35b 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -283,6 +283,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 5e0a19004e46..1632cc083c12 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -532,6 +532,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index c41d012c8850..2c0ed37fde80 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -379,6 +379,8 @@ &tsadc {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rk3288-phycore-rdk.dts
index 1e33859de484..6532c1ac43cd 100644
--- a/arch/arm/boot/dts/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rk3288-phycore-rdk.dts
@@ -244,6 +244,8 @@ &uart0 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk3288-popmetal.dts
index 6a51940398b5..f18306bd9e6e 100644
--- a/arch/arm/boot/dts/rk3288-popmetal.dts
+++ b/arch/arm/boot/dts/rk3288-popmetal.dts
@@ -481,6 +481,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index a258c7ae5329..02d2f5cfe201 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -340,6 +340,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index cdcdc921ee09..a44290e882be 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -264,6 +264,8 @@ &spdif {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index acfaa12ec239..0327119f71b4 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -500,6 +500,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 54a6838d73f5..baa44d00e49a 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -412,6 +412,8 @@ &uart1 {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index 385dd59393e1..aa50cdc7f839 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -398,6 +398,8 @@ &tsadc {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 0cd88774db95..4c1f8cabb5eb 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -450,8 +450,6 @@ uart2: serial@ff690000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
-		pinctrl-names = "default";
-		pinctrl-0 = <&uart2_xfer>;
 		status = "disabled";
 	};
 
@@ -706,8 +704,6 @@ pwm2: pwm@ff680020 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680020 0x0 0x10>;
 		#pwm-cells = <3>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwm2_pin>;
 		clocks = <&cru PCLK_RKPWM>;
 		clock-names = "pwm";
 		status = "disabled";
@@ -717,8 +713,6 @@ pwm3: pwm@ff680030 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680030 0x0 0x10>;
 		#pwm-cells = <3>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwm3_pin>;
 		clocks = <&cru PCLK_RKPWM>;
 		clock-names = "pwm";
 		status = "disabled";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
