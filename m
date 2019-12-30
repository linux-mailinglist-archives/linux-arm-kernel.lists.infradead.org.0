Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655AA12CDD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 09:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CHhbcjU28wFfurGIOAh5TNc9f3cVZEDHqF2+gr/mGeA=; b=m6PlmdExqbvV0Y
	YdsmIjUEmvpNKPZ0gWrCfH0isgYCrpgsVA9utAwzaxXi+MAeXChezHsmBFmhKYp7ZRVLeYYWEcJNH
	X/nZV0gnjluwroyZrlZpg3wG3KR+Szb2jFyE0eOYOLht8cm4jRw+lrabxTjRCRXzJYfC32lTaIg84
	FBAgqFLZHVXyc4XrmflUZUIs6/3O+mW0VtkeEHdHQZhn4J/Feg1C1F+NbeEZBy9eH7ByDq9NOzR3f
	9fwewb+w+ayug1EMI2Gt+HcAUF0/sO24OPOXfHIJgoAo5idnee8HgAUe/5lJqAVLwZyVEJ5UYywKW
	Q6lYi9N4lAtjAH26bIHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqsm-0007dO-HY; Mon, 30 Dec 2019 08:58:36 +0000
Received: from mail-eopbgr10073.outbound.protection.outlook.com ([40.107.1.73]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqsQ-0007T7-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 08:58:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9KX9d85NqnV2/N5OoxMepXnOS4jJe0eVhOPGFjIj3BhWdwyjoIcud1zZjwDfdggufdS7WaKxoFOblHAiW5mQPI3FsSSwCSNSyl68BRiv4aVf3vf3BdQkCRsmhAQSOIAjkZcfYsH4Aw2KrssxkZtWPElAzPhBfjRJ6EsZVc6/KmLv1BzeFZFWaN60Udef35ZSvGxzNlIH78Y4CCbuYEkIrhCwrVxgyvI+8+gfVW4hN4zJrV2IJ369PrnmeSVWU8uLd8FU7K8EpUYGF/QbBCxmDj4+0jLBAxVzMCuREqBEANBIERHZiVzVSTjCOBTeu7c+lYKJLgy0jCPozhK1Pr5QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mmTu3+i7Yqq72kIOuk2jLjaiNASzhYBQ1y1Z4zZteow=;
 b=Po2KBHEwlP02YAr7/EiIM1uTdp1yB57hIcc0nPAjn9R2YT7xsamhZZx3Thtc97zv2ykaMmSCLxeg0auFX7SE2sp7zN3dPRxOEOC6RTYKF+Sl13Cuulu2npXpPWJkvvAUCIqCekZQiw6sm8w+VWiBXqiejv1hquazgy8hiiwHFNGpaieys7lCjD2qWOnRiNzQE0KVIqM3a33a14NwS0N56+CiZhm5uyyfIzwQ3z0Wmt8fA5o4nfrVtBKG7K/xXDg5dsj0+m3g1F7gfMwv9oKErJMHwUYsVLArGvteCv9ntRe/4RA6uprhCCylxvRKLZQNXp/IdsHfm5anEyOjmeoIrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mmTu3+i7Yqq72kIOuk2jLjaiNASzhYBQ1y1Z4zZteow=;
 b=njbzwYsEIDDB3MgSXNncW6xpLvU01yj13aspbnwFPI/DPvcqpN4U8LUTrC6zOF1CMkJoaow4xwi1aZY+ZOtlwEmn5tZW1D1euPY4abANbcAx0bvWpXEa5h96uxELwPibsxFBMmqqVNjQgikC4q/wCiY1KHAOKDhnZhwKbnRZPtc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4961.eurprd04.prod.outlook.com (20.177.42.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 08:58:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 08:58:06 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR03CA0051.apcprd03.prod.outlook.com (2603:1096:202:17::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.6 via Frontend Transport; Mon, 30 Dec 2019 08:58:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH] ARM: dts: imx: drop "fsl,aips-bus"
Thread-Topic: [PATCH] ARM: dts: imx: drop "fsl,aips-bus"
Thread-Index: AQHVvu9AXeMfpR61Rke6CNGr+daIZA==
Date: Mon, 30 Dec 2019 08:58:05 +0000
Message-ID: <1577696078-21720-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0051.apcprd03.prod.outlook.com
 (2603:1096:202:17::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5b87a5b8-f2bc-4ae2-fba6-08d78d066279
x-ms-traffictypediagnostic: AM0PR04MB4961:|AM0PR04MB4961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4961199CCCACB9F5548CABAE88270@AM0PR04MB4961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:157;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(189003)(199004)(66476007)(66556008)(956004)(86362001)(44832011)(16526019)(64756008)(66446008)(66946007)(26005)(6486002)(316002)(71200400001)(186003)(6506007)(81166006)(81156014)(8936002)(69590400006)(8676002)(2616005)(52116002)(36756003)(4326008)(54906003)(6512007)(110136005)(5660300002)(2906002)(478600001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4961;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u1EyF1+DDnnprMteIpsxurLK3dqgClpdJfWoMieyZnxgHxc3BcXIeaNK0Jk1xxgkwLlDpRKkClsfuKiW3ocV1e/Kd2Ery4D9H8P1vLu6mcl9sN2v4kLOc3Z8V9nda/YPXJhIq3OCno/DCEaVpBkjlxA1eQaA++WkuW5l5lmQPMoBTNiaZpLH7A6nRNT/ze9+ka7cJhnWtspI3QUbgiTPKe/qY2FO3MvmV0RRWrn5eqH0K/jj/ZDspxxep7J/2X8daB+kOoYPlXtJbNCZgq6vLfgOJsuECoMVoO8Dy5nIX+rMq08BN0b5dnUR1gkIf0tikAdFLgH9/ZYTQLcwqOEZOqid5KoM/+nw4erURlOKXuQGr/IGjF4hGRNa+zD5fxUYKfLHPyqTHxdqkXCCBDm4OMcLyMd41rW94U6s/1j0P6wtcEgy1SSr41pw7mj6xcPN8gj0W1geiUchxiMLmkLTMmyU4j3vkIKCvWZifVa6q2i/P60dzz2teZDv2ME8PpzfRzSh/UmIM7tqQXgEMJwbdw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b87a5b8-f2bc-4ae2-fba6-08d78d066279
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 08:58:05.9954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rHw664M+X1d9MggLhLtpKvwOFTkDbGB0YQBocBVLLIYldfgZfYJWCv3t7ZCs2kEfly9NZQ4zpfazoqHkNaDP6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_005814_252474_40046999 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

There is no binding doc for "fsl,aips-bus", "simple-bus" is enough
for aips usage, so drop it.

Scirpt:
sed -i 's/compatible = "fsl,aips-bus", "simple-bus";/compatible = "simple-bus";/'
arch/arm/boot/dts/imx*

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx25.dtsi   | 4 ++--
 arch/arm/boot/dts/imx31.dtsi   | 4 ++--
 arch/arm/boot/dts/imx50.dtsi   | 4 ++--
 arch/arm/boot/dts/imx51.dtsi   | 4 ++--
 arch/arm/boot/dts/imx53.dtsi   | 4 ++--
 arch/arm/boot/dts/imx6qdl.dtsi | 4 ++--
 arch/arm/boot/dts/imx6sl.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6sll.dtsi | 4 ++--
 arch/arm/boot/dts/imx6sx.dtsi  | 6 +++---
 arch/arm/boot/dts/imx6ul.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6ull.dtsi | 2 +-
 arch/arm/boot/dts/imx7s.dtsi   | 6 +++---
 12 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
index 40b95a290bd6..3b7a0b249d80 100644
--- a/arch/arm/boot/dts/imx25.dtsi
+++ b/arch/arm/boot/dts/imx25.dtsi
@@ -76,7 +76,7 @@
 		ranges;
 
 		aips@43f00000 { /* AIPS1 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x43f00000 0x100000>;
@@ -333,7 +333,7 @@
 		};
 
 		aips@53f00000 { /* AIPS2 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x53f00000 0x100000>;
diff --git a/arch/arm/boot/dts/imx31.dtsi b/arch/arm/boot/dts/imx31.dtsi
index 6b62f0745b82..b0e7e3bf8a1a 100644
--- a/arch/arm/boot/dts/imx31.dtsi
+++ b/arch/arm/boot/dts/imx31.dtsi
@@ -64,7 +64,7 @@
 		};
 
 		aips@43f00000 { /* AIPS1 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x43f00000 0x100000>;
@@ -226,7 +226,7 @@
 		};
 
 		aips@53f00000 { /* AIPS2 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x53f00000 0x100000>;
diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
index 0bfe7c91d0eb..961de09b571d 100644
--- a/arch/arm/boot/dts/imx50.dtsi
+++ b/arch/arm/boot/dts/imx50.dtsi
@@ -102,7 +102,7 @@
 		ranges;
 
 		aips@50000000 { /* AIPS1 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x50000000 0x10000000>;
@@ -390,7 +390,7 @@
 		};
 
 		aips@60000000 {	/* AIPS2 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x60000000 0x10000000>;
diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index dea86b98e9c3..86708688371b 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -159,7 +159,7 @@
 		};
 
 		aips@70000000 { /* AIPS1 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x70000000 0x10000000>;
@@ -441,7 +441,7 @@
 		};
 
 		aips@80000000 {	/* AIPS2 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x80000000 0x10000000>;
diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index ed341cfd9d09..f46a83c7d2c4 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -223,7 +223,7 @@
 		};
 
 		aips@50000000 { /* AIPS1 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x50000000 0x10000000>;
@@ -655,7 +655,7 @@
 		};
 
 		aips@60000000 {	/* AIPS2 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x60000000 0x10000000>;
diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index e6b4b8525f98..9b7635e9cf3c 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -295,7 +295,7 @@
 		};
 
 		aips-bus@2000000 { /* AIPS1 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
@@ -936,7 +936,7 @@
 		};
 
 		aips-bus@2100000 { /* AIPS2 */
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 59c54e6ad09a..4b4f22217dfe 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -144,7 +144,7 @@
 		};
 
 		aips1: aips-bus@2000000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
@@ -787,7 +787,7 @@
 		};
 
 		aips2: aips-bus@2100000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index a1bc5bb31756..fac8f22255aa 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -145,7 +145,7 @@
 		};
 
 		aips1: aips-bus@2000000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
@@ -664,7 +664,7 @@
 		};
 
 		aips2: aips-bus@2100000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 59bad60a47dc..4499be62c8bb 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -236,7 +236,7 @@
 		};
 
 		aips1: aips-bus@2000000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
