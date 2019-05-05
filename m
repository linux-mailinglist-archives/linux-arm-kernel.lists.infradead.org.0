Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F6F13FBE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 15:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2neye1Ma6Qp1HLJCP/EAGOEWI199ru27Rcg6PZw+Ms0=; b=GU8rxUFQparvTi
	SrJXM7khFmnNNO+HQo5FPmqsaf60zaT3UMe7NGoIiV+n7jyDbjL4nBNUCG952/3pUbtaqbCtQk608
	P5qUZh3ZfHPGejesRYjDbZ4LLisTBY9M9Gxgy2PaUlaaaGEDY669SIALXYoc5qKsTVyMMXAQhdxBp
	WysG3BAiYuXQmvLrLGrMAoPj9kR7SnMJAEWtOJJ2dbBxfkRI3vY9i/uyKY9iC3XwURPTjpXLb6Mvh
	KIOuxYpXf7jHVL2PGU1N+4oEjTfsbBkjkX9JFDMMZeohd2/zePBGOXz/Rxpy+3UpDYiavL55ob2T2
	UJwREY2aqf6S3xhhAoxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNHCP-0008Aq-IL; Sun, 05 May 2019 13:29:01 +0000
Received: from mail-eopbgr60044.outbound.protection.outlook.com ([40.107.6.44]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNHBv-0007Y2-I4
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 13:28:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J0sRY4MRlfUGqyv1fW60W7NMUpX7Lruwrq8nEp7FiPk=;
 b=gUeEUN7Mx03i3d75huV5hu5ZOOrTe2Fgnjt30vscjwsMSLi758kCP19YWnh0NLJ+lK56ENRUfIf6+5H1tDtp3GV3Y0jzhZP9D9lVZ200+HlVSAxjA/T/VFFLLbRifC82bxEj3+645XfQCrnhK3vZ2HRnruXKFHJV5kJS8ppZiFg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4259.eurprd04.prod.outlook.com (52.134.126.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 13:28:29 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 13:28:29 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>
Subject: [PATCH 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Topic: [PATCH 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Index: AQHVA0ZtsxbN8eaaUUa3sSDIde4/ig==
Date: Sun, 5 May 2019 13:28:29 +0000
Message-ID: <20190505134130.28071-4-peng.fan@nxp.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
In-Reply-To: <20190505134130.28071-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR03CA0099.apcprd03.prod.outlook.com
 (2603:1096:203:b0::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7265ab6c-b5f3-4d7d-518d-08d6d15d8fb5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4259; 
x-ms-traffictypediagnostic: AM0PR04MB4259:
x-microsoft-antispam-prvs: <AM0PR04MB4259A9169BD637AC21C00A7388370@AM0PR04MB4259.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:243;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(136003)(366004)(346002)(189003)(199004)(486006)(54906003)(110136005)(68736007)(446003)(2906002)(11346002)(476003)(2616005)(8936002)(8676002)(66066001)(81166006)(7416002)(7736002)(305945005)(44832011)(53936002)(36756003)(50226002)(4326008)(25786009)(86362001)(2201001)(1076003)(4744005)(5660300002)(81156014)(52116002)(99286004)(76176011)(102836004)(316002)(6506007)(3846002)(6116002)(386003)(478600001)(256004)(6512007)(71200400001)(14454004)(6486002)(6436002)(2501003)(66946007)(73956011)(186003)(71190400001)(66446008)(26005)(66476007)(66556008)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4259;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hGc3i8tyOAeLDi8SoPZmw0O1AtRwwQ9z+26S+2ecni9jm5zYKQS9n9kOzfrq9tap3MOV376IOSxQub3VfyQ/dkkMPoDW0RimlhoPtWrNAMQ4HpSeQhQGISCFIgBhd73upBX4uFjgnhmM1TXHqu+FqfS/2kDoJFZoz/EDcU+R6PFpk7eroHYIpR9lxym9xg3bSZAE+xJfRVzjaD5xu+3yOaE0/N3qGlgT10gp+Lsb9uzzxT63FzkTHkd96VVoRgfUKlRRofNz7vLszbIYjZZbQ1kviko2HrPycav1Zz8eBdVVtph9L2saV8YggOowrt8An44PjBZvM5gnAyDAjtSbjYaFBoR2OuJ87uN5hniRb3XsK4avKqRFffrgKb14UacQUmZrLD9gaj1cVeAjbA0+MCaFUR3fI7zhB6co0pKq6TA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7265ab6c-b5f3-4d7d-518d-08d6d15d8fb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 13:28:29.7949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_062832_110095_46D40F3B 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX8QXP ocotp node

Signed-off-by: Peng Fan <peng.fan@nxp.com>
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
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2a48ae..f29998d7274a 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -141,6 +141,12 @@
 			compatible = "fsl,imx8qxp-iomuxc";
 		};
 
+		ocotp: imx8qx-ocotp {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "fsl,imx8qxp-ocotp";
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
