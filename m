Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1CF109E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K/kVIbQtDO7yOpBq0Lf5BMHTnuCbwPneKWwRgNyWGAI=; b=IDAVNqbJdHVgYz
	oczY+pTDGiH1WNQFrLmwOiVjWVVE4sINIfXU3wQbnhKz6MElardavcTjNUoy/0Dp5GrKEBUzhKZj9
	/5MCekkgBHTbGm1SxnDbur9eT1XICTxmkqNy5Kswfrpj8PNH7ZlKYvSajnXPk+H3U/SJjyHpesg3i
	wZFpuGhNtAQj2vSOEb+GE8yjKQtuwNnzwNao391XhZZmrILZWmpXomMvtMNu9RckL5Wz/DFMghagR
	ima9zzuIT05w9C6L4Ssjq1n/9J/LC/WBKfJprAzcYE8DahEAyJv1e1z5rBHzr8r9tDpkZIqVEO7vy
	tC0ycMWi+dbtbfePfenA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLr2m-0008VA-MT; Wed, 01 May 2019 15:21:12 +0000
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLr2e-0008UJ-DT
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gx/882Az6aRnMGqqaQ3ZQPCLNARC+6uEHbFV2GAIBU=;
 b=P0AedrMLoNzF+9yrwLBekdjfgeJRHuGpPXOMLFCkeFj9juqLKM3Vy6I5kfXohGIyTTPOKa31GnemjFsFOLkfWs+kVXQEylqdt2No/YpGGvf8V5sq3IzxRXgJd9YihTJB5uCGNcN6izASf4pLR1jOgRJVwgyPJgP/RJuIh9FCHx8=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 1 May 2019 15:20:57 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 15:20:57 +0000
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
Subject: [PATCH V11 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Topic: [PATCH V11 1/4] dt-bindings: perf: imx8-ddr: add imx8qxp ddr
 performance monitor
Thread-Index: AQHVADF53wxei3krkkuyN9Gkz8qGhQ==
Date: Wed, 1 May 2019 15:20:57 +0000
Message-ID: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0010.namprd05.prod.outlook.com
 (2603:10b6:803:40::23) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0a6d85d-a5a6-49c3-2d78-08d6ce489c06
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4910; 
x-ms-traffictypediagnostic: VI1PR04MB4910:
x-microsoft-antispam-prvs: <VI1PR04MB49103999936116EBB3BC66F2883B0@VI1PR04MB4910.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(396003)(39860400002)(366004)(189003)(199004)(52116002)(6512007)(68736007)(486006)(99286004)(2201001)(66946007)(6436002)(36756003)(476003)(2616005)(316002)(6116002)(7736002)(4326008)(186003)(26005)(6506007)(386003)(53936002)(73956011)(102836004)(110136005)(14454004)(66476007)(305945005)(64756008)(8676002)(66556008)(86362001)(71200400001)(71190400001)(8936002)(2906002)(256004)(2501003)(81156014)(81166006)(66066001)(3846002)(478600001)(50226002)(7416002)(25786009)(6486002)(5660300002)(66446008)(921003)(21314003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4910;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LtGrjzgwcuCcUe5uVRxj9XfPNxOknW5JuNvY7KH5+8gj8HwZUl0Akh1G96jojF7Q/lbRk4H5RTbnlqUT+cPOvS0EKjjqovBbLXERR1kt7XyXCQk0c2o8ITLZFBum+wBbiT2aeCjAu8gVc7DE9I8KCnmRwqdiWiiy6V8tVLkDnuk2hXQdF30zC1dQVM3CyZpPRaAy3rPbcW/B++hK7xG3VcjDuR/cqs2KtmDp1od5I1qwdNYOk8xSlYT9tAH5HvFwseqYZ/4XbTE2ac6CAUh7Dr1ICZJFHeHM+q+vijTYrJO1si7pR2jLFLg8ipPjU8MEOrJNPmsOTx6IHyL4XiO20LPT5iThDWKnejynl6Y7t4s3/l7THuH/QGex4/gcgU4p2fm9vqhn2u/keCGAmhEw9Cd/mO+dQc0/oAufltM4ywA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a6d85d-a5a6-49c3-2d78-08d6ce489c06
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:20:57.4054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4910
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_082104_555945_CCEA7262 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.62 listed in list.dnswl.org]
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
    No change from v10 to v11
    
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
