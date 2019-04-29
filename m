Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A7AE805
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lPbxcwW3SPvU3/GyEn0CNwwtnKnAHDhk3/AFzMJ+Sag=; b=TeTJSXQFnzk76e
	WOub1FfQkd5/708ZI/gRWsrErYaey4WwrWLperM+gsSfmfHwwksYbPVQeyI7GJr6TrnDM+YetW6SH
	LUVks+eGcXz+8RBPOpToxt1+dTE6kSr2cOJf+H8w7BMFEwvc+gMJoLJUQF3w3X1UVB0Cy+ReSW7UG
	2OmwZKMIz5C3GHhuCbEEJRdjoHPS6cwDIJ3UHABpOQgIeBk1oG8OH6aPVhLlVpYFsDrmCuSgOZkPY
	kx12Er+WJjcv2q9pSldhLtcoWfBCkPQv/xu6rFYenYbxOKW2NbSer2MEcRIBQUIWpbTHQ1Yl3BmnK
	SMzfSUxC/c5XThb5KnwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9OW-0001YM-RQ; Mon, 29 Apr 2019 16:44:44 +0000
Received: from mail-eopbgr10040.outbound.protection.outlook.com ([40.107.1.40]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9OO-0001XU-JO
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AMmmQPuqH/XRAvEAXW/x/sIIOOwlI3/Lupf9OP8IpXc=;
 b=i8nUtuLjQL8S12GXsWmClE4jrq/9bD9fozpS1fWB7IaMDfMH98SxKtAWyUtKtGx7EcvCkB3g3kq8l9Hs0djvasBIitSdPiH1g15gAwT11QKgtNbdhGMdb7Bn2PeHyKwKDVUCpi4kMyRALNYSeE213ZMtzWIySGJvrBpBFYCmm58=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB5791.eurprd04.prod.outlook.com (20.178.127.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 16:44:29 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 16:44:29 +0000
From: Frank Li <frank.li@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Topic: [PATCH V9 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Index: AQHU/qrQR8RpP0mpdUi4M319EAtCOQ==
Date: Mon, 29 Apr 2019 16:44:29 +0000
Message-ID: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR01CA0009.prod.exchangelabs.com (2603:10b6:805:b6::22)
 To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db6d3080-2df7-4cbc-b87c-08d6ccc1f271
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5791; 
x-ms-traffictypediagnostic: VI1PR04MB5791:
x-microsoft-antispam-prvs: <VI1PR04MB57915FACF2CE885CD56B118788390@VI1PR04MB5791.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(396003)(136003)(346002)(199004)(189003)(68736007)(102836004)(7736002)(305945005)(7416002)(2201001)(86362001)(25786009)(4326008)(99286004)(186003)(110136005)(316002)(3846002)(66946007)(66476007)(66556008)(6512007)(6486002)(26005)(6116002)(64756008)(66446008)(73956011)(52116002)(386003)(6506007)(6436002)(2906002)(53936002)(36756003)(2616005)(476003)(97736004)(2501003)(486006)(81156014)(8676002)(50226002)(81166006)(8936002)(71190400001)(5660300002)(71200400001)(478600001)(14454004)(256004)(66066001)(21314003)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5791;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xHeDq/qEMRJxclGrYbo9SzOYRVNm6f6GPpX7d2huIF9tgF3PbR0yOtCbofN7NCSh5SM1Tzpwfv1Igp4zSJdMmF34hRH702BNVzn8arvEjzz4Jfr1sE9JwdPGtJ9AFs4T+f+ilrnj0vhdw5ms34vtay0tbFg3S/BNL7YJXZURn6zNsoShcvYkS0vJv+95MbzHxgCKjPPbMR/VrZph6ect1GyHj6nT4N4/OlT23EvdyvaRYiYXS1wawEm0PeNPAzd5ybgjFptBGD/8vWALP10UdFjnoOoy3gwD1sgLg94NrOGSjJg4VukFolucw6f+JVCU8f6phdvtgbQJXGzFzxkFZHzcvYJt3mcNSc9rK2V1nrlwGB1NAouqpedvEToscMwPoj27VlU+QK40vMv988ro1apK6PfRGZDUvw8fo9eKKc0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db6d3080-2df7-4cbc-b87c-08d6ccc1f271
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 16:44:29.2090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_094436_704685_F52403F9 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.40 listed in list.dnswl.org]
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
Cc: Frank Li <frank.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added binding doc for imx8qxp ddr performance monitor

Signed-off-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
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
