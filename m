Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346D22CF30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 21:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b6bKg26A2JOSk7vaPWIG+ErqkvM3VpFSeBEZNR5ha6I=; b=qoH
	e9Mj9tg5V+nwpe1DXzXj4cGZ+PG2Du4P4zFkEV2I3rzxR+DWwMmzngcP/ygi5gd2d4CbQ5aUaKOhs
	VByc3zcuXfODfFB31Zn7ihuZJwT0/MwTPRuUEn6F4ShFQc+UQ7/bVfWC9jn3/0O5Wh7KKeYzo/nYn
	+sqiBS4A4lKUOXpXopNEZHLPMq2PBtFxWQT/FNpuZ5pvE6nP7p9tKD9/j5D0BN5kKyuPWrfs0Zx3M
	38/ND7uyiwTvoWPeBMoPfoG3pc9UJFsPWfyxT4Y7xg/xlx7r7Y/8nZa5eJ8GyOtTRTUkf3drvUmg1
	efZ8bANbf9vyS032fp8CCPKru8npQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhSq-0006YS-MM; Tue, 28 May 2019 19:08:48 +0000
Received: from se14p.web-hosting.com ([198.54.122.234])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhSj-0006Xv-B6; Tue, 28 May 2019 19:08:42 +0000
Received: from [68.65.123.203] (helo=server153.web-hosting.com)
 by se14.registrar-servers.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <akash@openedev.com>)
 id 1hVh8N-0009x3-QN; Tue, 28 May 2019 11:47:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=openedev.com; s=default; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HFvG/LahunJTKLXZcRrXptt2DckpdKXTkifmZXFipgQ=; b=PJiGVMZgVGjIgbDCNwmZ/BYqnX
 fXKKx7yfLlCHwNukhMHUcNOocKv77y7xf8izZNV6Ppo791w9CKK+Sr1CgT3z0SC1jwKeH60STKItJ
 kQg+sYfjzMZ5NwY5yCxUQ9UWwcp1g82nQCV3P1YGiBs3JalER9nYivypJdri+6mFX3zPJJ5YEcZ0w
 PHluyjCLBSBRUuWnh/xep34EGeusUaiX14k/257ZXAdMFBxG7bg2IdlduvFpYXz9fvrGazsiq2tph
 /L3ZKh3KEhc5nX2oM2RlkEwOYcqXfkI7nhBQfHoAdPB7Yn20dHN6mqxgafZg+N+/ZGFa0+9KHizZa
 ZWxG4BXg==;
Received: from [49.36.134.52] (port=58630 helo=localhost.localdomain)
 by server153.web-hosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
 (envelope-from <akash@openedev.com>)
 id 1hVh8B-000LWm-RB; Tue, 28 May 2019 14:47:32 -0400
