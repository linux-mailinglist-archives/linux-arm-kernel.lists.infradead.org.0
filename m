Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2C61A5BF2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 04:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRE5za1Ekf2hR9KI6YUYeFQBgKQx9f6oqBMfgYozqnQ=; b=KVn/INeurErneO
	2J4+R0OOXQVWpZbqw84sGREft+OiEaQfGqjtK0X7pLExiaE2E4gM5Dl6HAuKlOlQBOvg8Ehux+SrQ
	yABxVDAR2MMH2c+5xoDJSXm47kom+WyJHmO60FXDs6Hhh+Jzb80MxKlrvt84jlF4kn1IIr9dXIR0I
	fH3H2gHk1kvLAsXZ/vfGZ6CyX/abwnkOT4aCD861FLstMHOy+HcnhXhVITdTpRzykvLyt4ZsKvJsr
	Ukpv/w9mXt9/O6r9XlUJH6Wc9iURFubxyA0wUrUjYbZwXiK89fEiYAODjHVPLuj6ySZr+sy1HDr7S
	jn2KSUQbuT/ndRlWXKXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNS1s-000253-QO; Sun, 12 Apr 2020 02:07:24 +0000
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNS1P-0001lH-Ox
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 02:06:57 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 352327D2;
 Sat, 11 Apr 2020 22:06:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 11 Apr 2020 22:06:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ILg74KFQ4/u/i
 LEbpVIGKPDUn0lqkuyVDFTjVVQFF4M=; b=Z2VROd3cksLy59OFEYAZL9M8LDtvZ
 KMcHoTfCidG1Wyu37u1nOaBA+b5S+JMJ0UBe9BbSYTpnjLw+IbuL/UK1X3conhTF
 Ur7JYC77svy+8dPKTQAvcPawgLGooTHe9qNvy5Vx5aSmV/XNmOadiO747XkehKHG
 VPKE4ygSyn37VUMwdRR4UKU58zaN9jEZqMpoaOnY7ObKQNOjfy5Up+G/O3N2nn6a
 4u0cYeS3yknd9irbeUiIBM04JK/dquR99xKnAS+9Nd8vDoWs3sFOUpujiXEYQOt/
 Era4ByWmgz3UFN9i4f7KFEc243/M2FbVfR1AyjZGwFkZxOUqnv2xApNPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ILg74KFQ4/u/iLEbpVIGKPDUn0lqkuyVDFTjVVQFF4M=; b=g9KvwmYn
 eJ/kAe+B4GnCJRJwnteJYQcvOgjCM6OU0BUSDNW61hwzlZZXfVmKqrTWDedFx5YL
 2j/8Qiq6qS8XOGadu68rb9owF123hw9Pl/lsX2GG+5v5Dmde7Pjhu4ln0sc8rcTZ
 GilG681ThX+ScC+79R81y58dUJNzqnF3xVIjCi6KpOHqUWfx3GIJI6aDF5H8vNvw
 RcLPwSgmBd9mscJ6NoBGWu/L05Y41VLBdbrWD+NurvV0Pui3HZEpoS9vnj8uQR+r
 GcpPzpiJRfoZqW016jUvhUwmhlLz7ET8fLaSgbPSlewsQ8foJ32QuId4lxzcJ+wG
 YzwT+mltb7StnQ==
X-ME-Sender: <xms:uneSXnd3s7H2zgZMTUWaXQSosb54exS7z_YfnSjrSBahd6sD-bpZuA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrvdehgdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:uneSXilz-yxPtpaS9JqNFRCE037pq-2EUteiN20Jp1vyyDPGkf7s-g>
 <xmx:uneSXkJZqEE-xL8dRDQRjJYEZIPNakMdx2wGe81VzFG-nsw-4BDGVg>
 <xmx:uneSXo3GlwI2ejJrwEX4fYIUNlX13p2FRimucRXHEirHzzACum3ffg>
 <xmx:uneSXo7pROq4Uixu48QJ9uELZQuqiBMiIudDmpGL5CTcKwe43uyCBXITU2c>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8824C3280069;
 Sat, 11 Apr 2020 22:06:49 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v3 3/3] arm64: allwinner: Enable Bluetooth and WiFi on sopine
 baseboard
Date: Sat, 11 Apr 2020 19:06:44 -0700
Message-Id: <20200412020644.355142-3-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200412020644.355142-1-alistair@alistair23.me>
References: <20200412020644.355142-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_190655_848091_33B1DFF9 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.18 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
