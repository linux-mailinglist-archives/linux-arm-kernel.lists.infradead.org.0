Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C370115769
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAYlQT24vBEyzAJC/AZbHUSpsrJcA527q8TtFusLy4g=; b=Aqy7YUuLLc8jVP
	cHAa38LVGpIxi1Tg6wymfXect+3gsfvGyQ2avGCz5BqlIjRngOE1dzGlbOy17ESMddZsXIh5hE49P
	/g7ZzWQFcX6re3MuhLJe2mKAlmCFBOP/4Lqfby/79PvEK3iZBvm/gXekxTwd6z+oD3ZpE/7va9axr
	kWNQ8GTIx42BSe8crMJtwBSp2H8+yieKkZq28/gA6u8HexP6Mx0U79Mb8q34MVd650cUiOEqrXWSB
	iYx4yamm9YM+bM2JsjfpweHiBYJmXa3leDdFEqgnV1Z5cYVk0PtSRVE4St7pVnCxjMXxWE0y2hOAh
	xVE112dG0mN/HSGdjYtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIeS-0005Hn-2f; Fri, 06 Dec 2019 18:48:28 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIcr-0003e1-RN; Fri, 06 Dec 2019 18:46:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s35so3094227pjb.7;
 Fri, 06 Dec 2019 10:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G4bdwKxSNWK5BWyINk+HzQDIpWu/B7jQUeXjA7APZjo=;
 b=IOCQ5mBXyjWFkS9TXSjGOveAENAla9ESYZ31r9Dl5jS1b79zs6xWdWHPqRd3SrMYZ3
 zS2NpLOfp78BhgDBgxoonulFW6d3D8Z49rjbTdkVHlJJbs6oi3xs8OeXG3YnYvcuycVF
 dWVBUlS6oeXzDhpGo5gL7Smot5DTl7FPevplwDVWDzVMwiXc4rOoLfjd0n/r4AnmBpwK
 nmXGwrJ2zZfxNbMuEx/o/93cLfFfTVCPLv8EZak41xG1NI4ZgY+N/XN2DcTJt73pUFZz
 eJc2E1TTNasw/oF0SXNaFvmlWpsATITaYZu9tcs3K0Ja3KD/BQgE7TxmO++P3Qmd9g+U
 VtOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G4bdwKxSNWK5BWyINk+HzQDIpWu/B7jQUeXjA7APZjo=;
 b=m0OVQbEBa/ZZ2ZjH4i87h/WumXb90OtQOmO+EasMlxp3rPwsXNTXF97c4641IprsGa
 DXGWCIpUmn264Zvrig5ug+hkFOGoOSaxzKnOSOSO/AN/H/28qIsBaq8LNHEwr0ycOs4z
 VcQIxPhOh/0sG4DUnFdsZJ0X8wRM77/mAarHNAa+26wRKDkiGl3lSjfropZf1xk9FOlC
 KBdEqAHziAiXJwc+cjOhh1TkOoPA3u1smjtSHeSYmylopBXmzNsQ/RNcELB+8R8U4oKx
 dzGizsOSxiAgCvt5OUp10XiMKCjQ9rAm7sbJLqnyajpTSiiomp34ctd40/Xb5SRgQgoI
 xJoA==
X-Gm-Message-State: APjAAAUA7ReOWCRhjj3WEN0+lIyfSkJKxVS5wM1EdM8VRSFPu3AGDtod
 k1YkedeZJ78OJ0xKNnoK214=
X-Google-Smtp-Source: APXvYqzAkqk6sls+s4gxGmJzuU/fKCFRgPpC70mSrT4+p2kE5yngx2IgoEvSFws63kxG4p373fzh1w==
X-Received: by 2002:a17:90a:a48c:: with SMTP id
 z12mr17312557pjp.38.1575658006227; 
 Fri, 06 Dec 2019 10:46:46 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:46:45 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 8/8] arm: rockchip: drop unused field from rk8xx i2c node
Date: Fri,  6 Dec 2019 18:45:36 +0000
Message-Id: <20191206184536.2507-9-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104649_900164_8A3919D8 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop unused rockchip,system-power-controller from rk8xx
i2c node.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm/boot/dts/rk3036-kylin.dts        | 1 -
 arch/arm/boot/dts/rk3188-px3-evb.dts      | 1 -
 arch/arm/boot/dts/rk3288-evb-rk808.dts    | 1 -
 arch/arm/boot/dts/rk3288-phycore-som.dtsi | 1 -
 arch/arm/boot/dts/rk3288-popmetal.dts     | 1 -
 arch/arm/boot/dts/rk3288-tinker.dtsi      | 1 -
 arch/arm/boot/dts/rk3288-veyron.dtsi      | 1 -
 arch/arm/boot/dts/rk3288-vyasa.dts        | 1 -
 arch/arm/boot/dts/rv1108-elgin-r1.dts     | 1 -
 arch/arm/boot/dts/rv1108-evb.dts          | 1 -
 10 files changed, 10 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index fb3cf005cc90..0a7290ab718d 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -118,7 +118,6 @@ rk808: pmic@1b {
 		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int &global_pwroff>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm/boot/dts/rk3188-px3-evb.dts b/arch/arm/boot/dts/rk3188-px3-evb.dts
index c32e1d441cf7..334fa510995c 100644
--- a/arch/arm/boot/dts/rk3188-px3-evb.dts
+++ b/arch/arm/boot/dts/rk3188-px3-evb.dts
@@ -88,7 +88,6 @@ rk808: pmic@1c {
 		reg = <0x1c>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB3 IRQ_TYPE_LEVEL_LOW>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm/boot/dts/rk3288-evb-rk808.dts b/arch/arm/boot/dts/rk3288-evb-rk808.dts
index 16788209625b..4b280c4b4850 100644
--- a/arch/arm/boot/dts/rk3288-evb-rk808.dts
+++ b/arch/arm/boot/dts/rk3288-evb-rk808.dts
@@ -17,7 +17,6 @@ rk808: pmic@1b {
 		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int &global_pwroff>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm/boot/dts/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
index 77a47b9b756d..2076566a2c97 100644
--- a/arch/arm/boot/dts/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
@@ -148,7 +148,6 @@ rk818: pmic@1c {
 		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 
diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk3288-popmetal.dts
index 6a51940398b5..251668fee14d 100644
--- a/arch/arm/boot/dts/rk3288-popmetal.dts
+++ b/arch/arm/boot/dts/rk3288-popmetal.dts
@@ -168,7 +168,6 @@ rk808: pmic@1b {
 		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int &global_pwroff>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 0aeef23ca3db..15fc1caca852 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -154,7 +154,6 @@ rk808: pmic@1b {
 				<&gpio0 12 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int &global_pwroff &dvs_1 &dvs_2>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 7525e3dd1fc1..d7663ebc798f 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -221,7 +221,6 @@ rk808: pmic@1b {
 		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 
diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index ba06e9f97ddc..98e48ecb473e 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -167,7 +167,6 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int &global_pwroff>;
-		rockchip,system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
index b1db924710c8..39acc472774d 100644
--- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
+++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
@@ -67,7 +67,6 @@ rk805: pmic@18 {
 		reg = <0x18>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
-		rockchip,system-power-controller;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
index 30f3d0470ad9..e21817237792 100644
--- a/arch/arm/boot/dts/rv1108-evb.dts
+++ b/arch/arm/boot/dts/rv1108-evb.dts
@@ -80,7 +80,6 @@ rk805: pmic@18 {
 		reg = <0x18>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
-		rockchip,system-power-controller;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
