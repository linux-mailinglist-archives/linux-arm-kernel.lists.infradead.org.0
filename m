Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1A61725D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DMsNHcocucaLVV19a4DNu9w7XcWiWAqFARDg9NaFZ0=; b=EJd/QhwnTitSTC
	w1b4G37GHpVPSaDO4KhsVLEEzTbHsii1oUaF0xe9avM+d+Wg0FO/HRj8qI43jpK2fKtD7PHzePtYS
	5u3qi2gTMhWTu1+soV4Sij4MUyEM3LglMaeRgSaBtVIqKXQe3ywWcgLKkROdgX0iIGvSllocLAawp
	a325bd6EYBjODAkInpjVg8suJ7nyDfD/PGZJvLJWIkkE/Mul6rOhpwjyjveWj/THLgaZ/ZyJzvIcj
	VV1JRgBInLVu01twI7hJ++v4mCFLibu5CV+jTIkUCJw2llNYlI10W4FOvLTdvMx0b1Xa7shteGkSr
	skW2gEUPmCR/Au0Fys+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGju-0001ft-41; Wed, 08 May 2019 07:11:42 +0000
Received: from mail-eopbgr00058.outbound.protection.outlook.com ([40.107.0.58]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGjL-0001EK-Au
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:11:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nfTeBk9FUxC/gk265YY3WU8DBOa1AoaHcDep2cUJc8c=;
 b=tgjX5Kj5mgWaqMbNBkbLYLI/RVpcgzaLJAJnogT2pvpIH7bczGHg4PlfUqRsP3hZwuXDehrwEzklTz3zqWKfdXrE6R8FZCvf2N6DhJpqwXkDmhuyT2A63mo2S0LnXXRs7fNzpO6dSHZSUN091hOTKD/3vbxkUUlY5VbCYKk51Lg=
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com (52.134.1.18) by
 VI1PR0402MB3695.eurprd04.prod.outlook.com (52.134.15.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Wed, 8 May 2019 07:10:56 +0000
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::c16b:662d:9299:6be6]) by VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::c16b:662d:9299:6be6%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 07:10:56 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [RESEND PATCH v3 1/2] arm64: dts: imx8mm: Add SAI nodes
Thread-Topic: [RESEND PATCH v3 1/2] arm64: dts: imx8mm: Add SAI nodes
Thread-Index: AQHVBW0tTYITlVfxj0uPbp29iHMGcA==
Date: Wed, 8 May 2019 07:10:55 +0000
Message-ID: <20190508071032.31808-2-daniel.baluta@nxp.com>
References: <20190508071032.31808-1-daniel.baluta@nxp.com>
In-Reply-To: <20190508071032.31808-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0278.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::45) To VI1PR0402MB3357.eurprd04.prod.outlook.com
 (2603:10a6:803:2::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93391a4a-479f-478d-9850-08d6d3845042
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3695; 
x-ms-traffictypediagnostic: VI1PR0402MB3695:
x-microsoft-antispam-prvs: <VI1PR0402MB36951198F3AFB6E23634FB86F9320@VI1PR0402MB3695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(1730700003)(81156014)(14444005)(11346002)(256004)(71190400001)(6916009)(6116002)(3846002)(36756003)(2906002)(25786009)(66066001)(8936002)(44832011)(486006)(186003)(316002)(71200400001)(305945005)(478600001)(7736002)(7416002)(50226002)(2616005)(5660300002)(26005)(476003)(6486002)(5640700003)(2351001)(14454004)(66476007)(66556008)(64756008)(66446008)(2501003)(446003)(6436002)(8676002)(81166006)(53936002)(86362001)(6506007)(386003)(102836004)(52116002)(73956011)(68736007)(6512007)(54906003)(99286004)(66946007)(1076003)(76176011)(4326008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3695;
 H:VI1PR0402MB3357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hEE72NcPGkyO1tT7dCSpUprzbBjRh6a3+lXf1tiHc7+SMB9bmJEKuT69AOJKsUm8eoHVrjX4TryUYeAosVDRNnuKVQ3dYt+T1+UC+DpCJnVdYvfzjwqzXh9abju49vnNyDhTHM8/yscX4K1FfbIOY5th1MfdHNtVxJXnx4s6rNfR8TBpWdYSzx8J17E277eJcW1mtwfb6MvGXvCrwskFJsqYDpl5cv1SQNa33222Xm0PznpChp3dqPcjipQCbOf4z60ygDU1V5tZhAyomzps9V1AoDae6SzWGLpwgBajtywhaaQmU/1UKp60BvSMGm+ADj9Qrbz+jMEkdLHaCEFB8QDj91D9d8dD07qLcTfUdjTGbweF23+XEnT5Eqb5UWJT9C75Yczzc4ST7jraS8aClxhCzlrpaRaI20RnQSBvqko=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93391a4a-479f-478d-9850-08d6d3845042
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 07:10:55.7641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_001107_417827_B6994B76 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.58 listed in list.dnswl.org]
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
