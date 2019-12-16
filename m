Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F598121216
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SjOZx7j8OdKU/38CJ4kfbK0j+/hhavVm89hjWFYkbs=; b=OGtOWWJyi9ZjSg
	SHGjKz6BGasmqPN3lQhl/VjxH+4kbHG1fYDO7l+qP4J2uRbwUYIaqQv3tGbxh036gOo+QIhttkGep
	S/02JdK8w67Fv7vLGkl/yIIjXQ8QQPB+zKQckOosUofTeBT3OleT7OVpPez7kYHFwEgmbB44sI0mE
	bUaWAItwDc3LEUVLk2Pa3FIX7xtorb3hhiA7UzP4b34fieLDJhVMAzJAoHZRV3g3ds7P8+IP/BheP
	nB7CGWnrCIUWClE+PXaPVJqAM+IoXcK45WyPGeTlDxtFs09IxsgAW30ZMFZMuacvhCt6/5lpr5lEx
	lO6JPtrdvTPOm+Jz0bXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguUB-0004YY-GM; Mon, 16 Dec 2019 17:48:47 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguTM-0003ti-33
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:47:58 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l4so3295149pjt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 09:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GsBjNENOsoqT3Ti/q8MjgvfcH88K3hdnCqSY0W84Ii0=;
 b=CZpv7hKhKwM6hd/Scc3APxW6cyON8Wk+eVweQIo7BJwpJlLycjtUkhILWu3EvtocUQ
 1IVcQWu10k6j4vi718yHWUX8oDiS9CclHeARkvFOhA+uOdCPRcA6segAXc52LbA3c7CT
 FVJ8JG6bEMGcFSouHAQ+okgrtBSpbSXD8wk00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GsBjNENOsoqT3Ti/q8MjgvfcH88K3hdnCqSY0W84Ii0=;
 b=qhiR0X2pX3f/AzfmVdz/BvcvVb9hB0eq2zACVmhjIis5/Dkc9fapXHWy0EBmyWX30K
 SdaipPeQXxqipUL5pxmtdSdtIslfgcLTfL0Y5icwxk6u+LE0rQlkbqd8Gjg8wnIDC8+f
 uyswdUx2G4ME0lEA2OFLl87Q6HpHR5PZY7NdzcYAB5bJqj5+Vn/oXzSzlr8QLSJbgS6e
 SQ/lKizWAuo6JDokjBlYpOFEw5UDid3hTHGb2LBe3qIoswOO8WfsZtd8tS6Adbfjf4RB
 kEsTUXlbDcepwclScOWb/7YsHEW+9q3eilYqIDT7CCOVRQpqKObsuWHy2f2ItvHkBKIc
 UlAw==
X-Gm-Message-State: APjAAAWDRRI7WFhBpDzoLSLAzuHvRLE2KUiZyJOatXll+FBSbjzD4a9B
 sGzjClNJ50NuYAEEV6IxQx47vA==
X-Google-Smtp-Source: APXvYqz+iv3tXMOmQkCoKsp3M01KIIk9WwfIebXGJsP426lmosp/FQUhk+gZEDSH93HQ5lak6qtuYQ==
X-Received: by 2002:a17:902:b78b:: with SMTP id
 e11mr17804193pls.129.1576518475223; 
 Mon, 16 Dec 2019 09:47:55 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
 by smtp.gmail.com with ESMTPSA id
 a6sm22342924pgg.25.2019.12.16.09.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:47:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 3/4] ARM: dts: rockchip: Add Radxa Dalang Carrier board
Date: Mon, 16 Dec 2019 23:17:10 +0530
Message-Id: <20191216174711.17856-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094756_168849_CBB8A43A 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Carrier board often referred as baseboard. For making
complete SBC or any other industrial boards, these
carrier boards will used with associated SOMs.

Radxa has Dalang carrier board which supports on board
peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
eDP, Ethernet, WiFi, PCIe, USB-C, 40-Pin GPIO header and etc.

Right now Dalang carrier board is using with two variants
SBC, like
Rock Pi N10 => VMARC RK3399Por SOM + Dalang carrier board
Rock Pi N8  => VMARC RK3288 SOM + Dalang carrier board(+codec)

So add this carrier board dtsi as a separate file in
ARM directory, so-that the same can reuse it in both
rk3288, rk3399pro variants of Rockchip SOMs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi

diff --git a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
new file mode 100644
index 000000000000..df3712aedf8a
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&gmac {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+	i2c-scl-rising-time-ns = <140>;
+	i2c-scl-falling-time-ns = <30>;
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	vqmmc-supply = <&vccio_sd>;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins =
+				<4 RK_PD6 0 &pcfg_pull_up>;
+		};
+	};
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
