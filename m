Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3C316B834
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 04:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OhAOhYSMEIchMPxjB4nAK+HEQ+DwQgITnDJJAWvFT3U=; b=RK8mDd8nmG0fHz
	Vy73RGrRSCbzYb1sBYHdkl8xCdGNqu8uVmN/ChDdNVbIGCnH/HqqpLhWRrNx/77oyZFxi7AQQYLE0
	+oWNd00nfjyE5BBFG1CgqK7VP6RZHDwzWMtyqnqiSCEAA3t0uzC9c4/lfZeFt4HvMpaLOZajcgn7J
	cnfLWnP3h3sT3HYgUjlacuJKIXjQdr0ujwjg3NU0y6NlYFurCUDFb0NHxJObK5q6sFIbS8RavO2nG
	VrhrJf4ej8EvB1UEIHQL/VAHGF/oo1vhCM5BNHinmjw/JKCXyGqicwwSmaLXnYFOE4UDK5z00n4Yw
	RLV2Ilpov49P0JMehdSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6REp-0004Eq-3o; Tue, 25 Feb 2020 03:50:27 +0000
Received: from mail-eopbgr40059.outbound.protection.outlook.com ([40.107.4.59]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6REf-0004EO-S0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 03:50:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdZgW+Vvn0lYIq9w6QIi7mbiuzrTXwamaHizNVXmgFT7jUNFU9oYq6XFFXhz5FXJDcJ8P7e8aQsDHEC+QxpPY+66nI2R05glERzmVxwSZikunQhOyjE7ppv+xDytncssl/pZG/YmYHGoXnO30ndmW+vTykqu64sgqg+MTPfhxbh5AaZm6Rxqe7otqfPHG06ec8D3AHW/TTQGm+hwFgACOnq4oN3XOhksXDuOvdrVUGuSSWK48PJG/iN7ofVVFXoV2d+mG40XoLd4mjbLV20fjoeWgEPtolJKr/mciRRuhlzJQ5aPL659Z6AhJJ4gscN4nueOOqE9X6g4xf09dunkMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LqKBiafB2ZFKfJU2Li29OXgoWjlAbRLYU3W31h0Rw/g=;
 b=jjiAwqfplICSKSH3GVk8u9mdZ/8NWy4lS+dDbat9l9wmpmnCq/THbICj2ypbvRfgZFnevhnqBPDWY8l7wapQoGpCC1EO0MZbbgZhz2T0+kgIloxza0x0vyzuOlNO7KEJAQuljEkmnBj7mMniCnJF1TNrw/FIdqAxXH8LzSSrJHRPFB7NsbDJNEnFK4vtvKSVU9IQ4lAPSTllTp1XF+HOc3uGINjUtA789Y/te5DVQl/fapl7tj48+7s8Ex/NwYo9r20XwSTuFwW8CNZrmXkyeXRAFT5DuVXszt34cNBWSteqQn2FzdO+d+vjBigrKN+Xiaq3/H4DSLMi5DdolJ+zyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LqKBiafB2ZFKfJU2Li29OXgoWjlAbRLYU3W31h0Rw/g=;
 b=XPmvIc+4di7FYIMp+paZ5KBAm5c9p6uoaiAoN4DWDkm3mUTtxS08/pRptePAR2DxU499UDMz+5H0hravgQ+wY7yDDtFuTgwISRvXxuVGIRWXtanAIq1pNWnxj13bUIe0oRPHbrLf8/gT+6+lT1miP8cGc4jnhHAslcSfichEG8E=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5955.eurprd04.prod.outlook.com (20.178.112.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 03:50:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 03:50:13 +0000
From: peng.fan@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH] ARM64: dts: imx8m: fix aips dts node
Date: Tue, 25 Feb 2020 11:44:02 +0800
Message-Id: <1582602242-28577-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR02CA0212.apcprd02.prod.outlook.com
 (2603:1096:201:20::24) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0212.apcprd02.prod.outlook.com (2603:1096:201:20::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 03:50:09 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 71b5a415-4a63-4768-48b7-08d7b9a5d175
X-MS-TrafficTypeDiagnostic: AM0PR04MB5955:|AM0PR04MB5955:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5955CE3BFCE163E106EC2B6A88ED0@AM0PR04MB5955.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(136003)(376002)(39860400002)(199004)(189003)(9686003)(6506007)(2616005)(26005)(52116002)(6512007)(6666004)(86362001)(8936002)(81156014)(8676002)(81166006)(956004)(66556008)(16526019)(316002)(6486002)(5660300002)(69590400006)(66946007)(186003)(2906002)(66476007)(478600001)(36756003)(4326008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5955;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E76lIq2/jSjWRApAnWDZRoymJqw67PPe0OM2ZAOl5rrAGccPeG3rTDCw30rS21uWmuvApc7PvuIXv8zXBUzY2m9jtCRd+azuxRGD2pIs5NMLWFnFYI5s170KX5EomKCXBU0yUYAGP5phvft683d8tE+ea+f4OLEu8f8J21tyBZHhe8WuFJ1ESNb5F/2t6WFWcvSi4qXMEBC68z0NGts/awdjE3S4qH42TDfSoD5H0cTK2pyYrv/yFyoM47SPRM/Tb6xSgvyjhbgHm7V0NxS15EcCoVW3FTR39CGv1tbefI0vJPXcMYIvFcKXQoRKBmHd+GXeJ9hyNlNmS5hg8/4+iBdeo0PyofhJk2fbvnNRif6elSmn6+J+p29RBvI+fK4Ol0i/wRv87/kJBJwy0vt+1QkSlTjQKNtubC7C8lpBjtpacVG9R97MUq9XN9oXUGIqVpRyqgcM1lkC78+KKakb+Wt6ykovlup1ICSb5Ig9aGH8OvfzQLKnsYTA9uR+1j4M8iXXfoVq3TLaa60nTeNzjO6fkkZiTff6Sd0SZFAiuTUdST0AHSl8gLE3wB1mdZaO
X-MS-Exchange-AntiSpam-MessageData: lmeDO+5yPep9CYN0dUm5SoTBVWWI7Qjl6oC+cHql6n+SrJKuH0FnCjz/fE2+A+kS2WOQ5OdhPhm3jPA1EweZ39y8yaiJtNDEXNyW+kx7+BfLjV/hIM+tl3+G1lNRTZMsRX/I/X2otORTZbgcBxhA6g==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71b5a415-4a63-4768-48b7-08d7b9a5d175
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 03:50:13.5129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9T3cuDapG7iKsyVUlguVJQb7H0k+YEV48oaLk2XnhUCmnDvpI/J0o2qJIOpfseCu1wOAlh7tsKfO20hmc8FexA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_195017_910427_8913EAEE 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Per binding doc fsl,aips-bus.yaml, compatible and reg is
required. And for reg, the AIPS configuration space should be
used, not all the AIPS bus space.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 12 ++++++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 16 ++++++++--------
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 12 ++++++++----
 4 files changed, 30 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index b3d0b29d7007..a4356d2047cd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -227,7 +227,8 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -496,7 +497,8 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x305f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -555,7 +557,8 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x309f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>;
@@ -800,7 +803,8 @@
 		};
 
 		aips4: bus@32c00000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x32df0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index f2775724377f..4848ce82f083 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -203,8 +203,8 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "simple-bus";
-			reg = <0x30000000 0x400000>;
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -401,8 +401,8 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "simple-bus";
-			reg = <0x30400000 0x400000>;
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x305f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -461,8 +461,8 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "simple-bus";
-			reg = <0x30800000 0x400000>;
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x309f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -707,8 +707,8 @@
 		};
 
 		aips4: bus@32c00000 {
-			compatible = "simple-bus";
-			reg = <0x32c00000 0x400000>;
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x32df0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 71b0c8f23693..eb67f56cdfe2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -144,8 +144,8 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "simple-bus";
-			reg = <0x30000000 0x400000>;
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -309,8 +309,8 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "simple-bus";
-			reg = <0x30400000 0x400000>;
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x305f0000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -369,8 +369,8 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "simple-bus";
-			reg = <0x30800000 0x400000>;
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x309f0000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..07070464063d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -290,7 +290,8 @@
 		dma-ranges = <0x40000000 0x0 0x40000000 0xc0000000>;
 
 		bus@30000000 { /* AIPS1 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -692,7 +693,8 @@
 		};
 
 		bus@30400000 { /* AIPS2 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x305f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -751,7 +753,8 @@
 		};
 
 		bus@30800000 { /* AIPS3 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x309f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>,
@@ -1023,7 +1026,8 @@
 		};
 
 		bus@32c00000 { /* AIPS4 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips", "simple-bus";
+			reg = <0x32df0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
