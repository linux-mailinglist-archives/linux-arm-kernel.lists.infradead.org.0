Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AF29B6D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4x6syv/shfFCCgY5tDpamHj8k3FN/qzBni2UK3K4Fw=; b=f+hYpWfewT7O5G
	H5Wl8/EMw8JuqEO7gzMqQjx9pZaj//DnWwvwh3lghwZdt4wNHPJorOthnJYmVf5/Sqlpqkz23pcmT
	iMe7ZcvGYqjLLsU9qtN4szQwPVqodg/+NXlmzx/bvf4OpXUbrfZLoOKd6Y3+rjggZaaQrCrXAeAwA
	lD7j8bai1qkSYIre6FJA7v6LTP4rAXIqzu4XFvbOz405SJgq00FUt7MbpPJNBiEWieFKqi07lnb2R
	YaVn1K1T4OJxh8NjgSDO5r9+29BEN17hwbybron2cS1yMgAvo8QDEdnZ8pdsC5XdGFeu+a8Rma35/
	8TO/jROZACSD8W1TfeMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1EzO-0005F6-In; Fri, 23 Aug 2019 19:12:46 +0000
Received: from mail-ve1eur02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::618]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EyO-00041M-TZ
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:11:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D78WyCkHVroV54auj+BtoMyHcSyy4IrjwVgTbqcyS96mcmXt6x/Oq9bQHxmjIu4hZRH3mSTelw+vb955ySwmhS27aH5VpcetWNNrhcDbkDFIzRVkKnpaCoC/REOYwTvDyMjd0OgPYY3odXhC0qMzlgpwm3sMKDbq/dnRYe/ppekRyftmomZRU4JbFnMlR+TrbHoASQncTYj5ORIgkDndsQP1bzDJz3K5dSGv0+t3TXpyjOeNsEgxRrejHo4oeizrY2gPf6XpKRI2Rdwe1kx1EZE0xAiL3IdqGXufV3KV4XOuBduR5SGeILLfTMTQZzYhu+XCH9GMgX6JzvUeJZ3OeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hbG55g7dR59B88ck8YW7qOGYW6n4kUPluVbQVJtn6QM=;
 b=N5IthRDC5xeq+7QODsUpmT6iY9ahLlPUUhe9kZ0dKFyMZxXntRlJyH535XOnaCH9CfI4JKzYaPg+jrNZcsC4oaZOv49wU9my5ObfrIbKveeT87uv6u2UhTu1Fw3y7OjnI73wpEOcee28YaIoj5/n2BSxRCxkGOS758fAbdwpjc6gJSTljlw/FhGi2ntiS7uVNgay8LguW+lozcu+xJL9vQi64a7K7d9rrVGSS/kU9IssqAemzHIcfxgji6lusEcz8J3u88+PzbouieHIoc8DY095KY6BdWh8m6mO/Y5l1rJO7bDwbzvem+ifammSVoVVf3dQnylQ+N+A1K+mZSZwRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hbG55g7dR59B88ck8YW7qOGYW6n4kUPluVbQVJtn6QM=;
 b=QWv75zA7xq/VR+Zb3M+U3BjAH+Gi9Ze4Vys+o7WafQyEAWxvAFMay7+Z9/9+x8yeNJJBcApXHnyHlRTDB2jie3hgF4nVxbn3UNgkNGxn+rCYrfzsXJ7/mBFGfbJsmYJXHZuUseA9K+rZdidiIulz8tySu0Kg8jOkxCCXw5LUlHM=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2717.eurprd04.prod.outlook.com (10.175.22.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 19:11:38 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 19:11:38 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v3 5/7] arm64: dts: fsl: Add device tree for S32V234-EVB
Thread-Topic: [PATCH v3 5/7] arm64: dts: fsl: Add device tree for S32V234-EVB
Thread-Index: AQHVWeaWO37el/dGLkW2Jfweldu8gQ==
Date: Fri, 23 Aug 2019 19:11:38 +0000
Message-ID: <20190823191115.18490-6-stefan-gabriel.mirea@nxp.com>
References: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR0402CA0007.eurprd04.prod.outlook.com
 (2603:10a6:203:90::17) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e14f39a-7bb2-42f9-5260-08d727fdb94c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2717; 
