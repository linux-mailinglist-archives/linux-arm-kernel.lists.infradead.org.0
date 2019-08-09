Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE4C87890
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9oA2YrAfMsLM26GnMZIdkfaK491cR+ov5x8xkosAEE=; b=st4r4zmSt/cw0X
	7QBRxBHvPlWcWRN40SOflbBQYc0kxr6SQgLjYhm1xQHcw/NorVvJ4gu/LBZj0tdnibRKcolu6M16V
	M6pDVoa1oc9g9499ExE5AylPvpyIPy+ynHkQ7rmV17+eGYTRoxwE8Hqk65TsgctQaVgioGxFC8Fvt
	wB/nfS0QySfnoHCZWvkWnkX5OuFhccgoFYBAngduUjaKRr6qZSCc+ip/WvjUWuoxoSZayyId1FQew
	EwI+FZGgblvJ3pNVgSO3H5OamB5SyRD6ziatDfiQCqX9/+HZWb3ktkxtqj+rrzdJMy7AfFdyLSkr7
	fnOHIKkO+vNzh8Vgr54A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw36H-00088Z-Lp; Fri, 09 Aug 2019 11:30:25 +0000
Received: from mail-eopbgr130047.outbound.protection.outlook.com
 ([40.107.13.47] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw359-0006rZ-Vv
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ayG4mYEn/DExoZBy5vU3gKUd91hKj71n3hsGseH9fiwSkDQZhvAEgWd+roNycquCekYbcp983A+PY1tCIYNOggjzUphsduT52dbnZU7SdtXhrBVw6Wb5OUhZ6fKwJvEyxQP2Jfg7Nt/Phr89pN/Az8N0Sce/VcSG0gf3L/q9H1HNSL8rjPb59okgsQ0o+nkx6I/l0/+7bp+bZy3Xc1TogCjkHL2bnpwp+NQb2e2kvEX0y24UzKc1rUgclpxEJxl5zdhiBetnact/o1YN0G5Lg9diTzzeuDPQeyE9Oibk0KVHsNPVit3ymXjPzm+yzH14lvdgr3pO3wzhi/RVCmBQjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PYNZYyNJtn31n7p14bulckHPwVWqzMzmOx50lep2hzQ=;
 b=cEeZ+1BQsTBW6NqjTOA1G84aqSazAMyjh9oBJGqbUgW3yRcMN3adv3YAE+nldDbtrMcsymzhF4Tl/jlLa7a2TXKj4SkRk57hIE5MMZgmqVngooAcerv4Ogc5hHWFkL5fBlcv/mhxREwpBBZmr1ojbWlXkmfcUE11eia+6KCtCrfMm4cJZfZryULPFB0qvGu6gzlckcPOQIa9iXWrebegVxk81x9G70K+udOA8m0+o+DkOtQANGAAcCd1IfqxuAPinHTHeuCMl0MYVk/t0awTbgQIUa+FjUwOFOUn/WJSKlKb4w/REnDDMLjTZQYXggbcTuiQ75WVr3X25gI7IsAmuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PYNZYyNJtn31n7p14bulckHPwVWqzMzmOx50lep2hzQ=;
 b=S0aqAaj+M1n4xX20e7/H2gHSSc25p0lcm7uzECImO8jiPeyTtt4HgFfdJuVtPIg5oCQ5ufr1gV6ovGJd2Dx8NgFTWVtNn8gd02unUO4s5tzyX9zfSiSYodXE5afcPmlHKjN5ozOWBkIlpaz7drDOWxegag7qh1+ZPBMCc7ECalM=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3359.eurprd04.prod.outlook.com (52.134.1.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Fri, 9 Aug 2019 11:29:12 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 11:29:12 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v2 3/6] arm64: dts: fsl: Add device tree for S32V234-EVB
Thread-Topic: [PATCH v2 3/6] arm64: dts: fsl: Add device tree for S32V234-EVB
Thread-Index: AQHVTqWrfC92E9uuvE2u9Jux7R399A==
Date: Fri, 9 Aug 2019 11:29:12 +0000
Message-ID: <20190809112853.15846-4-stefan-gabriel.mirea@nxp.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR06CA0024.eurprd06.prod.outlook.com
 (2603:10a6:206:2::37) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b96b0d82-95b2-464d-4fa0-08d71cbccd60
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3359; 
x-ms-traffictypediagnostic: VI1PR0402MB3359:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3359825B09F1DC58FF8C34FDDFD60@VI1PR0402MB3359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(39860400002)(136003)(346002)(199004)(189003)(66476007)(66446008)(66556008)(64756008)(5660300002)(6512007)(26005)(186003)(2201001)(52116002)(76176011)(8936002)(99286004)(14454004)(50226002)(1076003)(86362001)(66946007)(71190400001)(71200400001)(4326008)(386003)(6506007)(53936002)(478600001)(102836004)(110136005)(2906002)(256004)(25786009)(8676002)(66066001)(476003)(2616005)(14444005)(54906003)(2501003)(486006)(316002)(36756003)(6116002)(3846002)(6486002)(7736002)(6636002)(7416002)(6436002)(305945005)(81156014)(446003)(11346002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3359;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qSt3t07AZERaShQLhYBPAG54S1Tr5r9yU/PSeoS7L+b/G7wmnSRZWMs0DIpJEW+J9XybAaR4QXg1hw7yIb6js9tZPT5XCV2y/NCyT8K6a4sinodu3/FKch/VDRTP0HS0+rOfNoaGqE2pLN6BsqgzO+ixvGaL6j8XESQh906fGbEL6vsVEpFhzid54p69i2kngZlwp30jDa/SWwKA+cgRnhwnEUnLW/F0BoA7zbb+dvlsPOKA7CLFe4wok7NRgrWIFP0fAhsfmA3NRaqYu//TYF+yrxHQf8EOxZnY61ZVqa2jwnxj8ZiYYqL4FYOGgrxMQsNH4SovdsM8zWLlqGgNyDJ4CY10KnLbYnmu5/WBlYxoH0M/jIcjvw1BLcKKlI/sooLVGax0HOM5EY2ymzU8KYIwSuiKEIfILmIxnEI+V5s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b96b0d82-95b2-464d-4fa0-08d71cbccd60
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 11:29:12.4303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kObUP3w7l0LRmtWbfESUlj8NmcllAnQ3QDMmabhbsR3Cqcw56f/hzFYcrSB5akUMjQ/QduyVB9pqHsauXj4WbraaQasDNFTCWYOINzqXHtg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042916_061244_15A99F2B 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 .../boot/dts/freescale/fsl-s32v234-evb.dts    |  24 ++++
 .../arm64/boot/dts/freescale/fsl-s32v234.dtsi | 130 ++++++++++++++++++
 3 files changed, 156 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c043aca66572..3af29b58a833 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -26,3 +26,5 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
+
+dtb-$(CONFIG_ARCH_S32) += fsl-s32v234-evb.dtb
diff --git a/arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts b/arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts
new file mode 100644
index 000000000000..92bf6c5563a3
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2015-2016 Freescale Semiconductor, Inc.
+ * Copyright 2016-2017 NXP
+ */
+
+/dts-v1/;
+#include "fsl-s32v234.dtsi"
+
+/ {
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
diff --git a/arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi b/arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi
new file mode 100644
index 000000000000..6d686d3ba997
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2015-2016 Freescale Semiconductor, Inc.
+ * Copyright 2016-2018 NXP
+ */
+
+/memreserve/ 0x80000000 0x00010000;
+
+/ {
+	model = "Freescale S32V234";
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
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0 0x1>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x80000000>;
+			next-level-cache = <&cluster0_l2_cache>;
+		};
+		cpu2: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0 0x100>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x80000000>;
+			next-level-cache = <&cluster1_l2_cache>;
+		};
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
+				compatible = "fsl,s32-linflexuart";
+				reg = <0x0 0x40053000 0x0 0x1000>;
+				interrupts = <0 59 1>;
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
+				compatible = "fsl,s32-linflexuart";
+				reg = <0x0 0x400bc000 0x0 0x1000>;
+				interrupts = <0 60 1>;
+				status = "disabled";
+			};
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <1 13 0xf08>,
+			     <1 14 0xf08>,
+			     <1 11 0xf08>,
+			     <1 10 0xf08>;
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
+		interrupts = <1 9 0xf04>;
+	};
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
