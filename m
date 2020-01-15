Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CB813B7D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 03:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Qiio/txOAc51KYXXf+4aKZd66RyNbkQuPaOLBElZgo=; b=Q52Xa34mxBCfrc
	dYw/r4hJjzoNPme00F3HySrF9Fs1rP3O6Rdx0F2ULrfiMK08a6MuUm/EkaYw4Xbcd/AmxD9KSkUzV
	v8oMuMXJeAKUoq1GwYuvPxdw2psuX2d/UkXF48lD8zuB6ipG+qJnx7PQnlwMA/lVVCwxdXgc/j/tI
	FoqgPTRVFBcO+VKs8uiXIMat0N7MubIvDShx/7XmzbO/rD8WBkt1DV3zfGftauwa1k8adXObpWdj5
	EMujJiih3tDZlqvyMtwoxY3rwxWdF4MgtIqdXf0F0sTki7o9jbv0Ir/vk2f0OmzRvGWNNJZTkIQti
	IZ/qrFuoEsyhFtdeGjxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irYaI-0008CO-67; Wed, 15 Jan 2020 02:39:06 +0000
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irYZu-00089A-5m
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 02:38:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKYpTwJuAK0qhP1/sTGg8RGPtuX5/W2aaxMpJfOcJICvOq/UfRkyY2BfgzjHxUss3BKBBRYVtTN2BF3x5gOGJGvteE8ig9A6nVBbPdwT6rCWRwTgD3LsZNPDiVYjR4cLeWysxaskQZ3Iu11yujey3nDH76GMS8/OzOlGivjGFMHv+w8Wg9Po7hG4CZJpDr6joonff3gR7qAgHtv1ETfaUndCojU9jy62YnSFGwe1/e4IKHx1r07Ta1TK2XJ6GD/JiVFnxGxlI6EAdxOrZa/GfWfpBo3AdjCLALJHSYjwt/Oxi+DHYTlp1nJYCm6bHy7ssufdadlRDTu8TjYZqw94Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cmft/DpZVCuOg3VemCuvIcc0dupm5is4CqP5szubq7I=;
 b=JhCKzFXQou+Fe7WDiQdzu9Qlej3/HUMs8wg9H+bWlz5gzd0hrirMZbA1Cf6q4bBnFlf9mnjYAddrYo+ADqamnqCADycZ81E9MKhHfmEQqI+WtjWau3Uiz3h6pJ2hx5zKi2UAu7vEcctkm2jgziakdDmQB14sKE0d1aG0yc+WAC1zq6pYU9CGiKYiK/jtuoCGSeeXbPTexkoIF9jpUCOpQxHYfZc8UtDOnyR92ix+DMeX/AVTaVM+m7rqC6/8UjCvSQ2Xr7X91ePW0yoKvhRkNBy5ofl6x/0XnZzduEafrjShUJY+YC8xcpY7ffmFUPKFAxGGWu/0I8LLwUK0U0llUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cmft/DpZVCuOg3VemCuvIcc0dupm5is4CqP5szubq7I=;
 b=P10F9TwCXmAcd0tEPVUs4kzeGKPh+Zct7xv6bBI8RoKoXrSjLTNyDPFxqx3+9IuBKQafJ+uNoIjktdahDHTLcSkVDm+EFPByc10i8/Z/1MQinWgFyB++wwBTA5opyxHjJ2ZC07ktixt3JZ10Cds2jGmJqTiGSzOyD2DfU4Jf+mA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5220.eurprd04.prod.outlook.com (20.176.215.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 15 Jan 2020 02:38:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Wed, 15 Jan 2020
 02:38:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Topic: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Index: AQHVyrHXB0HrD3qW50ui9P9S7z/H8qfp0NaAgAADRlCAACnrAIABBSNw
Date: Wed, 15 Jan 2020 02:38:35 +0000
Message-ID: <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
In-Reply-To: <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 17a718b9-4476-4d7b-2971-08d799640555
x-ms-traffictypediagnostic: AM0PR04MB5220:|AM0PR04MB5220:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5220B5668AF1E9ACCD47ABD788370@AM0PR04MB5220.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(396003)(376002)(136003)(199004)(189003)(55016002)(9686003)(26005)(44832011)(6506007)(316002)(4326008)(33656002)(86362001)(6916009)(53546011)(52536014)(66556008)(66446008)(81156014)(81166006)(71200400001)(8676002)(5660300002)(76116006)(186003)(2906002)(54906003)(64756008)(7696005)(66946007)(478600001)(66476007)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5220;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jweSHFCwI4tMjVFpGptBzzyKshVw5Tj3o6sSXNdkkGziXi42SR+sL9Hi3Nm9BLrcXU8kVsKv+ZPOnNF/2Ab6+7FCL7rl7C4Jb07xyt7Jok9wmIu/wkAC+Rp+xmUpPGkeI5unlNwSJK6H5PrNNvpsLaRyEkG+/8KJhCIDGLN6sWarR3deAt1Sws1Qfqihk3WFBJ7Z1b/4l+5GCpBq6la6k+8K4hqjIsuIkQAeh1o8Hl0ao3cb3S948Y2R0sn8lV10IZfnUgT3Y/fRI11ST8dDuTzEuR8xCgZYVxF6JVjGvQklpmGCNLj25Kp8r1XOncxwmrCMfq+/gc1Pu01G0fHwxJ6mjhtQDNUAc0c3TgCbw41P+KgNPQdwE4uit4RC8OIHazf/FNjUTu56GQfwbO3Wqqhqib7cOTeuJkP0PjAnLZbVpRa+yt2xZM33D8kSQ+gs
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17a718b9-4476-4d7b-2971-08d799640555
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 02:38:36.0291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PtWpFr6fdRhmey6NEj67tIRqHkrvcSGQASBYCXGVXVxSSoQDTRMlw+z9kqGjSR8Jzf9KW8Y/ZjpJhiNL9p579Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5220
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_183842_299673_380C7B33 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

> Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> CONFIG_ARM64
> 
> On Tue, Jan 14, 2020 at 9:32 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > > CONFIG_ARM64
> > >
> > > On Tue, Jan 14, 2020 at 08:08:45AM +0000, Peng Fan wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > Only need to build soc-imx8.c when CONFIG_ARM64 defined, no need
> > > > to build it for CONFIG_ARM32 currently.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >  drivers/soc/imx/Makefile | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > >
> > > > diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> > > > index
> > > > cf9ca42ff739..cfcbc62b11d7 100644
> > > > --- a/drivers/soc/imx/Makefile
> > > > +++ b/drivers/soc/imx/Makefile
> > > > @@ -1,5 +1,7 @@
> > > >  # SPDX-License-Identifier: GPL-2.0-only
> > > >  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
> > > >  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> > > > +ifdef CONFIG_ARM64
> > > >  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
> > > > +endif
> > >
> > > For earlier SoCs we had kconfig symbols like SOC_IMX25. Actually
> > > SOC_IMX8 would be the right one to decide about soc-imx8.c to be
> > > compiled, it would be easier to read and verify than the suggested
> > > "ARM64 && ARCH_MXC" and it would stay right once NXP presents it's
> > > next 64-bit SoC i.MX9.
> >
> > There is no SOC_IMX8 currently. Need to introduce one in
> > arch/arm64/Kconfig.platforms. But I not see other vendors introduce
> > options like SOC_XX. Is this the right direction to add one in
> > Kconfig.platforms?
> 
> I think it would be more consistent with the other platforms to have a symbol
> in drivers/soc/imx/Kconfig to control whether we build that driver.

Ok, I'll add Kconfig entry in drivers/soc/imx/Kconfig for various i.MX SoCs.

> 
> If the driver is well written, it should be possible to allow compile testing it on
> any architecture (please test this, at least on x86).

Yes.

> 
> For some SoCs, we also allow running 32-bit kernels, so it would not be wrong
> to allow enabling the symbol on 32-bit ARM as well, but this is probably
> something where you want to consider the bigger picture to see if you want
> to support that configuration or not.

Does the current upstream kernel support 32bit kernels on ARM64 platforms
without vendor specific stuff. I recalled that several years ago, NXP people
tried to upstream 32bit kernel support, but rejected by you.

So Is there any plan to support 32bit kernel on AARCH64 in upstream kernel?
Or any suggestions?

Thanks,
Peng.

> 
>       Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
