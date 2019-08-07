Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CAA84DBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSzH2sNnWrHsZCAsvwR/Exhhfi9+7mdbNTDrlzsy1Gk=; b=eHXEMSLoGZmp9/
	bPcxq03hIUF/zWOqMObY2jLq6ZXKDnalzpqAnTDbbKvCDLW4+pvSqn88myF9rnL+m/MkOv16av8Bd
	+489gbxV1JAZa2Fz3T3A0aMBDLHHnsnzt+tPfejlyitxhPK34JbP/5CtcYXK9c7tsnqUQ7P4x7T6N
	xb94CHseIX8DgJIR1ErVQjxlgnYsZkCiiQ5rsGb3kHScGoN9yfihneX+LOg67sMotsPygKp5BDN85
	vPqthoesB3qUAeHiMS3NElWk0IH/ba4vXsOpfW6F/7Dix1MMkHORb8LTBAsgHSFq6eX/udgqe+Zhi
	I1ZxCvhju55+rWyrvZxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMC6-0004zt-9a; Wed, 07 Aug 2019 13:41:34 +0000
Received: from mail-eopbgr150108.outbound.protection.outlook.com
 ([40.107.15.108] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMBv-0004z5-4A
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:41:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M04KJ/HAppecvmHpMihXHJkC+L15rT3e8To3TJSu/iVw3SiFCf/yK56NrVdVqzlTbx/Yvb19qqnm+Y7KzRk53zLYQUUfV9IChFUzWhbjCSy/99mSIUw+JV36NUU6TJVHyP1fyIHubjIzd5xaj03oUnZjVJnFuFcwLY3BkGaDpl3FSDbsbX5DKyy90/RVSblw/Bxcou6Q5ta27kpDFwJGrOkrXZMjyuKwX8q4g843BG8wsV+9ok9DoXuOPVYmytPJalemS4AdLYizL/KWzxA1S9DhgvT0oARWr54Ger4FsUT9cvfiiN2kAtO8J3AEqLv3FIBM8mgjCRJas/C7dp/dzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LSrgkygSBfizoEWlqMcBr/DkR9kQvp6fVRU5CLumxcs=;
 b=nYJEWGbbJrXEWaNjagS5U+UbZ35t2jGRQ7dJ0z6iVoFqjIwpA1T+3pbmnuuGQEKW0SavLsSXidD3pRBX0j+DthZCTbqrlQmAKo+9Q1JyTq66U06qBwpWNYbLWV/SwK7ieiJ5wuDVMfx3vR3qfoxo34mfc+FPoRzWmIJxdBpIBoxitMBKnCGZr4VbyQA9uSdbny9F6H6Y7GFgjtTdriKtkLd+xPfw0tYa78vzYPl2s6nQ1PwOEH4rpIfjaW4jm0FBvkFoEekdGNhbg/TRjoQO/ZHfPLzKcYY1+ZqOshTuKrUzNpVTtP7x4K7eRaEgdSR5MZO4IlNJfM5kc1OeZg+qxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LSrgkygSBfizoEWlqMcBr/DkR9kQvp6fVRU5CLumxcs=;
 b=oPxGf7IUb5bBICXqorYQpfRaJ5Lx/dUUT1RrsvB6WdukhS22FvVdMFDAXrY8H7XHN75YnAOSqFVsSFq9ozU9LDs8QrBgw2FdCHZaNmccbQAkf3tySxF1BGqf1fPY1RJEH0LlKD01H6k4uQdvM4bS8r8vhTjJ//XFgoIFqlLinaE=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3935.eurprd05.prod.outlook.com (52.134.6.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Wed, 7 Aug 2019 13:41:12 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 13:41:12 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH v3 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Topic: [PATCH v3 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Index: AQHVTPnJFwE/N2EWdUa4MifpBqKEzKbvie6AgAAnqoA=
Date: Wed, 7 Aug 2019 13:41:12 +0000
Message-ID: <9f05bcbad4b56d0b7c4f90b53b99c07833f68bb2.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-8-philippe.schenker@toradex.com>
 <CAOMZO5CdWmVKXmNSLdbsmnU6_ZKwbeVArtOQzuTg_gtqTUnVag@mail.gmail.com>
In-Reply-To: <CAOMZO5CdWmVKXmNSLdbsmnU6_ZKwbeVArtOQzuTg_gtqTUnVag@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b06d9002-3298-4f11-25fc-08d71b3ce960
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3935; 
x-ms-traffictypediagnostic: VI1PR0502MB3935:
x-microsoft-antispam-prvs: <VI1PR0502MB3935A8B8AB92570255736DEBF4D40@VI1PR0502MB3935.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(346002)(39850400004)(396003)(376002)(189003)(199004)(68736007)(1730700003)(476003)(229853002)(7416002)(1411001)(3846002)(11346002)(5640700003)(446003)(1361003)(478600001)(2351001)(36756003)(256004)(6916009)(14444005)(66066001)(486006)(66946007)(305945005)(6512007)(561944003)(81156014)(6116002)(44832011)(118296001)(81166006)(2616005)(5660300002)(76116006)(2501003)(99286004)(26005)(8936002)(86362001)(7736002)(8676002)(316002)(4326008)(186003)(66476007)(71200400001)(6506007)(53546011)(71190400001)(66446008)(64756008)(76176011)(66556008)(6436002)(6486002)(91956017)(53936002)(2906002)(25786009)(14454004)(6246003)(102836004)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3935;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SC0lY6Aq6ZQEgVNVLvSb74wfpdAI0wrZSEDJth/k5+e9UqqK2nRx9pvyOgFqL5JKQloVoEwLEMnCnA9xNbpcSoZP9O02XDbrJVk4Bl4AfXCznR4IKyX/IQFELeF+7iEsqwR2CYKS7wz7r1XeaqSVlXu6FjnMxk0FNRzz0y0wqZh3OYb6OTvBjM4hOtfHY4yPzqdJGB+V6G2v9RMS1tticcjt/UOd+Be6QPbEFmIS2GFaaJD+XjxKr+9FX4IkNWmb+fGHZu11X5IeLUN/xjDe8i070eTHXBiok2KMPXb0/NGGEOcNIf/W9116pVoX+7JhmZ/svfp1vUliC0gPOrqlKZazjwizr6ot/I1jXD90rL2ICxJzxFQO/8J3R4usFrAtFqETrkVuVu06NZlx2KZOxGzhpX7I7dJjXD2ESVdROm4=
Content-ID: <84D9259A9961C34FA2F02A5D7E80D047@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b06d9002-3298-4f11-25fc-08d71b3ce960
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 13:41:12.1046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5LDjA0mTS4CsnJ1yb8Z/HrAEPdYySm/9DHB86PzTVW4WyFErT1wwxg2hEFR4purViwT2VpUwA/axOkfJ78BsdMncWa2rnyVpihDTt8t1Sr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_064123_228504_8E722735 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.108 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:19 -0300, Fabio Estevam wrote:
> Hi Philippe,
> 
> On Wed, Aug 7, 2019 at 5:26 AM Philippe Schenker
> <philippe.schenker@toradex.com> wrote:
> > From: Stefan Agner <stefan.agner@toradex.com>
> > 
> > Add pinmuxing and do not specify voltage restrictions for the usdhc
> > instance available on the modules edge connector. This allows to use
> > SD-cards with higher transfer modes if supported by the carrier
> > board.
> > 
> > Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > ---
> > 
> > Changes in v3:
> > - Add new commit message from Stefan's proposal on ML
> 
> The commit message has been improved, but there is also another point
> I mentioned earlier:
> 
> > Changes in v2: None
> > 
> >  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
> >  1 file changed, 22 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> > b/arch/arm/boot/dts/imx7-colibri.dtsi
> > index 16d1a1ed1aff..67f5e0c87fdc 100644
> > --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> > +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> > @@ -326,7 +326,6 @@
> >  &usdhc1 {
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> > -       no-1-8-v;
> >         cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
> >         disable-wp;
> >         vqmmc-supply = <&reg_LDO2>;
> > @@ -671,6 +670,28 @@
> >                 >;
> >         };
> > 
> > +       pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
> 
> This new entry has been added and it is not referenced.

Sorry, I probably could have mentioned that in this commit. I want, if
possible, to let this commmit as is. That's why I added another on top
of this patchset. Please see patch 21/21 that makes use of this change.
> 
> > +               fsl,pins = <
> > +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5a
> > +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1a
> > +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5a
> > +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5a
> > +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5a
> > +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5a
> > +               >;
> > +       };
> > +
> > +       pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
> 
> Same here.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