@@ -831,7 +831,7 @@
 		};
 
 		aips2: aips-bus@2100000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
@@ -1189,7 +1189,7 @@
 		};
 
 		aips3: aips-bus@2200000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02200000 0x100000>;
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index d9fdca12819b..63d276fc2477 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -205,7 +205,7 @@
 		};
 
 		aips1: aips-bus@2000000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
@@ -772,7 +772,7 @@
 		};
 
 		aips2: aips-bus@2100000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
index b7e67d121322..633fa08bc972 100644
--- a/arch/arm/boot/dts/imx6ull.dtsi
+++ b/arch/arm/boot/dts/imx6ull.dtsi
@@ -52,7 +52,7 @@
 / {
 	soc {
 		aips3: aips-bus@2200000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x02200000 0x100000>;
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 139ab9b98472..552b14be14a1 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -317,7 +317,7 @@
 		};
 
 		aips1: aips-bus@30000000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x30000000 0x400000>;
@@ -669,7 +669,7 @@
 		};
 
 		aips2: aips-bus@30400000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x30400000 0x400000>;
@@ -809,7 +809,7 @@
 		};
 
 		aips3: aips-bus@30800000 {
-			compatible = "fsl,aips-bus", "simple-bus";
+			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			reg = <0x30800000 0x400000>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
