Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA0D10CD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 20:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bu5Ahnw6pE7V6iX8cjKvv9i5EbhJ9CmAJ7FIjXLXoCo=; b=ml0SZhnNbUoDXh
	NNOe1aZrVffWX+aoqDguhTfm+RE/Lmnrr8BNm/sRT94w1HRbHDwR9kRl2uHbpOW+3+tDhwqDbO9C+
	I+iHhcII20SVjTg1V2DARJcuEVCs4oyvGvsVxS1s+eqaBnjMaqInj5niTp/O8Cr4dBAdznXBMyXJU
	PfZfHb92MTFoqplXUueHU6aRtmeO296fMMTeeAhd9YqIPFQkY5rfSZ9nfjZAvP/FmzIdffQuEgCC2
	Fd/+cgiF9uCPhECJj3j8fmFz5mnqgHf/F7VPJnjR1cPZ6/u2n4WezNFjuPgt+7/uInkNLUDFfmdNC
	6dgi4VeWoZ6W75fmroKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuCg-00054g-So; Wed, 01 May 2019 18:43:38 +0000
Received: from mail-eopbgr10084.outbound.protection.outlook.com ([40.107.1.84]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuCZ-00053y-18
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 18:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4zT6JvRGcN/GuzhAFDHvWVWhNaMsUOaqRgvB+eGlh0=;
 b=jWMgFvykJkYYshZeZrG+KE5PNF+mgs9MqIIiskGq4RvissCnaIxSLvhQifg153kfH9Ty5M1M3B2CpUKg2JC+U2mecVPWbZLHLQhFAr7tlst2L4j6Ux3Q5NqvWPRRQX3rvsrpSqvIP9b/hdeEh0H4WBhu9kjistk0g0sPQvBn8RQ=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4093.eurprd04.prod.outlook.com (52.133.12.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 18:43:27 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 18:43:26 +0000
From: Frank Li <frank.li@nxp.com>
To: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V12 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Topic: [PATCH V12 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Index: AQHVAE3DIW7FncE2QkmQlW9ARMporA==
Date: Wed, 1 May 2019 18:43:26 +0000
Message-ID: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0013.namprd05.prod.outlook.com
 (2603:10b6:803:40::26) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 320be896-9935-463e-db0b-08d6ce64e5b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4093; 
x-ms-traffictypediagnostic: VI1PR04MB4093:
x-microsoft-antispam-prvs: <VI1PR04MB40936961CD10433B41FD371E883B0@VI1PR04MB4093.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(199004)(189003)(52116002)(305945005)(7736002)(316002)(66066001)(110136005)(99286004)(386003)(66946007)(66446008)(66476007)(2201001)(66556008)(64756008)(81156014)(50226002)(8936002)(73956011)(36756003)(81166006)(8676002)(71190400001)(6436002)(476003)(4326008)(2616005)(7416002)(26005)(102836004)(256004)(486006)(14454004)(478600001)(25786009)(86362001)(68736007)(6506007)(6116002)(6486002)(2501003)(186003)(5660300002)(3846002)(2906002)(6512007)(71200400001)(53936002)(32563001)(921003)(21314003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4093;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LRH9STg/ZrhYglb/I6Tu+b12heFSEJRLuCl+UVq+lZDIoRTzvNzeNmrYtav4gIufBSMq+HSN3WtKY6NVOwyWW8U/xbYb4umN6Eld+1gbhMyvJMCfBwSLkuyVPa6+YlJKHsIXHSQ8N/ZVUEpPhuQ2qasYpa6hrHFczHJAsoY3qYIeUjglh/TsE37dSCUB/ZDr/GUAquwtyrVEdGA/9879pNLou5H2tziZyCCvV/yppKr/PNT2c/9nZG2d/C0ylnyp7LvqSTkZ9aQHz1j7jKw1oTkDrpk9jG6Xh1rQ//p70VVbNESgKEqMiJxE5QzW5h3/sdFX3FheFNufe8O7weY5Ga37J5JK+5hDjQHsWsm5qCJjF4WB3kJbrLmO3xBy9dJrshoRG4XMbt6Bn+e4wxIBBcDRqZA1BAV7/Kg8z+En+0I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 320be896-9935-463e-db0b-08d6ce64e5b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 18:43:26.8900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_114331_181688_8633BE15 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Frank Li <frank.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added binding doc for imx8qxp ddr performance monitor

Signed-off-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    No change from v10 to v12
    
    Change from v8 to v9
    * use 32bit address width
    
    No change from v4 to v8
    
    Change from v4 to v4
    * remove "standard xxx"
    
    Change from v2 to v3
    * ddr_pmu0 -> ddr-pmu

 .../devicetree/bindings/perf/fsl-imx-ddr.txt       | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
new file mode 100644
index 0000000..9b9cda6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
@@ -0,0 +1,22 @@
+* Freescale(NXP) IMX8 DDR performance monitor
+
+Required properties:
+
+- compatible: should be one of:
+	"fsl,imx8-ddr-pmu"
+	"fsl,imx8m-ddr-pmu"
+
+- reg: physical address and size
+
+- interrupts: single interrupt
+	generated by the control block
+
+Example:
+
+	ddr-pmu@5c020000 {
+		compatible = "fsl,imx8-ddr-pmu";
+		reg = <0x5c020000 0x10000>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
-- 
2.5.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
