Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC55C1AF740
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZUA1Y33JMbKplGSgIuCIWLpMV9kr/S6GK0QoW90YRwM=; b=qfTj6avE+X+3QN7pVkt2s4qlLD
	SzDHfVwVPgXlRW9hAqhz3ZgFO2n98eiW8SSsHx+7aVNQf1j8I9VeQkxC4S8yxj8yQ8W6wyr+7dM19
	6hf8TLGmni37wEdriluYmK7pp19VFAfZpHON++out2JaSknV4+y1lyLa2mi6qF0g9J0A3EzV+6Ayp
	DiFxSUDTXRTVoVvfG4MJKxZJAsOioQHeDT+CiJOF1RyyzE58t8RHUYTdTT9bU6ekwlI0NUZk4kBpm
	Ass2CGr417EfCQzlkZvHA89WYC9A6YvuK2Gwv01bUJOr9uKpG5/yO/UtJBtvTppb05ZQrKDDEPtG3
	AY+zyMHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2fT-0004yU-LG; Sun, 19 Apr 2020 05:38:59 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2ev-0004jY-R1; Sun, 19 Apr 2020 05:38:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id g10so4755910lfj.13;
 Sat, 18 Apr 2020 22:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pLxLZ6U1xkA5yiZbYuidUVm3065atpE39pborliHgTs=;
 b=XCl2/pwwSdF8hrlQ62iKaUc1SVIem2w1TxmJRFHTVKB0L5DlsZYLkf1oitqaqKWjuX
 PbjNSlTYv0ntIeULCPh+Ep5mfAgxzrsxD4KjaWlWnJtFrB5kK3O4UyriyY+tCvoL7qt5
 DhDlkpQVRahUG91eU1Xp/FSDGyR+9XXXuaxL1axPDsJnM2kB0z6LaAKzeY6zKW4zcnCw
 TzSpoSSvCibsRP6vR9+6K9hamlIhZdFBUlgBC0jOkfcpH+HusCQW4t6Ohp4d3ZJeb3Ut
 CpE73cVa7xcUYhZE6baMrXj6Q9cwmmF9KvoTvw22cNxdgb8PINFsSHiuWYMKkcr8i/GM
 Vm/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pLxLZ6U1xkA5yiZbYuidUVm3065atpE39pborliHgTs=;
 b=tdFWvgGkwjqsN4WIhKUftIST8AceibgGVGKIiwX7UvVjylJ0q6FEuNACx6Mp+HbXph
 Up+SfcsGR4Z0XMZY5ZvdzLK8xHsZxW0wJR3mEtjNO3qcWu13yjQJJt4H0fZx0Yr5wEZQ
 9CTpegm8n7ol5DvMO0VOPEX0i5kXAk7JJ9Rmc3dEGgQInaeZR3NKv/lN3Hzu+h6R5n4g
 CROcS8HOLhW0ac9SzTAfqTv0CNbor/e9F+14Y6YKqjiIqMWqHdwyxCi169pMyoj5HqQ/
 7M1B26/4MHzZ5M3DYvJSelz/XT978e3qEAPK4cIxE5tttKmUHtK5IMYLw5u+PBwgO/IW
 vuNA==
X-Gm-Message-State: AGi0PuYGEfTmN4mjAne4qR7khcu1r0KtH/EuaGNNvW/DdNQKyUTJJEFv
 tdsy63xmTEhoQsMyxN/IoGI=
X-Google-Smtp-Source: APiQypKdLfNSchIZsXaPy0/PL4whmvu6HG8cUJ3PgsPTNtUTSsz8Fg8WVBhAF6hkfE4UlxoP1ezJ9w==
X-Received: by 2002:ac2:43c6:: with SMTP id u6mr6860631lfl.170.1587274704120; 
 Sat, 18 Apr 2020 22:38:24 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id r23sm20416619ljh.34.2020.04.18.22.38.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:38:23 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: meson: create common hdmi/hdmi-spdif audio
 dtsi
Date: Sun, 19 Apr 2020 05:38:11 +0000
Message-Id: <20200419053815.15731-2-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419053815.15731-1-christianshewitt@gmail.com>
References: <20200419053815.15731-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_223825_869327_BE161B94 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

Create common audio dtsi with the HDMI and HDMI+S/PDIF configs used with
many devices that follow Amlogic U200/W400 reference designs.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../amlogic/meson-g12-audio-hdmi-spdif.dtsi   | 139 ++++++++++++++++++
 .../dts/amlogic/meson-g12-audio-hdmi.dtsi     |  96 ++++++++++++
 2 files changed, 235 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi-spdif.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi.dtsi

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi-spdif.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi-spdif.dtsi
new file mode 100644
index 000000000000..e7cc738c0c3a
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi-spdif.dtsi
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
+ */
+
+#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+
+/ {
+	spdif_dit: audio-codec-1 {
+		#sound-dai-cells = <0>;
+		compatible = "linux,spdif-dit";
+		status = "okay";
+		sound-name-prefix = "DIT";
+	};
+
+	sound {
+		compatible = "amlogic,axg-sound-card";
+		model = "G12-HDMI-SPDIF";
+		audio-aux-devs = <&tdmout_b>;
+		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
+				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
+				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
+				"TDM_B Playback", "TDMOUT_B OUT",
+				"SPDIFOUT IN 0", "FRDDR_A OUT 3",
+				"SPDIFOUT IN 1", "FRDDR_B OUT 3",
+				"SPDIFOUT IN 2", "FRDDR_C OUT 3";
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
+		/* spdif hdmi or toslink interface */
+		dai-link-4 {
+			sound-dai = <&spdifout>;
+
+			codec-0 {
+				sound-dai = <&spdif_dit>;
+			};
+
+			codec-1 {
+				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_A>;
+			};
+		};
+
+		/* spdif hdmi interface */
+		dai-link-5 {
+			sound-dai = <&spdifout_b>;
+
+			codec {
+				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_B>;
+			};
+		};
+
+		/* hdmi glue */
+		dai-link-6 {
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
+};
+
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
+&spdifout {
+	pinctrl-0 = <&spdif_out_h_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&spdifout_b {
+	status = "okay";
+};
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
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi.dtsi
new file mode 100644
index 000000000000..445549c26ba8
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-audio-hdmi.dtsi
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
+ */
+
+#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+
+/ {
+	sound {
+		compatible = "amlogic,axg-sound-card";
+		model = "G12-HDMI";
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
+};
+
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
