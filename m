Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622947C563
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nusg/W6xzxEmfC7eA0x4tH64cl0iHxlo7DA7VBjfy+c=; b=s8O5/kNEaBGetq
	LLB1IzWpGLvqPmIgPXzksTIoOf68twH/BSQigfUCUSS3v7xkuYmYOLA9asVRkaz61jXCt2OcvDKWF
	nygdxvfgmwIQCu8Jde/X2LsowltDIfKB1SnYhJ+4inWCe1C6Zlp9DrVc6j99f+T+to+/c32K0D5PJ
	TZJT3CTuC0vEFYbbUO1u5p2RnvezrC/kQ4eAnFuusbsp4RGJhRLofEovmYpEWhZf34biqAXse9A8I
	IUq9Cmxg6fO72gLdnoZLO86l4k8Vp2JgzG9PzA8NHVeCYxlE18gxUiBdzigoVJ/DtAlSNZAX9sN7B
	ix5pRxRRXrc36VmbN4bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspyC-00036v-Vh; Wed, 31 Jul 2019 14:52:49 +0000
Received: from mail-eopbgr20094.outbound.protection.outlook.com ([40.107.2.94]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspy5-00036U-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:52:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a2xYlTMktl4GIl7rG6HR7vv4yJkvvzpL9ePlRp6JjpR1G4MiSAcw6cn5V3+CiqZTxNFGnh8HMV1+lmEczQnqzwE2cbn6Jcmxk5uSaBxGDwuCIp0bqkZdxdnNozKzNoBr47s9EOxihdOpO+ziF/zwzIE/9YdDbH5d55B5FyWkIX1r3+Xj/95wn42keqCn/KzwAVzSlydUG08wS90pMVP8rM/fUz490Tb7pRArl8c8DoeNi7vDCmAhMg4cwZ6eFyoqvQcoq4cbqh9+J9J4c1e7Yrx6sWMWQHJ03+u1Ja+xOATdf2vnuirHq7VhPGXg2Qj29wXtKjhqmnsqwbBRfRQ1Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ORMET1RPCNjvG2XhCPxaX8kXsItbBKmpPdA++mFv4w=;
 b=OUp4I3M3GLDRl3f4wPNBywyn8yPeT0eQfWomKcEfJ7XXCObcm4Y4xS1a6ZNTxP0TZT2UX3ylu4WjJ2uZKzWLUYr5V+HeK74ePMQ2VTem4y2CQ0GTkSH1b7Z6MDdgMlwxfOxmwZAvZsQBMcVHRsivfqlvx9hJEWQ9fW3SwmbSXMNFFes3escRB5dDQrTViS+Df1wWEcXuI/t/rYxCjuaYvORAg5O/riSnyyIvj7YvlEOsNnO3Mb2LuXKJXlehDnRrtY0CJrMUF7+JUP/0vn7qNPiuvK7AiYrllYyHH8ZKpi4HHLKud2dknyqLCi9lucUrvgSXCV3btXXwegm+8g+HFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ORMET1RPCNjvG2XhCPxaX8kXsItbBKmpPdA++mFv4w=;
 b=RJnvt1SmS/7ynnveuiE0VJmuYCoFwsEBmLmq73XxWZYx2AmnS4y0f9gQ3hRCkWkz6k+iYIiMfLfh3qoen0BS7qAhO5eY90DtcOssV1IKxtkG+/Id2k7zC7LZiei/XWE6RWwfo5TP6W6T38wPm+zeA9MBoDo7w2wmNG6L1Zf+I1A=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3936.eurprd05.prod.outlook.com (52.134.8.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Wed, 31 Jul 2019 14:52:37 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 14:52:37 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH v2 07/20] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Topic: [PATCH v2 07/20] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Index: AQHVR5zQtB0dzN8FYEudcspMVKQYmabkr2aAgAAgjgA=
Date: Wed, 31 Jul 2019 14:52:37 +0000
Message-ID: <723f191c5893984c8fbe711163524dc7ebf09a5b.camel@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
 <20190731123750.25670-8-philippe.schenker@toradex.com>
 <CAOMZO5B5HnqpLrDjyGtqSQpVXmcoZuGLvCzKVUhwLb-_ZO_Xog@mail.gmail.com>
In-Reply-To: <CAOMZO5B5HnqpLrDjyGtqSQpVXmcoZuGLvCzKVUhwLb-_ZO_Xog@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: effa45ee-9c8e-4238-d864-08d715c6bac0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3936; 
x-ms-traffictypediagnostic: VI1PR0502MB3936:
x-microsoft-antispam-prvs: <VI1PR0502MB3936C3CD81E1D57FB49DB90FF4DF0@VI1PR0502MB3936.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(39850400004)(136003)(396003)(366004)(189003)(199004)(14444005)(256004)(6436002)(76176011)(3846002)(6512007)(305945005)(6506007)(53546011)(1730700003)(102836004)(6116002)(8676002)(2351001)(68736007)(81156014)(86362001)(36756003)(26005)(2501003)(53936002)(1361003)(186003)(81166006)(99286004)(5660300002)(8936002)(54906003)(5640700003)(7736002)(6486002)(71200400001)(6246003)(44832011)(6916009)(2616005)(446003)(11346002)(76116006)(66476007)(66446008)(64756008)(66556008)(66066001)(2906002)(316002)(478600001)(66946007)(71190400001)(91956017)(118296001)(14454004)(4326008)(1411001)(7416002)(476003)(486006)(25786009)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3936;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Oofm0IHX8xNo4dyhQEDz9XJjHqjGXWFX4cAbMZXhXnU/f8nA8EWYa8wk+AcpD5Lu69I2goHKQWkREGn4lGzycWdZUTE0Jxw2ZXaWxElwLcG03CESOGLc7Vmgh4LxnwhA6NnaGVRLJN4lAdIYFpTMdTFI6cjToYnms2cG5Tti7u8IKV8V43HEdYP1ASXgWO3Yg+Vb4gtY0KTOwxZx73HL8ZBhHTltNp2Poyx3KACLBY0PoBAwpxSO/EQQGgsgpXD197HXQQhaqPNxKctyyFSqbAgqsXIJYjvWCAjthnyBO5BYjdwziVEFcWXMWcEmIWfZqbQogRPMBw3ar85LMYVcs0u4ryTFp67piGRr4x7ZOsqxOrOBmAc4CvCYuw+5OWNzjS5+Pike4WtNcQlmlk2XQ58kweolpkYmGUQo0KV1t7o=
Content-ID: <610B7D62A336A340949661311748418C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: effa45ee-9c8e-4238-d864-08d715c6bac0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 14:52:37.5553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_075241_172660_7AD2A4E9 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.94 listed in list.dnswl.org]
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

On Wed, 2019-07-31 at 09:56 -0300, Fabio Estevam wrote:
> On Wed, Jul 31, 2019 at 9:38 AM Philippe Schenker
> <philippe.schenker@toradex.com> wrote:
> > From: Stefan Agner <stefan.agner@toradex.com>
> > 
> > Add pinmuxing and do not specify voltage restrictions in the
> > module level device tree.
> 
> It would be nice to explain the reason for doing this.

This commit is in preparation of another patch that didn't made into this
patchset (downstream stuff in there). But I will do another patch on top that
will use this patch here. That should anyway be in mainline.

Philippe

> 
> > Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > ---
> > 
> > Changes in v2: None
> > 
> >  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
> >  1 file changed, 22 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-
> > colibri.dtsi
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
> > +               fsl,pins = <
> > +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5b
> > +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1b
> > +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5b
> > +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5b
> > +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5b
> > +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5b
> > +               >;
> > +       };
> 
> You add the entries for 100MHz and 200MHz, but I don't see them being
> referenced anywhere.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
