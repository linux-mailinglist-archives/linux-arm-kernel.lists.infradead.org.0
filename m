Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A29D1B35D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 05:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRE5za1Ekf2hR9KI6YUYeFQBgKQx9f6oqBMfgYozqnQ=; b=fN7/Ouk1W0X0Z4
	wJuAsqv0NQy5OuEC0O1+9omvdP/fcnXxiIuKKgScoV6Sap0A+NNWe03SPB8oRdc+KFDp5S4or9Nol
	kgNO38wTTZHuq1TKITl3ER9toT7jOxzcwdMarlS+yJNgF8rGmlv5FoZjQoRFNdJP03gU5PLX0+VGx
	EmZ4eZFgpHKE/AQrNLiWVV7CIAFxj5r4I+GSh7b8uaP2n/62ldeMkqo9Ap4DGZJfPPqhrcAyiKqDb
	ZOuuPAN5wL1gcTxrnyGMEMBogA0m1inz7tjCrvcOcM2O7XYSxmfOOcg6BZp3BkKi27Sa5Aby9aT7W
	/yWevcUfmcKKdz2dC+8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR6T9-0002oR-Q6; Wed, 22 Apr 2020 03:54:39 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR6SH-0002Ca-Hd
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 03:53:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4C4E25803F4;
 Tue, 21 Apr 2020 23:53:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 21 Apr 2020 23:53:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ILg74KFQ4/u/i
 LEbpVIGKPDUn0lqkuyVDFTjVVQFF4M=; b=Wv97607xPWtRVGaOEQH8OktWOwXs+
 V7yXLHTFOj6OqTwSz1IzFUzbG65S6h0sTrevJ/K2FFkZTA6Xd/T9XihviBgTmJCL
 CBmgWTiuzJtUNW9GZFYHfhYxvCo9Z6hYbmmxh5uTpPS02yDV61PkgPSiM9PUXj+l
 ofsciwklmnohoDNyaDjjNt7MmleGtYA3NWCCV5Qtcpm11sMNIY+kLyRsis97Vp48
 GBzhdcS6FS16RgyOmqtRyfC0/gTIPwlAf9jZ+dgNM60hduOOYbSDxd60b6IX1VT2
 BiI1fDzWYOkcdD4ZGNLXd6HoKCBgvESWv9oGjzouKXIjDd7BPa2s+YWgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ILg74KFQ4/u/iLEbpVIGKPDUn0lqkuyVDFTjVVQFF4M=; b=SPdn04y7
 5O+FwlwSZUaBva56KCa1KdMuTWgrJm3rcHYFu/JB2041cQDHwzNLJlvFVGHcNm/W
 RL9mziBXzOh3u6jmffwMQ609Axegcua8e5a7RhcBfBXoc9mM4Pss+jt2G+vcYPAH
 MAWDgRESzjQeUDhf+Kr71gknujjBwWoJK5DLIfkKvhSF34/USfi7CO5K/caHrF8k
 TkHx4BBHCfGs5TigGnfkulpkh3xTirRmvr4BF89qdxeNDQ2SygemahWN8I+sgtZZ
 4sPKYtqRmpL6KqpfWo+djDR5CIjb2nlSt95GgkkeCSdkM8egNSSnzHsh7O8oFeZD
 Ddc60Fu86RfIdw==
X-ME-Sender: <xms:x7-fXkSt4UKXIs5uFgWnvjkfbVK8Tg71eoRgD3E4W9gAHMF9kNnZOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:x7-fXnDncP3mNbJS1YMLwjAoi4JfRM1SyxLBCkB60khr9oxH98G0bw>
 <xmx:x7-fXjjK1Kzi1L6oHfe17353xipTLo7ca0YaKqYmmFKLSTHl3xK2uA>
 <xmx:x7-fXgNgMfQ4r1Gs6Y2ugYwrdHjFif162-1j6GV8F-u7GCyie11Ktg>
 <xmx:x7-fXrIPz1i6BgJrX98EgeIL5aN7oiFIpfjnaDdW0wJevP7yCXn2Rg>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id D31483280063;
 Tue, 21 Apr 2020 23:53:41 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [DO-NOT-MERGE][PATCH v4 3/3] arm64: allwinner: Enable Bluetooth and
 WiFi on sopine baseboard
Date: Tue, 21 Apr 2020 20:53:33 -0700
Message-Id: <20200422035333.1118351-3-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200422035333.1118351-1-alistair@alistair23.me>
References: <20200422035333.1118351-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_205345_718298_BB0CBCDE 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Alistair Francis <alistair@alistair23.me>,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sopine board has an optional RTL8723BS WiFi + BT module that can be
connected to UART1. Add this to the device tree so that it will work
for users if connected.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index 2f6ea9f3f6a2..34357ba143cb 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
 	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
+	};
 };
 
 &ac_power_supply {
@@ -103,6 +108,17 @@ ext_rgmii_phy: ethernet-phy@1 {
 	};
 };
 
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	non-removable;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &mmc2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc2_pins>;
@@ -174,6 +190,19 @@ &uart0 {
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts = <1>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+		host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+	};
+};
+
 /* On Pi-2 connector */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
