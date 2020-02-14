Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BB615DF2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MHM6jHF95KeJYURh9ktGOyv5SA93lamd3v90fyb4GQ=; b=VUdclKMDkNTJg3
	xKBgARFRxH5zAbBR/zm2G4b9zi5bTdCdpfFnxTrppKpdjdc1Rzdy9FL5+/u3SqlaJApbB79LpD+9m
	hr3pLNy03UgbcN7B+R0l/x3G5xrPeKff+5L/KG3SKT15fvJ4DflYRmE+7tCOXkd0RoYEFC2HyNkUZ
	ZsZosN8Bbs1X8Ui7FXICNro+2wfjOZJ2zSLoYa57n5xlf8SJA2zwvMsSQmyF/vXbtw6u6+CQrd4uh
	nkJ5NdvjtP0su+09gYywL4XjYvbYnEK+Oj2Dzi3AlW3rqw0AwXMYr7z8p+SNgRtx3UxWf3SRhkmGK
	mSZWTQi/YGpqoY3gjPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dVR-0007J2-9H; Fri, 14 Feb 2020 16:07:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dK0-0001Rw-57; Fri, 14 Feb 2020 15:56:08 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9AB424649;
 Fri, 14 Feb 2020 15:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695763;
 bh=kpIYvkygOL80jCOC4mTASNNjnr+Ez++17Cyd5v07r7w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ne4BY4JFRI82kwc/XqNJjA2AEeRSxy8v3YsWGYPATAFDIYpyNmegotNSYxXz8c9Bh
 gIcTOzoC9aeyYug3xDHRHmv79nuGrO6mMTksEQyytkq8xdjj/LseZdN5WgYIVxcYdn
 s2rLEhm9AtqGJiNwM4u/k9REO7vhdN4aYxpHHa9s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 331/542] arm64: dts: rockchip: add reg property to
 brcmf sub-nodes
Date: Fri, 14 Feb 2020 10:45:23 -0500
Message-Id: <20200214154854.6746-331-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075605_328979_8CA5B26F 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 96ff264bccb22175bbe2185a1eb5204ca3c5f03f ]

An experimental test with the command below gives this error:
rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
So fix this by adding a reg property to the brcmf sub node.
Also add #address-cells and #size-cells to prevent more warnings.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20200110142128.13522-1-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 3 +++
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 3 +++
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c706db0ee9ec6..76f5db696009b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -669,9 +669,12 @@
 	vqmmc-supply = &vcc1v8_s3;	/* IO line */
 	vmmc-supply = &vcc_sdio;	/* card's power */
 
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 4944d78a0a1cb..e87a04477440e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -654,9 +654,12 @@
 	sd-uhs-sdr104;
 	vqmmc-supply = <&vcc1v8_s3>;
 	vmmc-supply = <&vccio_sd>;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 0541dfce924d6..9c659f3115c88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -648,9 +648,12 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
