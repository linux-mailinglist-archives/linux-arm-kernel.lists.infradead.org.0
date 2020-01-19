Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C22141F16
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gJmvsh8hxH7MXhX5inOG3om8/yzzVCH7q0tpg570P8=; b=WlbYQzCkZra7B8
	ZEWCDNTjnjS/ThfEctoOn/yX2kOwhGs+pUSC0BUvgNkeZQQPTZNfvj8riHjU+c0TcVlv0ENM19SEI
	S0z5HcbN7ssyh8XQkfw/16sziFqCyMPkkhAyFVA2bIo7BIdwpHtQ7JLRmfzhoDdejSXVtDQ8XrLN5
	ZNAgoE5ibbmBYNAE5WAvvhOi4vtLGsmwIxhO+EGn49e55JdhMc7SNO5IZO0UAvZ6GA6VO7tdy3CS3
	s5UU3mKJB9uRIp0hEOrdqyquO53pemC/vZt9RGF8eZjPfMOJikL9JdPWvT/VDKuJzkhttntQd+xAX
	faYR8oCDOshYeG5mClBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDW5-0006wy-KO; Sun, 19 Jan 2020 16:33:37 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTp-000577-QN
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 5E0D121B2F;
 Sun, 19 Jan 2020 11:31:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=Kcy6+Z3qK/WAO
 8fFddaISL6a5kd1WYJvw6svqY+H9nw=; b=gK+YYer/2UZbHhYMZ7b4AZ9txi0af
 Pkcn1ViuiE1c2UmudDJUsbda40TDvxLXlhppe8f2i0AJNuCD65dvYv/W5omsuHts
 5V0qmB+UM3QBRTAGvzDIwMeYaBVg1MxDHCkdQOq7zXbA4muWLQw+KCIXJZLIFFfB
 3ZhmdvXMfLcQqS9EGmqi9RZGiQuMHiyVs8/WhEgEZUoCsQGUGchRKvGug3SoKDNI
 oOK3SwRrmzPUdPH3RSto3aO4WuCFnsceN6ej3I9YUrRHGbmWBbLRDxt9Jkhz5n9y
 PpWSTuOMEE5z+yQd73CVeQRWNjm/7V6MPN9PzQ4ee5WuqMXfzXU5zS3uA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=Kcy6+Z3qK/WAO8fFddaISL6a5kd1WYJvw6svqY+H9nw=; b=jdU/dUZq
 nXsi5GOOvRuwnqzFFv77e4X67KoFYyHtj1SWsQV+ZB00ntwZw36t3SfLG7XqGb4m
 kZCYDdTCwUtjgx9tOf+fInDEeUc55NtcnHmm4BYUiYfU53jgVbZs1D55iMZOM8qU
 96ioxvxayTf6qRd+vdTYGXBDDzXEyy7lIgoCdPJ24xuXXXJODGh0ELePCtcv8Of7
 0vih3hLa4TRHB8Rv77w23WNSsXSoQ5Bp/Sm2qHW0rsQkDPtCA8HjXY6tnKRKtdth
 XDYfK7aTEzoy/Oz4vl+G+6WnhV3Didspnf9qZph8kLT1OiuiDyswDkACTiEb6cQ4
 iy92G2XYyZ2DfQ==
X-ME-Sender: <xms:TIQkXrlrAf9s9WYIX0NDWwBi6eAJBzmacJf_Mxl4cP2QxVJZoved2g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:TIQkXjEJFDjSvKJi4qszDkzWj6-N94UZyM5AW94kDQnNoMBGwY390A>
 <xmx:TIQkXsrcoJkYbYGgjNG77YWRzsRs35EoYNv3zv2Y5gXoRHlrWidL0g>
 <xmx:TIQkXn6HErUFi_oU6-ObQKeTrrVN4kQdOaPeSZEI-iJFg5a3hhofAQ>
 <xmx:TIQkXm24VFfRAbDb3nKyPNYpHYELRWUvHP2rFCOkC4ub4l4IvIh4zA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id C2DCD80061;
 Sun, 19 Jan 2020 11:31:07 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 8/9] arm64: dts: allwinner: pinebook: Fix backlight regulator
Date: Sun, 19 Jan 2020 10:31:03 -0600
Message-Id: <20200119163104.13274-8-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083118_002650_15A9F8A4 
X-CRM114-Status: GOOD (  11.35  )
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

The output from the backlight regulator is labeled as "VBKLT" in the
schematic. Using the equation and resistor values from the schematic,
the output is approximately 18V, not 3.3V. Since the regulator in use
(SS6640STR) is a boost regulator powered by PS (battery or AC input),
which are both >3.3V, the output could not be 3.3V anyway.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../dts/allwinner/sun50i-a64-pinebook.dts     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 3e762f93671a..96434fdeb5c0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -21,22 +21,13 @@
 		ethernet0 = &rtl8723cs;
 	};
 
-	vdd_bl: regulator@0 {
-		compatible = "regulator-fixed";
-		regulator-name = "bl-3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&pio 7 6 GPIO_ACTIVE_HIGH>; /* PH6 */
-		enable-active-high;
-	};
-
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm 0 50000 0>;
 		brightness-levels = <0 5 10 15 20 30 40 55 70 85 100>;
 		default-brightness-level = <2>;
 		enable-gpios = <&pio 3 23 GPIO_ACTIVE_HIGH>; /* PD23 */
-		power-supply = <&vdd_bl>;
+		power-supply = <&reg_vbklt>;
 	};
 
 	chosen {
@@ -57,6 +48,15 @@
 		};
 	};
 
+	reg_vbklt: vbklt {
+		compatible = "regulator-fixed";
+		regulator-name = "vbklt";
+		regulator-min-microvolt = <18000000>;
+		regulator-max-microvolt = <18000000>;
+		gpio = <&pio 7 6 GPIO_ACTIVE_HIGH>; /* PH6 */
+		enable-active-high;
+	};
+
 	wifi_pwrseq: wifi_pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
