Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A44931603
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 22:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zEdgK7hM/h4DJrBnvEAsDimQFnEF5zoUEYfUkA8tV7A=; b=ITgBnihWPvs4kt
	4SsGlkEkAnuPGbPiv4KLZhIiMelRqncUhqSwOhfki1Xf5Hkzmo7dY2nXAGkHA1msldLCVA7eJ+DtQ
	dFS8X+RmXcdhRFrABmroEkEAQ5lFjIWj61C9t50WRFs8Wu1FPU/ycRzfJ/9RAxUhwxJXIoB+AAE6N
	AkNyO4FVnP04peJNT58sVh4z3mTfU3jO3PvO35EKVXnnpLXdVhFH3206bK03y86/dDBz0v2qRzV1b
	yrIrrxQCUjjPRdZMcLeL5GoL1tvTZPe0faXDyWMDwGVLWNvY+0XC72VcZMgQJUSE9RGUWPvq0n8S2
	hBxXvmevGNMbK6MkW6nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWnzt-00058r-R3; Fri, 31 May 2019 20:19:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWnzm-00058O-JA; Fri, 31 May 2019 20:19:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id g69so4435625plb.7;
 Fri, 31 May 2019 13:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KHXPz3bmXRLX7mBl1qQo7PINranTFtOG3PdQWBgTOjU=;
 b=a0WjSdiLPggj9E3E7xXCRM/5laD1Sw++NUkYtQzHWZdn9aw3TdUfdHoMtk3plE52kE
 zMRGyvNLZS3CcPo5HD9vJcXnxp89GfGTotKaG9tISjVp8r1DTl2umuT96gRiMzpFEEU+
 8P3fj2xp47B3N8GQxzFuxcD2nd1XrGvsuRI85nX1lzcLi6AzWzzZRKryCQHfglMToY40
 HGTN3P7vh6LeQEvsB4lUCgipJqjL16o4H1YMkF4QUD00pC6+GnnXz8Ce17Qtt+5iKJ7L
 WxYe5SwXejZnhtSGfBMKIoKlNOyL7K/bf1gK9WSXgUXpcmw6xHG/4hUmXFJ4WP75ajWo
 8JVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KHXPz3bmXRLX7mBl1qQo7PINranTFtOG3PdQWBgTOjU=;
 b=qUEYzZJ7XRv1rWKuAJIQlXUil+7RR3PICjUUKaxzxiWB807GpwX+tEBNANwrS81b8f
 cqca+MqASTdPN6zkobbDKo5FnQlU86rVmt7RiTXDLz9R9AEBvF4T6QC0ZRSJ8+2uv8v/
 /hQbdNZajQCphMa1mK1ZGgcS75Tylbk71T3N/TzSr0PpENmU3NQvuBKOODwwSu4bTdgr
 OXix8fm39Ks7DJ17h++NbVtYnDQgjTi5JH4THeBvNg/H15oyeLB+Vs1CCg8qEvo3o9Xp
 hTkcmM0x1kbSegMKHNkplkKC8Tk4KihqTVylsQ5BRAd9zT/LDeXtRnl0TqRNREySENbo
 tRBw==
X-Gm-Message-State: APjAAAW7J+Lr8trIQHVxBCSj1VNqzaEvMFM4xjD36gSqVt/Gau1SVq1t
 IfeXDHhY35S56vjE0uTVQm4=
X-Google-Smtp-Source: APXvYqx5vljHHiOIRFhCMYdS3kAzR4Rv1/1+nmNLeBVQtZibd3Bh1eOQllGPzSyNezBbnOOE4+G+Yw==
X-Received: by 2002:a17:902:a405:: with SMTP id
 p5mr11115959plq.51.1559333961553; 
 Fri, 31 May 2019 13:19:21 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.35])
 by smtp.gmail.com with ESMTPSA id j20sm4408050pff.183.2019.05.31.13.19.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 13:19:21 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Vicente Bergas <vicencb@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add missing configuration pwr amd
 rst for PCIe
Date: Fri, 31 May 2019 20:19:13 +0000
Message-Id: <20190531201913.1122-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_131922_632978_791944A4 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add missing PCIe gpio pin (#PCIE_PWR) for vcc3v3_pcie power
regulator node also add missing reset pinctrl (#PCIE_PERST_L) for PCIe node.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
using schematics: thanks for suggested by Manivannan
[1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf

Changes from prevoius patch:
[2] https://patchwork.kernel.org/patch/10968695/

Fix the suject and commit message and corrected the PWR and PERST configuration
as per shematics and dts nodes.
---
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts    | 7 +++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts  | 7 +++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 3 +--
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 6b059bd7a04f..94e2a59bc1c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -89,6 +89,8 @@
 
 &pcie0 {
 	ep-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
 };
 
 &pinctrl {
@@ -104,6 +106,11 @@
 			rockchip,pins =
 				<1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
+
+		pcie_perst_l: pcie-perst-l {
+			rockchip,pins =
+				<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	usb2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 12285c51cceb..665fe09c7c74 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -64,6 +64,8 @@
 
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
 };
 
 &pinctrl {
@@ -104,6 +106,11 @@
 			rockchip,pins =
 				<2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
+
+		pcie_perst_l: pcie-perst-l {
+			rockchip,pins =
+				<2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	usb2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index c7d48d41e184..3df0cd67b4b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -55,6 +55,7 @@
 
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
+		gpio = <&gpio2 RK_PA5 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_drv>;
@@ -382,8 +383,6 @@
 
 &pcie0 {
 	num-lanes = <4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn_cpm>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
