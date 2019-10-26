Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AE8E5FA7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 22:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3a9523Zx53O38Og7yDJJJFGqFbjLFk10OOMULgtcFg=; b=fqvd78VgN43m5i
	+CcyBwApzkGpj2HnQxaNI6oTy0ZUvxT7bTIkK+EF6Zmr8PbiQDkYUr8AoIIbC9NkYV87dIRK3gKiA
	KewXa64ZctPgeddP/XOqMBvelt23YOJnXmAv5XdIH4pZHBkifra3YZV19Zxujbo7X3qku3mMnjPqH
	IqL1cP4xt/AFVKEaGTmf35wEkJtaVGcMymgroBD6gYwp5V/yAp9BdcJ/BunydjzQje5lNPWiZutCa
	N39xpcQCEfHRsx3ayKuytsehviqKRNg+Im/PPZqz9Vcg2Q+Xf5oiROu++jmEC0drAvIQrlDI8nsuU
	xYwgGSdJedwoLIiTfVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOT02-0001js-LC; Sat, 26 Oct 2019 20:49:26 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSzT-0001WJ-El
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 20:48:52 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 1A923BFE83;
 Sat, 26 Oct 2019 20:41:48 +0000 (UTC)
Received: from bonstra.fr.eu.org (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id 2A6AA60873;
 Sat, 26 Oct 2019 22:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1572122507; x=1573332107;
 bh=VhKkxkWcTbCjrWeKegoiffMLEInoYHE0UkHYo8HkL10=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=XWt470oIb0+H5KUndkc4KgevXnc31VGP7RacGTgi4Me6h0cxIdsebstCCEU4tbPRs
 uirV6/kgxCUItw3V4e2RrOXO3s368QAIlDw+T1TNjM75Fy6h4G82DaByyVunSShyhc
 w7ljbeEQznjqGZJveqSZiHdfHBv1faGDYFCqLb8vslSUD1i3V7jJDkUtauCc+z4Xcr
 nwJjiSr7PB9E7T8sn4lgN1ymyfGckhk5gvuzRhK3JIxD9oXZTkdLg47FbexB2xWT2e
 o0Y6vwNdarMY0jNrcnHVt7Gg90+ZKHqDLPKCVw2i79TzDt4GfktEuHU/Vq829cQp0k
 FWs67w3PYGdfg==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 3/3] arm64: dts: allwinner: a64: Enable Bluetooth on Teres-I
Date: Sat, 26 Oct 2019 22:41:16 +0200
Message-Id: <20191026204116.95119-4-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
References: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_134851_635262_5E93882A 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The UART1 on the Teres-A64-I is connected to a rtl8723bs combo
WLAN/Bluetooth controller, with three GPIOs used for device reset,
host wake up and device wake up.

Currently, the host wake up feature is not supported by the HCI H5
driver.

Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
---
 .../arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 1069e7012c9c..c7db2f1650d4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -325,6 +325,19 @@
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		enable-gpio = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
+		device-wake-gpio = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		realtek,config-name = "teres_a64_i";
+	};
+};
+
 &usbphy {
 	usb1_vbus-supply = <&reg_usb1_vbus>;
 	status = "okay";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
