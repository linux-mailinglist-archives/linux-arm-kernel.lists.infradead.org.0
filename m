Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AEE13D468
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPrmeyGYdZvXjkuQ++Le6cfrqaEDoa2zd2E3mcdP+eo=; b=Ae/wjm8gxw+0Ix
	FOJr+AXWqJuPfBFASXI5mlrlMfcbYSYjA+fJMaq9RQqMbGC/PnKP1KpjXKEmUghJYPctnoxcF6WJa
	it+nG/uIou+lySOvpy9qY/JDFhRNvYnAUS2UiJXvjESHGMTKhu8QYqXPT3WHvtGQcF/9iXOAUhuS6
	beNy6RZU3+ThD5bQjMnhGqWeehQBauhJHHUvgqU6tRRz+MzQvS7TvMLEzcbJAWcT0091IwLHYnnqc
	NMAcfxOOKLqWuG/2Gl0JAWIgulSNw0+nrxDnr9hcMrKPP0humY6WMWsYAMrtUFB+4I35DiXvzzW4v
	qD+ZTSDtD5gddchev2rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irynY-00062W-H6; Thu, 16 Jan 2020 06:38:32 +0000
Received: from mail-he1eur02on062c.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::62c]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryn7-0005qq-4P
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:38:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXOGPT9bMYFG1WIRccznvjBoAOGbpLifzsdb1GEdrtQsRbPEFXtDexmGRcTNLNy23WGx+a40gGUcbPFx/nmoGnUbUuQjuUVBiGrfFQwlgdHQlv4VzY0Ljh9HgtAXA1f3Z3QG3X+9Mk49/H/L11Nu8l09P+9/eIXgWfTEiTO1NxJBlziR4itKjNjcw5BWXiY58+qqxkZZ0D2p/1qJwgbh9I+rQrVvgebRFigK58f3WSxB5WhAYhA9C47imOfnhXAF83LeUlEzZ/Ltrz0d/CaLA8Cmckj6v4X/wNePb+YWKn7pGp7W+Uf99Gx9elWRqx4DfX7YIcdMOzzyjlRNzTbcMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wf53RO9PjBXhH7m8Kou178SVFMAiLAOxVHTVPwdPLVc=;
 b=L4Hvlej9JmcbZtAbE8DjZiyD0CXFjHZdeAI979BerC3Qp7CA7yVYsnrGY4yY1ua8RyuSameuy336rbjL5TcsNbnC6bm5rUfnstqVnq50e+i6muBQ3SqQ6MZPNzk+q3sa3wnGoorLg4JbiYBYkhV7pQVWU7BkOQYsiJFVdN7+yXgK26nKAVlBi3b0Uv3wwCD7tZOl9BQbIUCLRBmlnwge28NrQ9inL5f6jO1sOM39LdtRRNC11ZMIOH68csJCxWmRCwEB4zxjgQHP7K/q3PzpBHBRCihr2EEGr4UmnsLARqwknBuM+H6cRev5yYzSZTz14hh9j5swtNghLrrDakEuEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wf53RO9PjBXhH7m8Kou178SVFMAiLAOxVHTVPwdPLVc=;
 b=AZWq2TbkaqDwYjDZVviVoVbrLORP6EgTJbogxRHODLJgjRNm/0w48SM0YoDcgXxbs6DU4M+ilbwKipm2+a9OHjX62SIdoJv5c+8lVqpmMg4Lpnl5isVZDs6NBCdSJwSN768jgPai6Kuy1E9HDZ+OqK2MnMX6fDmCZ7Jngseogd0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4370.eurprd04.prod.outlook.com (52.135.146.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 16 Jan 2020 06:37:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 06:37:57 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0019.apcprd06.prod.outlook.com (2603:1096:202:2e::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.19 via Frontend Transport; Thu, 16 Jan 2020 06:37:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH 1/2] ARM: dts: imx: use generic name bus
Thread-Topic: [PATCH 1/2] ARM: dts: imx: use generic name bus
Thread-Index: AQHVzDd9dofq1wixmkSbfSHsuEOGXg==
Date: Thu, 16 Jan 2020 06:37:57 +0000
Message-ID: <1579156408-23739-2-git-send-email-peng.fan@nxp.com>
References: <1579156408-23739-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579156408-23739-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0019.apcprd06.prod.outlook.com
 (2603:1096:202:2e::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 618b9608-afce-462b-3130-08d79a4e9fc8
x-ms-traffictypediagnostic: AM0PR04MB4370:|AM0PR04MB4370:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4370C46B8B6D83CDC127F55688360@AM0PR04MB4370.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:86;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(199004)(189003)(81156014)(36756003)(86362001)(81166006)(478600001)(8676002)(186003)(16526019)(6506007)(956004)(2616005)(26005)(5660300002)(8936002)(71200400001)(69590400006)(52116002)(4326008)(6486002)(66476007)(64756008)(66446008)(66556008)(6512007)(66946007)(316002)(54906003)(44832011)(110136005)(2906002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4370;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5Us8rc4BFaEQAUjKLUYh4SdzVaQf44hX5WWd/RJZ2pcILz5YCQ/WsAX2wOrcdtF/ynMk4NhFp1vhX9XGbe4v6cXDOwdJqXq+lakDgZM88qFRCmOaUATp6qMqhHBCdHRTZ4wTGa6dWF+Lgz/5uYZMRG+P8HGYhx3AKkzYVvFdIX6Knt+gs3s9ZDg2o535W29fHTh8H7oyL3dpSi/ILTiV81yKFimxDYtK0UhHfACQtWlC3NJUyJZiTd85IlBtXH86lgkz/X/dXIY3wYd4J5qmulgB7DzRGPVGYs3wTVHglZU5n3MG2dOLXrX7G7h6v9tXrV/2YfkAefXas0fbpGYg3yOSERS9C0i2e6t48cyUwM8NY/A3ZM3imrxeVun9YXCxUUmrnR+ScEAj63x9VF54zQuxxj208l8pcgpNKNX5AoBBCcNgaKMwZQQJpu0yewKVLgJFNkHCOiPkfgHiJVZwkglSNEMDsm2XyKL5ZiDxsa5XKuvgsy+99cjgUyGr+hUhLEmFzXVDU6DLiyKD5A+qTw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 618b9608-afce-462b-3130-08d79a4e9fc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 06:37:57.8756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qM6ad6EMIz6VMRSUHaFKH/nHbn5LsqHUT7dNiVNQCxHNpeaGJiYSXOANR4iq6ebCK98AmrpjmbwxY1ewxkJ9RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4370
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_223805_339597_0894DE0F 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:62c listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
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
sed -i "s/\<aips-bus@/bus@/" arch/arm/boot/dts/imx*.dtsi

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
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
 16 files changed, 31 insertions(+), 31 deletions(-)

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
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
