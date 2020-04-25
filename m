Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FBB1B878D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 17:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRE5za1Ekf2hR9KI6YUYeFQBgKQx9f6oqBMfgYozqnQ=; b=i5Jqy8DvbtZnN1
	qYMUMs7s+Mrk93d6cMIx49yOuU0pxi4VrJcHEr/KZ2tU883dphQljSefRaeen+ojPpluEd0frMcZJ
	kgFTeHSXDA+HQuKTq7Ac+Rwoilomffu037LF4oWJr2hDnxHwf6SRpfwA5X4rOnjSDxrpPM8s+5aSj
	3ZtkVd3MMXS1na/KwYerzfKEe8x4y9I+rn/CqvYZg1WjuoIYH/ZuycWifOX8CSxtw5zj2pQDicjJR
	1/5j5kRHWC1zYg4Oj726A4fi6Zb7f6cD8aYPk0x2yH62Y5dvVe9VNzKOIH4SrnuuHHwVBu25I0Kbm
	t4eZV7KGKDTMjCTElKnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSN9o-0006h1-HR; Sat, 25 Apr 2020 15:55:58 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSN9f-0006em-JY
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 15:55:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3AC8E5803BD;
 Sat, 25 Apr 2020 11:55:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 25 Apr 2020 11:55:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ILg74KFQ4/u/i
 LEbpVIGKPDUn0lqkuyVDFTjVVQFF4M=; b=MyWUkHZZ+Mcwdt7tPDh4nOqgZAEVt
 n8SU2n8ZR81Fv2JQ69Dyg1uEdGkMtEKpm/soc219ggCkilM6/1D9+OtmqfPOenjB
 ldoLtqTsxpA3l58j2j2ws+Qsm4ncs+ahXHyZGwqLceD/yhD67JU+9FsvbJJ0KH0H
 xKUJHUyoJjfvhIlvyuaPQBgQcyettaIm/ENgjGOFgP+fgXERqdExYTLQQvVQ3oZV
 qCIkbphLwFFe8aJ50Ie2LVfwUjbiiN6EUeCKBKsMIpfGk9Xp/ZhqrJHuekKCLYaY
 dduUrgJQ+SKwcqcQ2dEDydxkN8MCTy8Vkjd+XDRq0iFdlnkPfiOoL5EYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ILg74KFQ4/u/iLEbpVIGKPDUn0lqkuyVDFTjVVQFF4M=; b=UCDRN4Jd
 LJ1aMZu0e0azt1QAd15mpQLEvkm7c3u+0gP103CIaOw4Q/XGpCcOEGGWyMJifCLg
 9ohqiYsQi429Ig1oFNTzBFbW7VW/5MSqi2GRDxWR6smw/FieTf3ZS8BFdRFihbi+
 50WCmvYm5421efcI5PBTNEhlHYua0qS7FC5QP1biymBNhbukf3tm84In2sOVExAh
 GHl83AiZau8VJG05cv33yS4Of5eeOLPnRa0VbVUNsSBGGwqZRoTAq5tPACtbRGKN
 JyzCbsnjkiymVnm4+scLO6k6toz5ie3GpFcSOEJ2WAC2mCqstpej7t2ACneO7mug
 luZ/F72ZAiQlhg==
X-ME-Sender: <xms:eV2kXi1pBLxDckTlLq0uQuE8lEyDr8jXdaOXJDDd04dyCcx-e5eu_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrheeggdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:eV2kXqZrTsq_qRbUyCTF_6XuyPLGUjZ7BuDwiXHBjViahgBFV0hl6w>
 <xmx:eV2kXm_x8CUI9jrkObOTtn3Yguxfh63r73e5LW3bdkcDWa5Q8iVRJg>
 <xmx:eV2kXgZpYVI4tGkPcpJv3AmtMpyCUSWeZFa-C0lng4L1-U64Se0jcw>
 <xmx:fV2kXi4qQrktnCVTQ7Iav98OQI_z_ThFrs3_xuZPYpAYfcQBnE1LSw>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 921A03280067;
 Sat, 25 Apr 2020 11:55:36 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [DO-NOT-MERGE][PATCH v4 3/3] arm64: allwinner: Enable Bluetooth and
 WiFi on sopine baseboard
Date: Sat, 25 Apr 2020 08:55:31 -0700
Message-Id: <20200425155531.2816584-3-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200425155531.2816584-1-alistair@alistair23.me>
References: <20200425155531.2816584-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_085547_850208_C26E4F37 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
