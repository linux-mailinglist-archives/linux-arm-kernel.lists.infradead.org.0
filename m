Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1247C17C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tHL0dE2XroIDgYzos4c9ZSahjVy+hvEW60U5Ibj6fZ4=; b=Esi57fWmTdjtXa
	OohIPbe+OG9aDL1fksTfpbMB2VoovNisWDlSs60LKvp50KG0pnXHFEiPBVh8BVITignNEyrKZk9Pz
	nzxyy017MgxXXGX9Kqvd50Wkq8kdDk1vyeY0Z4WeOfGFypNUfWTutmhxQ6OYJ/6+TdYejIAWQSiYg
	ExPgTtKQjXdHR2hut5eKZZGB0D8qxolU1ZoctOl3NpnbIFKdEhs4rk5jqA9WyIUxgpxCHueL3g0aT
	lD4kht1qsbdz2jHY04rLQ5nDUAX8CxMW4Egx66QcQS5DWsTM4HQAPb3WvQUsVThLmE9ChCDo78bXc
	3/qmHEeqWX4715CQthyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnrz-0005uX-Iw; Wed, 31 Jul 2019 12:38:15 +0000
Received: from mail-eopbgr50113.outbound.protection.outlook.com
 ([40.107.5.113] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnrq-0005tW-0E
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCl8zJNeoBAdLCOWzeSmXY6JQvhU7o830Om9pMAEQwsbC/G5cqVES+m3tto1Pp4yIjkl1zmMBxcTt8L6YukhvXVSnf7521jBjdXykNtcOfqEatV7/sJIe6G4jhJsF0n/u/vMZqFNCJtRIIc3HPaOsMY8RzsrsHQpioicxUVG10ceM5u4xSLofcygBuILw1Q3daZFFOeWoWm1V3cssn+qxhi4sTECu2aAOA5A6Sj5N5om7JyK7PcJlz7iJ5B5nEuTi8KSYjPZdkgTKggNq3bNjE/kKzSMaCZ45gmAY0+ZxAK4XK1Y4ygOiGzA3pursuvVENjjEdGPUZIAidOV4Os+7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jHEm+LOKeLrvYCN7RsDwfk1aXf6jnOP4V9fDiKY/rkU=;
 b=N99J+Tx6FqBU4badJgJJXSY3/BmRe82P+X6YXBZ9C7z2/VbJ6cEbtQfKs5pjFQThJcwPF219YjyJ1DDOi7+1agc5FPzh7tnwXS8Jrjv3cn1ORAXkTJVS3Wmz/W7aZxoSFd4oCLvExCy8dIJtU4p22r4BD+WJ2tF4c7uxifmBxorAYG1tk401wQ3c4gdvQsaf9qDyu74J+otpxokG3kRK7pl/6VsxGJNMz1RZEg1RSiejuqx5NhsQoEK6zwBdBs17TIs9GY9QT2/BoaqZPYoyAUGo/yngVNXxSnoHMT0RJXC6BPX4ZEmFT1IoXyyJFTBP0OikYGmrXY7VVaHCzSDwTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jHEm+LOKeLrvYCN7RsDwfk1aXf6jnOP4V9fDiKY/rkU=;
 b=i+KNzgzOWsuP0hmKxVfXy1IrsMn/xsM/20dXcdt/hDuKTjxCBSXGvQuMbZth0OFAgOP3YK7fG3VJDM+WVHYvxsWVAwlBCJVs1bUIK5BLpBt2YG3ZPJ5o7aduxxdrtfCtFksMPcHkZU8i5LUPr3QfZN12bHsOCW7Xfdh2nu2gOiY=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:37:59 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:37:59 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 00/20] Common patches from downstream development
Thread-Topic: [PATCH v2 00/20] Common patches from downstream development
Thread-Index: AQHVR5zJQnJDf+SlSUKaCGGthm+ICA==
Date: Wed, 31 Jul 2019 12:37:59 +0000
Message-ID: <20190731123750.25670-1-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: a63e66e0-bbe1-4e56-0e58-08d715b3ebca
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB361545511E98C48542136BCBF4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:478;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(2616005)(14444005)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: luo8dK12L+LCtDT7VklScPG3rK+l6RaDEwxerHBvcNLXMDwuz9lZUJa3EARd2mSY+74cejMYoPJ8yHwPcTz6fsNtHbODMiXOC29b4oFXA2m2pmf4UletCJ/I+OXm7Vqc3UrtRDvaXsDeHqL4llEDq1wy4I7hjLsd8g3Ql0OvysjsLqoLcogK1t1n8uRoOUmy2tNKSBSflH0JT6feHO9UDCdcO2ERlMKkAMjxnhZ/rkebCngzbbWLYp1U0pH5adqqTBoH7eqraHbSaJbOUHjy0R1Kp3nAJ9DcT8+GDd83/WdzCz2A3Vwx0+QunqFj8+so/gwtg/6Epu1FytAq7yEYJNkm67xAM94biKl4MQIz6gD38EhumsKktcmb8sYQEfJkkvHYUPok1XfoV40fR0M5hVBPVCOcpDZEBFBTiMVzVHE=
Content-ID: <6CBC9BD2EFA2D04A86C2C30573DA87B8@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a63e66e0-bbe1-4e56-0e58-08d715b3ebca
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:37:59.7560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053806_102583_70DAE6C3 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.113 listed in list.dnswl.org]
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


This patchset holds some common changes that were never upstreamed.
With latest downstream kernel upgrade, I took the aproach to select
mainline devicetrees and atomically add missing stuff for downstream.

These patches I send here are separated out with changes that also
have a benfit for mainline.

Philippe

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

Philippe Schenker (13):
  ARM: dts: imx7-colibri: prepare module device tree for FlexCAN
  ARM: dts: imx7-colibri: Add sleep mode to ethernet
  ARM: dts: imx7-colibri: Add touch controllers
  ARM: dts: imx6qdl-colibri: add phy to fec
  ARM: dts: imx6qdl-colibri: Add missing pin declaration in iomuxc
  ARM: dts: imx6qdl-apalis: Add sleep state to can interfaces
  ARM: dts: imx6: Add touchscreens used on Toradex eval boards
  ARM: dts: imx6-colibri: Add missing pinmuxing to Toradex eval board
  ARM: dts: imx6ull-colibri: Add sleep mode to fec
  ARM: dts: imx6ull-colibri: Add watchdog
  ARM: dts: imx6ull-colibri: Add general wakeup key used on Colibri
  ARM: dts: imx6/7-colibri: switch dr_mode to otg
  ARM: dts: imx6ull-colibri: Add touchscreen used with Eval Board

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
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   |  38 ++++++
 arch/arm/boot/dts/imx7-colibri.dtsi           | 114 ++++++++++++++++--
 12 files changed, 364 insertions(+), 26 deletions(-)

-- 
2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
