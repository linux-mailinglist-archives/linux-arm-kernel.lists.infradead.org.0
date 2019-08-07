Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DCB84770
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vURI/1Tffz6jNM7xH6J4yGUi/1nM92mMt+jTtEX5ZOM=; b=Unduq3E0UUf3UA
	bYbmt7D13FTGdy/v6b2FnRIHm2mMpuW4hL9kK+Zplu4xvL7SgJ5sSS1oLfDyYwWLD9hQJEQW+I72I
	7YlduSGybUqHch28SPNoEvyCokjBD73Oy4c2T7mGb/3mrpw8vbS9J/TE3H8EdjWrGP92l2ikZY5BV
	bJqEUcvAd8bfyqOP5AXQiH7WOqkVb6WUr8/RLO74VhhTu5vtbedfMXIajBJDvaVNgFi976Z9lhC+j
	eGBuDhXOfyYN2YG+7t/4KnKfLxIZVVOmkiQBv2aJ5tVZ51qrtB0Sm8ZKk46oXoQ/FQgHsdkdMyc8V
	OFwDQy+6XU8WI/0RsM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHMy-000885-GD; Wed, 07 Aug 2019 08:32:28 +0000
Received: from mail-eopbgr00091.outbound.protection.outlook.com ([40.107.0.91]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHM-0002nw-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgiDJq5Bb2Hq2RiU/cE2AhftzWXoPaM5SJdSlF75u/mVhKrHAEtg/mH+ZA72LecGTj3le7biRAC600Z5uStYa30MuwBopAHuz40vjNCY79LCHoheU+CGUDXzt4wj0oW60BwLMKvdHMLm7LKpdE7GF+l1k/PDVSC3VNE4snFKB0IpTQspvXJf3sw+0B5IJULDTjIXdr8tNyWc/rrlQXvsOqgEoQI0i2vYNDbi6acXqi9XZiLwK5mMPN8TMNCIGJdcFGmt9WiilBFYHfoIuTCOojx4vzQTMBEGWB8Zde1DyKqmnJWCTnH+FzKBup8VMMFjKYJiP6pOWHU2ZRpHQGn+/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSYA2XMw0c4cos/mKQV6N6hSv6gQv5QcoovapsN0f1U=;
 b=cO3VwTX5Eniq1+BvOjCmZO4uBpdc1io92sEn8/aNWjSfKPI86eZLrUYFX5IJD95TxKeHuhDWjkrxCRUPlSBNNOcXwbeCguSavdOpp4qFA4m0XQ2SVvJW/1X8czSTGlBe+rZoMGxZMnpXRX58GU0PG2I+/tBbilfzyWZqL3rsAgQ3vtPog2jIKCfTmjXark2y2+dHiLWKjFrnSG0YVg5/zUnUNixBVD6G090ViHERsc9xD+cGYPc/Y4p1VWDwx1E2UXZOkJ0NltrSuQoXSbTSPeLp90idhYFVHyNILZFINvm3Yxy6Wb2f9lcz96ZUwWvFPaqfOFy6TpibTsvdielk7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSYA2XMw0c4cos/mKQV6N6hSv6gQv5QcoovapsN0f1U=;
 b=vnEZMCaSIXaNTO1fRreiwiff2XWmiyU+T3u7wiwFOMwHsX+G8u3bVcRM62bS0l9+Lfq0Hl31GS6ELtAa8r9n4sogD6NCZPWqrSoOzHe+lLz3BbLN4qn9HhRtQqPZkHPSDZ8fpHlV52l6uCBfnFZQa22kySd4b7V3UDFLrFD/df4=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2928.eurprd05.prod.outlook.com (10.175.25.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 7 Aug 2019 08:26:36 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:36 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 15/21] ARM: dts: imx6ull-colibri: reduce v_batt current in
 power off
Thread-Topic: [PATCH v3 15/21] ARM: dts: imx6ull-colibri: reduce v_batt
 current in power off
Thread-Index: AQHVTPnTcZ2VbS3AV0aYQR70nLfXBg==
Date: Wed, 7 Aug 2019 08:26:36 +0000
Message-ID: <20190807082556.5013-16-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9adc53c-4d3a-4738-d4ec-08d71b10f623
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2928; 
x-ms-traffictypediagnostic: VI1PR0502MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2928C64B1A65C549529BDBC3F4D40@VI1PR0502MB2928.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(199004)(189003)(64756008)(66556008)(66476007)(66946007)(36756003)(11346002)(476003)(6436002)(76176011)(2906002)(316002)(305945005)(2616005)(66446008)(1076003)(54906003)(110136005)(68736007)(486006)(14454004)(5660300002)(446003)(256004)(86362001)(44832011)(50226002)(4326008)(66066001)(53936002)(6486002)(186003)(8676002)(26005)(71200400001)(99286004)(6512007)(2501003)(2201001)(71190400001)(102836004)(386003)(8936002)(6506007)(478600001)(7736002)(7416002)(52116002)(3846002)(81156014)(81166006)(6116002)(25786009)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2928;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MHfgNSzYH6vdebE0kRO0SXv8M6sLs3SyoEnLctAYSi1OyMncDubHUQbbC218iKD7i6La52aTB5cRyMX4eI3BEcbQtxjy5pWjAyuagvEiNCqFEjU+lsBeA7m1xbFc6UGkI6Cg/KeCq1+6EVQxE8lvC+SwEFRRP/E2PFnxqgpTfQIq74MjPGrcCMf7HwsKWZn8WwVOg95DLZZiRHqdBnh150Df8tWcx7GDz1CSXpxgBvqTF/asRDtdmBmrN4igAZ7GGZj1hOjjQhKbswZVrIeUE1Oad8Q7vDZCkdZxssNh1XwAruaOfGHkr9H6AtglXmgEzz1Vs2QbJxhGbFhGOUtFhbreyuc8aVopiccXjYiQ5Zhw2oQ5cDhYrB1TutxCDNXxGSPJ1CLoIsLBc2tHdUHF8KCAoF1wFDdvIAFQBZWrDrk=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9adc53c-4d3a-4738-d4ec-08d71b10f623
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:36.1073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sO+VGzFbH17U2NSDzdYj1EFUlpPzK86VPKIxOvRQpGZewIUV20B5SQWP44l5sSnwa5sVPqTGpfAoS6wrRwhEdjtL2aItlc8bLdWePdSs+WA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012641_160139_B4B242DA 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

From: Max Krummenacher <max.krummenacher@toradex.com>

Reduce the current drawn from VCC_BATT when the main power on the 3V3
pins to the module are switched off.

This switches off SoC internal pull resistors which are provided on the
module for TAMPER7 and TAMPER9 SoC pin and switches on a pull down
instead of a pullup for the USBC_DET module pin (TAMPER2).

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index 1019ce69a242..1f112ec55e5c 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -533,19 +533,19 @@
 
 	pinctrl_snvs_ad7879_int: snvs-ad7879-int-grp { /* TOUCH Interrupt */
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0
+			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x100b0
 		>;
 	};
 
 	pinctrl_snvs_reg_sd: snvs-reg-sd-grp {
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x4001b8b0
+			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x400100b0
 		>;
 	};
 
 	pinctrl_snvs_usbc_det: snvs-usbc-det-grp {
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0
+			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x130b0
 		>;
 	};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
