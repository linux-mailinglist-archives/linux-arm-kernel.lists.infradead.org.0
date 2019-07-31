Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768877C1BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGcnbYdMgGfgxHt8NQ1dnCF9M762W1k4LERIyr2bnhU=; b=qBIwrWhROX4TKI
	Ib39bsk2EgC3IDYtp7DiysoIbfqLTqkkSIc0l1MW8aEvl5s8+OGZEJ2jqAk7IhPoMhconOpeGmL0s
	jsXHJsGHelA9fdSZjUEKbFPDMV4UUrBEpSKHEjGWR2caWI4zy18nTolKjqN+SyV+b21xulI5hnw67
	hA9DtEIL+G9qkQOok5HBOFuA6z3MJXhdv3Te9DmjUXBEgfmyspp4o0bdgqmGbCkRTn6QQWDzRiW5J
	XAvCBQoJA+bNB/+LSus4VlQEAzUR/JxqEFIaWBFqz+gysAJJbMbUNjdkP1IUMcRiTBxlQzve+CPnl
	1xqlN45ZLsexuLyKzlpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnub-0001Xz-G4; Wed, 31 Jul 2019 12:40:57 +0000
Received: from mail-eopbgr00108.outbound.protection.outlook.com
 ([40.107.0.108] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsns5-00066r-BS
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UrDZ35i62Pb5zWCe1AGbC3Z1u71QJ+bbPEkUwE0QUqZ7cesU1mQlrZ8HOzbSlzkQ69XTjmfLFfKCK664gfCnJXDeX2pl9rWedKLsQpfuHcHmaE67i+HqAq6tTlNM2J9HyxJKBIpDnG2k277Cn0a91XBp4P3i2xol+NUR/rOC8gCpG4IBVtSXsMGhAZut2TCl/on5O7Y7cbYXgbA5oBF7CPvXJL+7rqPvuQXyF5Uto+jWZZT8A4XuDKlzzFAcFH3jVG3fwVNasOSR4shtNKRteyC1uUFbl3VcAfyvYTMx9FvqOTN6SXv2lg/Ut19JFkmaQTuALiQ+TPr6KbkURHm+Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+5rVbRpGdjJV72oA31FmbrTns7uSCtvECRztRM7/gfQ=;
 b=TrN140AydpkB2OPyRhpL8Ylm7ptE9VS0UXwWLG/HoJkQCCEjPSdvtJ0+qhoJzPooE2PZFhOfPsT9KzUyhbNfSSMC7zgiC3mTCSAAktPUDJESOp2k0NmhK8pTSqRZAlDFmgidjFhmNrloAY6XdQdlx9Q28gmSWI3V8nEfVFvlPUOUnPSHRYeBPvTkDnJjt5TLVYKJ8T2Cdj09gJSmuAEOvdtyVtmiXNYuPkXkWTXOLdqwFvXPOAaCtPZl1gfTvrPDVFkqlnLIi9nvwjBzaC0r547Xzwv6rkt4lmnwGmzZ9yXUYxQDDfdvHY4egSYoUTLcgVjTM8A/sOErkTe8QPyrRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+5rVbRpGdjJV72oA31FmbrTns7uSCtvECRztRM7/gfQ=;
 b=f4eeOnwF5HUcMgAWBE2ZM3bYDWSY1Mv3lqZR4jQLUECzaAofZqgpx/jeK7VVZb3SE6qaRnigt8/9QCC6q7AZb0WhhNn6hOCiltB6rxUz9SJxpVFqzCWZGKPDY3ScWGz4jAhrFSF0CwLpvEzQYe0THo7Vz5xM4YfS23Jdp8ARptk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:38:18 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:18 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 10/20] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Topic: [PATCH v2 10/20] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Index: AQHVR5zUuNB37zvtBE+UPwlRkAyqsQ==
Date: Wed, 31 Jul 2019 12:38:18 +0000
Message-ID: <20190731123750.25670-11-philippe.schenker@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0012.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa9e715e-e5b7-4d46-2358-08d715b3f6ca
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB361550F94AC096FA739EF83AF4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(76176011)(4744005)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(446003)(2616005)(11346002)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003)(32563001)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rcLHZh39JkOVrB6oFXgt1C3qlAGHlOinxoM0OolISH1Pqw6uJ4MBPknD3TkJ432OpJRTgMF5A/0g21y44NUf57V44zhj7VqfEWrzAkymlN4KgISPbcm4ErDa42RVYsm7oZ0xA3sofV55Mc/mRuAchArN/b1UeJZol5zsxJrlkPCNUFQnkD8L94/kkBdt9hswFU6xj0rMyCWvxPRnUJA+EGji9hLeRP4FX6HpmCjstC8vog4wgMS1rPT1me5BxCZcK9rhTBpzCk2dItBn7MDsatwhcl0sxYtRCE5l/4uSbFm8radZLwVB1LV/QdntlR8cSbtgfBrHPaS4TJR94Ar7GTiYFpV2EbrJEb3d2RwEtfijFtBvl0GG0e5itHSfUMtfFomHGvYzUWBE6A+wYG8tCglGzZ6I03WTYTP3ciulzvw=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa9e715e-e5b7-4d46-2358-08d715b3f6ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:18.1945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053821_407598_0A3CFA86 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.108 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.108 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the muxing for the optional pins usb-oc (overcurrent) and
usb-id.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx6qdl-colibri.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 019dda6b88ad..9a63debab0b5 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -615,6 +615,13 @@
 		>;
 	};
 
+	pinctrl_usbh_oc_1: usbh_oc-1 {
+		fsl,pins = <
+			/* USBH_OC */
+			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x1b0b0
+		>;
+	};
+
 	pinctrl_spdif: spdifgrp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0
@@ -681,6 +688,13 @@
 		>;
 	};
 
+	pinctrl_usbc_id_1: usbc_id-1 {
+		fsl,pins = <
+			/* USBC_ID */
+			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x1b0b0
+		>;
+	};
+
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX6QDL_PAD_SD1_CMD__SD1_CMD	0x17071
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
