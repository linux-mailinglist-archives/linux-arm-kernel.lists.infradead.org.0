Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B0E1811DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nm/on5WCCqWrGoeoyEsKF+lLSO8ZtA+YcQlJCT3YvSs=; b=Fo3Xe32y1MocKP
	r238M7r+85SAWVbdPyDaEFmS9sKZyshGNpu7ptsljbn/irXbmBhnlJ0Rq8z33FFI9zhJsLvR0c9U8
	Fnjita0mwEGTJi+D4IjJtGtCzNG0GAsdj9pN2031c1DbXl+UwdLeTbrID02MKUI+iDs5XURK1+FST
	rjU8MKni2bfnU9u+ex0v8Q2r2VdViwILiU06j2rfwlQDuV+JzUewLGSev214lB45Uak6JRyB98nHh
	ukemM5M6nDe3DXdJWG2YYlDR15I9SHoOr+iHIGMDad50/fyKKI6EHSaZJGEznFEHM8zbQnPzHFSF+
	BygWu1uztv7gKxYCXDsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvjQ-0002Pe-BM; Wed, 11 Mar 2020 07:24:44 +0000
Received: from mail-eopbgr70082.outbound.protection.outlook.com ([40.107.7.82]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvjI-0002PD-Na
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:24:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qc8bA5qTdL+Q7drwZS26vDAW4mKrLD44+JYXtJWG5IBt4ZFRm+MlpcPYJXMbUSQXpYcUrZDtD6EpxVt43kYZ6SJk5lCgC4vZ1Ic7kr+6Yb7EFpCnHD/tIe+YpoK5iNiKL9sJiFOCwqFLqD8Vg4Y9uF+AxCzDMk/ZZjWWZvx+yCRU0v5+viJlb1asaZwUAWzUUYCbvRiFP08r47tFLIZHm9GMg5PadHRO+p5gMtnXOUxkXt67P2e2f2fakSxhFXRvF0e1FrBB/5CxioXq1C70mQU9f0ATlaq6dAD4IqswGo/hsrtoaSewGrqYlfTz8UuSal3M5NqDwNHCBqMLy42hDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pErVYOiAeVLYSHCqYxGjoy6FIB38iX/saKWlCmqnOfo=;
 b=CATEJQVh/mZ8LCDpw1ssrCr3gdcIb/eF9UAO0RxvrRsKi3MWj4MyzhAhw7tENgTAAFp8xFbR3r50lfFtvdCrlqbI6zLTCLokw6kNa3yAJ+BAB4pDk0sH+Q9O+rJ0+8qyLltPRKxBYRrfiOfFDuCc2kHeLIWD09K6Z9uWfQnQXjtK7TpFsc0LNSQUjRhOCoP45GbhPpiLMZNhmYYjKoRR6eLVkcifDSauxP///zeIobZiudQaXPmkXv+czR9v9bqmzm4GO/daEZzIDp0vFJiFeq5LsIRYk18vm6deGltSTk3Pnh6OB7nUbfTJFoIIJYhJr9FIvYqmSa/b9FSWcYnqug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pErVYOiAeVLYSHCqYxGjoy6FIB38iX/saKWlCmqnOfo=;
 b=I6jMZ91sPIA+Vox8TZa57oT0p4FMkcBjuwxCcqEBty/8WS3utRKgaKS6yvtBBehyTOnGpXePt81pOnqUn+oBCy1hjkuskIKe7vN4VOcg8ET6J22+PeBZK8Ukyn2s6D3ntZQmtFSSysAyURSLZvve/nxS5mQPX83PQr1ANngtyvA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 07:24:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 07:24:32 +0000
From: peng.fan@nxp.com
To: robh+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V2] arm64: dts: imx8m: fix aips dts node
Date: Wed, 11 Mar 2020 15:17:56 +0800
Message-Id: <1583911076-31551-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2P153CA0014.APCP153.PROD.OUTLOOK.COM (2603:1096::24) To
 AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2P153CA0014.APCP153.PROD.OUTLOOK.COM (2603:1096::24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.4 via Frontend Transport; Wed, 11 Mar 2020 07:24:29 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: afa87db6-8fd5-4885-3064-08d7c58d3e69
X-MS-TrafficTypeDiagnostic: AM0PR04MB3970:|AM0PR04MB3970:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB397047540CCED5C7BA6A477388FC0@AM0PR04MB3970.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(199004)(186003)(16526019)(26005)(52116002)(81166006)(81156014)(6486002)(8676002)(36756003)(8936002)(2906002)(69590400007)(4326008)(9686003)(86362001)(316002)(5660300002)(6506007)(2616005)(956004)(478600001)(66946007)(66556008)(6666004)(6512007)(66476007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3970;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t7U3kXew7b6HxwxOlPEwlK4QPb0fIo/28fLjhTW+uomvn/rnOfYbjU+L9IPS2F7scUXO8+wcq2Mjd9BlqI4kn5o4zY0M1ywp3JKDNs119+PkgBhn9vJ1/C7hnUF0QQzNpIS7rwZ1mQvcdWtzTHdnQkvYMP+QcLymVInaNVI1MtNhIphD9vGuFwdTUW2TNGPVk6URrgAZLjRw92zdcnVkvZKvdFDpUPzYjcfGmLzO4DGYoC97mmYdMIvjTD4ifz3zfgy7L/7o6QTtTrGrHzqT0qHVE4dL53PS80/LeuusLjYfebOe5Ut8ItqvFgR40ZR63wPGVnSTiaExv7bC7k9LfLOa9doWFCSoavRBfDvzD1Rb7WLVwQcl8sJc6QWjbVcK5c1e6xyfgv217LdT8Egud2tlWJWug3KT6FQKhtPcPeeq6HOQNcFJNrFEnfNnu1d/weOq2KSQBDsldWWzavDewntFQcJmA9LwR5lBCwYfatV1NkpBquti3Or6ZIBXm3DDV+Pst/KsQtlAEtV56xzzrA==
X-MS-Exchange-AntiSpam-MessageData: Lj/4UU6L3/+c9uE44IQATdkzWxpuF7YWwm23AoxTovtblDYZzY8HWlgk+mjN9Ai5Rqq8WTNiqzCMPc0G0jRssGoGfX7f3yjZmy0anXrbmOM0g31fbr0dGMVEv0aAC+wpvOSt2Sb7WFQrRhoXsRA15A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afa87db6-8fd5-4885-3064-08d7c58d3e69
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 07:24:32.8203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ierfewFSNg1JQl/frdd7JmhuOIL/qzmcVhZrhbZYzHnMW4uW7RDmFCbmccTA0NrylCcrKFyYiNB9nHGycAkROw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3970
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_002436_767087_76C38E7F 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.82 listed in list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org
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

V2: fsl,aips->fsl,aips-bus
    ARM64->arm64

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 12 ++++++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 16 ++++++++--------
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 12 ++++++++----
 4 files changed, 30 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index b3d0b29d7007..aeeadd40c76c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -227,7 +227,8 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -496,7 +497,8 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x305f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -555,7 +557,8 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x309f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>;
@@ -800,7 +803,8 @@
 		};
 
 		aips4: bus@32c00000 {
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x32df0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index f2775724377f..62e4d3606b27 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -203,8 +203,8 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "simple-bus";
-			reg = <0x30000000 0x400000>;
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -401,8 +401,8 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "simple-bus";
-			reg = <0x30400000 0x400000>;
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x305f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -461,8 +461,8 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "simple-bus";
-			reg = <0x30800000 0x400000>;
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x309f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -707,8 +707,8 @@
 		};
 
 		aips4: bus@32c00000 {
-			compatible = "simple-bus";
-			reg = <0x32c00000 0x400000>;
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x32df0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 71b0c8f23693..1bd62632af6e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -144,8 +144,8 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "simple-bus";
-			reg = <0x30000000 0x400000>;
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -309,8 +309,8 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "simple-bus";
-			reg = <0x30400000 0x400000>;
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x305f0000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -369,8 +369,8 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "simple-bus";
-			reg = <0x30800000 0x400000>;
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x309f0000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..759bbff42afa 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -290,7 +290,8 @@
 		dma-ranges = <0x40000000 0x0 0x40000000 0xc0000000>;
 
 		bus@30000000 { /* AIPS1 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x301f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -692,7 +693,8 @@
 		};
 
 		bus@30400000 { /* AIPS2 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x305f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -751,7 +753,8 @@
 		};
 
 		bus@30800000 { /* AIPS3 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x309f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>,
@@ -1023,7 +1026,8 @@
 		};
 
 		bus@32c00000 { /* AIPS4 */
-			compatible = "simple-bus";
+			compatible = "fsl,aips-bus", "simple-bus";
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
