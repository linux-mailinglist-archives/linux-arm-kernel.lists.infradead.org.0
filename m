Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4EF1762D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OHfHPJ8AhvRvePA/y6w5OdDZJoxrwkW6i9znEVKPA9g=; b=tNI3q+EJ2Ao95u
	K3DBic36wxVMK+JnsGjW8wARVqtjkEfMOI7u0SnI0R3vvaF7Tw42bdQXu3UE2IRzaG33/Xv/DYNB6
	Nj11WsDwYRKqPcxodjGKLF0xzdNmCzsNal1ZeFgcRh9z6ix78PdK8teIEfNN/81HofOV4Dy5bGgum
	EJ4okr/z2mysWJFOJMcjxZcYKwsKr7hjMSQN6cn1finAz8pUKhxmb2ps944Tgs4zQM74ZI6UBMN4q
	/IkwRCoxJRZQyJERKfspaCWgkFJAv7m7SyGMhIdSXb2NSymg6Oncy+scnAjPRh0HGnajX+DCfmXuf
	LA/ly7xF61uy9NLJXWLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOK49-0004Mt-Ri; Wed, 08 May 2019 10:44:49 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOK42-0004MD-2U
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:44:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0UxBJYWaxvo9rtknksJ9kzRu1GddNHkW0b798+MGk4Y=;
 b=dsLCj21253DY0oR3BUIVP+mSUmxy1La6Cw1zKyzJ+PGkTkkHn9RBx34sYCaajuDsitQWzeNtQLzJmdUUN7+UYaLl/PLLadGeynnJEE99vMKvx1bqq5MDup3sgEo8SuSGnx1p36cVqwS1q9ywaPeNDglIYJH0F0dgxjLoOkkXlTw=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB6595.eurprd04.prod.outlook.com (20.179.255.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 10:44:39 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:44:39 +0000
From: Wen He <wen.he_1@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [v5] arm64: dts: ls1028a: Add properties for Mali DP500 node
Thread-Topic: [v5] arm64: dts: ls1028a: Add properties for Mali DP500 node
Thread-Index: AQHVBYsJ6isj8SfWxEyYwCBOPeVt9A==
Date: Wed, 8 May 2019 10:44:39 +0000
Message-ID: <20190508104614.42481-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR03CA0063.apcprd03.prod.outlook.com
 (2603:1096:202:17::33) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e24cef5-a368-46f7-0d46-08d6d3a22b99
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6595; 
x-ms-traffictypediagnostic: AM0PR04MB6595:
x-microsoft-antispam-prvs: <AM0PR04MB659593C91C8DD2998D933973E2320@AM0PR04MB6595.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(346002)(366004)(376002)(189003)(199004)(110136005)(54906003)(186003)(4326008)(50226002)(6506007)(2201001)(102836004)(26005)(86362001)(386003)(52116002)(99286004)(36756003)(25786009)(14454004)(305945005)(81156014)(8676002)(8936002)(81166006)(7736002)(64756008)(6436002)(6512007)(2906002)(6486002)(71200400001)(68736007)(476003)(2616005)(5660300002)(71190400001)(316002)(478600001)(2501003)(66476007)(53936002)(66066001)(66946007)(73956011)(1076003)(256004)(486006)(66556008)(66446008)(3846002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6595;
 H:AM0PR04MB4865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8WR7yrp4kv0kG3IGk9dZxCWUTWdnfMzNZe5RqzAsap1wgREgAA+LAq6tvIUQInBY9K1wvgB7BbVmpISD6SDbzlAsz7D3uptHqYx2hxD6qeVkaWWQLQ3UEFDdLTMiPyfSoMwzd89Ctw/HxZ78FwhZY2Z20cQzg/ytBhO0qdfLWubllF0TgFKtEdtWyaDp/NJn6F/4tg1nFWYAWe97vcga5LgaxX2eR6eRs8zrLNbIia/xerjSpfWxLkH+1dCIJeUcz5s2x4pfq/QI1EYa0YL0X7c9FZ/az3OMUrXGqPELbMCmJTbbpM32PSJ7Pt1clCfekH6+9eCADsKZ9JAUQMVrk92pyuzZz6vTfij52wYNcv+g9DwpdNvX07uIqbE96CFnG7mewvcxrlpcgN0+dXRRP+4cDpKYDuVaFCOgLFbsgNw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e24cef5-a368-46f7-0d46-08d6d3a22b99
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:44:39.1995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_034442_110900_A87C77B2 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wen He <wen.he_1@nxp.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LS1028A has a LCD controller and Displayport interface that
connects to eDP and Displayport connectors on the LS1028A board.

This patch enables the LCD controller driver on the LS1028A.

Signed-off-by: Alison Wang <alison.wang@nxp.com>
Signed-off-by: Wen He <wen.he_1@nxp.com>
Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
change in v5:
        - Reviewed by from Rob, thanks.

 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index b04581249f0b..c0a13f9e5b95 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -70,6 +70,27 @@
 		clock-output-names = "sysclk";
 	};
 
+	dpclk: clock-dp {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+		clock-output-names= "dpclk";
+	};
+
+	aclk: clock-axi {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <650000000>;
+		clock-output-names= "aclk";
+	};
+
+	pclk: clock-apb {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <650000000>;
+		clock-output-names= "pclk";
+	};
+
 	reboot {
 		compatible ="syscon-reboot";
 		regmap = <&dcfg>;
@@ -433,4 +454,21 @@
 			};
 		};
 	};
+
+	malidp0: display@f080000 {
+		compatible = "arm,mali-dp500";
+		reg = <0x0 0xf080000 0x0 0x10000>;
+		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
+			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "DE", "SE";
+		clocks = <&dpclk>, <&aclk>, <&aclk>, <&pclk>;
+		clock-names = "pxlclk", "mclk", "aclk", "pclk";
+		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
+
+		port {
+			dp0_out: endpoint {
+
+			};
+		};
+	};
 };
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
