Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F341651B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXRW3kdkfXx2IyWCmqRvTmFB4GB1MYgrWN1o5rRvj6I=; b=fd7FW/Zgl/j/Eu
	t2HA+vcsClUH2op0ishxNwtldzBbPUpqnLe47psb2uFSfxgnCo94tjONj73WmLwNNP5skwvjZO9dP
	76BigqtDeq/ra91GzKBU4XRHWNcydsC5d2dzINITjren1aCTV0bRkKOFm0TYzqqKCVCGW1VDgSZbT
	ufSWpmFmw+ZubH5F/NRw4v2iSHMPPsvT+6PeTg3zmMeK0OJq/GKLsMqHQEaNTckUWUMSOzpVfdyvD
	iqMaKv0SpVIZDKJS3RmWrOBLPLJOF1Heskkv/WrIq1db9fPo69GPImhFKiXeZf4WppoLQHq3A24Qe
	cKVkSVQ2kG0Pb2FBWzTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Wx-0003LX-PM; Tue, 07 May 2019 13:53:15 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0WL-0002WM-PU
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w1ZATx2rfyXoAxTMOa/JCwAno/iDG00deWA95V5nP9Q=;
 b=pi0pnQxmnDJcCMyhd2jftYdVAHhZDdH9jM1yuCwf8GF+L0hGCLlUuXdj6vhIiMpwYVbhjhyRHiRePAwMwXs5zFStcmgD6dW7gXvz3af+jB7+L7gIbCik860Qo3a3864DGlXEiQH9Fz5OZqnI/JBWgwMPggoTAQVcrT3qd5op06U=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6548.eurprd04.prod.outlook.com (20.179.254.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 13:52:26 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 13:52:26 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 4/4] arm64: dts: imx8mq: Add cpu speed grading and all OPPs
Thread-Topic: [PATCH v3 4/4] arm64: dts: imx8mq: Add cpu speed grading and all
 OPPs
Thread-Index: AQHVBNwadKvxDTstDUy8AWrggXxVJA==
Date: Tue, 7 May 2019 13:52:26 +0000
Message-ID: <7effdee3820aa0408ba0c8a5267b5b9b4cee2fe7.1557236799.git.leonard.crestez@nxp.com>
References: <cover.1557236799.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1557236799.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0202CA0006.eurprd02.prod.outlook.com
 (2603:10a6:803:14::19) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b89cb783-e50c-43f3-aeb7-08d6d2f33ced
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6548; 
x-ms-traffictypediagnostic: AM0PR04MB6548:
x-microsoft-antispam-prvs: <AM0PR04MB65488CF11BA25ED3D0F09658EE310@AM0PR04MB6548.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(346002)(376002)(39860400002)(189003)(199004)(8676002)(81156014)(81166006)(486006)(11346002)(86362001)(68736007)(6512007)(110136005)(53936002)(54906003)(71190400001)(4326008)(118296001)(102836004)(66066001)(76176011)(8936002)(36756003)(52116002)(6506007)(50226002)(386003)(446003)(14444005)(256004)(14454004)(476003)(478600001)(25786009)(6116002)(5660300002)(2616005)(3846002)(44832011)(305945005)(66946007)(6486002)(73956011)(66476007)(71200400001)(2906002)(99286004)(6436002)(26005)(186003)(316002)(64756008)(66556008)(66446008)(7736002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6548;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: euNCGm9NpTZeFCt5BohzFRQKKKJg3kcXkGyszfDgbnRjaOFDCzlbYKkuYcRjFoTwR9uka7MDpb2XzEPotH3sM12mo08vWwfXBEDHgkJhZYbqX/tkTkEIbuYralrMOfsV2mgWOdaoVCtHJsBWy0kV4INEVqUEQ+MnOaQVWdV1Vr+3KHFjgsAgz7Dn67Dg1ziau2JdUchO64tnfzCSHi/keOEVkivKpTTJ8O0Yr3C3sCKFDEKs8swA5lNEuCwiO3X3qlRuFFrOkM6yozvBerapqj5zuB/0MQBdTNIBjJCvGKFgz2RndoRQv4TEWfGviAadT4QFn7pWe1Lzc7+bHfwWsFwrg3SuiWT4R6qfEhOSxcZixfraqBlCbUGrtoSXavZRoivCMjm1fjXiw2IHEoGUm/P0NEcJEq9NeB1CCGhaqT4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b89cb783-e50c-43f3-aeb7-08d6d2f33ced
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 13:52:26.7405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065238_443438_955575C0 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "Rafael
 J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
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
