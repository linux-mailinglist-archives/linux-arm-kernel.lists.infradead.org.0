Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3B58471B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M68AMHyqk69HHYmcjfU4fwqZMEEIRVcFDYNdeW3waec=; b=mnKuVuBgPx6BZQ
	QmomFvEY5rtwM6jevXGhagTuZ7Gnjulq9nVL9qqQNFEbQjL3opySd3eQWPwfBngezBHVWPtOtHhFN
	LWUvXGBX88IPMhpAVZyMbr6fH8ef33FL6DU2JOr9Pgn8NLLlhiGbVi6IvyRDyX0PVeV04u9jAABcH
	olEkUZ5B3uz1bV6yhnYEIxgFUTiMMm5x52EyMNZ3jf9tKHu0IFSi55DIWKSHqOJHw8H6oj9+YLp5v
	4E9VThTyH1jxMvUxtVUDQSi80HQg1a2DNuwhHc3wSux9iaWW3AQ2jtZdv6ilKKfJHil+Fx5UBFouC
	pW74r5wx21o2KgsFdjZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHHj-0002y9-Nb; Wed, 07 Aug 2019 08:27:03 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHGw-0002et-Mr
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eOaFcvHq+7VLFc0kHFJAQlKCJxOvR/9NyFUTVhesvH/M+WUmW+6x8o7YzYrSLCtT684BW/F1R3VpSzTcQsncNO14GELq2USgBEwdz3GsZTrO0GF1bb5F6qpjUxJ7+8YPPI0CMNP6CQFeakS7Re0fd3VQtk1IzuQheLow+VuKQgb7PtVVc3t7RM41hAK4XHwQ2cCndWHn7Ns8IGeOoF1+Tu1yWIpT+y9U57EGezsLBtBl6bbCWPJ0rtrZWhMNHpuinvz6g+fjuMAWQltHoTyoZJG9WKL65oDccDd60cdUTERi3n9kpTWNc3nNMK2jGTqOr/MJHbY3w/zexSVp/cXD2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H+5jnwvCpHfiP2LSNlKCE7GDwa6vNliruYXUPs35SIg=;
 b=el1bmz6lNfCdZI1r0z0mqfOqs9fcGmtPbjHoWWHofxE5WRnX8PwgM7/8d4Tv8wioSN/e1zlW0M6v2PrdvKckJl1CVsrlz3FN1VT6X7vYV+xUOHZSydpZJ/Nbx+gUD2wZ/YCsWArBF3Q7jPbYDbi/J0RslWeLpQiDW6aLI/QzgIskoKI5vTrRx0pPExQ8oqstxlD1KFVuTzUG3sxOVTUrkVRQfk4nANoCZFiho3IFBsiLGkwNc3RulrbKWKRx53b0DmSlyVKurgI3heBOE76VxnR5ZoogihlHjTwGa56k1taQ/D4xt571R4ackHQzZrBQACuqAM6O7ywGNmZPxwewbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H+5jnwvCpHfiP2LSNlKCE7GDwa6vNliruYXUPs35SIg=;
 b=itwTJam/JUzFeAnkUVPYfOJPq7Hi5g44eehghKKxHM9z1CTyzRhk3O0DGbqNEozUKuY7N3zZ9yWHBq0gIwf0NCds34phyNU6/m/jiO2hzBno2Ip0Nrd2u9k/Fyt08F+HwFe/S2vfRhu78d5/ZIFr1RSfWkJdnPvfdQR/x+QSLXs=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:06 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:06 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 00/21] Common patches from downstream development
