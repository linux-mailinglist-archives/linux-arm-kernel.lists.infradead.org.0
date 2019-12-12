Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A66B11C3D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pn4ATUAOu7o2n7yGTJSrKv8uQQcsNtGL7Pq87d8QneY=; b=roKkQgJcJ1erz1
	HKjQCtH6mbnQUfgS0/ru4tLii2QEq6k1Pr9MrlzbUi6hi4bemA+cek5chFIyzAVerKQLT1nrGAZQP
	uJsGXV3yVbI+7C7h4TgkJKfKbzVewsZULJDyfS4CcafuBhIzQwweDY+eGj1TNLegK/Pl7CoiLAEiB
	2ZVYi3LvJQ0k2YAAoBHo7ARV0HCFg2AeDTwlMOH6O7nvdx5jiYHsOZeH+byuAbG4rhx7T+/+xPR6B
	1GATqv8GWEMF4SLnlBSe3ByqxiQVJYyOcAnoJvNK9lyk69Ss5vbpb6+YivmapamBwGqXINN2t/tIz
	Ow9E9CcQhVsQ7yAL9AUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifF0p-0001Vv-Ck; Thu, 12 Dec 2019 03:19:35 +0000
Received: from mail-eopbgr50082.outbound.protection.outlook.com ([40.107.5.82]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifF0i-0001VG-CE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 03:19:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SA74HZ/T7X6oNtscmaQD0dbXsn9XinPI+APt8yJi5IXh7qiu+aqd1tRGB1vN39cC30WWNsYcZ4rIw80vF4uipaP5PKS3/0TzCwu44z0BoYZJlQtB8oMDNBRaCvLAvJn5NSJt09HyFR9WwjJVZusqOQH0hLJCviAvrmZL28wTIwD6q6AIom+x2j2ncLwD+YuoWSDi9oUku0TCEqDSREjLnnWmewYmHVX0EKarbBmhscDrzztOwW6JLud2r7F7d4VACxrpJGhkasNXaO5OPy3QAVUGL0SCT9YkBqQNhbi8qsT7tVFeiPuOVqjvEYddXtJQHoFTIR1tW41wxFWKO84pfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DAwjKxvnVC+zMuAx21ydKprAKexJLCOi4NMZvk1QE0w=;
 b=EXF4s05e7C2B4vh228Jc8Pxwx9R+jLlMMlqfqIolJh01B/TXuZJ6dKoiC6VJD+fsL0bv5ddGDbq8RqrevRvoEns6Bhbq3t7xd1NHgJCnDv035P1nkZzNzD1F3tBIMvmj1r1xdECsvjRCYN/1xjKus497K2vigFh2IdYVWFPdgm6QoaqDd5uBdvuAMI2DvgmPIlI9xqQAPbA0vgjPjLT1wweyVwejCJBaAug0AKLuTVXwgMZ3PN82rjPi30eUn05RZ0h3pEMSuIO4JXOjpLlUjyNoAnnlo8L6m/UUKdzkNncMSaggolz1LlWOt9IH11qsU2dHFF0qV6ugFs+HnYKd9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DAwjKxvnVC+zMuAx21ydKprAKexJLCOi4NMZvk1QE0w=;
 b=rwcZY6UM9Ugjg5phXiNJ3jTQeNFaFKyCXM2qIj4YDyIb/eSkl1TBzcyU5fAmLjdpHBT2yt8Y3q2A2CZui10aQw8tD5i/GU5K5n1pLA+J2qVW1+PXoFMqE3QjrqJtZ0X4l8pywhXKByNymFg5vlTD+o23y51oxx13yvMy2zpvHHg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6756.eurprd04.prod.outlook.com (10.255.182.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.16; Thu, 12 Dec 2019 03:19:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 03:19:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH] arm64: dts: imx8m: drop "fsl,aips-bus" and
 "fsl,imx8mq-aips-bus"
Thread-Topic: [PATCH] arm64: dts: imx8m: drop "fsl,aips-bus" and
 "fsl,imx8mq-aips-bus"
Thread-Index: AQHVsJr0430+yrGMXkiqegeAayzdJw==
Date: Thu, 12 Dec 2019 03:19:25 +0000
Message-ID: <1576120601-28698-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0076.apcprd04.prod.outlook.com
 (2603:1096:202:15::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 26512b2c-2412-4f7d-3186-08d77eb216f7
x-ms-traffictypediagnostic: AM0PR04MB6756:|AM0PR04MB6756:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB675619A221046213CCDCE4B688550@AM0PR04MB6756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(189003)(199004)(8936002)(81156014)(81166006)(71200400001)(6512007)(7416002)(2616005)(54906003)(186003)(6486002)(26005)(8676002)(4326008)(52116002)(86362001)(6506007)(110136005)(316002)(66476007)(66446008)(66946007)(64756008)(66556008)(2906002)(478600001)(36756003)(44832011)(5660300002)(32563001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6756;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XN+8r7HR3a7tynccVF5m3CzcxwCKXIvper7rRhhSMPvhzXsRneLWRdQqk5BPfq+ikOnbq8jRlaFQwCUL511B8bWGyHcnf33GuuYUp2YlQhAyMumybYrrtuxGKUe/mIXya1H6AtpKkUPqfPl4GQ1+R4f8lkEzNXirTyqXc3yRO63Suw96YuueMp6lMM8Iqcnwq/g8A7fmhXlcVvD42oW+cgxDO+fV6AQLQva6UfUUtws59bwwQDbllqTtSaO0X90Z02MWGf8+m0o470mmlP0+sT/SgZ255SEF9PK+iw3x42rlF4PQgQJJtxAnYm6AVmIA15nW1iJlDHjBra5TzuZMNHZXV9xRJePsimyAjSZCUeX+SupRofBZTNGygHyU6jmDiI1+dvlU0hY+qLirDoXKjbxMQUmRP9oq5PwIbeTH2U+S+UEGfUR13c1OXFO8NF3EUMlD1k846PsBCxdo6VXmIJATZt5F6KizunA8B7Pebh+PoyuJlcStNuC2vi1lQK8+1k7eEEZslc8qKa3b4JM4xQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26512b2c-2412-4f7d-3186-08d77eb216f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 03:19:25.2740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g4HauRcp+eat25InHGbb7kEsJRCdwBeQBpNFaZVj9xN5hE598Aast0MflFUMjoF9kZTih12veOJN9tG7x8oZ3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_191928_420708_B060607F 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

There is no binding doc for these compatible string
"fsl,imx8mq-aips-bus" and "fsl,aips-bus", "simple-bus" is enough
for aips usage, so drop the upper two.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++----
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 20756440a420..a0dbf47ab320 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -232,7 +232,7 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -501,7 +501,7 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -560,7 +560,7 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>;
@@ -775,7 +775,7 @@
 		};
 
 		aips4: bus@32c00000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 5c47443ceb3d..cce65b9a861f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -208,7 +208,7 @@
 		ranges = <0x0 0x0 0x0 0x3e000000>;
 
 		aips1: bus@30000000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			reg = <0x30000000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -395,7 +395,7 @@
 		};
 
 		aips2: bus@30400000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			reg = <0x30400000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -455,7 +455,7 @@
 		};
 
 		aips3: bus@30800000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			reg = <0x30800000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -671,7 +671,7 @@
 		};
 
 		aips4: bus@32c00000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			reg = <0x32c00000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index a9fe065e3cde..6a1e83922c71 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -290,7 +290,7 @@
 		dma-ranges = <0x40000000 0x0 0x40000000 0xc0000000>;
 
 		bus@30000000 { /* AIPS1 */
-			compatible = "fsl,imx8mq-aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -692,7 +692,7 @@
 		};
 
 		bus@30400000 { /* AIPS2 */
-			compatible = "fsl,imx8mq-aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -751,7 +751,7 @@
 		};
 
 		bus@30800000 { /* AIPS3 */
-			compatible = "fsl,imx8mq-aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>,
@@ -1023,7 +1023,7 @@
 		};
 
 		bus@32c00000 { /* AIPS4 */
-			compatible = "fsl,imx8mq-aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
