Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7712A8741C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB3T6M7wmP0ZuBZKEzl1EZuNtDczKaPgdgSv3Pl3f/k=; b=jpF3e8W4H7LRD2
	ZJalIHso2aa3XCNSE6Jxkjw1HneJHil5uNbCh+0tf7Q2W1S4AQx1U9pkqA1M9AS8HsDP2YyNNMBZF
	0955hkm2emqw/n+bZpS5GrkVpm7wsJJ7l2LW6NCcUxA6dtadjU3fuYojGT5AfdXRp3VAxOHjRJCLi
	872ePkBGafUkTnhn5DeEDOthvXszdg7awus/ZbPYoEGH0rD9vNey2r5yn9VHPOpgjBNsuJwfBVGLU
	iJr/pROjW+UNKtoF5raO2xsEYEHuM9+sijRWxrPj7CMBWP4I7pliPuBhI/9gpaHhpUOmAY6ZVJOlw
	39Kgg2rlmU+YMFJeAPnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0JD-0005W8-Me; Fri, 09 Aug 2019 08:31:35 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0IN-0004sc-Ft
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:30:45 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x798Ucvf084368;
 Fri, 9 Aug 2019 03:30:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565339438;
 bh=yiWuR6nRN6qjdbh/tKaFY/KbgnT9usj3xEZJ0CpaZSY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=goVgQLLZ7+UYNp8G14wySKdHxR8o/yTfnZT7QeCBmTZAOJxZvRWXuk9Vrvn+RvYHn
 G/jwFBnOqXkoQCM+C1D9ZKKa//kjzlFJz+GYhbGRSwaS2leNs/s+XZYhAj3bgzfHjD
 jP8POP5fl2120DGf4sErtCv6aU/mKqEfBx7bH1bU=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x798UcsO084527
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 03:30:38 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 03:30:37 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 03:30:37 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x798USdg070370;
 Fri, 9 Aug 2019 03:30:35 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
 <linus.walleij@linaro.org>
Subject: [PATCH 2/6] arm64: dts: ti: k3-j721e: Add gpio nodes in main domain
Date: Fri, 9 Aug 2019 13:59:43 +0530
Message-ID: <20190809082947.30590-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809082947.30590-1-lokeshvutla@ti.com>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_013043_636942_AC79DCD8 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 8 instances of gpio modules in main domain divided into 2 groups:
- Group1: gpio0, gpio2, gpio4, gpio6
- Group2: gpio1, gpio3, gpio5, gpio7

Groups are created to provide protection between two different processor
virtual worlds. There are x gpio lines coming out of each group. Each module
in a group has equal x gpio lines pinned out. There is a top level mux for
selecting the module instance for each pin coming out of group. Exactly
one module can be selected to control the corresponding pin. This muxing
can be controlled along the pad mux configuration registers.

Group1 pins out 128 lines(8 banks). Group 2 pins out 36 lines(2 banks).

Add DT nodes for each module instance in the main domain. Users should
make sure that correct gpio instance is selected in their pad configuration.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 132 ++++++++++++++++++++++
 1 file changed, 132 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 01661c22c39d..199bc9a00b20 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -240,4 +240,136 @@
 		clocks = <&k3_clks 286 0>;
 		clock-names = "fclk";
 	};
+
+	main_gpio0: gpio@600000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00600000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <105 0>, <105 1>, <105 2>, <105 3>,
+			     <105 4>, <105 5>, <105 6>, <105 7>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <128>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 105 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 105 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio1: gpio@601000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00601000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <106 0>, <106 1>, <106 2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <36>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 106 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 106 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio2: gpio@610000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00610000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <107 0>, <107 1>, <107 2>, <107 3>,
+			     <107 4>, <107 5>, <107 6>, <107 7>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <128>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 107 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 107 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio3: gpio@611000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00611000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <108 0>, <108 1>, <108 2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <36>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 108 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 108 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio4: gpio@620000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00620000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <109 0>, <109 1>, <109 2>, <109 3>,
+			     <109 4>, <109 5>, <109 6>, <109 7>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <128>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 109 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 109 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio5: gpio@621000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00621000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <110 0>, <110 1>, <110 2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <36>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 110 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 110 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio6: gpio@630000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00630000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <111 0>, <111 1>, <111 2>, <111 3>,
+			     <111 4>, <111 5>, <111 6>, <111 7>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <128>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 111 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 111 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio7: gpio@631000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x00631000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <112 0>, <112 1>, <112 2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <36>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 112 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 112 0>;
+		clock-names = "gpio";
+	};
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
