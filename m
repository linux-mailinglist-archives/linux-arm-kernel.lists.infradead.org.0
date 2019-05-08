Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0BB16F50
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkNRXmtf9SOZvhEPLmfkn1Zc42GnecHdimmOKjqd16g=; b=VbhF8Yo3Ny7kL6
	ahKdnfDRp+qKwOM70kh4lyo73MwoepF9KZHlsoaugNldVJE0dyMHdtLhcPePjSDG2r7iPCMur/WwT
	jVuQSBmOurbnoXGCJg7MZX89BaTe5Ox30sxCFaAXAU0UXqbfxbvyUpd/IsLOO7Iuwx200wo57QtK+
	pJPBtx5d9gjBR7CaDg+6w6pXIyylphVgkgkSr1TcKS58HUgu713M+SqYv6MJ0QXkzGTPv+ralkZGO
	z+1q2DFs/U/poa3tLeUi/PNqLC+X16w/D1/Q6Z5zYR6IPp8jYh4Z5wftLV3ZNWAecQzVtdrmUCzWy
	LfK7ONWubGagLKDmbxaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOClJ-0002Vi-5c; Wed, 08 May 2019 02:56:53 +0000
Received: from mail-eopbgr10051.outbound.protection.outlook.com ([40.107.1.51]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCkr-0001qg-1s
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:56:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aOquojHHTCk6l6ZN9FHEMrq4J9v3le8ls5ELNtcdiI0=;
 b=h3ZDAPmRfHyc7jou+GE2+H0JPGs+E/AHU1A676o1ybZOu3n/SFSIs09HmD+D2jPK3Xb4A3A6kTSUM0QfEk03Wi9trUGpNO/giV9r6JXBhV7ZGGU3cVgjEwbrUjtUx+W7QT2VYreDKp1V+d80kIYC+RecQugEdh/HC3ST7U11gsw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5153.eurprd04.prod.outlook.com (20.177.40.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Wed, 8 May 2019 02:56:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 02:56:18 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH V2 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Topic: [PATCH V2 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Index: AQHVBUmbOkjPXU7GU0isU+fOE2filQ==
Date: Wed, 8 May 2019 02:56:17 +0000
Message-ID: <20190508030927.16668-4-peng.fan@nxp.com>
References: <20190508030927.16668-1-peng.fan@nxp.com>
In-Reply-To: <20190508030927.16668-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0P153CA0028.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 594b9c52-278f-4e3e-1eea-08d6d360bdbf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5153; 
x-ms-traffictypediagnostic: AM0PR04MB5153:
x-microsoft-antispam-prvs: <AM0PR04MB5153E2D6E5D24D5D534C447F88320@AM0PR04MB5153.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:243;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39860400002)(189003)(199004)(26005)(1076003)(68736007)(66446008)(4744005)(14454004)(2501003)(66946007)(186003)(52116002)(305945005)(102836004)(7736002)(316002)(66556008)(64756008)(66476007)(53936002)(73956011)(25786009)(7416002)(50226002)(8936002)(5660300002)(4326008)(71190400001)(71200400001)(6512007)(478600001)(54906003)(110136005)(6116002)(76176011)(3846002)(2906002)(36756003)(81156014)(81166006)(8676002)(86362001)(2201001)(66066001)(6436002)(6486002)(446003)(11346002)(2616005)(256004)(6506007)(486006)(44832011)(386003)(99286004)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5153;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bvGveElthnHN9HHmsH74YFYSwcmLooGqJYvFvRrsqApXMUtFDkXjk0sCbOqt5dLwchwq1l2FXskn34q6EYdusbU9St5wCSR3ksQsbqO4+cbJLTJRezanvTPHHwSsMOb372AHiKfgNdJ8rEFm4rxlOIXzWfq1kyxBV/QXnrF3E05sPxl0uHV6QcJAfsEbRpW0fReh8KebY53hrFzFVHj/4wpU6LHjUii7zkKPH8+BbeeSkOp98RXUFOetPKG5LtbCYMK//9L7sozAPB4INuRaEzcUhwWzVmGEPstUsCjP6YH4p/utENfpHAxGv3SrSYp21uUeMqzAdZtSBPJcrVHnA/t7trAkTIT3595oX2AWbhGKg7pmAumBC+42s7B/Uf7yICqUHBf1eARMthfgKDBlQB6arn+XAnbdkKv++z1p8qg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 594b9c52-278f-4e3e-1eea-08d6d360bdbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 02:56:17.8561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_195626_202450_140C4648 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.51 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX8QXP ocotp node

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Aisheng Dong <aisheng.dong@nxp.com>
Cc: Anson Huang <anson.huang@nxp.com>
Cc: Daniel Baluta <daniel.baluta@nxp.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 move address/size-cells below compatible, add "scu"

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2a48ae..725d341ee160 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -141,6 +141,12 @@
 			compatible = "fsl,imx8qxp-iomuxc";
 		};
 
+		ocotp: imx8qx-ocotp {
+			compatible = "fsl,imx8qxp-scu-ocotp";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		pd: imx8qx-pd {
 			compatible = "fsl,imx8qxp-scu-pd";
 			#power-domain-cells = <1>;
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
