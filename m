Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D4E15B7B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0hP6qzivqF/N1rpLkShy4wHeVjCuR2xnnlSNLIyr3BU=; b=lpuIwVjxbUYoyT
	tbgBPeQ5CS7cYVmchrnyVS/NxkEpxkkydFtcKXZlc3NjfH5aEbKeRxIfrT8HTczadJFhozqb73zB4
	W5QP8Z8j1/LW3w6nhsfqrpz7KXm4NyY8QHU7O2RHoeuwu7+6Oh54Zcb4s91aZ92zuT2FZq43mkUkW
	FMNcyx5pEIMf0rAVv2VWfsXe9u1wTSexc0WhbGrbWP8iFSFDCF9lcG/ZnknlZ/a5zskqwrwV9dy1G
	GDcMmxEpawJ2p9bcPjcCVyrXzHDFgN9Uco3DjQnGpyatuk2ny750ZV6MBPt1MU3WPPys3iKW+6eSl
	u7FVeNJAcEOsmHebTlwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j256T-0004Jl-0o; Thu, 13 Feb 2020 03:23:49 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j256L-0004JI-DW
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:23:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oy3zE7x2J1PHD1fHrC2s/Nz7B7Md8he++7GjeaKNuIGMnaPDw3wgAJrGoBWyJAIyS5vniK2E0gOq5rBG/hcnkyKcRq4iB8vLoExYs3qt7g7R4de1WcWCJj27WeEniLIOA0b7Ud74UQK6oRe0w5w2lPnxB05Up0pMPb6laPnxVMSxMuN0yONODu06dWbEH+FOMTnSG3g+O7Z0yg0qpPbxVldwi7vsGq1aCbeNQgGaj7tkZpcSilJz4EAXA3TJKUgdu/MI3nOdD4meOZNK0weQcjE2YkyVO8KKFrnzKwohYpeDS3EirRE0shiT/pm2Yjh/WLY+30KNuKBzFvrjZwEn0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yYFd8OKT9jTm++hzkYROS8OIM1o+OKPul+fiRRWtDpg=;
 b=gMoLsgZQ2HBjFQFSaBuOV4HT2mQdCxJme38zLVWCgMknVtSSQ6EpCPTQnaaP8TkSVMLIVURSuFp1jBfQ0+SGw4EONMoNk/yFH3nNWsNVyQg1d7GlBVs7pNNK/DiZBN9lkQMjSvDOvEn1VblaIh1BXpQ7SkqzkpTNuYKknWgMphBoNWTxSeCf0ABW5fONkh5ytQUzkJa4dIxBoMgjd0azmiTbjkkpuhA0HggjvAGmm1OPfrelyZ+mlYrcRY554IS+W3qXvcz3Q4Kf1wNaO/844P+xZaDnhv9X5Rhe/zNEPTR0icifIT6am3VmioVBkdTLSabf3bZ+n6c2eLMYqBe9NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yYFd8OKT9jTm++hzkYROS8OIM1o+OKPul+fiRRWtDpg=;
 b=Rer5qhVuU89nn3SRxsE8fQ8Sj0nArHHWfyFAUxyDaK5LTehBBCiecSjKDk0DSwJOukAqKmkAK30nZVs8SAYgccxoF2dQ54ABr311VqKfxiOgrpr78bGy4kcqU57/ZN/lO1YrxjepzsCYKC82VQgcRTCuAAsRNSupChbBDg6pBvM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4947.eurprd04.prod.outlook.com (20.177.40.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.29; Thu, 13 Feb 2020 03:23:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 03:23:36 +0000
From: peng.fan@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH V2] ARM: dts: imx: use generic name bus
Date: Thu, 13 Feb 2020 11:17:58 +0800
Message-Id: <1581563878-26388-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR03CA0050.apcprd03.prod.outlook.com
 (2603:1096:202:17::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR03CA0050.apcprd03.prod.outlook.com (2603:1096:202:17::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.6 via Frontend Transport; Thu, 13 Feb 2020 03:23:33 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cb7e7cba-3bb2-41a8-60ed-08d7b0341cac
X-MS-TrafficTypeDiagnostic: AM0PR04MB4947:|AM0PR04MB4947:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB49475537B147B404FC81972A881A0@AM0PR04MB4947.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:86;
X-Forefront-PRVS: 031257FE13
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(346002)(396003)(136003)(199004)(189003)(86362001)(8936002)(2906002)(52116002)(69590400006)(36756003)(186003)(16526019)(5660300002)(26005)(6506007)(2616005)(81156014)(81166006)(30864003)(8676002)(316002)(478600001)(6666004)(6512007)(66476007)(66946007)(66556008)(956004)(6486002)(4326008)(9686003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4947;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZfQ6PvxHzApJJ8QDV/Qd90mIZpVo8EmRVxrriTdUnpCCpYVymZ44wy8KfyxXGEGReQOVSOc2K5dwpNWBMNOk6Zv1CoURNxX0tmkvurc0wiUnMlnXdwGQKr8RKQGdF9fz93KmRA+wvOs8XfK4uJsrUZBSmS2Y+B1yesTsjQZefeu6x1rzshlkNyfer7OTBS8CdaWctzPOJtY+vL4GKfy5P48KhaWH2K7gMvAqsgBv5VDpau81BL7CF01xHwOP/DC8NXUsU9V29J/KxTLbLOokxHFTUzcQKUxM3Znmp9Y0SiRSJH2JiO2ZMpN0Nu7Jx4cyLxlo41QMJX+W4PR+FZrZ+B19zXjwG1xkEwa46LGSJ4szX3tGZ7yu7tT3ZkeeRAIoCr1Qn7G31f2zj/Gapw/MMPOVlJpYWpWxalRLR+aHpbYhi76+7YxpJdNX3EB5Q2nJEOUL96nxbYEONDxsF2mCdn3qaCSoiz6lFdGgySSsVrCyez5H78BnlMEvUzIkISUApZsF+94GEYbsqRKRYF1T8ldRWnNFq4bcBaOn3NbBFEI1zLQ0q0Fl66MEeMKwm+Lm
X-MS-Exchange-AntiSpam-MessageData: yZwkVkAZVuJNe5VEq6dyAhLf4nkziWQls7OfD+IiTMrYgtXnDH4nHUpHX32mgqd+tvsTrxHRuXV1tGMY9WRF6ZLWr3nvRgY7oGLsodCUR1oj0HP8LpqCuwiahZjAizPeuIVLYTHMiyq9FLIpgE6h1w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb7e7cba-3bb2-41a8-60ed-08d7b0341cac
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2020 03:23:36.4819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hrP5tswexENbl0CUlhA63qIOh6wmLDp7eHcWsg/dGrTSaQ2JUBGSwVTJ7NMKcHnnn4viqY5tVifOCrn2ciNLvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_192341_618559_206429A4 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Per devicetree specification, generic names
are recommended to be used, such as bus.

i.MX AIPS is a AHB - IP bridge bus, so
we could use bus as node name.

Script:
sed -i "s/\<aips@/bus@/" arch/arm/boot/dts/imx*.dtsi
sed -i "s/\<aips@/bus@/" arch/arm/boot/dts/vf*.dtsi
sed -i "s/\<aips-bus@/bus@/" arch/arm/boot/dts/imx*.dtsi
sed -i "s/\<aips-bus@/bus@/" arch/arm/boot/dts/vf*.dtsi

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Include vf500.dtsi and vfxxx.dtsi

 arch/arm/boot/dts/imx25.dtsi   | 4 ++--
 arch/arm/boot/dts/imx31.dtsi   | 4 ++--
 arch/arm/boot/dts/imx35.dtsi   | 4 ++--
 arch/arm/boot/dts/imx50.dtsi   | 4 ++--
 arch/arm/boot/dts/imx51.dtsi   | 4 ++--
 arch/arm/boot/dts/imx53.dtsi   | 4 ++--
 arch/arm/boot/dts/imx6dl.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6q.dtsi   | 2 +-
 arch/arm/boot/dts/imx6qdl.dtsi | 4 ++--
 arch/arm/boot/dts/imx6qp.dtsi  | 2 +-
 arch/arm/boot/dts/imx6sl.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6sll.dtsi | 4 ++--
 arch/arm/boot/dts/imx6sx.dtsi  | 6 +++---
 arch/arm/boot/dts/imx6ul.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6ull.dtsi | 2 +-
 arch/arm/boot/dts/imx7s.dtsi   | 6 +++---
 arch/arm/boot/dts/vf500.dtsi   | 4 ++--
 arch/arm/boot/dts/vfxxx.dtsi   | 4 ++--
 18 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
index 40b95a290bd6..1123e683025c 100644
--- a/arch/arm/boot/dts/imx25.dtsi
+++ b/arch/arm/boot/dts/imx25.dtsi
@@ -75,7 +75,7 @@
 		interrupt-parent = <&asic>;
 		ranges;
 
-		aips@43f00000 { /* AIPS1 */
+		bus@43f00000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -332,7 +332,7 @@
 			};
 		};
 
-		aips@53f00000 { /* AIPS2 */
+		bus@53f00000 { /* AIPS2 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx31.dtsi b/arch/arm/boot/dts/imx31.dtsi
index 6b62f0745b82..18270ec648fe 100644
--- a/arch/arm/boot/dts/imx31.dtsi
+++ b/arch/arm/boot/dts/imx31.dtsi
@@ -63,7 +63,7 @@
 			ranges = <0 0x1fffc000 0x4000>;
 		};
 
-		aips@43f00000 { /* AIPS1 */
+		bus@43f00000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -225,7 +225,7 @@
 			};
 		};
 
-		aips@53f00000 { /* AIPS2 */
+		bus@53f00000 { /* AIPS2 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx35.dtsi b/arch/arm/boot/dts/imx35.dtsi
index 9cbdc1a15cda..2ebf2c1fa682 100644
--- a/arch/arm/boot/dts/imx35.dtsi
+++ b/arch/arm/boot/dts/imx35.dtsi
@@ -66,7 +66,7 @@
 			cache-level = <2>;
 		};
 
-		aips1: aips@43f00000 {
+		aips1: bus@43f00000 {
 			compatible = "fsl,aips", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -199,7 +199,7 @@
 			};
 		};
 
-		aips2: aips@53f00000 {
+		aips2: bus@53f00000 {
 			compatible = "fsl,aips", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
index 0bfe7c91d0eb..d325658901c5 100644
--- a/arch/arm/boot/dts/imx50.dtsi
+++ b/arch/arm/boot/dts/imx50.dtsi
@@ -101,7 +101,7 @@
 		interrupt-parent = <&tzic>;
 		ranges;
 
-		aips@50000000 { /* AIPS1 */
+		bus@50000000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -389,7 +389,7 @@
 			};
 		};
 
-		aips@60000000 {	/* AIPS2 */
+		bus@60000000 {	/* AIPS2 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index dea86b98e9c3..6f608d9d9016 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -158,7 +158,7 @@
 			};
 		};
 
-		aips@70000000 { /* AIPS1 */
+		bus@70000000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -440,7 +440,7 @@
 			};
 		};
 
-		aips@80000000 {	/* AIPS2 */
+		bus@80000000 {	/* AIPS2 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index ed341cfd9d09..8536f59f59e6 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -222,7 +222,7 @@
 			clock-names = "core_clk", "mem_iface_clk";
 		};
 
-		aips@50000000 { /* AIPS1 */
+		bus@50000000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -654,7 +654,7 @@
 			};
 		};
 
-		aips@60000000 {	/* AIPS2 */
+		bus@60000000 {	/* AIPS2 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx6dl.dtsi b/arch/arm/boot/dts/imx6dl.dtsi
index 008312ee0c31..4b3a128d9260 100644
--- a/arch/arm/boot/dts/imx6dl.dtsi
+++ b/arch/arm/boot/dts/imx6dl.dtsi
@@ -85,7 +85,7 @@
 			clocks = <&clks IMX6QDL_CLK_OCRAM>;
 		};
 
-		aips1: aips-bus@2000000 {
+		aips1: bus@2000000 {
 			iomuxc: iomuxc@20e0000 {
 				compatible = "fsl,imx6dl-iomuxc";
 			};
@@ -101,7 +101,7 @@
 			};
 		};
 
-		aips2: aips-bus@2100000 {
+		aips2: bus@2100000 {
 			i2c4: i2c@21f8000 {
 				#address-cells = <1>;
 				#size-cells = <0>;
diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
index 9d3be1cc6b64..0fad13f9d336 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -164,7 +164,7 @@
 			clocks = <&clks IMX6QDL_CLK_OCRAM>;
 		};
 
-		aips-bus@2000000 { /* AIPS1 */
+		bus@2000000 { /* AIPS1 */
 			spba-bus@2000000 {
 				ecspi5: spi@2018000 {
 					#address-cells = <1>;
diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index e6b4b8525f98..bf9d20f21060 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -294,7 +294,7 @@
 			status = "disabled";
 		};
 
-		aips-bus@2000000 { /* AIPS1 */
+		bus@2000000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -935,7 +935,7 @@
 			};
 		};
 
-		aips-bus@2100000 { /* AIPS2 */
+		bus@2100000 { /* AIPS2 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx6qp.dtsi b/arch/arm/boot/dts/imx6qp.dtsi
index 5f51f8e5c1fa..93b89dc1f53b 100644
--- a/arch/arm/boot/dts/imx6qp.dtsi
+++ b/arch/arm/boot/dts/imx6qp.dtsi
@@ -18,7 +18,7 @@
 			clocks = <&clks IMX6QDL_CLK_OCRAM>;
 		};
 
-		aips-bus@2100000 {
+		bus@2100000 {
 			pre1: pre@21c8000 {
 				compatible = "fsl,imx6qp-pre";
 				reg = <0x021c8000 0x1000>;
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 59c54e6ad09a..5b26c8d75626 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -143,7 +143,7 @@
 			arm,data-latency = <4 2 3>;
 		};
 
-		aips1: aips-bus@2000000 {
+		aips1: bus@2000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -786,7 +786,7 @@
 			};
 		};
 
-		aips2: aips-bus@2100000 {
+		aips2: bus@2100000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index a1bc5bb31756..797f850492fe 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -144,7 +144,7 @@
 			arm,data-latency = <4 2 3>;
 		};
 
-		aips1: aips-bus@2000000 {
+		aips1: bus@2000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -663,7 +663,7 @@
 			};
 		};
 
-		aips2: aips-bus@2100000 {
+		aips2: bus@2100000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 59bad60a47dc..98de781b8082 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -235,7 +235,7 @@
 			status = "disabled";
 		};
 
-		aips1: aips-bus@2000000 {
+		aips1: bus@2000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -830,7 +830,7 @@
 			};
 		};
 
-		aips2: aips-bus@2100000 {
+		aips2: bus@2100000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -1188,7 +1188,7 @@
 			};
 		};
 
-		aips3: aips-bus@2200000 {
+		aips3: bus@2200000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index d9fdca12819b..beb82d357f37 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -204,7 +204,7 @@
 			status = "disabled";
 		};
 
-		aips1: aips-bus@2000000 {
+		aips1: bus@2000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -771,7 +771,7 @@
 			};
 		};
 
-		aips2: aips-bus@2100000 {
+		aips2: bus@2100000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
index b7e67d121322..fcde7f77ae42 100644
--- a/arch/arm/boot/dts/imx6ull.dtsi
+++ b/arch/arm/boot/dts/imx6ull.dtsi
@@ -51,7 +51,7 @@
 
 / {
 	soc {
-		aips3: aips-bus@2200000 {
+		aips3: bus@2200000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 568d7a984aa6..f959f69b0677 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -315,7 +315,7 @@
 			      <0x31006000 0x2000>;
 		};
 
-		aips1: aips-bus@30000000 {
+		aips1: bus@30000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -663,7 +663,7 @@
 			};
 		};
 
-		aips2: aips-bus@30400000 {
+		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -803,7 +803,7 @@
 			};
 		};
 
-		aips3: aips-bus@30800000 {
+		aips3: bus@30800000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/vf500.dtsi b/arch/arm/boot/dts/vf500.dtsi
index b0ec475017ad..0c0dd442300a 100644
--- a/arch/arm/boot/dts/vf500.dtsi
+++ b/arch/arm/boot/dts/vf500.dtsi
@@ -23,7 +23,7 @@
 	};
 
 	soc {
-		aips-bus@40000000 {
+		bus@40000000 {
 
 			intc: interrupt-controller@40003000 {
 				compatible = "arm,cortex-a9-gic";
@@ -43,7 +43,7 @@
 			};
 		};
 
-		aips-bus@40080000 {
+		bus@40080000 {
 			pmu@40089000 {
 				compatible = "arm,cortex-a5-pmu";
 				interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/vfxxx.dtsi b/arch/arm/boot/dts/vfxxx.dtsi
index 028e0ec30e0c..2d547e7b21ad 100644
--- a/arch/arm/boot/dts/vfxxx.dtsi
+++ b/arch/arm/boot/dts/vfxxx.dtsi
@@ -59,7 +59,7 @@
 		interrupt-parent = <&mscm_ir>;
 		ranges;
 
-		aips0: aips-bus@40000000 {
+		aips0: bus@40000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -471,7 +471,7 @@
 			};
 		};
 
-		aips1: aips-bus@40080000 {
+		aips1: bus@40080000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
