Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224571A9A4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=P0XO6MGRZDdmk6jWV3HGXv2EGPWymUXHfJ+tCezLg3o=; b=iwk
	OEk/6Oz4AoDgoOf+/BQE7GAa7T0XZ7PJiCFgabf7cuPSJdHDASFB4jCoF8b6b9rMiZQXpvBzPND6E
	eJ8bxjuqX+EgTYO/uPkCZVkdCsWRvj8yHr0EijoLIRabtcOm5XSsO7Eufowfwc/F8FqZ56Xe/JppL
	g3ZFqyAD7g+0fXCsMPyfdPKpej412ctWB++qVW19LEW9OveP8omsmCeg18b0VW+qUbQJo6ywD5WlN
	AeUO0jgoo2fRrcPz/cYXHjjnlxZhM064eLVhPUF5ffcphT5UjUV2OdGNnl+KJvwFwRqy0Z+ZwUhvI
	3INCCwQt2U5WNRGGWaEMfxt5fLKFHvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfCx-0002xE-G6; Wed, 15 Apr 2020 10:23:51 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfCZ-0002vc-5L; Wed, 15 Apr 2020 10:23:29 +0000
Received: by mail-lf1-x144.google.com with SMTP id r17so2221030lff.2;
 Wed, 15 Apr 2020 03:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jKeaCgFpnmK28M7xOrZHtgGEs75wSDfctsMr7/8EUQ4=;
 b=u0aNUsA/ajvK6mw+4oTArTjesmheWK9IOjPXwcTInScU0ziIdquqPvAoRZ7JWHtU3e
 azgL3J3mFyNQ45f8l01s2gr+SSy3qihJSborjmg4ASd2rSEMBbhq0/ELiC+24ngeR37Z
 QOOOJn6nml0YT4MCSCwiFivQdSppsMUYq4y3blVHh9Vdtd4vgzVEAdm+DZnZ4EqT8mZC
 qEwXBMqVmVuBQeOkxPUkeg+I3OXA7KgWg1mHwKplqBn1diR32MgW/e2JzccROABQ6H5h
 5kcu1b0A0piOrKPAnsFZD9qUeMfzuMRVoUEJiC6TlLbm6ENviT5U66hzt5bR4JngrtJL
 91Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jKeaCgFpnmK28M7xOrZHtgGEs75wSDfctsMr7/8EUQ4=;
 b=irH52M4ej6mbks1wwrk2vh7k6P3yjoq16fMb9PCGiEU6q++FliKqoFAYtK1lilTE5/
 E7uJvDVe7bn3QyrPKdHie8BADPhlYlZeXFEX0aMkx1afKJOppiNB/8Dc45MchmDv3EcT
 7huVDNnSXl0Dj5B0mDagwbcpE8xz0b5cpd52deJYtbTg171/QTjz12Bg8WSlVVmQe2yr
 CopbIjxSQOIUejsak5m/TZ4ab1fIEChigoqz6rThtrQXPfr+uvSg5z6EbZ58Nozmm0te
 o3FDiUBj84om7/DiASjYkfs4K1tVKroTNbI6bjhgGdTKRpzhZtikFDlEnk3YHhYRJhlq
 oxug==
X-Gm-Message-State: AGi0PuY27b3DuzYksZhVqc46jAcrb6LmwjNnKgJVZ9WPoeMVVc16+/20
 vJnpPzEznpJF/LY3P/mvRu4=
X-Google-Smtp-Source: APiQypINp9dsLX1m+G4LnnN392ZDggMCz6RWVuPhP53iuSY5f9+1hGDl1lDNmn3boXKr/63qJ5pMqg==
X-Received: by 2002:a19:c8cf:: with SMTP id y198mr2545251lff.197.1586946205638; 
 Wed, 15 Apr 2020 03:23:25 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id x23sm12442810lfe.51.2020.04.15.03.23.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 03:23:24 -0700 (PDT)
From: chewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: sm1-khadas-vim3l: add audio playback to
 vim3l
Date: Wed, 15 Apr 2020 10:23:20 +0000
Message-Id: <20200415102320.4606-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_032328_229979_7E25B8C3 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Hewitt <christianshewitt@gmail.com>

Add the sound and related audio nodes to the VIM3L board.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
index dbbf29a0dbf6..b900a433ef7a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
@@ -8,6 +8,7 @@
 
 #include "meson-sm1.dtsi"
 #include "meson-khadas-vim3.dtsi"
+#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
 	compatible = "khadas,vim3l", "amlogic,sm1";
@@ -31,6 +32,69 @@
 		regulator-boot-on;
 		regulator-always-on;
 	};
+
+	sound {
+		compatible = "amlogic,axg-sound-card";
+		model = "SM1-KHADAS-VIM3L";
+		audio-aux-devs = <&tdmout_b>;
+		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
+				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
+				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
+				"TDM_B Playback", "TDMOUT_B OUT";
+
+		assigned-clocks = <&clkc CLKID_MPLL2>,
+				  <&clkc CLKID_MPLL0>,
+				  <&clkc CLKID_MPLL1>;
+		assigned-clock-parents = <0>, <0>, <0>;
+		assigned-clock-rates = <294912000>,
+				       <270950400>,
+				       <393216000>;
+		status = "okay";
+
+		dai-link-0 {
+			sound-dai = <&frddr_a>;
+		};
+
+		dai-link-1 {
+			sound-dai = <&frddr_b>;
+		};
+
+		dai-link-2 {
+			sound-dai = <&frddr_c>;
+		};
+
+		/* 8ch hdmi interface */
+		dai-link-3 {
+			sound-dai = <&tdmif_b>;
+			dai-format = "i2s";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			dai-tdm-slot-tx-mask-1 = <1 1>;
+			dai-tdm-slot-tx-mask-2 = <1 1>;
+			dai-tdm-slot-tx-mask-3 = <1 1>;
+			mclk-fs = <256>;
+
+			codec {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
+			};
+		};
+
+		/* hdmi glue */
+		dai-link-4 {
+			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
+
+			codec {
+				sound-dai = <&hdmi_tx>;
+			};
+		};
+	};
+};
+
+&arb {
+	status = "okay";
+};
+
+&clkc_audio {
+	status = "okay";
 };
 
 &cpu0 {
@@ -61,6 +125,18 @@
 	clock-latency = <50000>;
 };
 
+&frddr_a {
+	status = "okay";
+};
+
+&frddr_b {
+	status = "okay";
+};
+
+&frddr_c {
+	status = "okay";
+};
+
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
@@ -93,3 +169,15 @@
 	phy-names = "usb2-phy0", "usb2-phy1";
 };
  */
+
+&tdmif_b {
+	status = "okay";
+};
+
+&tdmout_b {
+	status = "okay";
+};
+
+&tohdmitx {
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
