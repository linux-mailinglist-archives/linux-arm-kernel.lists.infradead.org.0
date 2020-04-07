Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696491A04D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 04:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSAY5x9ReYxQj1JdERWD/aAa4A682HjfEtBGcX0cbBk=; b=G7fz/tOlf+i4M4
	RCDawMe/6p1444DFQfqgb7FJRC6NpcfPFoAQOy7pLqbdO1J7W1CDF5NYYLixFwJuI13lUFjzYo00e
	6+wnaj95MyMelmuOGj3fEJQSz4WmmxoejkPN8gyzFZ3UNveFs1EoW158kQwzPbH1qIHEDiisD2aNT
	cG70noCYR6A1yobmrzv0dutmxuWA96G1V3rolUeC4GuWarfSVBDCtAEXCh5CxgQhIJtP0JzuUnDbb
	SX+k070DmW9dgT+OQnMAYEodx8zsRkevxJH/S2rhs+taGWkHOiz9D6wSaZDrEGZuLNJ4jsZaJwzaD
	bxj3PIhtc70djDkHSnyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLdtl-0001XX-5O; Tue, 07 Apr 2020 02:23:33 +0000
Received: from mail-vi1eur05on2067.outbound.protection.outlook.com
 ([40.107.21.67] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLdte-0001WD-G3
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 02:23:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VArUZl9C+Cr+7T81ooLN7Sj/KN48FNB6IzMvNdEC7IW9MZsHOTzpemumsFvHKkF61QV8RMWUnfZBKWp6/lLwBJnKLLC03SdYfRftusIAmV3Rj/aE0QTx6JtncNWQr/Xfh93r8B6mewgy7v2UuuJYU9/KpIhuVhhhg2uDlxI1w261Se3/+4+GyXyy+UotctfQCchS4FlegASzCM3TzDx3QZlmVfVJMXjwxjFNZIuLvqa+daCW3p/TP5UnAOwnlVmouXAkPZfdzS+7p0C/IzM0ghQWlMPsW1GvzDyo4fzt6kcACea5ZQAZrF/I5Zs1hHI8xHkPt2EUzbq5POp8/wb+fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KIZkhIyKk5ox/80Xey5wUWMvrUVVoWzYwPtarAtCNrg=;
 b=n/HR9Ouhziu0B5uEeq9AYSTgjkalRsdaEZrIINef3H6OXcDQirHS5gPu735w2IksRp5xiySj8qpKQNo4E6PRa9AAZhH3FBfKqal0AyO0yDqsdC3vbGmq+qQER6Ejkna4aj/HM/5tl6NhdpZ6qGVfFTf30Np9fnc3SNcHrFPlQEqU720c125lUA8mTOf0YbeNncDENwZ5ZudsGW++yxwoEy/tPcaekEIQPxLde6WXtEfxsQajAL7Rl/g/kywPvHfXMmkzohJh1y2nPG4UedfF7bhVaU2NrktWcwEcqHlMyKUfJQJXMkgtlGotK2peAMHm2OgjTOVb6t5ky/KhNmduJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KIZkhIyKk5ox/80Xey5wUWMvrUVVoWzYwPtarAtCNrg=;
 b=SKyYjatfwNTDxjy/uUXSG8uYYOjlnF2sqimxmNXyyV7uX/5ikjgpTxjAjeCeaHeGhYKdz5ynVcfn1YNDsCNKWqOHO1Fla7OOk3wreatF2Lyih7x5sGNwDCCWJQWbFIYg9V7oqI/w3qShIDdBpdwbG1hwOq0mJCRxi6D0Ogo8en4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4504.eurprd04.prod.outlook.com (2603:10a6:20b:19::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Tue, 7 Apr
 2020 02:23:17 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 02:23:17 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Stephen Boyd
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Topic: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Index: AQHV+tC4KM3qOryI0kukDYglzXuSqahJsFvwgBCTKOCAEs1BUA==
Date: Tue, 7 Apr 2020 02:23:17 +0000
Message-ID: <AM6PR04MB4966DD18256848D81E06D67880C30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <AM0PR04MB42117B51ACA7E84CDB7995F380F80@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <AM6PR04MB49668F50A257A6BCD45666A380CF0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49668F50A257A6BCD45666A380CF0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 09ee1ed1-5bce-42d8-46e3-08d7da9aa211
x-ms-traffictypediagnostic: AM6PR04MB4504:|AM6PR04MB4504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB450452F6020BF16EA79D360A80C30@AM6PR04MB4504.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(39850400004)(136003)(346002)(376002)(4326008)(44832011)(26005)(33656002)(45080400002)(2906002)(71200400001)(5660300002)(55016002)(186003)(86362001)(110136005)(9686003)(8936002)(66556008)(81166006)(316002)(7696005)(8676002)(64756008)(76116006)(6506007)(66946007)(66476007)(54906003)(966005)(81156014)(66446008)(478600001)(52536014);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t1iJPx1V5u0XbqHXiu8XCIteapN7I530GEK0/lpTEHJCbdWBKWCaotl10VlwYrLjtApIFV7KismQpkfh+5nVR9OxUi8jwpnaqL6cZmf5eO8I9hb/dNDG+dqZen1T7AqODubVb8wev99DKOmyBBWKT6SHM3X6scTBDUzpowsg8XTcoApC/yIGnfz/0uR5V+RF14kYcHcikOlareHU/E0EKVFrYmcaHd1C8at1E+gUS711YFYXbVbO5fZC6+oPW+UUpncbdBUgQ1+7GI1g6BCIiDuPkW3gRPouO+fH1F2tmE42eRiIKi2SDGzr9U5h2+GU9CZ7ako2qoXNE0+m/Zn+zHigTUli7ewcjttJqLJjPfJC4Pgr6Vfwwp+U2z+FFjn5Y/B2mtIzUcOZSd9hms6aZiiO9iPtJXlPSxn4V+7QsMOu15xao+R63TRWYkfFW7T3NASm56kqYGS47baF49auH9tE4RelA9/WaEQeSnAE1jazyBSW4hdxZcBt7XF1oUsS9KQFsTEi1IFFnAkdouaV2A==
x-ms-exchange-antispam-messagedata: 5d3fbekp8G2fzSgneJ9iYNXMchbD8dhNOGXdlaAZVAaTqLW4xpCOAkGbvV7KuiJ5Oxdft35cO14mNaIfmcjchUVasCv9SiUr/PTulO6tyCmqUrulbY20Bv3kZ8Hwf+4QJ9hhN+0EhmKIxcABFlHalQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09ee1ed1-5bce-42d8-46e3-08d7da9aa211
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 02:23:17.3925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z9zMjTbJlUFg4S+4qYYGhbYlYpc1cDDhMMAe1AlvBwHNIa0Tjh3HEDI3GaheZduHdrukwi3ykveXH852n/9lGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_192326_646268_F7B55494 
X-CRM114-Status: GOOD (  26.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.67 listed in list.dnswl.org]
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
Cc: Oliver Graute <oliver.graute@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "dongas86@hotmail.com" <dongas86@hotmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping... This patchset is pending for quite a long time without comments. It also blocked a lot continued upstreaming work.
Any suggestions how to proceed?

Regards
Aisheng

> From: Aisheng Dong <aisheng.dong@nxp.com>
> Sent: Thursday, March 26, 2020 11:15 AM
> 
> Ping
> 
> > From: Aisheng Dong <aisheng.dong@nxp.com>
> > Sent: Sunday, March 15, 2020 10:11 PM
> >
> > Hi Stephen,
> >
> > > From: Dong Aisheng <aisheng.dong@nxp.com>
> > > Sent: Sunday, March 15, 2020 9:44 PM
> > >
> > > This patch series is a preparation for the MX8 Architecture improvement.
> > > As for IMX SCU based platforms like MX8QM and MX8QXP, they are
> > > comprised of a couple of SS(Subsystems) while most of them within
> > > the same SS can be shared. e.g. Clocks, Devices and etc.
> > >
> > > However, current clock binding is using SW IDs for device tree to
> > > use which can cause troubles in writing the common <soc>-ss-xx.dtsi
> > > file for
> > different SoCs.
> > >
> > > This patch series aims to introduce a new binding which is more
> > > close to hardware and platform independent and can makes us write a
> > > more general drivers for different SCU based SoCs.
> > >
> > > Another important thing is that on MX8, each Clock resource is
> > > associated with a power domain. So we have to attach that clock
> > > device to the power domain in order to make it work properly.
> > > Further more, the clock state will be lost when its power domain is
> > > completely off during suspend/resume, so we also introduce the clock
> > > state save&restore
> > mechanism.
> > >
> > > It's based on latest shanw/for-next branch.
> > >
> > > The top commit is:
> > > 4559a11e48d5 Merge branch 'imx/defconfig' into for-next
> > >
> >
> > I carefully went through all your review comments on V4 [1] and i'm
> > sure all of them have been addressed.
> > And for the V5-Resend version [2] , we didn't receive your comment.
> > It seems Shawn is also waiting for your feedback for the next step.
> > Could you help check V6?
> >
> > For V6, only a minor update that added scu clk unregister if met
> > error. As the original code does not support it, so i added an extra patch to
> handle it.
> >
> > [1]
> >
> https://lore.kernel.org/linux-clk/AM0PR04MB421181E4376070636898906F80
> > A10@AM0PR04MB4211.eurprd04.prod.outlook.com/t/
> > [2] https://patchwork.kernel.org/cover/11248249/
> >
> > Regards
> > Aisheng
> >
> > > ChangeLog:
> > > v5->v6:
> > >  * add scu clk unregister if add provider failed
> > > v4->v5:
> > >  * Address all comments from Stephen
> > > v3->v4:
> > >  * use clk-indices for LPCG to fetch each clks offset from dt
> > > v2->v3:
> > >  * change scu clk into two cells binding
> > >  * add clk pm patches to ease the understand of the changes
> > > v1->v2:
> > >  * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
> > >    Documentation/devicetree/bindings/arm/arm,scpi.txt
> > >  * Add required power domain property
> > >  * Dropped PATCH 3&4 first, will send the updated version accordingly
> > >    after the binding is finally determined,
> > >
> > >
> > > Dong Aisheng (12):
> > >   dt-bindings: firmware: imx-scu: new binding to parse clocks from
> > >     device tree
> > >   dt-bindings: clock: imx-lpcg: add support to parse clocks from device
> > >     tree
> > >   clk: imx: scu: add two cells binding support
> > >   clk: imx: scu: bypass cpu power domains
> > >   clk: imx: scu: allow scu clk to take device pointer
> > >   clk: imx: scu: add runtime pm support
> > >   clk: imx: scu: add suspend/resume support
> > >   clk: imx: imx8qxp-lpcg: add parsing clocks from device tree
> > >   clk: imx: lpcg: allow lpcg clk to take device pointer
> > >   clk: imx: clk-imx8qxp-lpcg: add runtime pm support
> > >   clk: imx: lpcg: add suspend/resume support
> > >   clk: imx: scu: unregister clocks if add provider failed
> > >
> > >  .../bindings/arm/freescale/fsl,scu.txt        |  12 +-
> > >  .../bindings/clock/imx8qxp-lpcg.txt           |  36 ++-
> > >  drivers/clk/imx/clk-imx8qxp-lpcg.c            | 139 +++++++++++
> > >  drivers/clk/imx/clk-imx8qxp.c                 | 136 ++++++-----
> > >  drivers/clk/imx/clk-lpcg-scu.c                |  53 +++-
> > >  drivers/clk/imx/clk-scu.c                     | 231
> > +++++++++++++++++-
> > >  drivers/clk/imx/clk-scu.h                     |  56 ++++-
> > >  include/dt-bindings/clock/imx8-lpcg.h         |  14 ++
> > >  include/dt-bindings/firmware/imx/rsrc.h       |  23 ++
> > >  9 files changed, 610 insertions(+), 90 deletions(-)  create mode
> > > 100644 include/dt-bindings/clock/imx8-lpcg.h
> > >
> > > --
> > > 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