Thread-Topic: [PATCH v3 00/21] Common patches from downstream development
Thread-Index: AQHVTPnB462n1EX0jUKSqsYCdq6Q9Q==
Date: Wed, 7 Aug 2019 08:26:05 +0000
Message-ID: <20190807082556.5013-1-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: acfd2bac-00b8-496a-f925-08d71b10e422
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB3614AA3540A21CFE0FC89E41F4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(561944003)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ejJjbB3FAn/9QJ3RfUNt2BuCzrZJ3yS1+V17yCCpBTf110xZ6MclBQxRlumXzcTUDEKLSuMg45/b1o2Z+Tx8kgbj327Z+rXL/m3nFrPovCDyxgkUkhMmYRBpVzCo1F+qn3OqviGeVeJJja+Ge884/5F6CaIh8qqcHROS7hXa9H+8qx1IxsjwGuZBybFGSvsRgoru1F8Z5JuJsZ+Uj+qSyeN4N8jah+FXtsn+iyHDsYdURrVLr48RNpSqg90JUjtbnxyzVD2wDs3kHaMNErCHjpsjEDCnOhuVOuFPXeC2ynsT5SCCOvQHEFHIuC3DMNk4DCeWmBTBrrWwNtmLWbTuAR6KA9+SsxpM1Wvob4xmT8ECS6U0bcBztaZczJ06m8Z37obm4lfEo9jGvtf1/euiXVHp8b1u0p31JOpEmgAr3Pw=
Content-ID: <DCE9C65B249DB54BA44E3BB0E0E30CB6@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acfd2bac-00b8-496a-f925-08d71b10e422
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:05.9667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xfuUGhs8wj/yOYcnZU+6J5qGsVtjQ+i+ix8AO75t7tOOujHWUaXllVE+pqSif3WupjyW4D+eHOgTaCrTsM8lg+0bre/Rpjg9XFBAH2hoCE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012614_751538_9F363A46 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.133 listed in list.dnswl.org]
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


This patchset holds some common changes that were never upstreamed.
With latest downstream kernel upgrade, I took the aproach to select
mainline devicetrees and atomically add missing stuff for downstream.

These patches I send here are separated out with changes that also
have a benfit for mainline.

Philippe

Changes in v3:
- Add new commit message from Stefan's proposal on ML
- Fix commit message
- Fix commit title to "...imx6-apalis:..."
- New patch to make use of ARM: dts: imx7-colibri: fix 1.8V/UHS support

Changes in v2:
- Deleted touchrevolution downstream stuff
- Use generic node name
- Better comment
- Changed commit title to '...imx6qdl-apalis:...'
- Deleted touchrevolution downstream stuff
- Use generic node name
- Put a better comment in there
- Commit title
- Removed f0710a, that is downstream only
- Changed to generic node name
- Better comment

Marcel Ziswiler (1):
  ARM: dts: imx7-colibri: make sure module supplies are always on

Max Krummenacher (2):
  ARM: dts: imx6ull-colibri: reduce v_batt current in power off
  ARM: dts: imx6ull: improve can templates

Oleksandr Suvorov (1):
  ARM: dts: add recovery for I2C for iMX7

Philippe Schenker (14):
  ARM: dts: imx7-colibri: prepare module device tree for FlexCAN
  ARM: dts: imx7-colibri: Add sleep mode to ethernet
  ARM: dts: imx7-colibri: Add touch controllers
  ARM: dts: imx6qdl-colibri: add phy to fec
  ARM: dts: imx6qdl-colibri: Add missing pin declaration in iomuxc
  ARM: dts: imx6qdl-apalis: Add sleep state to can interfaces
  ARM: dts: imx6-apalis: Add touchscreens used on Toradex eval boards
  ARM: dts: imx6-colibri: Add missing pinmuxing to Toradex eval board
  ARM: dts: imx6ull-colibri: Add sleep mode to fec
  ARM: dts: imx6ull-colibri: Add watchdog
  ARM: dts: imx6ull-colibri: Add general wakeup key used on Colibri
  ARM: dts: imx6/7-colibri: switch dr_mode to otg
  ARM: dts: imx6ull-colibri: Add touchscreen used with Eval Board
  ARM: dts: imx7-colibri: Add UHS support to eval board

Stefan Agner (3):
  ARM: dts: imx7-colibri: disable HS400
  ARM: dts: imx7-colibri: add GPIO wakeup key
  ARM: dts: imx7-colibri: fix 1.8V/UHS support

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  |  39 ++++++
 arch/arm/boot/dts/imx6q-apalis-eval.dts       |  13 ++
 arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts |  13 ++
 arch/arm/boot/dts/imx6q-apalis-ixora.dts      |  13 ++
 arch/arm/boot/dts/imx6qdl-apalis.dtsi         |  27 ++++-
 arch/arm/boot/dts/imx6qdl-colibri.dtsi        |  27 ++++-
 .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi |  50 ++++++++
 .../arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |   2 +-
 arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi   |   2 +-
 arch/arm/boot/dts/imx6ull-colibri.dtsi        |  52 +++++++-
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   |  49 +++++++-
 arch/arm/boot/dts/imx7-colibri.dtsi           | 114 ++++++++++++++++--
 12 files changed, 373 insertions(+), 28 deletions(-)

-- 
2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
