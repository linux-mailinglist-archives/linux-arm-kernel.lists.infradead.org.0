Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770F519B35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zejuNMVCPhiA+JM6bzEi1YwArLQ9/pW/rcgKdrz78ao=; b=rbludQehwIvs0v
	fyUCDtI9XU2NvY5w8CP8Og2WpNTgGAbfRmViT6NF6QULCW59xAdNqhE5x+YYM/INKIM/rCXCUo9e5
	NwHn6VLeZJMZffFQG5szgwbfo9crCPfbQJqjrCkPZg8kTQYEsdbvReA3lqtKxA7yutwBwN/NcuF9q
	tHhrOlgoLgQ2mwubDCYqg7IjcszNudWG0gyHlH8HxvI90AE0ofQCxC6S6kZKcEj9edLHNhWqir6uq
	5mAuQCsDzWOy1Ow1hZxwFess79WbJI1AwM9+2eNz2CNfJfZuiD15iMSicfRFnEr9TRRARnzUxHTHU
	K1LvIyw5gYUZMxjTbXig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2Z3-0006Zm-I9; Fri, 10 May 2019 10:15:41 +0000
Received: from mail-he1eur02on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::620]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2YM-0003wz-CJ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4v5vFTsv76yKNg5iU1sz3pESLU+/PFlW8gwi43yR6ZI=;
 b=kFj3lEtIlmyz/BdJ5Sdc5N3wUI81frp9JZYeuz6SKBCzmwCbVrBjj6r4SePx5tMWOoUxNb51CJ4nlN1uTpDeL58tt0o1wFR0AZVPEiGe6Vpxl8fWYB6/02m2K22j43eAlPePyH+eQi5L3yfGhIMsqWok7dE3Y8z5fMeGkMRiCXA=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB5661.eurprd04.prod.outlook.com (20.178.126.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Fri, 10 May 2019 10:14:31 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 10:14:31 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>
Subject: [PATCH v1 6/6] ARM: dts: imx7ulp: add edma device node
Thread-Topic: [PATCH v1 6/6] ARM: dts: imx7ulp: add edma device node
Thread-Index: AQHVBxkoZ1iKNPhzy0mgKg/A3CKtDw==
Date: Fri, 10 May 2019 10:14:31 +0000
Message-ID: <1557512248-8440-7-git-send-email-yibin.gong@nxp.com>
References: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0062.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::26) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff0c8eb7-9641-4f33-61af-08d6d5304acf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600141)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5661; 
x-ms-traffictypediagnostic: VI1PR04MB5661:
x-microsoft-antispam-prvs: <VI1PR04MB56619625BB53B333B9C091A9890C0@VI1PR04MB5661.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(39860400002)(346002)(376002)(366004)(136003)(396003)(199004)(189003)(4326008)(86362001)(66066001)(110136005)(316002)(14454004)(25786009)(256004)(6116002)(3846002)(71190400001)(7416002)(71200400001)(2201001)(7736002)(305945005)(2906002)(386003)(6506007)(5660300002)(6512007)(6486002)(50226002)(446003)(476003)(8936002)(478600001)(52116002)(186003)(4744005)(102836004)(76176011)(99286004)(54906003)(11346002)(68736007)(6436002)(26005)(486006)(2616005)(66556008)(66476007)(66446008)(66946007)(64756008)(53936002)(8676002)(81156014)(73956011)(81166006)(36756003)(2501003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5661;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0szcbJlghDInQHrW9foGqqJ1drf7xSjNAiB90OsoFebxdkLp8vGe1vRWpABtP7zrKIg/svHqi5iR+y5ByhnkPvGYkjQbxiiJu1zIOG9Df5LX5X8R5JYpF8QPrk7Mdr0OakWP5SdxUhPDTZ3aoE3HPSZD83ed8PbF2JDPZsFIUjWKZmjV/ptKCxAYH3Win3JNQVBjMmx/cPCd4ZFOlndlIlF45cOpkfHRKB6eEcv64SE8vLjh1Gy60+kk7C8u1FP2KKFZa3AYtJOF/NMRMJTfQTnKIoguxYZqJZ5Q4ljGhULikDxfMmYnnrgQuZvscyKccP24X/CAzL11gQ98pfx0X5Hi/AIzhCRA3lNXWbt0gRtwPWNVwbJ43GFK6tvNMpBPTZ5GF0caPvlP4Hh8yYg6i/sYZ99Dkel7AzACeFwpTBk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff0c8eb7-9641-4f33-61af-08d6d5304acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 10:14:31.1796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031458_670605_A71DB6B6 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:620 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add edma device node in dts.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index d6b7110..b4f7adf 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -100,6 +100,34 @@
 		reg = <0x40000000 0x800000>;
 		ranges;
 
+		edma1: dma-controller@40080000 {
+			#dma-cells = <2>;
+			compatible = "fsl,imx7ulp-edma";
+			reg = <0x40080000 0x2000>,
+				<0x40210000 0x1000>;
+			dma-channels = <32>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "dma", "dmamux0";
+			clocks = <&pcc2 IMX7ULP_CLK_DMA1>,
+				 <&pcc2 IMX7ULP_CLK_DMA_MUX1>;
+		};
+
 		lpuart4: serial@402d0000 {
 			compatible = "fsl,imx7ulp-lpuart";
 			reg = <0x402d0000 0x1000>;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
