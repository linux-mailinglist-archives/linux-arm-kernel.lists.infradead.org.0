Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A088A0A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GDWzFC2CbDLWwMFDlec9UI4+KzZ6yQ0KGMWgI8aMIvE=; b=Z1rxlKE/wzNzbp
	iOnNsdWjqz3CV3jvgTZf6CKHWOV3cB6+hJW84Gv4O0UCvfV8DTKE3gd7NXlxEXTRRsXNwomPANP3j
	6/e3Wn/XsNrYyTM9WWxea4D4j4Ex7rjHQECfYCiL8BGlzfmZny4r7XU05MKEShJ4X5M3NzAfzreNr
	aNVgVgakqAM+bWA4Zo5D6e59uj2PmlSvCOQ/b7x2iN4Cd2D/Je0+gnHy9a6sQuiON/ma/x5G02zmi
	tvBavf9P2OppEmCJ4ifFk+iPN1AVCvdoWD55yHerNIWO00fhLKPn4KTTZq8vg4KGlz/WPU4yTRHNj
	iMvTWjweAs689DHxzZNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBCt-0001fa-9I; Mon, 12 Aug 2019 14:21:55 +0000
Received: from mail-ve1eur01on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::711]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCK-0001e3-0i
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kepTLSFJ7N1dfmjVyA4f4VOMi8L4iUWrFxivsdMMxyQ2BY0TMw1wvY/MaAtum4ogAm7xS5lh4zEt7lMicLkTbZPdYrD+64if/SIXQwhIPOwoVm7IIlDDosfrtBn3Du/z1VV5XyMsZm17AUAZQmTLejLWcTBmuNFizYBhN7xW+0mwvrykIP2D4UDqo44+aSmakQxlQD2DqysfzjWPS+5F7WAErscL5YQGQV+CQOZEjq0G029la/wz/0N6ujadSPw+kdx2VV9KNjB2jAu/c/NIUKHRYbSBPZdPFkqpkH3wHToGNXEHoBTLz6ljfBOe7xzQbRk/qOrgbDvD94GZ1beuBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1mETswcJj2nioSqBApmx2JlF8Kg95tOlSieLqPldEsY=;
 b=JKpn3YqMaDXLfuSpNjcxuutDM88/GoVtYfYLtniOVvZzYtXL9VpoRiDiB1iWFmKOu2tPgFiW/ukKO63Id6Ij8DAZ/FVI+6Ib1IISq/xyvJw2odwdosflF6nbs42v3gGUOf68Ay9QlcYeqiBLjMo5brDNZaCEanfp3OBvtomEyKvsb+7Y7ApvBaaKHCPOvUSaHioVkvBzA4OPUs/fDCkmsOkCivs11Dv2pkmhhpD1JyRkxr7K/SBMkNWC6dxPlHLfMNZqCOGzt2z/W5Ghye/i7pAfD664/KHKpW0XDhFZj/OZokarzHoxHpZYo7nn9tfQBmVbgZJgmWY/fl8immNo/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1mETswcJj2nioSqBApmx2JlF8Kg95tOlSieLqPldEsY=;
 b=ROZShZGvOGC9egkfrbVph0W8O+HmiQyUSqjFwEz73f01UIDkmCxxSTosXV54de1HhOsGHnH2+dGjwq/Ni9Mv9T3Jddvdgfj7E15vOdbAZRWAZ5ym6Hvlq6mWkogXXSGbUSYbe9i6CfB0lu4O0SAvHJbaA33hh/vDAPFOK8NrFK8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:14 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:14 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 00/21] Common patches from downstream development
Thread-Topic: [PATCH v4 00/21] Common patches from downstream development
Thread-Index: AQHVURkykJ0hhEX+N0Cb4D81EmyxUA==
Date: Mon, 12 Aug 2019 14:21:14 +0000
Message-ID: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ceebd0f5-01e5-489e-d77d-08d71f305551
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2942EC902E63A64EF421844BF4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(39840400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(561944003)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(6436002)(8676002)(476003)(2616005)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(14444005)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(186003)(6506007)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3+dDpIEbfBGXosI9nEtv78TLNfa3tnfYsDbA0MUzsMon/M3TnahUWXVunh4kd8O84gw7dp0oCejAit862kk1GTA7xr7iQ9T+aIpdPpKJgtQoVz1b7aV67h1d203b3mawbPLxcnphctqmX4Z3esMDkaWEDesSAvq3ER2x4b9Sd66IHWlTAeSn/An1F5U6Hv4zsbj9I73Z8aErBKylRUvT2WgX7feuMgkbdpPY2XjfaGSXzONWKji1heOp4er5ceYRorm554kNhv19Im+1YKEv/JA/ro7eS8eM2DAB6pnh35xAuzGISWH/4AcunluDs2bFU7eZnzJL11Qka844tt8GLVSri/lOsbr/9/T3Ko179XaM7HOccllNblPCxfujSQ0rQxyzlVqQBoaf9KROmc6kGNj+FHcI+JbLiK7wjdF/TPA=
Content-ID: <0E326AA5A3EF414E96F3C86703355650@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceebd0f5-01e5-489e-d77d-08d71f305551
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:14.8711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JCyKH43qFdfBaLf08h4a4O5T40yHUNXlnEHvq05lEpR6j82rYG6R2L4M0KXOXaAvdXr2230V6mABBPuOz1BKkAZEsf4JdxOd/sjTRI+GoQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072120_218002_AF3B87AF 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:711 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v4:
- Added Marcel Ziswiler's Ack
- Added Marcel Ziswiler's Ack
- Make scl-gpios and sda-gpios (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)
- Change commit title to Michal's suggestion
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Move can nodes to module deviceteree include imx6ull-colibri.dtsi
- Add Marcel Ziswiler's Ack
- New patch as of the recommendation from Marcel on ML

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

Igor Opaniuk (1):
  ARM: dts: imx6qdl-colibri.dtsi: UHS-I support for v1.1a hw

Marcel Ziswiler (1):
  ARM: dts: imx7-colibri: make sure module supplies are always on

Max Krummenacher (2):
  ARM: dts: imx6ull-colibri: reduce v_batt current in power off
  ARM: dts: imx6ull: improve can templates

Oleksandr Suvorov (1):
  ARM: dts: imx7-colibri: add recovery for I2C for iMX7

Philippe Schenker (13):
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
 arch/arm/boot/dts/imx6qdl-colibri.dtsi        |  68 ++++++++++-
 .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi |  38 ++++++
 .../arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |   2 +-
 arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi   |   2 +-
 arch/arm/boot/dts/imx6ull-colibri.dtsi        |  64 +++++++++-
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   |  49 +++++++-
 arch/arm/boot/dts/imx7-colibri.dtsi           | 112 ++++++++++++++++--
 12 files changed, 410 insertions(+), 30 deletions(-)

-- 
2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
