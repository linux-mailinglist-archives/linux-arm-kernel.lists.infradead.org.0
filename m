Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221CE1038F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikMMyZlZgekbcXOgjPVGYK0i06sY0rMHTVo1I/3qcyA=; b=C1smubJJOUQp5k
	cLvxtirUU8syEEehEbFvSEXdS7b1GhCrAz5WoORh4/ZoCZCBf3OB/kWmkCQ8vxSLytLA1nzhdBhZM
	+6zb+6HzU6XGEdZ17ykvrKrVDg+V0yTP3GbN0PvDI3FLkUffCXbELFkdwjttczmLHW/Y4erV6BJln
	zbfDXQJi7n2+xrMlqxBwGZcyrxEk59WU7UXw0wkdLjMOb50Htvj15vAQcQNvuzxjkvxNIVjPROSY/
	6ceX/hyRwnaZdWQm2YEWplxRqwsxUaP5mUjKUoJLNRYwut793y0L78/1yZkAcRhunNdAJRG7aVmSJ
	uNby4/f6qTaiTGRlGVRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXONH-0003lM-Uq; Wed, 20 Nov 2019 11:42:19 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOMF-0002zZ-AM
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:41:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id gc1so4001057pjb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LVPX3M80KZd4Q7MyVkxEYzA1D5QxK+GgoYXRS5JRiWY=;
 b=ZqDzjSyu/fJt3pgq1ysJiWYhXrLyTzhXDBrZ5o4XvAGgFy+WV2rmWSXsYxD8QUEJ4V
 bMdu4rEg/t/AiDp//7xaPwe5NjRNz14aO2qUAQtJIB3nUvAZ4iqXm40CwYWN37Gde2+b
 OrcCSVDSB5DHAKYBmCSe89OkQu0/k0kqQoSbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LVPX3M80KZd4Q7MyVkxEYzA1D5QxK+GgoYXRS5JRiWY=;
 b=caPpFW2YZ7D+BMsm4grgw5jaBjy9eWZEmfPTSDvrDRL43JeGPuKglUMhGcC2+9K2Wj
 iPvYEDSlpQxnwqzUXOgEDtUCXIegQV+t7GhzqfMlm9MBbFYVF295u8mj1hk16lBClk8U
 DhL6iaJOfCQhMfJFlBrBSrKyP7VGoLTOosWpSGny2c9Edl72R/mnTEPhMrXXSyt4+Jlj
 uc9/MYgMbxz0VtoQXKKybtSpG1NhKMX+oZiERkwUBUpZXYZGfqa7DR9Nf0/MZZZvc59n
 hue55oRdw+DLEodZh8V24Mt6xNe0XzRbfQWF2okcmTfvO/myRPFqbnMssKtxQEcd65uW
 lt5g==
X-Gm-Message-State: APjAAAXsndO4My4Mh4jHls3YioaS1NxY3kPYwjhIrfMQTDxpx6ArRPlW
 RwED69cunSFiiU7RV5yqTJ7MAQ==
X-Google-Smtp-Source: APXvYqwqL32dNuB7yaQ+9XBJponJe+hREoVt+opsUP7F+TjCrG3qhm4CRk19jTvicZ+iQ7HWGEShhA==
X-Received: by 2002:a17:902:d901:: with SMTP id
 c1mr2461318plz.93.1574250073423; 
 Wed, 20 Nov 2019 03:41:13 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:41:12 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
Date: Wed, 20 Nov 2019 17:09:22 +0530
Message-Id: <20191120113923.11685-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034115_426897_1B1509D3 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
complete SBC, the associated SOM will mount on top of
this carrier board.

Radxa has a carrier board which supports on board
peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
eDP, Ethernet, PCIe, USB-C, 40-Pin GPIO header and etc.

Currently this carrier board can be used together with
VMARC RK3399Por SOM for making Rock PI N10 SBC.

So add this carrier board dtsi as a separate file in
ARM directory, so-that the same can reuse it in both
arm32 and arm64 variants of Rockchip SOMs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip-radxa-carrierboard.dtsi | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi

diff --git a/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi b/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
new file mode 100644
index 000000000000..df3712aedf8a
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
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
