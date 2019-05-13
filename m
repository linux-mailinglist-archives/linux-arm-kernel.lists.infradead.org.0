Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24361B475
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlUs4Tk2lJx1s6zxNBed2vMESKySLHDKYQKuNeod8pg=; b=Dj2y/PXSDuUn3B
	o+oQHMrekfIZdU9+HUtn/HYzLlDNtEGQYuOc0BhRSD6kkbNg5wHgWP3jEoOxwgnE6ZMrjTOEyZIIO
	/xXhQQn7zn1ZY1WDU/UsBZNaNF0HycTDVwb0cdHWmapsWQDs7GTnrdwqLvkFae9SSMNAf0mktSACf
	psLoaP8DQLNBez53fpzie3HVzzwJ1P8jUIz7wDVSy0eLFCujPWGMm1MCwJkB8iItuh0F6RjucIMkr
	/HV9T/z0JcX4B+gqRl7l26ijpFCJPlD3VqbaBVbpVo1MTy2+ZYKgJO+DLDJvWnXZUQ3moH0QLK/8n
	aF6wm9+KdkasJclZ+Kxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8il-0003e8-Iv; Mon, 13 May 2019 11:02:15 +0000
Received: from mail-eopbgr130051.outbound.protection.outlook.com
 ([40.107.13.51] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8iI-0003FA-6I
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:01:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1BmecdrXv1MoezlT25LTE5+VLmEkv7wtV5DH2U8rZI=;
 b=YZSQY/2OIv0gntqLY5wY0o1fV3RXFtzFdZhwOEOukE7L1/hjC6wEsUjhfNykCPVNhsSC4tpOts4QhMYaDdd1LrEoXPT5m4Xho1OiFeLUcesjiOannMzjIa+D8VGfTslE3ZGnuQI/fVqs29LxV+PdgK3B5ISReVhI1pmOTFhrWos=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4706.eurprd04.prod.outlook.com (20.177.40.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 11:01:43 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:01:43 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 4/5] arm64: dts: imx8mq: Add cpu speed grading and all OPPs
Thread-Topic: [PATCH v4 4/5] arm64: dts: imx8mq: Add cpu speed grading and all
 OPPs
Thread-Index: AQHVCXs/Sykf0GkfNUmaD90+g2Ayew==
Date: Mon, 13 May 2019 11:01:43 +0000
Message-ID: <d88a9088074e521aa0ee57a07e2b99f5c7cb4f06.1557742902.git.leonard.crestez@nxp.com>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1557742902.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR04CA0134.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::32) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 894ff19a-35da-4e51-bb2a-08d6d79261f1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4706; 
x-ms-traffictypediagnostic: AM0PR04MB4706:
x-microsoft-antispam-prvs: <AM0PR04MB47069EF9E0AF800FD7C824A8EE0F0@AM0PR04MB4706.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(39860400002)(366004)(396003)(376002)(199004)(189003)(2616005)(52116002)(76176011)(476003)(6436002)(446003)(11346002)(25786009)(68736007)(26005)(316002)(71190400001)(71200400001)(386003)(6506007)(4326008)(14444005)(7736002)(256004)(486006)(66476007)(66556008)(6116002)(73956011)(44832011)(66446008)(3846002)(64756008)(86362001)(186003)(102836004)(66946007)(99286004)(118296001)(36756003)(81166006)(81156014)(478600001)(5660300002)(305945005)(53936002)(2906002)(8676002)(66066001)(7416002)(14454004)(54906003)(6512007)(8936002)(50226002)(6486002)(110136005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4706;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LnGvSUdkTOrHSXuScbGUs7KbrCv3Ie3wv04WLFoVQSCdx2l5wvYtiE8jgVZA7uPMWmlE+ZEV/nJFQTs+3kB7fOwZ4e1BAy2pD0RuXY2Xcfi9fjxHF3brb/J2StvQn+wSkYOp7jzdx41Eh+/xSIaHUBrsasB9zKbU+Je8IgYxPc56arv/nZLF2cykdUX0+RFDlIoXueKpszfr1v/G5bv8nvzzMuN9RWrFDAkmjf0azP14ppgrP/rDz0BwazqMHvlBK38f5b7XAGOsv71Cr+aSjMlAti2eNbG8PfpN8n5imzb2k2EFI0FXJXX8r0XibNp9Fw4DkukM+B5f25WrDjbLUDYsYaT0uGYCfb7H4kXNO79hsoFJkPYJpZUPubh1h+6riP/A4mMJtvA4DQ8KNTz6V27WqpPplyALWnJY9I/fVsk=
Content-ID: <5BB1732BC0BBA841A0B5113F9899AF5D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 894ff19a-35da-4e51-bb2a-08d6d79261f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:01:43.0801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4706
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_040146_324495_1D638B98 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nvmem-cells reference to cpu and fill the OPP table with all known
OPPs.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 26 ++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6d635ba0904c..729376919d08 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -93,10 +93,12 @@
 			clocks = <&clk IMX8MQ_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			#cooling-cells = <2>;
+			nvmem-cells = <&cpu_speed_grade>;
+			nvmem-cell-names = "speed_grade";
 		};
 
 		A53_1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
@@ -143,18 +145,36 @@
 		opp-shared;
 
 		opp-800000000 {
 			opp-hz = /bits/ 64 <800000000>;
 			opp-microvolt = <900000>;
+			/* Industrial only */
+			opp-supported-hw = <0xf>, <0x4>;
+			clock-latency-ns = <150000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <900000>;
+			/* Consumer only */
+			opp-supported-hw = <0xe>, <0x3>;
 			clock-latency-ns = <150000>;
 		};
 
 		opp-1300000000 {
 			opp-hz = /bits/ 64 <1300000000>;
 			opp-microvolt = <1000000>;
+			opp-supported-hw = <0xc>, <0x7>;
+			clock-latency-ns = <150000>;
+		};
+
+		opp-1500000000 {
+			opp-hz = /bits/ 64 <1500000000>;
+			opp-microvolt = <1000000>;
+			/* Consumer only but rely on speed grading */
+			opp-supported-hw = <0x8>, <0x7>;
 			clock-latency-ns = <150000>;
-			opp-suspend;
 		};
 	};
 
 	pmu {
 		compatible = "arm,cortex-a53-pmu";
@@ -413,10 +433,14 @@
 				compatible = "fsl,imx8mq-ocotp", "syscon";
 				reg = <0x30350000 0x10000>;
 				clocks = <&clk IMX8MQ_CLK_OCOTP_ROOT>;
 				#address-cells = <1>;
 				#size-cells = <1>;
+
+				cpu_speed_grade: speed-grade@10 {
+					reg = <0x10 4>;
+				};
 			};
 
 			anatop: syscon@30360000 {
 				compatible = "fsl,imx8mq-anatop", "syscon";
 				reg = <0x30360000 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
