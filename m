Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE53E19B34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEGLx4Ff6Cfpts5QiYsDw0K7pEMrfC48eyCMxIXgaHo=; b=hlrdY0jQH31+v1
	kcD68LSTpJN5rEzFondvcCsar/tIWwDFd051d71EeEASmzAOM4C5y/A6qQs3UuBWq0DIob7JspClT
	wmjXa/sBu7Wp1dyfuisPeh2cpIIfHwluQsSrYRh2v55VJ+D8w0+A9AFLzC9AhajYIdz0/pZw5S5WQ
	Hv1SmdXRGjuvONKDKzJd3FxeKX6IykeVgW6jIR3Mq96DGmhqdBEZZ6Higx5gOxYAXwLHhHiAOl4Y/
	D/VI7uhE6EzuR8xI8gepRSMj324nvTFCiz645f0gcYISgrQcHqEBZa/s0yKWmw4b06pHQfM1F8qoC
	tc3287RzbQ7DoEZ5I/Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2Yn-0006Ec-Ei; Fri, 10 May 2019 10:15:25 +0000
Received: from mail-he1eur02on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::620]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2Y0-0003wz-8b
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bDuStmeBEbYuneEVk9w3Huevi8CiqxMmX/TigSqkEHA=;
 b=KpK1WDp96afimbQ2PLcFdyaaR784cXXugfEL7qFJRIIw2RbM/Yhj3jaB2a84BZstMtbS2VHOmFyupdkfXd8XvbAq1v87pRQqZ75Eom5i6LZZoHmaRLaYUri9HDm0C4NBN2W0Ywp+1lMJao8y8RHU8MjdZV8Z1tp8dNB/o/zYRzM=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB5661.eurprd04.prod.outlook.com (20.178.126.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Fri, 10 May 2019 10:14:26 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 10:14:26 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>
Subject: [PATCH v1 5/6] dt-bindings: dma: fsl-edma: add new i.mx7ulp-edma
Thread-Topic: [PATCH v1 5/6] dt-bindings: dma: fsl-edma: add new i.mx7ulp-edma
Thread-Index: AQHVBxklOigPkWz8BkCq4tLPeU1/6g==
Date: Fri, 10 May 2019 10:14:26 +0000
Message-ID: <1557512248-8440-6-git-send-email-yibin.gong@nxp.com>
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
x-ms-office365-filtering-correlation-id: 7a586247-4554-473e-3b5e-08d6d53047e6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600141)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5661; 
x-ms-traffictypediagnostic: VI1PR04MB5661:
x-microsoft-antispam-prvs: <VI1PR04MB5661864D271308E68E38CD33890C0@VI1PR04MB5661.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(366004)(136003)(396003)(199004)(189003)(4326008)(86362001)(66066001)(110136005)(316002)(14454004)(25786009)(14444005)(256004)(6116002)(3846002)(71190400001)(7416002)(71200400001)(2201001)(7736002)(305945005)(2906002)(386003)(6506007)(5660300002)(6512007)(6486002)(50226002)(446003)(476003)(8936002)(478600001)(52116002)(186003)(102836004)(76176011)(99286004)(54906003)(11346002)(68736007)(6436002)(26005)(486006)(2616005)(66556008)(66476007)(66446008)(66946007)(64756008)(53936002)(8676002)(81156014)(73956011)(81166006)(36756003)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5661;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QnZLFPlM1+/P3WHdnzYXVrgSICvZWVJ8DjFsGxHoK3Z/wmiDUjDXHkylXv0bGhPnweARfqgtpwOzoIMMUMPEtaxpwvdYCJ66SXECFfG5aQe9sp6NmmtnRzo2GZBUoGap22yDylTfft0cFEgYwoRebavBO2/w18uHguZ2JKOp1f/pERlZz9mTcu/xD8L2aKH64YsTZkiXNyT/uDGr2EoqxyW8YpoIxtbyiy+JuOKrOfyCjavTH5FNHnUQnn0a6nN5ne4tbiFNlg4QO1RY6ehDYRiyyow62QgbX790so4ReIU3q88v8EbN3+tYdJROZ9untCzrRZrnrb9Ow5tkyw3HDCzbkTeMQ+6wrKOvN3nLB4egakryp/dRb02uz5C1h8Ddo60UVnlhg5YjtdE8JlIpxRRU3r3PzoOOqXTtWtFO4l4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a586247-4554-473e-3b5e-08d6d53047e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 10:14:26.2922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031436_910849_8194A2B2 
X-CRM114-Status: GOOD (  18.18  )
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