x-ms-traffictypediagnostic: VI1PR0402MB2717:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2717A90B9A5544B0488B13B1DFA40@VI1PR0402MB2717.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(446003)(476003)(2501003)(66446008)(76176011)(6436002)(6486002)(386003)(6506007)(50226002)(81156014)(256004)(86362001)(14444005)(66946007)(64756008)(66556008)(66476007)(66066001)(186003)(8936002)(6512007)(25786009)(81166006)(36756003)(478600001)(52116002)(8676002)(14454004)(102836004)(6116002)(5660300002)(486006)(26005)(2201001)(71200400001)(53936002)(71190400001)(1076003)(316002)(110136005)(7416002)(54906003)(4326008)(99286004)(7736002)(305945005)(6636002)(3846002)(11346002)(2616005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2717;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5wNwbk9q7cxxlXCOoH6l7aqO4S+5PNaeO32Nl3aX63NvVV5ft8P5Xr8P/TY7QlYAxK0tOxlnVr9Mq1R5MgaVB440HlerwIteeK4oLI9xw8TkFsw70lrFLjd3SPOXeQVnT05sgVUvlnzt+/GRTMuBQBhCiX9wsaeru6YAoAAQ+BSqi5zb2FQOZbuczkHxVF57ZJxpVhhZqi5wstxroQgfaqS5hDXuFICBJZhg6jC9qzE/EnNEnIKo90c2bNdnP3hXR4iL8gbWaLxatZnxq8+MaLa9BIrYES3LJuSh1A0Pm9UC3CoW80O0iDxbCSl9/s2STSorTtkS3sC44IvnxzaF8lFKjLiXFm+72jpBJ4WOzdg1bMcaLmgXVZ6AeloS1Zc8wLBbq21dKkq3qktHYtCZAuYQFH5bKXOf/uFGnPOrW0E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e14f39a-7bb2-42f9-5260-08d727fdb94c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 19:11:38.7679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XAygUf2oy5PgaTGCgkD4WVHei9ODmCTceogWmCWXkdHzg4t1lNVbEo6lSh1UAWDoAr8D8ZsAMz6SYdGEpH+/hR+ujTJnuqYVqXS2eNq056Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_121144_969702_FF78AE63 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dan Nica <dan.nica@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>

Add initial version of device tree for S32V234-EVB, including nodes for the
4 Cortex-A53 cores, AIPS bus with UART modules, ARM architected timer and
Generic Interrupt Controller (GIC).

Keep SoC level separate from board level to let future boards with this SoC
share common properties, while the dts files will keep board-dependent
properties.

Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Signed-off-by: Dan Nica <dan.nica@nxp.com>
Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
Signed-off-by: Phu Luu An <phu.luuan@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 arch/arm64/boot/dts/freescale/s32v234-evb.dts |  25 ++++
 arch/arm64/boot/dts/freescale/s32v234.dtsi    | 139 ++++++++++++++++++
 3 files changed, 166 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/s32v234-evb.dts
 create mode 100644 arch/arm64/boot/dts/freescale/s32v234.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c043aca66572..9aff21324146 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -26,3 +26,5 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
+
+dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
diff --git a/arch/arm64/boot/dts/freescale/s32v234-evb.dts b/arch/arm64/boot/dts/freescale/s32v234-evb.dts
new file mode 100644
index 000000000000..4b802518cefc
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/s32v234-evb.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2015-2016 Freescale Semiconductor, Inc.
+ * Copyright 2016-2017 NXP
+ */
+
+/dts-v1/;
+#include "s32v234.dtsi"
+
+/ {
+	model = "NXP S32V234-EVB2 Board";
+	compatible = "fsl,s32v234-evb", "fsl,s32v234";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/s32v234.dtsi b/arch/arm64/boot/dts/freescale/s32v234.dtsi
new file mode 100644
index 000000000000..37225191ccbf
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/s32v234.dtsi
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2015-2016 Freescale Semiconductor, Inc.
+ * Copyright 2016-2018 NXP
+ */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/memreserve/ 0x80000000 0x00010000;
+
+/ {
+	compatible = "fsl,s32v234";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0 0x0>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x80000000>;
+			next-level-cache = <&cluster0_l2_cache>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0 0x1>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x80000000>;
+			next-level-cache = <&cluster0_l2_cache>;
+		};
+
+		cpu2: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0 0x100>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x80000000>;
+			next-level-cache = <&cluster1_l2_cache>;
+		};
+
+		cpu3: cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0 0x101>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x80000000>;
+			next-level-cache = <&cluster1_l2_cache>;
+		};
+
+		cluster0_l2_cache: l2-cache0 {
+			compatible = "cache";
+		};
+
+		cluster1_l2_cache: l2-cache1 {
+			compatible = "cache";
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>;
+		/* clock-frequency might be modified by u-boot, depending on the
+		 * chip version.
+		 */
+		clock-frequency = <10000000>;
+	};
+
+	gic: interrupt-controller@7d001000 {
+		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
+		#interrupt-cells = <3>;
+		#address-cells = <0>;
+		interrupt-controller;
+		reg = <0 0x7d001000 0 0x1000>,
+		      <0 0x7d002000 0 0x2000>,
+		      <0 0x7d004000 0 0x2000>,
+		      <0 0x7d006000 0 0x2000>;
+		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) |
+					 IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	soc {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		compatible = "simple-bus";
+		interrupt-parent = <&gic>;
+		ranges;
+
+		aips0: aips-bus@40000000 {
+			compatible = "simple-bus";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			interrupt-parent = <&gic>;
+			reg = <0x0 0x40000000 0x0 0x7D000>;
+			ranges;
+
+			uart0: serial@40053000 {
+				compatible = "fsl,s32v234-linflexuart";
+				reg = <0x0 0x40053000 0x0 0x1000>;
+				interrupts = <GIC_SPI 59 IRQ_TYPE_EDGE_RISING>;
+				status = "disabled";
+			};
+		};
+
+		aips1: aips-bus@40080000 {
+			compatible = "simple-bus";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			interrupt-parent = <&gic>;
+			reg = <0x0 0x40080000 0x0 0x70000>;
+			ranges;
+
+			uart1: serial@400bc000 {
+				compatible = "fsl,s32v234-linflexuart";
+				reg = <0x0 0x400bc000 0x0 0x1000>;
+				interrupts = <GIC_SPI 60 IRQ_TYPE_EDGE_RISING>;
+				status = "disabled";
+			};
+		};
+	};
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