From: Akash Gajjar <akash@openedev.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board
Date: Wed, 29 May 2019 00:16:58 +0530
Message-Id: <20190528184705.5240-1-akash@openedev.com>
X-Mailer: git-send-email 2.17.1
X-OutGoing-Spam-Status: No, score=-1.0
X-Originating-IP: 68.65.123.203
X-SpamExperts-Domain: nctest.net
X-SpamExperts-Username: whmcalls3
Authentication-Results: registrar-servers.com;
 auth=pass (login) smtp.auth=whmcalls3@nctest.net
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0fHWENUdqj+4JDN3TQDP3eCpSDasLI4SayDByyq9LIhVZoh+GYOxeKhX
 0rYQmz6690TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3Kk502M/hntTzIKfCMISdhHXTA
 YTyyIfs1cqM+JexaJLwYntLwFjolRFhTnXQDnB9P2e84PReenR5LSk2iUS2Af528AOBrEuOevXI0
 ebdgRKCIKg/aUy1+rC+nt9YJr0O6xUx7ZqtwsMDZ69b8b7zqxI+lL5NhqHMWktMqMo9GxlRpzx17
 fEWeVBQjTCzPj3JfZsHc9iz9sphsbcEfYLbbA/Vq7f6BdqHymHnsz2U1vrjjPk6p1XF7W+y4zutd
 yrLieQwtaT8LS8s2UvPGuarJq5V04g3+jzRT0rWpGx2J7RisI4GNUZN9o6JCIHO0bcEXRyryw85/
 rAZb27+VZ3biGpeRn+vXyl2rp3c+WLIsa2xTYi2bf0F0JzgUQ/o6tR7CyoeT9VtB9syzdRQvkcqf
 34ZQDkS0DHehuOHWuM7Vjf4BoMdMi3MTHLPLkhmyzwKCoSgrSPwK7H7GiJo2l1dsJpcM7kMJvj0O
 sEsYG6FZSA0KvSDgkCQq49Bwhmr0QiXBtIgA7rb5Xakftk+kQbpsGMceNxO+7BxamuC10Aq7F6rO
 /YET258p5gS3Y/tQ+7wViH3SZTmW3KAG173wuvejUvo9EUE9MbHVS3r/mgHJnIRYw1BzDqNFGZrh
 +TVo3LXlhgkjL4M2T1qqsnPjyphw8gjQbS46n+oec+xQytaJegt1cLqOJqfuEFfuEby07ONb4LOp
 SgtUXs0lCO/QMtPNbzkjHv8L1XCo8f/lClCdnQGCmomWoKHQTtA/vxRp3BmjRFUZkz7XBxuphczf
 K2a9sHP9vI3sVqNiY7IcsXSdRq0BIkUL/j1Y48GvmeURQjjE+CVHssiRKJOGVnhkTYtSIth1Taei
 g8OGCxX9BeyO5Yx635mhoDTZ7tQJkImekwqesW0Fhika04lb89teM7jCHuolsEZDZij6HLxcjD4A
 kjrzujHpSlY2Fr2WwzhRAoSw64oN2HxlNw5KgUUaTYIpDCz9FipvlGvdczGojXbA7Kmf/z2jyiGR
 IooMdE2solbjhZES3yaCYnD0cFyGWzVHlRxwEiTVJqDh0qKoKsXx5lloGmtNVzr+QC4y+mGx45d+
 3Lqf0a+sK979BKHqhPATJSQCCJdpTZ0kmYMGtdFn1fl+TqEWOdbpokqh9QirvZzP9FuHbI/2PO15
 wkM9AzOwAoKm7RdD7DhCg+2QoWbS5It/atGmSN6m4V7Gg3S4FvW6J98p+AxeVIeDFBo6QTq+8ulz
 /zXcOmPBLTmIxb/wPGs8LFudSgPI2QH+nhyrWSrH
X-Report-Abuse-To: spam@se16.registrar-servers.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_120841_388235_418C06BE 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rock Pi 4 has a on board AP6256 WiFi/BT Module. enable wifi and bluetooth
support on Rock Pi 4 board.

Signed-off-by: Akash Gajjar <akash@openedev.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4.dts    | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index e030627159c6..55e74f4d5cd0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -25,6 +25,15 @@
 		#clock-cells = <0>;
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc12v_dcin: dc-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -451,12 +460,46 @@
 };
 
 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
+	sdio0 {
+		sdio0_bus4: sdio0-bus4 {
+			rockchip,pins =
+				<2 20 RK_FUNC_1 &pcfg_pull_up_20ma>,
+				<2 21 RK_FUNC_1 &pcfg_pull_up_20ma>,
+				<2 22 RK_FUNC_1 &pcfg_pull_up_20ma>,
+				<2 23 RK_FUNC_1 &pcfg_pull_up_20ma>;
+		};
+
+		sdio0_cmd: sdio0-cmd {
+			rockchip,pins =
+				<2 24 RK_FUNC_1 &pcfg_pull_up_20ma>;
+		};
+
+		sdio0_clk: sdio0-clk {
+			rockchip,pins =
+				<2 25 RK_FUNC_1 &pcfg_pull_none_20ma>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -482,6 +525,17 @@
 			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm2 {
@@ -494,6 +548,32 @@
 	vref-supply = <&vcc_1v8>;
 };
 
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	clock-frequency = <50000000>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
@@ -557,6 +637,23 @@
 	};
 };
 
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+	};
+};
+
 &uart2 {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
