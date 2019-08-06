Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3868299D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 04:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/vCuCgl5bFSnjFIFweYbu3gd3CroQTHl6pLAVQRJrg=; b=ZEDtjLwq0fT7Ah
	/H5foZIFYNfGwIpIvsxsIGfSXWWfOs7D1jzQJIw3B3kf1nhL1xyoQWUnA7YNBRJgzXqZI08k8zeqj
	Uma6SWyHcusNlKX3/IvTqE2pa3bMSl9CnMOaHozTgI3sx350NvIh/dgbNawPCWvNciosfKbdbZ1fT
	2rdTLXJK9J2IOQc3LpjOGP67cwvkavZlpQ4Tyj765XoQsS4rpO4soH5AwOD1fJxfxkll/kuLJlI9d
	fh+3/Amo58pjlR67RxOets5wAxX+Q/tY8oGQ6IGHZ+JRHJYPMe5PVe9QCXgIBcAwQXrD4+5RBmD2+
	rxaE8YArzedM4NlmpPxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupAa-00008p-0B; Tue, 06 Aug 2019 02:25:48 +0000
Received: from mail-eopbgr140074.outbound.protection.outlook.com
 ([40.107.14.74] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupAS-000086-5P
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 02:25:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XNQ8gw6cFe5tYQkj1kqSAKXBg0vAG3A3k5CUstm6YQbRWnIfR8iTWkawlqCZ6bzAMioP6ONz7jH743pDVqSWnN4guvSRJopjWxIUdD+mfvFcrKIzsDWDD2yrhRbsB88KPdCQ0RvCxaahNH875vAiM6jXkoXd84dwokjI56KYqRd5FAsg+EU0Dn5Qx3YnzHTRfvWAcL3AXSN2aAnduBYyk8SReExjy0CF2LxT6xnFJRMHU8s46EA+18Jb3NujQjgkyBeLSlVACXFR0clPWX5+kd7obuz0ncAWc2RQ3kWzZ1C4/GSLWLVE+nDd9EC98zU2TVpwuGSqhc6urDgvyrj2bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ovoz7QUI1zlTeJ/pJJEIZ1FjPcxhUF9Ra7yBoH/3D0=;
 b=ca2ywNs6Z3DzNwWgDIcHS55FLPGw7voHgg7iXvk/+YlR5UCrLeTra0HKkLxAA3jyDFGKunr0B3eiwO8uUnxvyAgWMKOjxUvxKbELe6mjy9KZpfmtjcu+HfkqaloYD/SmGvGGTmouhD1KBF4drrYcOuEPoFRW2/OxG/ivB9ccGzNlOI5znltAKlhN+M4ak0LJ8fi9odNqz7dxQolxeDgup+m+3Wdlq3/oCp6sKkcQSorgFtX5s1enPfQ80q9MSlgqQ47kQFAQOp2dXOP19e32V+5fnXuCt4k0HT9DHc7PiZWpru9JM1UPO7TE8F0MKgree1Gp1524UK1CY/hKTy+hjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ovoz7QUI1zlTeJ/pJJEIZ1FjPcxhUF9Ra7yBoH/3D0=;
 b=aKUOjTvUWThLqll4s1NJ/ewN54jwD36QMG9FMNNAcG7IH4R1LmIqyOntJF3hCE6KocJzfAe5zmSldXJfrC8SuJwRxQnqRVgXxzyJjnwmN5tB+plXXKcVi2vNhmoruV8M8kJGNSAyvTpx57H9768dmPQvszF7RUu1DowT4KQWppY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3881.eurprd04.prod.outlook.com (52.134.73.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Tue, 6 Aug 2019 02:25:31 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 02:25:31 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "gustavo@embeddedor.com" <gustavo@embeddedor.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: RE: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock during
 initialization
Thread-Topic: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock during
 initialization
Thread-Index: AQHU+yZqSSaC+SqMKEqyvy0FwIJdyKZNkJKAgIxln0CAFA6VYA==
Date: Tue, 6 Aug 2019 02:25:31 +0000
Message-ID: <DB3PR0402MB3916F96CD6F3E874204E6972F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556169264-31683-1-git-send-email-Anson.Huang@nxp.com>
 <1556169264-31683-2-git-send-email-Anson.Huang@nxp.com>
 <155623699177.15276.12577395377027956830@swboyd.mtv.corp.google.com>
 <DB3PR0402MB39165F69F8B684D323C683B1F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39165F69F8B684D323C683B1F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a9c91f0-807a-4b42-41a9-08d71a155ae1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3881; 
x-ms-traffictypediagnostic: DB3PR0402MB3881:
x-microsoft-antispam-prvs: <DB3PR0402MB38818E7C6F5880FC7706AE62F5D50@DB3PR0402MB3881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(66446008)(71200400001)(71190400001)(186003)(52536014)(76116006)(74316002)(76176011)(6506007)(6436002)(55016002)(2501003)(7696005)(86362001)(66066001)(7416002)(26005)(6636002)(9686003)(53936002)(14454004)(81156014)(33656002)(110136005)(4326008)(8676002)(316002)(68736007)(102836004)(81166006)(5660300002)(44832011)(476003)(11346002)(446003)(486006)(2201001)(14444005)(6246003)(66556008)(64756008)(99286004)(256004)(6116002)(478600001)(229853002)(66476007)(7736002)(305945005)(3846002)(8936002)(66946007)(2906002)(25786009)(921003)(1121003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3881;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Gt9oyl9Fza2dkQw6RCsTth94RSCYbsBHFiAJ3clKvlS87Pgg6muRJbtLKR7exWMgjlBLD1A9rtgHa/c0gMbGcTQ4BJoZxNY7AVxx7lQ8LJRqqXBF5wyUbaT/KC37uXZOmH07CZk1rxM/FIIt3e4dz5n9za5qR4a66eSuVV69NArM7Iv9QpmP47Hhbuu8c6CQ5/IP4nS/4H2pBuGIAtZtmBQNXjIFRMvXQDDRdjzn+I4QEx+SwiZ1lGgrKD1GzvQCD9x6KZb+L9Nw0Bnf4gkpZgIKpj1O/kwn3aFtvgZvKvvjvcT1C5TIR2i0Qeuc84wpILmyMjPSaBthDqG9TcDnW/Dd0rZytDMn9DPNWACZ5hJIVEyreWVbkaGXEWsUK+up8dzy4ugYRCL6vmWlGk5rcjLBrm9JnXA8G0lu40FUhfc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a9c91f0-807a-4b42-41a9-08d71a155ae1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 02:25:31.6182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_192540_214366_4942D275 
X-CRM114-Status: GOOD (  33.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen
	I think we should resume this thread, without this patch, mainline kernel boot up will cause mmc timeout all the time. If it is NOT good to disabling those peripheral devices' clock in i.MX7ULP's clock driver, then we have to change the core framework to disable clock explicitly if the CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE is present, most likely it will impact other platforms I think, so the most safe way is just to do it inside our i.MX7ULP composite clock driver. What do you think?

Thanks,
Anson

> Hi, Stephen
> 
> > Quoting Anson Huang (2019-04-24 22:19:12)
> > > i.MX7ULP peripheral clock ONLY allow parent/rate to be changed with
> > > clock gated, however, during clock tree initialization, the
> > > peripheral clock could be enabled by bootloader, but the prepare
> > > count in clock tree is still zero, so clock core driver will allow
> > > parent/rate changed even with
> CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE
> >
> > That's a bug. Can you send a patch to fix the core framework code to
> > fail an assigned rate or parent change if those flags are set? Or is
> > that because the core doesn't respect these flags when they're buried
> > in the middle of the clk tree and some rate or parent change comes in
> > and affects the middle of the tree that has the flag set on it?
> 
> If changing the core framework code to return fail for clk parent/rate
> assignment, that means clk assignment in DT will NOT work for i.MX7ULP,
> then all the clk rate/parent settings will be done in driver? That will lead to
> more issues/changes.
> 
> It is just because core framework ONLY checks the prepare_count and
> CLK_SET_PARENT_GATE flag to determine if the parent switch is allowed,
> however, during clock tree initialization, the prepare_count is always 0 but
> the HW status could be enabled actually, so the core framework will allow
> the parent switch while HW status does NOT allow the parent switch, so core
> framework will treat the parent switch successfully but HW is actually NOT.
> 
> I think we can treat it as platform specific issue, if bootloader can guarantee
> all peripheral clocks are disabled before jumping to kernel, then there will be
> no issue, but we can NOT assume that, so I have to find some place in early
> kernel phase to disable those peripheral clocks.
> 
> >
> > > set, but the change will fail due to HW NOT allow parent/rate change
> > > with clock enabled. It will cause clock HW status mismatch with
> > > clock tree info and lead to function issue. Below is an example:
> > >
> > > usdhc0's pcc clock value is 0xC5000000 during kernel boot up, it
> > > means
> > > usdhc0 clock is enabled, its parent is APLL_PFD1. In DT file, the
> > > usdhc0 clock settings are as below:
> > >
> > > assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>; assigned-clock-parents
> > > =
> > > <&scg1 IMX7ULP_CLK_NIC1_DIV>;
> > >
> > > when kernel boot up, the clock tree info is as below, but the usdhc0
> > > PCC register is still 0xC5000000, which means its parent is still
> > > from APLL_PFD1, which is incorrect and cause usdhc0 NOT work.
> > >
> > > nic1_clk       2        2        0   176000000          0     0  50000
> > >     usdhc0       0        0        0   176000000          0     0  50000
> > >
> > > After making sure the peripheral clock is disabled during clock tree
> > > initialization, the usdhc0 is working, and this change is necessary
> > > for all i.MX7ULP peripheral clocks.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/clk/imx/clk-composite-7ulp.c | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > >
> > > diff --git a/drivers/clk/imx/clk-composite-7ulp.c
> > > b/drivers/clk/imx/clk-composite-7ulp.c
> > > index 060f860..1a05411 100644
> > > --- a/drivers/clk/imx/clk-composite-7ulp.c
> > > +++ b/drivers/clk/imx/clk-composite-7ulp.c
> > > @@ -32,6 +32,7 @@ struct clk_hw *imx7ulp_clk_composite(const char
> > *name,
> > >         struct clk_gate *gate = NULL;
> > >         struct clk_mux *mux = NULL;
> > >         struct clk_hw *hw;
> > > +       u32 val;
> > >
> > >         if (mux_present) {
> > >                 mux = kzalloc(sizeof(*mux), GFP_KERNEL); @@ -70,6
> > > +71,18 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
> > >                 gate_hw = &gate->hw;
> > >                 gate->reg = reg;
> > >                 gate->bit_idx = PCG_CGC_SHIFT;
> > > +               /*
> > > +                * make sure clock is gated during clock tree initialization,
> > > +                * the HW ONLY allow clock parent/rate changed with clock
> gated,
> > > +                * during clock tree initialization, clocks could be enabled
> > > +                * by bootloader, so the HW status will mismatch with clock tree
> > > +                * prepare count, then clock core driver will allow parent/rate
> > > +                * change since the prepare count is zero, but HW actually
> > > +                * prevent the parent/rate change due to the clock is enabled.
> > > +                */
> >
> > Is it OK to forcibly gate the clk like this at init time? If so, why
> > can't we force the clk off when we change the rate and then restore
> > the on state after changing the rate? That would be more "robust" than
> > doing it once here. Plus then we could remove the CLK_SET_RATE_GATE
> flag.
> 
> Yes, it is ONLY for composite clocks which are for peripheral clocks, ONLY
> earlycon could be impacted but we can add imx_register_uart_clocks() call to
> make earlycon also work.
> 
> Forcing the clk off and restore them ON for rate/parent change will need to
> change common composite clock ops, currently i.MX7ULP all use common
> ops, so unless i.MX7ULP implements composite clock ops, and the change
> will be very significant.
> 
> Thanks,
> Anson
> 
> >
> > > +               val = readl_relaxed(reg);
> > > +               val &= ~(1 << PCG_CGC_SHIFT);
> > > +               writel_relaxed(val, reg);
> > >         }
> > >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
