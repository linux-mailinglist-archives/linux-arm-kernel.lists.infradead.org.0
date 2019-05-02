Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F1D124B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 00:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWEu90I+atH9TP42ANrmMueOmWRtz3n2SGxMTIDamw0=; b=Yl8VwGVi575gk1
	zRr9vJ6s2VHU0blg7wGG0ewLRSWocoMG67MoX4rXwn4SWMLvwFk1UTIocm6/iW0LxejG6eFPnc+xU
	2yqLGZPcACSxKSXSoRK0q2QYPJ+e6rGxjZ91h/aaV6O6Rw214SAUpyJ9mKM6R31+Epx8boxgx3ZeW
	4GDcUTr+2dsCQPAy7tcjAYhEr3qRjGPEI0Wg/useNQqLiOvuASn6U9DjIUiVIJ8YPUVhsoesOHVSG
	5F63haJKeA0BPCUeRFpdWYWwRRSuuKB/Q4T16ZsLXc7gbu3vbo+sr4ZEImuGkz1vXHxcqFxO4vzWA
	ioo++UmOB/S18AIcP/uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKRc-0001Q2-Ls; Thu, 02 May 2019 22:44:48 +0000
Received: from mail-ve1eur02on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::62a]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKRB-0000zo-R4
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 22:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pKJJB57BTZnv91xInuELTcEgrqm/4EJ0fXqGXSyIux4=;
 b=XQ+giUdKnF6pxl/9rTXS5MxNOgrmnOU0aEIJxTi+QvGrQXDH/W7DvCP6oR9CVtFuXRWzolHfMchEBoqf/FSSaTTfmQkJRdxUAqua2fnevtNSa0PEzDmKOiXBxPnSiq0hP4QJCtXNBM4Sv7/sBQtOtlwWvyrRYek74N/mwLrdX0o=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5315.eurprd04.prod.outlook.com (20.176.215.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 22:44:15 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 22:44:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 2/3] arm64: dts: imx8mm: Add cpu speed grading and all OPPs
Thread-Topic: [PATCH v2 2/3] arm64: dts: imx8mm: Add cpu speed grading and all
 OPPs
Thread-Index: AQHVATiR0oJdbRNhNE+qlYykXiwtOg==
Date: Thu, 2 May 2019 22:44:15 +0000
Message-ID: <cb0329b83347e551911f3d474cf512f3fe10cde4.1556836868.git.leonard.crestez@nxp.com>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1556836868.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0184.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::28) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc168471-1d4e-47dc-078e-08d6cf4fb40f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5315; 
x-ms-traffictypediagnostic: AM0PR04MB5315:
x-microsoft-antispam-prvs: <AM0PR04MB5315228F1C34F1C4C3DE37A4EE340@AM0PR04MB5315.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(86362001)(76176011)(6116002)(66446008)(66476007)(66946007)(6436002)(66556008)(71190400001)(73956011)(71200400001)(64756008)(52116002)(53936002)(14444005)(3846002)(36756003)(256004)(5660300002)(2906002)(8676002)(26005)(11346002)(44832011)(186003)(478600001)(118296001)(4326008)(446003)(6506007)(305945005)(386003)(8936002)(316002)(476003)(6486002)(54906003)(6512007)(50226002)(99286004)(68736007)(81156014)(81166006)(486006)(110136005)(102836004)(14454004)(66066001)(25786009)(7736002)(2616005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5315;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YnQro9Dz66PcO2sB7J+u2wl0SxfYi9JnNd297QuHIFxcvc8d3OFkmvUU8jDTLYJ7bC8zCR5hl5/Hp/kCNYFX70WSENwO3zHIofNfOGF3zdG1woAqRihlcNZNZI/aeF+8KugbgKgN+iBEZdma4XUhQWAmnfNbuzmSrEjF0mU9u579fty95c/yV89hVyEpujpAqg78fDx18eI2Ib8fERhGhJsQi6+dvmOPTpBtw+nX0GhkK9GVn/ocQhuCs86hUL1ba4/nNya7cI4jSbdeqe/z/0btfZ1lIDHglv/kAvccHF88RsWuilrlAPcBn7Tzm5bbVnX1wfbc4UHkSIZwxGxvwFPe85JGSpE4oBzSiXfQgNkTUr3Ku9UENxu7hSTYHfRonaIGLtcNr1HUHQZV5yrK/bT55cINadFManu424tJJ7E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc168471-1d4e-47dc-078e-08d6cf4fb40f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 22:44:15.2452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_154421_936870_7F3E565E 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a nvmem cell on cpu node referencing speed grade and the 1.8 Ghz
cpufreq opp.

The imx-cpufreq-dt driver will read speed grade and disable higher opps
if unsupported.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 0b2a585c5844..9154f48e81f4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -51,10 +51,12 @@
 			clock-latency = <61036>; /* two CLK32 periods */
 			clocks = <&clk IMX8MM_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
+			nvmem-cells = <&cpu_speed_grade>;
+			nvmem-cell-names = "speed_grade";
 		};
 
 		A53_1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
@@ -95,21 +97,36 @@
 
 	a53_opp_table: opp-table {
 		compatible = "operating-points-v2";
 		opp-shared;
 
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <850000>;
+			opp-supported-hw = <0xf>;
+			clock-latency-ns = <150000>;
+		};
+
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <850000>;
+			opp-supported-hw = <0xe>;
 			clock-latency-ns = <150000>;
 		};
 
 		opp-1600000000 {
 			opp-hz = /bits/ 64 <1600000000>;
 			opp-microvolt = <900000>;
+			opp-supported-hw = <0xc>;
+			clock-latency-ns = <150000>;
+		};
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <1000000>;
+			opp-supported-hw = <0x8>;
 			clock-latency-ns = <150000>;
-			opp-suspend;
 		};
 	};
 
 	memory@40000000 {
 		device_type = "memory";
@@ -317,10 +334,14 @@
 				reg = <0x30350000 0x10000>;
 				clocks = <&clk IMX8MM_CLK_OCOTP_ROOT>;
 				/* For nvmem subnodes */
 				#address-cells = <1>;
 				#size-cells = <1>;
+
+				cpu_speed_grade: speed-grade@10 {
+					reg = <0x10 4>;
+				};
 			};
 
 			anatop: anatop@30360000 {
 				compatible = "fsl,imx8mm-anatop", "syscon", "simple-bus";
 				reg = <0x30360000 0x10000>;
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
