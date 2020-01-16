Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736ED13D469
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:39:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjP1oKFzC3gtTMkhhc1jFUZD8TfJEclegmIClpDw+Ls=; b=HnqxFBt8jbIRX1
	aKTtxb2Ut4eQZhJuKLSO1X3qVe1k+cHROHEKyL6DCyWgT2GcuHq8ITYIzAYdpUeb3TceoG+MgnT8n
	T4dcDIjVk53BnWuzO3wM8CzNfBRLvlpIoJIRCFhvgBp/wvEFUCoKlOOu9btVS4ASpvGUdYyDUwou0
	JYHK7L7rv5J4HKG/0S90to8Zm0eJYr2kAF9UmF8GrjcIdQs53GjBGQfSGDzcZ1sjMnXGHsJUtgDRg
	J+E2/WjJ2yaQ//qTZll/Rgltuy71URnxcIIykBkeCcTCZl+2KdDAfFIBYKtAjGMutKeE4396hvjaa
	IJNI+sFPjyBum/DM878w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irynu-0006Kf-Mv; Thu, 16 Jan 2020 06:38:54 +0000
Received: from mail-he1eur02on062c.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::62c]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryn9-0005qq-NJ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:38:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyWEajqBr8/Hba48K2fmLWjeVBxXLPIC5DfxmF4pnlWyoUa6ujLjcbCBu/Dx+azCeY3ARoqRiNId88/ZjmWXkAwBq4W26/Qym5rOO8s3HVUjkga8oSzDjFJj1m+1okVlNttc2Mh1mmGZ1X0HobP/ZQeq6c3Ta6W0J4jVtMaB2q/iwga9VB23aklmgk7ESVOjm34AlpaWrmu05bx/bmKrXluU2Pv1ZqVXbZztLYW7mSs5iN0F+Q/kzoe2wRwxoGAfw7qGoTe8bkmVKIaCqK46jNO+dki4e3x2w/eqFFSO9dlqe54iUpTf8mLHlZduD5/w4meKyF5F1amIGgPJ/wVsOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kdclqX5IJWWP3MnKgWjzwYA4cg/eELb+VjV2JyPtfO4=;
 b=GcEfPmgRg/dOlsZflBp13ZlbfaHPaZwke4JPRXDpNyojB4nbkJSDTRH2SfFPtjZK8L900c3oX7lHHoJBllga5OoVPfgUMsd3/JGyeLVIN8jz2GZedHqJiBYPqxsyiDM5V4B4q7yrPuPXVCfNrWjvP+ALP5D20FNaczGhvypdB/mrA+H7nsADN7TdR9Z/PuTJIK1lyfHn3KSiLKXCqV3xnzbrACghVC5d4w51U+Vd7pUzKv3G4efQyS40SCTPqPDsii23c75aca7VZ8t+zuk4I5BXmVlDuKSEOpTmSKMxZxpWyyyWUo7LbsAdLtO/vhoGWmUebJBOvmhfg83G4v9t/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kdclqX5IJWWP3MnKgWjzwYA4cg/eELb+VjV2JyPtfO4=;
 b=JydLF/BZc+/fyw/qvlHBUfFNBd9+cAO01I6dbO+z99jXWcIS4XLZGsH6bUko9wMkVU6m4ZIbmInVEDhMkvSFVnAJHMYA7PUTVCc6HUVOxzDB7Jf5O64CDuVfN4LOddIqqxgFFqm2reHIgeOmANGLsFPMDJz3U1qNBhDOdK9yyxY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4370.eurprd04.prod.outlook.com (52.135.146.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 16 Jan 2020 06:38:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 06:38:03 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0019.apcprd06.prod.outlook.com (2603:1096:202:2e::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.19 via Frontend Transport; Thu, 16 Jan 2020 06:37:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH 2/2] arm64: dts: freescale: s32v234: use generic name bus
Thread-Topic: [PATCH 2/2] arm64: dts: freescale: s32v234: use generic name bus
Thread-Index: AQHVzDeAovkYo45XWU2J2Uelp2vE7g==
Date: Thu, 16 Jan 2020 06:38:03 +0000
Message-ID: <1579156408-23739-3-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: ff6fbe4c-8975-49a0-cef9-08d79a4ea315
x-ms-traffictypediagnostic: AM0PR04MB4370:|AM0PR04MB4370:|AM0PR04MB4370:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB437098F67DACE3F5993A019588360@AM0PR04MB4370.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:86;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(199004)(189003)(81156014)(36756003)(86362001)(81166006)(478600001)(8676002)(6666004)(4744005)(186003)(16526019)(6506007)(956004)(2616005)(26005)(5660300002)(8936002)(71200400001)(69590400006)(52116002)(4326008)(6486002)(66476007)(64756008)(66446008)(66556008)(6512007)(66946007)(316002)(54906003)(44832011)(110136005)(2906002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4370;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3t6LPctc7PRQigQ6CSblyxHVIWpgK62thOWJi9bXnpWfTw4ZlsHKdI1OVn2UKwb8nSYtkhTfC05jr98NwhpQby3aJBdEFAJx8C0tm9HDNU1MDQUUbUHpTDo/2fujgtGbbq4pUFWQ9ZyBMl+s8+T/oFTF25YITos+dpL1B5sap7/26mog2N1sWMY9t2G0A0E1rt6L3SEF33RfJo8wTu5Hy58Tg54tx1YghFNt+77z/C70WTF2Z6zr3r7oC4b3YVL8OcFFbAVjxy0TbcydwE+qkmV+q7P+e9EB0bV1pG5pcMQFQI7gqoUvnOv7CiUwyPsLw+1lys/wutObNhH/TEMN1TGGthwDFk+KkKLrysfeTGaRh7a9qQAGD97sqHwqqrlRU1Oow9z4UVxlsojIciVKV9kChgW0Ua5xWAqkv2ZdNoBsrapb/7d/E7NkZJT+wFVVfgPdj2eL5DncNEA9omwFcSiojEph6K3mIowLj59oTS10dgo9I4DUz6j2HHHZHgeWO7tRE051zERyltEAiIH0Cw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff6fbe4c-8975-49a0-cef9-08d79a4ea315
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 06:38:03.4124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iL0OWOZVLbRlffsnTgJlnrISMwsT2kSl/7PfoEFUhyx3BXAor+dTAna6JVaDdFRkWWSIxSbTw3tH6ER3v7/2jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4370
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_223807_788270_AC75C50F 
X-CRM114-Status: GOOD (  11.37  )
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
 Peng Fan <peng.fan@nxp.com>, Phu Luu An <phu.luuan@nxp.com>,
 Dan Nica <dan.nica@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mihaela Martinas <Mihaela.Martinas@freescale.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Per devicetree specification, generic names are recommended
to be used, such as bus.

AIPS is a AHB - IP bridge bus, so we could use bus as node name.

Script:
sed -i "s/\<aips@/bus@/" arch/arm64/boot/dts/freescale/*.dtsi
sed -i "s/\<aips-bus@/bus@/" arch/arm64/boot/freescale/*.dtsi

Cc: Phu Luu An <phu.luuan@nxp.com>
Cc: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Cc: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Cc: Dan Nica <dan.nica@nxp.com>
Cc: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/s32v234.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/s32v234.dtsi b/arch/arm64/boot/dts/freescale/s32v234.dtsi
index e746b9c48f7a..ba0b5305d481 100644
--- a/arch/arm64/boot/dts/freescale/s32v234.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32v234.dtsi
@@ -104,7 +104,7 @@
 		interrupt-parent = <&gic>;
 		ranges;
 
-		aips0: aips-bus@40000000 {
+		aips0: bus@40000000 {
 			compatible = "simple-bus";
 			#address-cells = <2>;
 			#size-cells = <2>;
@@ -120,7 +120,7 @@
 			};
 		};
 
-		aips1: aips-bus@40080000 {
+		aips1: bus@40080000 {
 			compatible = "simple-bus";
 			#address-cells = <2>;
 			#size-cells = <2>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
