Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250D41F6C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jX7LuIKlTLanVM9/tLxgjcvByyv23W7kB8/ZZ4CgG6s=; b=AGgicWAPhviH+w
	sAbdsilQXYoFvz1aezB/ki9DHoCRV9JIk1sJ+sCTTwyob1vw7Tuo9N0Bvh5wZOAkHcA26Sd5DMbEo
	vNV6zLzFguUwfKuxfs1xaSCl4P0VskJcMgwjqVAOoBaHrzH3x8gfPowA6+Uvrh5gUIhXDzCgV0h13
	0tOg9FtUsaKS0yqAy3C9QuIoQJXpuMmoPbKRU77sMN4lhM6uATv+DUY3vMOjosPN2P51LORqlOJ2R
	SbPCMX5IY7ggvpjepY+umA+13U34OhKIfRTRhHtpfmt+t83blb2XqZ+hJsph+uKXtOrlCOe3hV4Bn
	yMFasKg8wKDWrlXSFtQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQv7S-0005rc-RO; Wed, 15 May 2019 14:42:58 +0000
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQv79-0005cg-EQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:42:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pmDyJ75AAV4D3OqZaHFQQfngnXvaoDBNAJxaccQ1ksE=;
 b=Z64QOZUiqmFHKGK9Ja2GBsvHT8M9X+AHhf/+U3RXtEXF+qxliSpWEJu6X5T8jMneFGfi8lCzwE+y3/uxQFIjDu4dttqBpzckunfiJc8HW07LFb7ls+Gkl7wGCtW+aqBgjTciymFuG+TzxQBzJhwMGGOY/1Z6ssWo08O1hCO4sio=
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com (52.134.1.18) by
 VI1PR0402MB2895.eurprd04.prod.outlook.com (10.175.24.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 14:42:28 +0000
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f]) by VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f%6]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 14:42:28 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCH v3 1/2] arm64: dts: imx8mm: Add SAI nodes
Thread-Topic: [PATCH v3 1/2] arm64: dts: imx8mm: Add SAI nodes
Thread-Index: AQHVCyxrvA2ojkwsRUKL/oaMs8ztbw==
Date: Wed, 15 May 2019 14:42:28 +0000
Message-ID: <20190515144210.25596-2-daniel.baluta@nxp.com>
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
In-Reply-To: <20190515144210.25596-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0094.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::23) To VI1PR0402MB3357.eurprd04.prod.outlook.com
 (2603:10a6:803:2::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 090119d0-9184-4a0d-76b6-08d6d9438dba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2895; 
x-ms-traffictypediagnostic: VI1PR0402MB2895:
x-microsoft-antispam-prvs: <VI1PR0402MB28951A6D87CB676F5975CA44F9090@VI1PR0402MB2895.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(39860400002)(136003)(346002)(189003)(199004)(54906003)(5640700003)(6506007)(76176011)(6916009)(478600001)(6512007)(66446008)(14454004)(99286004)(102836004)(36756003)(52116002)(386003)(73956011)(66946007)(7416002)(3846002)(6116002)(64756008)(66476007)(66556008)(446003)(2616005)(476003)(11346002)(53936002)(316002)(486006)(44832011)(5660300002)(2351001)(71200400001)(71190400001)(1076003)(7736002)(26005)(305945005)(186003)(6486002)(86362001)(2501003)(4326008)(66066001)(25786009)(256004)(14444005)(68736007)(81166006)(8676002)(50226002)(81156014)(1730700003)(6436002)(2906002)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2895;
 H:VI1PR0402MB3357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Yh9rk4JKjk9KLx6cPP0Lm5UQzFdQiBqCvRdGUhXEs08ezzmbQZgcnKEI4NhZBh2L30b0FLUxzHnnflWqjG9liffqzrEuOMLeFtbDjOcNWnJwkFwbsRWJ63dHpGlYtp+C5fcbT5de5uI4On66/Q2V0AENQMYRdHhFK+UqhigtI2D7bb9g7KWqm1/fS/3UPu9SwwxwGc2+wUxtpOOlEuR1X6XhYOJwXiWFjbE0cJWih5ukcNHXUZhmXgQ5OiJIL3dQ6gt3grT8t/kyh52e+dcvEO/v0h+2Uuoler4/QZ1FRqGWzYYknIyjiYoz9BHrH6TEG+KVYitdEhDFPCNFTp6m4XcxhRuojeYisKy/AE2mMat6A35PAFbPVbcYeesuN3FhTHBxvXYH8KN1gHrVU+qeZU1mx/xyPwDshux0evaFGrc=
Content-ID: <9DD38CC770A78C4284E799FF968FF418@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 090119d0-9184-4a0d-76b6-08d6d9438dba
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 14:42:28.6905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_074239_488856_46D85E8E 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MM has 5 SAI instances with the following base
addresses according to RM.

SAI1 base address: 3001_0000h
SAI2 base address: 3002_0000h
SAI3 base address: 3003_0000h
SAI5 base address: 3005_0000h
SAI6 base address: 3006_0000h

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 66 +++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6b407a94c06e..52abe2d03f31 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -201,6 +201,72 @@
 			#size-cells = <1>;
 			ranges;
 
+			sai1: sai@30010000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30010000 0x10000>;
+				interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI1_IPG>,
+					 <&clk IMX8MM_CLK_SAI1_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 0 2 0>, <&sdma2 1 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai2: sai@30020000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30020000 0x10000>;
+				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI2_IPG>,
+					<&clk IMX8MM_CLK_SAI2_ROOT>,
+					<&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 2 2 0>, <&sdma2 3 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai3: sai@30030000 {
+				#sound-dai-cells = <0>;
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30030000 0x10000>;
+				interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI3_IPG>,
+					 <&clk IMX8MM_CLK_SAI3_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 4 2 0>, <&sdma2 5 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai5: sai@30050000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30050000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI5_IPG>,
+					 <&clk IMX8MM_CLK_SAI5_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 8 2 0>, <&sdma2 9 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+			sai6: sai@30060000 {
+				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
+				reg = <0x30060000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SAI6_IPG>,
+					 <&clk IMX8MM_CLK_SAI6_ROOT>,
+					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 10 2 0>, <&sdma2 11 2 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mm-gpio", "fsl,imx35-gpio";
 				reg = <0x30200000 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
