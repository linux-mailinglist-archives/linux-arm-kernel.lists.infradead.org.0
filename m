Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05BBAE39F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 08:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rKAmDdIlpe8tL2MdgkKdUfM5Ak7hWC9rEgdRVSZNaAI=; b=PfDen65FrYpDvp
	zdxtRxJD14FVA65kDDN9DRy1JMrCkn4nibvQl7yECT4Of+BIOyBH5KxH3NcjWJ8JJJkOETxIutHvu
	tE3/uiGqUUji+psPOWV6XW27TqPo8YBxyIaDaH5cRlri+cmyjtANxG7cxAHRrxL/MpyP2sbT9doRe
	WP9WqqDIl597mrKhCIljJY4RTgqwmeONMCVvImbupbfQ3c7aDaaidsX9mZo9ICJBN4dYSLC95LeVx
	lNUFb2c+h/mtgPEaA9CIMno1eZacsAK2eS6O7rYlYcqXwVHLQw3yZfEGkNRBNBTFk6enFHU4pUz5s
	6aXXHBep8cXgMza2EneA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ZX3-0000Ki-LP; Tue, 10 Sep 2019 06:21:41 +0000
Received: from mail-eopbgr10112.outbound.protection.outlook.com
 ([40.107.1.112] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ZWo-0000Ig-Kx
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 06:21:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jx3pi3zH9YD62KmQyR/3XYBCtn6nQwM7yJ9tMdVFneRj2KS87DrkPqZQX87lA6liG+tBxAMeRZXRFAsabLgPvjorZR/Lx+RxbFP5Rvujs3gg/n48Jw7FoEFa12sVPPY+YFokzLB36uy1ZQU8ACNbzhtGalHpUHIx1RbuC7aEtgx7aOjbSNykCXUWCyrcHqCmrnPLSH805engKL4Dyi3FEtHNnzEJbWf3EZHJ4lpWElvv/yHZ/3kBG44YQVy243W4FipKzeJgCXwedBrSeG7AgJ/aBIyikSaur4DDUPDyOLL0kzxWkii0dbvnGSF/9ssBw5TxgibPowTeMoI2bZoO9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wOC+Tl+9sA8VHFcI3fdk9syq6SeNSlDvyvJeCCnfbNM=;
 b=KF9U83MhxJJdBI0VltFb6Zo6zbQqDZA3Xed0bQuOMsrRLL8/d/ilwZLY4OZg592aPJ2b/2u5m+C4c2XVhnEeVPUUekUC16y/424X4r0IcNhecUkQEjOj2ix0RU8EilH5Lbf3loeWRejVcD0REUuJ0DzOy7szEN8wtOj6XtsJADGD1C3D/SeiRI4TqRWg/mVq1lUaeWRMXxdhXkoRgGUxYH6mct5PkOjQPI68INnWA+VqMUSWpu2IkQJAu2qvROGF1AbEITyxT7dwnfk5zb8ICb7T3jUYHvAofvuNBtUoLVk4BGsvVt4xjuEw8fp6PlddVsnWPnCDh93acet6arI3BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wOC+Tl+9sA8VHFcI3fdk9syq6SeNSlDvyvJeCCnfbNM=;
 b=WMIZ2/Jpiri19C2qgIUD5xYig8tGxokMFcEau4LQ3A4RRuwjFJGSjLzUc/vok0ctS724Y5FAPa8lokf0nes5ozbmt0uiGjKa15P5DCXJzPjmH57wNouDyB2HyztAppF8+qfg7f2x8/lgpjLvvquKf/EXeSBQoGs8I0n06+kGaKY=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3054.eurprd05.prod.outlook.com (10.175.21.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.20; Tue, 10 Sep 2019 06:21:13 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 06:21:13 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Mark Brown
 <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH v2 0/3] Add new binding regulator-fixed-clock to
 regulator-fixed
Thread-Topic: [PATCH v2 0/3] Add new binding regulator-fixed-clock to
 regulator-fixed
Thread-Index: AQHVZ5/xkR9Jah05zE2oPXjXVjZAdQ==
Date: Tue, 10 Sep 2019 06:21:13 +0000
Message-ID: <20190910062103.39641-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0052.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1d::16) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f1415d6-8898-4739-5746-08d735b7142c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3054; 
x-ms-traffictypediagnostic: VI1PR0502MB3054:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3054E7A6AEF87A16FA9A4E21F4B60@VI1PR0502MB3054.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39850400004)(366004)(346002)(396003)(376002)(85664002)(189003)(199004)(966005)(316002)(25786009)(14454004)(4326008)(256004)(71200400001)(71190400001)(7736002)(305945005)(53936002)(478600001)(50226002)(36756003)(8936002)(66476007)(66556008)(81156014)(64756008)(81166006)(66446008)(66946007)(486006)(44832011)(110136005)(99286004)(1076003)(6506007)(386003)(8676002)(2616005)(476003)(2501003)(6512007)(6306002)(14444005)(26005)(54906003)(5660300002)(7416002)(86362001)(6116002)(3846002)(102836004)(186003)(2906002)(52116002)(6486002)(6436002)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3054;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K/br8gfpFViuYdqMinKyN30Btffutp5tfNwnX6kk3RW9fyrIXTbgv3l5YWkgELNaZ2gEkZNEXDu6CALqm59jNcHZ6YY+HCgUHdvV6rByNOb8gqE9UmELbdIeh2+seOcT0TzbQ3lI4jHtbEG5bDiecdfRbgct03+CDPLaFfqPb+oJNlzlJvtiandnIeMUy2MGzMKhVtaEwxuRNQIqGjtbAqgwoOp+TirGN6nbEZ427TgSuLyqpRC0y4Jcsyk7AyQl/KKXUZMrzJ7pubuUSokuEGOSEV2NvH0bKSbJSBFfAoyXSuAajdZFKnLJ1IDC7LI3wgrUE93opcTgRK8nL/xuT1iXBUfTGrAR9LVYuXfofpe31wDx7zySc03AQ7/JYQGWJ9oWHnX33mrzMohfgLlxbmcFcVYdA2/kWd1a8gCm/1M=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f1415d6-8898-4739-5746-08d735b7142c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 06:21:13.3000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vf8v2mx4mlymcRQbqHfRFJbC/YSHTTYfiqvLcMUwP0Px/FsWkLsEYZM7Qy7dXeKPECk6ZqYMcRrUnBvhFIs9EF9taVltvViepqY8K6HV4dY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_232126_692965_CBEEAF9D 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.112 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Luka Pivk <luka.pivk@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Our hardware has a FET that is switching power rail of the ethernet PHY
on and off. This switching enable signal is a clock from the SoC.

