Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841D91730D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x07OEnhixYRsG7aKoWfhWpX0F9tRVmMN6XCd02TLUBs=; b=ByV
	kK1m49Nv4jj5Ku5LkSAABmUJnBVXvh5k5cHa5O22/6+w7fEG8RXyIm3j/xtFdAbpn7+mVf6lBcPvJ
	VBrkP4A5hIwb28EBDoJPsysyvFuxmwmdahy+M5GEt/YeW8jQByAZmNu0qHYLH4i7rJBh0pS8+n9kT
	ZuQLR46AoitlAaTwyCapPVbv6oeoFhsEewdOk6St7JWLn+gDXo7wWofl2lS4+s4pGRaaIzdrJzNrY
	JkjBq5xP+nifeRCLTkJeqnUn9h4kqXdFb5jO3jk8QObVqyTHNswRQ0Tt4ARSE/vIcS2L0sYsGLo0+
	ftXfs6TxOZuPJ1pc0sDmpguFWyEf1Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ytu-0008P0-88; Fri, 28 Feb 2020 06:13:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yti-0008OU-RE; Fri, 28 Feb 2020 06:13:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so1981697ljj.11;
 Thu, 27 Feb 2020 22:13:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7dy/Kujh8oupW/pVHgPs57WktyNPAbW19eFPb391nVY=;
 b=fsxo5mfKJg6j7cF0VkdAc/Hf3t4sJlFk33XPf59uRYualOkUrk/UJzxZ7KWH04ia5n
 xj09T9DCmsQsThEtDPqXm6TCNRL/V0/Lo5ep2lfIavLQJo3HYvJKrTSzdqx/Yzf5mO00
 VF7rP+MEuKyBGOJkzXioIcKPm3D4Bd/8L7gC18p0gjCpv47SQ7fmbsA7MChCo3obBPzc
 cZHCMZpRZKtIIDnVpEcx/ZiwPUmgcs//DbDVz7kuc/Fsh19/Pip/fLXsvHsw4p91DTD4
 JHfZNCChQdQ5o0KyQF7A4LgJmrUTZZks0/rLgCEwkJERmzE26+Ey7oxRSzBYMq74e4ae
 u+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7dy/Kujh8oupW/pVHgPs57WktyNPAbW19eFPb391nVY=;
 b=YGnQu2B7ySgg464ArkMWGFm4O7iYR4635w6Elnl29s9VT+uAS8V/2CsrsceJoeDmlT
 UFJ6fAeJMPfk6bKTz6WTxffQO+0CGDI/9WRUykUh/fHQZYCbD61bi1KJgELtgVJGA/4X
 jdhz9HEp6ayKpD6gze3+TwybPvXyH4QVE3vckPip4CxULGB0xLUH2bStgygNsYlN4TNv
 9rAXzp4FPdXEEZjPvj9vLR+0aCsJu43P1igyPgIm107sxcMyyCwvlkneKMRDUipntG5k
 9Z1INaqFQe9h2UeEYJUSb5Excj/4waEbCsJOW/UWP4GXGngtVlbCveONiD6zFnpozSj7
 DDAA==
X-Gm-Message-State: ANhLgQ051CYed9wvxbM4Fx0/Ge8rKJsLm4oBHvq1j/ItF8mnihrGYEq/
 w3uTuOPVhCHd+M0ApIrcurI=
X-Google-Smtp-Source: ADFU+vu9lkUYGTP4dyLaBRdQUY25f/Yt3QOACVP1pzgNmvrwnRgocQ5ZZOd/qLXvw4ZmQ/Mhq32Jtg==
X-Received: by 2002:a2e:9a93:: with SMTP id p19mr1812515lji.177.1582870397017; 
 Thu, 27 Feb 2020 22:13:17 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id f14sm4149299lfh.40.2020.02.27.22.13.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 27 Feb 2020 22:13:16 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: add thermal zones to gxl-s905x-khadas-vim
Date: Fri, 28 Feb 2020 10:12:26 +0400
Message-Id: <1582870346-74145-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_221318_881965_01626778 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>, Nick Xie <nick@khadas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add thermal zones to the VIM1 board, copying the zone config from the
existing VIM2 board.

Suggested-by: Nick Xie <nick@khadas.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../dts/amlogic/meson-gxl-s905x-khadas-vim.dts     | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 440bc23..2c198c4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/thermal/thermal.h>
 
 #include "meson-gxl-s905x-p212.dtsi"
 
@@ -63,6 +64,39 @@
 			};
 		};
 	};
+
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <250>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+
+			thermal-sensors = <&scpi_sensors 0>;
+
+			trips {
+				cpu_alert0: cpu-alert0 {
+					temperature = <70000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "active";
+				};
+
+				cpu_alert1: cpu-alert1 {
+					temperature = <80000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert1>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
 };
 
 &cec_AO {
@@ -72,6 +106,22 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
+&cpu0 {
+	#cooling-cells = <2>;
+};
+
+&cpu1 {
+	#cooling-cells = <2>;
+};
+
+&cpu2 {
+	#cooling-cells = <2>;
+};
+
+&cpu3 {
+	#cooling-cells = <2>;
+};
+
 &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