More channel interrupts, one more clock, and only one
dmamux on i.mx7ulp-edma.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 Documentation/devicetree/bindings/dma/fsl-edma.txt | 44 +++++++++++++++++++---
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/fsl-edma.txt b/Documentation/devicetree/bindings/dma/fsl-edma.txt
index 97e213e..29dd3cc 100644
--- a/Documentation/devicetree/bindings/dma/fsl-edma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-edma.txt
@@ -9,15 +9,16 @@ group, DMAMUX0 or DMAMUX1, but not both.
 Required properties:
 - compatible :
 	- "fsl,vf610-edma" for eDMA used similar to that on Vybrid vf610 SoC
+	- "fsl,imx7ulp-edma" for eDMA2 used similar to that on i.mx7ulp
 - reg : Specifies base physical address(s) and size of the eDMA registers.
 	The 1st region is eDMA control register's address and size.
 	The 2nd and the 3rd regions are programmable channel multiplexing
 	control register's address and size.
 - interrupts : A list of interrupt-specifiers, one for each entry in
-	interrupt-names.
-- interrupt-names : Should contain:
-	"edma-tx" - the transmission interrupt
-	"edma-err" - the error interrupt
+	interrupt-names on vf610 similar SoC. But for i.mx7ulp per channel
+	per transmission interrupt, total 16 channel interrupt and 1
+	error interrupt(located in the last), no interrupt-names list on
+	i.mx7ulp for clean on dts.
 - #dma-cells : Must be <2>.
 	The 1st cell specifies the DMAMUX(0 for DMAMUX0 and 1 for DMAMUX1).
 	Specific request source can only be multiplexed by specific channels
@@ -28,6 +29,7 @@ Required properties:
 - clock-names : A list of channel group clock names. Should contain:
 	"dmamux0" - clock name of mux0 group
 	"dmamux1" - clock name of mux1 group
+	Note: No dmamux0 on i.mx7ulp, but another 'dma' clk added on i.mx7ulp.
 - clocks : A list of phandle and clock-specifier pairs, one for each entry in
 	clock-names.
 
@@ -35,6 +37,10 @@ Optional properties:
 - big-endian: If present registers and hardware scatter/gather descriptors
 	of the eDMA are implemented in big endian mode, otherwise in little
 	mode.
+- interrupt-names : Should contain the below on vf610 similar SoC but not used
+	on i.mx7ulp similar SoC:
+	"edma-tx" - the transmission interrupt
+	"edma-err" - the error interrupt
 
 
 Examples:
@@ -52,8 +58,36 @@ edma0: dma-controller@40018000 {
 	clock-names = "dmamux0", "dmamux1";
 	clocks = <&clks VF610_CLK_DMAMUX0>,
 		<&clks VF610_CLK_DMAMUX1>;
-};
+}; /* vf610 */
 
+edma1: dma-controller@40080000 {
+	#dma-cells = <2>;
+	compatible = "fsl,imx7ulp-edma";
+	reg = <0x40080000 0x2000>,
+		<0x40210000 0x1000>;
+	dma-channels = <32>;
+	interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+		     /* last is eDMA2-ERR interrupt */
+		     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+	clock-names = "dma", "dmamux0";
+	clocks = <&pcc2 IMX7ULP_CLK_DMA1>,
+		 <&pcc2 IMX7ULP_CLK_DMA_MUX1>;
+}; /* i.mx7ulp */
 
 * DMA clients
 DMA client drivers that uses the DMA function must use the format described
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