There is no possibility in regulator subsystem to have this hardware
reflected in software.

I already discussed with Mark Brown about possible solutions and he
suggested to create at least a new compatible. [1]
This discussion includes also a better explanation of our circuit as
well as schematics. So please refer to that link if you have questions
about that.

In this first attempt I created a new binding "regulator-fixed-clock"
that can take a clock from devicetree. This is a simple addition to
regulator-fixed. If the binding regulator-fixed-clock is given, the
clock is simply enabled on regulator enable and disabled on regulator
disable.
To be able to have multiple consumers a counter variable is also given
that tells how many consumers need power from this regulator.

Best regards,
Philippe

[1] https://lkml.org/lkml/2019/8/7/78


Changes in v2:
- return priv->clk_enable_counter > 0 directly.
- Change select: to if:
- Change items: to enum:
- Defined how many clocks should be given

Philippe Schenker (3):
  regulator: fixed: add possibility to enable by clock
  ARM: dts: imx6ull-colibri: add phy-supply and respective regulator
  dt-bindings: regulator: add regulator-fixed-clock binding

 .../bindings/regulator/fixed-regulator.yaml   | 19 ++++-
 arch/arm/boot/dts/imx6ull-colibri.dtsi        | 12 +++
 drivers/regulator/fixed.c                     | 83 ++++++++++++++++++-
 3 files changed, 110 insertions(+), 4 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
