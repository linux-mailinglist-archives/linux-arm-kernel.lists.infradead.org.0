Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC96130EDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BSsJwyVNTg9fsKmWgc9fZZ4w0ThyxFHwchzjMQ2Aag=; b=WIjSTBgZgsTKvj
	/VmPmE6ankyeZdLTiUA7YeiQFuzuIKYlbZjI054ykv/ExR+bntvnsFMvNRHt7DgfFboaLZ2Jomtjz
	geaJFMGM4xM/Ha5u0IqSjTgeVECVyHzbUECGz5idvnoQ2IBW4HEVZ2ZziKzG19AFao4g7axGlBYCO
	6jOH7bgdRz1lme4RVQlvLx4lVrI57ZCXay6UmcFidJK88yFs8bJ1LgKvub0xjO+49eiEXle54LSiU
	UAztCa6A5nQLL9Il/UlMO4tqhkoRViptSrUjgnYVYiCVvpgeHSoLp/SdMvzZ5pPH5jkdAiSz+jGVW
	3MPTbFfks+sHNkHxijrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioNzw-00032S-Sr; Mon, 06 Jan 2020 08:44:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioNyJ-0001aV-0K
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:42:50 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C33B24650;
 Mon,  6 Jan 2020 08:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578300165;
 bh=eabKL18AAzpQs7KMk7cqLiDvGMendqJwGmYVKRn/npc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pXwgWqOLaJDHrV6gn7hPWU3tYmP03Kj7jWrjjfrxSrXL4FWxVbPRsJb70RgiflMH9
 BobgEdByqkaNjxeyRIx914goQAcOnICbepYLASF/nDWFRITne3EjYZ9MPoQxn3o7MO
 vIsjK25aMT5HAXTY/MArWQn7dRAwPSheLdvNQjGg=
Received: by wens.tw (Postfix, from userid 1000)
 id 68F155FD69; Mon,  6 Jan 2020 16:42:41 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 5/7] [DO NOT MERGE] ARM: dts: sun4i: cubieboard: Enable
 OV7670 camera on CSI1
Date: Mon,  6 Jan 2020 16:42:38 +0800
Message-Id: <20200106084240.1076-6-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106084240.1076-1-wens@kernel.org>
References: <20200106084240.1076-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_004247_105663_E0118BEB 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The Cubieboard has CSI1 pins exposed on one of its GPIO headers.
Combined with I2C1 on the same header, a connected OV7670 based
camera module can be used. Power is provided via the 5V rail on
the same header. The module has onboard LDOs for the sensor's
various power rails.

Add a device node for the sensor, enable CSI1 and I2C1, and hook
everything up.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun4i-a10-cubieboard.dts | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/sun4i-a10-cubieboard.dts b/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
index 6ca02e824acc..29bfec8fad5b 100644
--- a/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
+++ b/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
@@ -101,6 +101,25 @@ &cpu0 {
 	cpu-supply = <&reg_dcdc2>;
 };
 
+&csi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&csi1_8bits_pg_pins>;
+	status = "okay";
+
+	port {
+		/* Parallel bus endpoint */
+		csi_from_ov7670: endpoint {
+			remote-endpoint = <&ov7670_to_csi>;
+			bus-width = <8>;
+			/* driver is broken */
+			hsync-active = <0>; /* Active high */
+			vsync-active = <1>; /* Active high */
+			data-active = <1>;  /* Active high */
+			pclk-sample = <1>;  /* Rising */
+		};
+	};
+};
+
 &de {
 	status = "okay";
 };
@@ -143,6 +162,29 @@ axp209: pmic@34 {
 
 &i2c1 {
 	status = "okay";
+
+	ov7670: camera@21 {
+		compatible = "ovti,ov7670";
+		reg = <0x21>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&csi1_clk_pg_pin>;
+		clocks = <&ccu CLK_CSI1>;
+		clock-names = "xclk";
+
+		reset-gpios = <&pio 7 14 GPIO_ACTIVE_LOW>; /* PH14 */
+		powerdown-gpios = <&pio 7 15 GPIO_ACTIVE_HIGH>; /* PH15 */
+
+		port {
+			ov7670_to_csi: endpoint {
+				remote-endpoint = <&csi_from_ov7670>;
+				bus-width = <8>;
+				hsync-active = <1>; /* Active high */
+				vsync-active = <1>; /* Active high */
+				data-active = <1>;  /* Active high */
+				pclk-sample = <1>;  /* Rising */
+			};
+		};
+	};
 };
 
 &ir0 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
