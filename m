Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD7218652A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUhRLFsO52IUsZSR4c7Kz1IzEhKXEklQaypdz6/sy5c=; b=tvWKiot7Osh5Ad
	shUzGRg9bhgEKEM4XHy5Y2/a+e0fur8QL4dBLHH3MEWO70U6Wvn7nYonFS3iwAV6A15CbJ0EU/mt9
	hbmPWC3BWCLgcd4QtYD0RP8QHNWUrJZtbA0vrNfd4e/JR4QTCNL17y6ip4fQa8/w8TcNlS88d8z9S
	3kIpbdfWbaMYEhfCOevnpGvtNU1/dscBdEBtUvFPpk8OH194/X/YJFyXiPd2q000oGw6RurfrzzwC
	+wt1lVBD3q8Z8qgLVIRI8+zrX04LMJlZVo4hrj/Y62pdmQmQnEpIGkEVI1M+sdlNFe7IbVAX3oFBL
	u8AjaN8FOpdk64seBAwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDjTL-00058Z-VY; Mon, 16 Mar 2020 06:43:35 +0000
Received: from mail-eopbgr00079.outbound.protection.outlook.com ([40.107.0.79]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDjTE-00057q-H0
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:43:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrBGoGYv7AeqbOFMegiZXabALinjADW6K/yrLrzNtyrN0MdiJXF+jFcdSJ/kYtqg6SYmUPDB1FDtV16lAIifN9s5XoE1LdOlKx6my4B79z6mmy3QeU8BKw2c/B/bZRwgU/eTNDgMm3UyO3Pt1PfKE8y4Y5ta6OSWNwQulLcDHkVNOZ8d0kE+/Klqr7jVWxt1MU7rSEKkqkXs4r7DTuNtQtGF/IiPZnmBZuDwnwhKHi6SGqBZZ10zwcnXCA4H8E33LU8lQeGUe+YST3BylhxtfwxrtTuitaaCauMGJTtsxjIW24SeKwyx7rkP42sk6UrdpYjcHlfXJqHhkKkuc2wVLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tUT8u13HhTH9jOxk35JdRIjQ0WXw0R52eqxASu4Ql0=;
 b=bp4Vk+gMMU1rYVSq+vcC/kXEqNxkrGnLyuRc94rt9orjsX/L6Yz8oDThnUbhhH7tMrWlmBI49NMPcRj2NHraQwly5i44QX8JNoV3pNO6IrOLpHDVz8kalOVx7MLKLVouISx7PYThTNH4qFlyW8owKPMUUBaSG9fekmmn7t8DrIOJR1MEC54QJ9I8euwisBgb8m6T4IJ87c9QHJUv8lASF6GUxkMbKfwv+hrraG6o4zWfN4Lfkn5LqC9fI7iyUozjntl+hvcB5YTE2fxU9jbsHte2XKxyuLcLxkDimimex3e8kqzutN4NotfH5eUTKhTTnLpiI3nkPVLsMm7grntoGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tUT8u13HhTH9jOxk35JdRIjQ0WXw0R52eqxASu4Ql0=;
 b=B3oQ2vKTWOs4lNV8tdFkp06ViX+64cm8DFWXWE/oTnpSiYHcFEO3jKONkVVEajHziZ1VvXRUyYzoJI3gS64t7fEL3x8RLvIBtCy99Sa7ah05fRk9VX16e1H4jV/gqs26BT7GSE148R7mKSYgCYzMdc3P6b8OB4LgN7MlAlc/OHE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4802.eurprd04.prod.outlook.com (20.176.215.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Mon, 16 Mar 2020 06:43:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 06:43:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
Thread-Topic: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
Thread-Index: AQHV+OhCoWIlKfRHBEqAZhv4+QN6jahGTaKAgAR8rgA=
Date: Mon, 16 Mar 2020 06:43:25 +0000
Message-ID: <AM0PR04MB4481E7BC1DF01CFC975577A088F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-4-git-send-email-peng.fan@nxp.com>
 <CAK8P3a14BU5uHEqkVyWkeFVmxA1hJifQE+GkXFgmn59s_TL+Rw@mail.gmail.com>
In-Reply-To: <CAK8P3a14BU5uHEqkVyWkeFVmxA1hJifQE+GkXFgmn59s_TL+Rw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [121.239.103.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2f66d9a5-719b-4f4f-e045-08d7c97553f7
x-ms-traffictypediagnostic: AM0PR04MB4802:|AM0PR04MB4802:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4802FEAA1BD5E9CEA372654288F90@AM0PR04MB4802.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(199004)(478600001)(81166006)(6916009)(45080400002)(81156014)(966005)(8676002)(26005)(186003)(55016002)(8936002)(4326008)(7416002)(7696005)(52536014)(9686003)(44832011)(5660300002)(71200400001)(54906003)(33656002)(86362001)(53546011)(66556008)(66446008)(76116006)(64756008)(6506007)(66476007)(66946007)(316002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4802;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2gOjBEGztxxhLc7iJTKK6kEJwdWQcYYWZ6oOL8sCtfxrcIZWFjtf2ACMxvyvaz7cRoV7CGnLoaUfXuFW4xJWoH468bwdY+JeiO3Y8Ueb8XDexde0/+9G6LUM8f/ugKMT6PWN9ofBlXv1Ea2ZsJ0eZCZ2SMM4+8ja27Q6OOxXbaM9c1IeBtTa/SCY+M9Q0BxFq19noBU9v2rEMCQ2N3RUg2dG5EYChKq+XXz6WXr0pS5gf4Y82F7xmSY2fRbtVyIY5MQEosNEHue5bceAptJIV583w+Q5HG5JpVv6CFMKNBzV7HU3Jy6SM0tVxmpDTlF0qN9yVs/IW29MIedRle6BXZsls9Ma8bmb1j115amEJUIv5g/e3aibsFqDAU8pBYRnSWqtqtURbRnF097ZRQXG4mabY0mnMrqwTbNHXhU+9mQL6zUX5KHv5HbBJrbHnT3SrQ/Rwx/FmK/z6AF03g+qJYX0mQa2/dnpnRcIos542JJj0i6ChKkGjz4wPv9OBNzSOb2o6jXICuhQb90dXKPLQQ==
x-ms-exchange-antispam-messagedata: q6QSlzDH9UqiMLHtOfMpUf6NWPnRn4euaCQg02LSWkgDSbdk5fQ1t//Y6JeMehuNEQ6rdTvKz1TtL2pTq8HfwelYaq5I7cPH7+/+9/jd8xJiR5j+QrPiXA1YYPRwebd8j00yG1GJqJFLX4aRgHF8vA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f66d9a5-719b-4f4f-e045-08d7c97553f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 06:43:25.2705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L0xxozl3MjT3NFFOm89MGOOosGZXT2PvWRku34WJxp6WE7lYJUTFCE1zlbm88KLHhggm2tZ5xogE/k9UH8AH4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_234328_568957_F1C1DEC7 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.79 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

> Subject: Re: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
> 
> On Fri, Mar 13, 2020 at 4:34 AM <peng.fan@nxp.com> wrote:
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Select ARM_GIC_V3, then it is able to use gic v3 driver in aarch32
> > mode linux on aarch64 hardware. For aarch64 mode, it not hurts to
> > select ARM_GIC_V3.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> 
> > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > 70019cefa617..0b69024296d5 100644
> > --- a/drivers/soc/imx/Kconfig
> > +++ b/drivers/soc/imx/Kconfig
> > @@ -21,6 +21,7 @@ config SOC_IMX8M
> >         bool "i.MX8M SoC family support"
> >         depends on ARCH_MXC || COMPILE_TEST
> >         default ARCH_MXC && ARM64
> > +       select ARM_GIC_V3
> 
> It would seem sensible to also drop the dependency on the 'default'

If drop default, we need enable this config option in ARM64 defconfig,
I would leave it as is for now.

Thanks,
Peng.

> 
>       Arnd
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infr
> adead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%7C01
> %7Cpeng.fan%40nxp.com%7Ca28680bc024f478a8c4008d7c736ef64%7C686
> ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637196911074143592&a
> mp;sdata=jNEcrVlci7UEAhAftKBNSVc4b6%2F0Sm2aOYPIA9ajZl8%3D&amp;re
> served=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
