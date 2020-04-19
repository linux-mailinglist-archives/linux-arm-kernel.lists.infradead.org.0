Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AAE1AF742
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rNkRbKhN8qdW9V/0jnvbvNs+9QppOZynwzo8bFyuGNc=; b=TjKthnDZclRLLsCfAIOka7b0Zl
	xcWRhKySW04gfhgt67xhOQV1kA/cGWPmTS45bLu1nvmW4Oha+Ex9RQ2SgIo8MnGz+8uCiLmfVyFug
	MqAALGVpbhugPqX4Bie4BMzQh3JuPBsT6HzmUx1gRx1AtRcFQ0bAMWhEt6OOOI656DiKNM5Ujx6aD
	XOafQga4fiWpuYQHkhtutdkgdq4Fp8VNJypv7NANlwIqyOVHfjlrWjUguDZXUnHRt0PImxnv35iYc
	wds5YLvYUHhPD/tJEsxGFnyxpwHl9WmC2ONS/eefRpMOrqkZ/QeKrJpYMNMZaPMxICKuP5WonUjdX
	cF4bV/Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2gH-0005bU-0Y; Sun, 19 Apr 2020 05:39:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2f1-0004mU-AV; Sun, 19 Apr 2020 05:38:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id j14so5190010lfg.9;
 Sat, 18 Apr 2020 22:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vLg2vS6vbwaLD4bumFzJqQXM6o/qVInbvW6e8omW3YI=;
 b=Y4hAnc57B0cQGO5KZdXkt8myF8rs756MwxTr2Wb53uR/s6pHoG8gBpRjjlLJ1BedYE
 kYTNhe2Urdazuh7+wpOx8wGOiVAuq+k+FvDjK2CcjZ0U66PKJ4UGbFqik7Xseb6eb3r6
 S5WnLC3Os4lrpmkX3+22D3rMyrbQ/ifijc3VIDPaOfOkk+rKb4ifW8S392xRDbQL99ZA
 I7xbacArb/BLsSU/O/qMutriu6spjY8aM1A9Wr6JL/4TaSBXLU28tmR7+QUrIl9I2ITP
 tCOoyyNG5ez7zKmNDOh41N8RzsrCfTJ9aQKCmhhQnLqCC4at6fd9KNOCRkRluyoN750x
 KB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vLg2vS6vbwaLD4bumFzJqQXM6o/qVInbvW6e8omW3YI=;
 b=VdikAmX8mGfZZp/CWD6F4VFvJXXhSP/G7NcmxtESRzEkLDZF0Dh0uBUtR3X7qSstK+
 odoq8ONxXz3aRs82lrc23eiDBZpFgIpPe/upgPGmwhpurTOGCYX7wGfZX58bh7lGdkVt
 kl8afx91gjot+gFOCF5aNEsBxhiwHxUIUSoFWhcemfaR5w6sG2FdASWFjNay25OCR/gl
 uwisu52PO2Ea9o97DqkWDV7bOqQOWi/565CPRSEVODCMy+87qdO402beC2RpWOKqixu5
 zn0qaEd6DmpMmOauk3KHp5/k7ZiB1nhQ7nwOKV9A9bgu3zQjsy0Sg+AVIUD/Ry8CCjN3
 6x2A==
X-Gm-Message-State: AGi0PuZtNVElDwBghSB7mG2dpbqsJ5iMvQ+pzT+jzMMUylHunI1brVOi
 faiDeVu7pcImITOItshX6Tk=
X-Google-Smtp-Source: APiQypIaK3mv2I1tg6U9iBlWpxXNzg5HvmZEysNlupNPr+cXsUEVaMbshur0i4d37ESxnGuvIbB+Vw==
X-Received: by 2002:a19:43:: with SMTP id 64mr6462595lfa.67.1587274709684;
 Sat, 18 Apr 2020 22:38:29 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id r23sm20416619ljh.34.2020.04.18.22.38.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:38:29 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: meson: convert odroid-n2 to hdmi dtsi
Date: Sun, 19 Apr 2020 05:38:13 +0000
Message-Id: <20200419053815.15731-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419053815.15731-1-christianshewitt@gmail.com>
References: <20200419053815.15731-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_223831_424059_86FB4494 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Simplify the N2 device-tree by using meson-g12-audio-hdmi.dtsi

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 89 +------------------
 1 file changed, 1 insertion(+), 88 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 169ea283d4ee..e75d859e76dd 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -7,9 +7,9 @@
 /dts-v1/;
 
 #include "meson-g12b-s922x.dtsi"
+#include "meson-g12-audio-hdmi.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
-#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
 	compatible = "hardkernel,odroid-n2", "amlogic,s922x", "amlogic,g12b";
@@ -205,65 +205,6 @@
 			};
 		};
 	};
-
-	sound {
-		compatible = "amlogic,axg-sound-card";
-		model = "G12B-ODROID-N2";
-		audio-aux-devs = <&tdmout_b>;
-		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
-				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
-				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
-				"TDM_B Playback", "TDMOUT_B OUT";
-
-		assigned-clocks = <&clkc CLKID_MPLL2>,
-				  <&clkc CLKID_MPLL0>,
-				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
-		assigned-clock-rates = <294912000>,
-				       <270950400>,
-				       <393216000>;
-		status = "okay";
-
-		dai-link-0 {
-			sound-dai = <&frddr_a>;
-		};
-
-		dai-link-1 {
-			sound-dai = <&frddr_b>;
-		};
-
-		dai-link-2 {
-			sound-dai = <&frddr_c>;
-		};
-
-		/* 8ch hdmi interface */
-		dai-link-3 {
-			sound-dai = <&tdmif_b>;
-			dai-format = "i2s";
-			dai-tdm-slot-tx-mask-0 = <1 1>;
-			dai-tdm-slot-tx-mask-1 = <1 1>;
-			dai-tdm-slot-tx-mask-2 = <1 1>;
-			dai-tdm-slot-tx-mask-3 = <1 1>;
-			mclk-fs = <256>;
-
-			codec {
-				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
-			};
-		};
-
-		/* hdmi glue */
-		dai-link-4 {
-			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
-
-			codec {
-				sound-dai = <&hdmi_tx>;
-			};
-		};
-	};
-};
-
-&arb {
-	status = "okay";
 };
 
 &cec_AO {
@@ -280,10 +221,6 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
-&clkc_audio {
-	status = "okay";
-};
-
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
 	operating-points-v2 = <&cpu_opp_table_0>;
@@ -351,18 +288,6 @@
 	amlogic,tx-delay-ns = <2>;
 };
 
-&frddr_a {
-	status = "okay";
-};
-
-&frddr_b {
-	status = "okay";
-};
-
-&frddr_c {
-	status = "okay";
-};
-
 &gpio {
 	/*
 	 * WARNING: The USB Hub on the Odroid-N2 needs a reset signal
@@ -472,18 +397,6 @@
 	};
 };
 
-&tdmif_b {
-	status = "okay";
-};
-
-&tdmout_b {
-	status = "okay";
-};
-
-&tohdmitx {
-	status = "okay";
-};
-
 &uart_AO {
 	status = "okay";
 	pinctrl-0 = <&uart_ao_a_pins>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
