Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DAD141F13
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZWW7XcDeXg96V9InULjQ3r9qQT7bmmi4491xfOArdM=; b=E/ttiNoY0JiboG
	pJ4f9kdwQZs5yvj9TuORYRNVgPt+Tsyy7S4CFvd6K56LhC9lHRA1Ma4re6jTfHgf+VgmkygEWfzen
	tjXQ+pgpWrxXRer6sf5gLFOhPctIfDJdcqMsvBqlsL2Kkt7HSWRowggOz8D7bYUQp1FGgdfNUTGhX
	8k4k65LN8Cd4rsZZBwoJ+YxD3aMy26S9XRp4/7Sg50Qg1E5EoHC0GU41ZRxQBQaljyEyU4HmeMCLP
	u8Pk3qK+V03OgpO5pmimmt2190N74Cr/3el/LytyU2zGxQ2FJTqRmnws9koY32027bxqHCTnZkWvJ
	mEhLoDYEJ/lhiVZ8JzQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDVN-0006Jj-DU; Sun, 19 Jan 2020 16:32:53 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTp-000576-Pk
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id C6DA121B6B;
 Sun, 19 Jan 2020 11:31:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=J50f2lbdcydT0
 Mb3z0ZQkgpbye5qC5NfAXApFJPVhDI=; b=Z10iIopv0pJzUiGi/OLDXKi1laAvb
 hBxF6Qq+iht34FKmoKN3MbB5TtseHRqyYMRwu1Omp5VUkA68GeLDxEc8Slty9vs7
 Fj2EGSwuhsEyCX0VukpDKBQBiZLunpTrah8frCx1y14nUFDBln2IJn/zxWRSwvvH
 8v5aMRugxKytvTSYCAanbc9uKjqlk6Q9ETSrFNksl2iLul6R7pTZ3PcTcbGuaweZ
 oK8dF4u3Yql4pSvB4Tm/n0gDhsuD/T5r1UJnQfoh1CBHfmVk2MCiphCTFz1K4Tvq
 QX2R6Pok7gouip/orbUOnhvbzq4PjCGw0CiXMUvqNI0oN3PlSzYEcqL2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=J50f2lbdcydT0Mb3z0ZQkgpbye5qC5NfAXApFJPVhDI=; b=pWvr3JOB
 Tv3fRCqIa+28Jf8sLTvpbDtOkRvdMqDp3hheQUdKyppxEwpTar5Um3ZmYWeiDi5J
 IJFU1yGpzKBwFfK9+1POx0PJ1h9nCKPzshwbTtLMpCTsPtfoONb+1YSt3zeoWsdC
 ujQLpB4iS7qcPAVunZ2lSaKa2mNVjkqXzWstBk/2fT91kemo2dOULiAcvLYEsPcj
 ENAyeH3RKZ5kTuXHn9riXnx0gwglbpga4X+ZdLf79WwYO7Nbokv3yJnt1/jNRH/9
 klD22YzH+9UghSGFtso1eHKrx4hWdLVbRn7cSrMCDkuWiCzUFAFyf/WD+RizWNQg
 bYV76vmJZ22+qQ==
X-ME-Sender: <xms:TIQkXqLbymyBPWQ3F2iKkh1FFYTJX-vhQe-t47JdUbJGi61nLsxymw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:TIQkXgAW4AHcWkersNdEul4j34be3FDSqROhzDbIU3IhtldtHgvdDw>
 <xmx:TIQkXjzSAhQ5YkDUwBRnP1it_lW-DPEKavbFaxuRvIu_IxzoeLLKHQ>
 <xmx:TIQkXgrJd4DehqtFoCCvEr4gsu1a4spc2BdKn9DppNLQebvhhP4y5g>
 <xmx:TIQkXgmUr4kIbZHpSLeS324Eqw_Nhs00Ydm1nM5ESLD-EFbPBGtFig>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 32EB08005A;
 Sun, 19 Jan 2020 11:31:08 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 9/9] arm64: dts: allwinner: pinebook: Fix 5v0 boost regulator
Date: Sun, 19 Jan 2020 10:31:04 -0600
Message-Id: <20200119163104.13274-9-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083117_998899_92E47622 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that AXP803 GPIO support is available, we can properly model
the hardware. Replace the use of GPIO0-LDO with a fixed regulator
controlled by GPIO0. This boost regulator is used to power the
(internal and external) USB ports, as well as the speakers.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../dts/allwinner/sun50i-a64-pinebook.dts     | 27 +++++++++----------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 96434fdeb5c0..12e513ba8f50 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -57,6 +57,15 @@
 		enable-active-high;
 	};
 
+	reg_vcc5v0: vcc5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&axp_gpio 0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	wifi_pwrseq: wifi_pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
@@ -64,12 +73,7 @@
 
 	speaker_amp: audio-amplifier {
 		compatible = "simple-audio-amplifier";
-		/*
-		 * TODO This is actually a fixed regulator controlled by
-		 * the GPIO line on the PMIC. This should be corrected
-		 * once GPIO support is added for this PMIC.
-		 */
-		VCC-supply = <&reg_ldo_io0>;
+		VCC-supply = <&reg_vcc5v0>;
 		enable-gpios = <&pio 7 7 GPIO_ACTIVE_HIGH>; /* PH7 */
 		sound-name-prefix = "Speaker Amp";
 	};
@@ -302,13 +306,6 @@
 	regulator-name = "vdd-cpus";
 };
 
-&reg_ldo_io0 {
-	regulator-min-microvolt = <3300000>;
-	regulator-max-microvolt = <3300000>;
-	regulator-name = "vcc-usb";
-	status = "okay";
-};
-
 &reg_rtc_ldo {
 	regulator-name = "vcc-rtc";
 };
@@ -357,7 +354,7 @@
 };
 
 &usbphy {
-	usb0_vbus-supply = <&reg_ldo_io0>;
-	usb1_vbus-supply = <&reg_ldo_io0>;
+	usb0_vbus-supply = <&reg_vcc5v0>;
+	usb1_vbus-supply = <&reg_vcc5v0>;
 	status = "okay";
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
