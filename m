Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55292B439
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMWcVv8tICjC6N5Azcko8KKubOZUzw7eEe9SX+1VG9I=; b=t3xLt1WvcyDu7j
	+1AXslNCmGQ35pnPxrLDrxqMnywZxwQzr4PGLbQ/knP4NvKycDiHC9eEYksGY3zS5riKDAvEER6jo
	ss0FyWRvzSLrfeskGECCUahlmWn+Pf/zylM2aj1d/81SU7iPqYks9MnGcNzk5tSVRLuVZe7azi2p9
	l4lygSs5+KuJD383jxEpi/O5E77zOAS8v4Qzipdbw83UHWh8+qwy6NP7WUNTdwT1qcFZsZCSGa8wC
	9cXrr/sFH++lXd1+D85r+RYREhZhRB0OAqUFSoxclYsiHfY69nJRkvgcru685rA+7PEfCuPthlNuc
	JnpMPd6giYq0I9SYVO7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVENL-0006gF-Tn; Mon, 27 May 2019 12:05:11 +0000
Received: from mail-eopbgr140059.outbound.protection.outlook.com
 ([40.107.14.59] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEMf-0005vw-4U
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z1tNCt1Zo2Elml1aZsL4ncYgBz1AR7VKcCef9PzKego=;
 b=NFE0jV0iek+BH9nFkKcdxorwLOLToTJUJmMOTdntx5HlR48HxvWpPVf5tptACxEXGqvnwD8Xh25AvUzmWe3v6mV+0xZ5laeWvRw2SDsSljuWsPxcrZ5YFrq7bc6/T1ZZBUj3hWR4g/27YtouCLaNYInnYUGyMt7plfrge/L6PjE=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB6421.eurprd04.prod.outlook.com (20.179.244.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Mon, 27 May 2019 12:04:26 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21%4]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 12:04:26 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH 3/3] arm64: dts: frwy-ls1046a: add support for micron nor flash
Thread-Topic: [PATCH 3/3] arm64: dts: frwy-ls1046a: add support for micron nor
 flash
Thread-Index: AQHVFIRU1CGDaCeXeUuac6cU0kHN7Q==
Date: Mon, 27 May 2019 12:04:25 +0000
Message-ID: <20190527120619.30546-4-pramod.kumar_1@nxp.com>
References: <20190527120619.30546-1-pramod.kumar_1@nxp.com>
In-Reply-To: <20190527120619.30546-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: BMXPR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::26) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2edb073f-3d3d-45df-f1de-08d6e29b7689
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6421; 
x-ms-traffictypediagnostic: AM6PR04MB6421:
x-microsoft-antispam-prvs: <AM6PR04MB64212457B50DD286700E32DAF61D0@AM6PR04MB6421.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(396003)(39860400002)(366004)(189003)(199004)(6636002)(14444005)(4326008)(6486002)(256004)(102836004)(99286004)(3846002)(6436002)(8676002)(478600001)(71200400001)(71190400001)(53936002)(305945005)(2501003)(1076003)(2201001)(54906003)(6116002)(4744005)(8936002)(110136005)(5660300002)(36756003)(14454004)(66446008)(73956011)(186003)(52116002)(86362001)(7736002)(26005)(486006)(2616005)(386003)(446003)(11346002)(81156014)(81166006)(6506007)(476003)(316002)(76176011)(25786009)(6512007)(2906002)(66946007)(66476007)(66556008)(64756008)(66066001)(50226002)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6421;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h7flMk9AgNPuxRX3SquA7R2CjT33Eq94p3y0+eXN999ASa5ndWs96Japh6y2PDkZieTyn6+rZJ3HRJfZ36ZwsxyoV/+RZOS4syolxKTEKMhT+3eSCPgc66NxWKv2E12Z2nwhf3Z/ZU76ItDkaNGoC241USmCVoAljWGQQpe8Y88HbO+YbARawHYsKwQOwNZ+QcbgYFjGssW5EybeI6BOzs19QVz5hmidgQu2idsMtlHGFjJc5p7oM7qvExz3Y7QCYu9Y213xPqtC0v772UEXK7b98euMHLiot21gg6W9Wx/F1hdOsdtQ8Mqel+zUCgFEnhbAxcQ73fXpmdsyluva1OBZ6kTtaPKXJZJzp/sD5ekGCNqLzDzM3FjMBG/GxS6LTN6DDtuzsjWtr7KOZ9B9jVcPJwa+HsDQQcQEusYbV7k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2edb073f-3d3d-45df-f1de-08d6e29b7689
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 12:04:25.9911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pramod.kumar_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6421
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050429_513524_F31481E9 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ashish Kumar <ashish.kumar@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add micron nor flash support for ls1046a frwy board.

Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
---
 .../boot/dts/freescale/fsl-ls1046a-frwy.dts    | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
index cda49988d8b8..0f626c986a9a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
@@ -2,7 +2,7 @@
 /*
  * Device Tree Include file for Freescale Layerscape-1046A family SoC.
  *
- * Copyright 2019 NXP.
+ * Copyright 2019 NXP
  *
  */
 
@@ -113,6 +113,22 @@
 
 };
 
+&qspi {
+	num-cs = <1>;
+	bus-num = <0>;
+	status = "okay";
+
+	qflash0: flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+	};
+};
+
 #include "fsl-ls1046-post.dtsi"
 
 &fman0 {
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
