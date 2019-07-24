Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC1E72A11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FwMtyC54yJef8gjHbqsBVcoJvTNNgq3nJXxpeCGU9A=; b=IYQiWhOlO3AW7F
	xUEw03IH3cmketRYg7fEVtiypWjfKkg0CmXf0lkKz/MAhH38d48BQlJAn5K7gfRx2My5A53JBl1yU
	MT+7+IoHwDKY12hGvJZyglqD37J1Zd2KUtassBhHsk7d1FLv0ktuvWv7civ9uylowzXQ898CmFJcX
	g+qlztJPjNmeiB5U6KAjS33tl95fMUkhC3ww7R7ScecZ4PL70aKbdeYToBasuU1wc2N9ldP/80/Bh
	T/W7n6UoQvD6PizbBczCmP5SHLh7YbNtmdHQ04BhXfzDarG0DNtwoxfhybHoGDbtce5CD2FTNbtZT
	Vi2ovq8WJwRqFEyIw+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCcZ-00018E-Cn; Wed, 24 Jul 2019 08:27:35 +0000
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCc7-00013Y-KO
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:27:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EXCQSavRxY6x2/Y/HpxH9LmwW56yldvwsXR7S0Hiyh0LrWIwIU226HTHmcBhC/8f4FstU7HHMBWHb8VaFHabM0GGr/7sq96kVw7SuqvCDIa7VdTWXi5QbG7cBg1dxIkK0wSMpuk6+zUCBLFTeamUyuNi4VXJ7UoYayHEZLmceOyWikxe+mCwXJ2dSb9gLAK1KRgTl9ttIN1aAx+6srbnMB1+bB5vIqx7P8l2v+9yUSzGF5PO2zKzT7Di2UaPpUq/l98BLR3zlOqePD5nsRZieiOn9kS4kuyCBFumKbvzf9nACQnAfVOe4LqzYu+NiYuOylRnGfOZvL2+n6eoqIJTgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Byw149FiJqX8CdXdqGX7zUhH7nmCMj1YNcuGPVWllf4=;
 b=b03gWIFyxG7eBbNySC7ICcUuocsBeUvtUskzr/BM72iM5Ibia2z1I4zun4jggT5dCLJD97mEnZjmNpPWX9LJQWG/pR1oCHGYFY1oenk4QTnPrNjolFeN/SYhcwU9M5NjtuKkB9ks0Z8iPfJilXb3o3RKjdSgs6mxH5JmrwyMLPoczMDGvjjYna9n88rgYfjaYYgUAzfZ5YzS683eafGRFaKcLVqDaMMMmPvwNdCf4orNZP1B/6SGE0nayg1ohKn48L/Puc28OTA4SBhDE9vc8sOFmpIZ/tIfCf3egeg78wZ5IXhGc6szVwfMaOoQA3x87qTLChttbc9+NUQViUo0xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Byw149FiJqX8CdXdqGX7zUhH7nmCMj1YNcuGPVWllf4=;
 b=pJLH7waRnZ4rfHeJqj3EMlfGhrdAd2bstbMkhlbzODxoYu49aPfOm+KIcBVRK2hiGFd/MmIB87MyE6yQ7hSozj9zP34fLgFTZ7eTzgpG1WlbKWMGwYvnJsIJU+HLPPgt+6JeJ+yr0NakzkTzpp0FUNB6Q2rgUzz0odUC9gxUqs4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3833.eurprd04.prod.outlook.com (52.134.67.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.15; Wed, 24 Jul 2019 08:27:03 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 08:27:03 +0000
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
Thread-Index: AQHU+yZqSSaC+SqMKEqyvy0FwIJdyKZNkJKAgIxln0A=
Date: Wed, 24 Jul 2019 08:27:03 +0000
Message-ID: <DB3PR0402MB39165F69F8B684D323C683B1F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556169264-31683-1-git-send-email-Anson.Huang@nxp.com>
 <1556169264-31683-2-git-send-email-Anson.Huang@nxp.com>
 <155623699177.15276.12577395377027956830@swboyd.mtv.corp.google.com>
In-Reply-To: <155623699177.15276.12577395377027956830@swboyd.mtv.corp.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b9e2e78-94c6-439b-a1f2-08d71010b4cf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3833; 
x-ms-traffictypediagnostic: DB3PR0402MB3833:
x-microsoft-antispam-prvs: <DB3PR0402MB383321E2F65884C849CDFE2AF5C60@DB3PR0402MB3833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(346002)(136003)(376002)(189003)(199004)(76176011)(110136005)(102836004)(33656002)(7696005)(81156014)(186003)(7416002)(6506007)(74316002)(8936002)(305945005)(81166006)(486006)(7736002)(66066001)(476003)(5660300002)(26005)(64756008)(66946007)(66556008)(478600001)(66476007)(2906002)(229853002)(99286004)(316002)(44832011)(66446008)(52536014)(68736007)(86362001)(14454004)(71190400001)(55016002)(25786009)(446003)(71200400001)(11346002)(6436002)(6636002)(6116002)(76116006)(14444005)(256004)(53936002)(9686003)(4326008)(6246003)(8676002)(2501003)(2201001)(3846002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3833;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x1W68VbMdHnlSeF/FRaqcW283Nqe+mSC16s5DkxRPHm5jKGRw2BjOaskfu7hQ+0Lfgavj/ZEqbuVcvNhR5UktB1kQ1yBzJAfnrxjW6HRuwVlr6e7OrEhPOr0cf337PMs4t2BD3+3a9ov+opTpkG8Ci6oBsZLDBAS20OK9A8/8XpsniCiTLKq7FFntlp7gfbCzY243Xursqgh1A16C2lXt8EWDFHuFjRIYekDZpUbCRouwFN8klrEFEthjnjIN9+E6QWUwHgiI4w8yRi1mcqaHTbt77LkCb2ehrbmIU498pnmTYFK0GjtwTpq5tixM9gqdgQiXk2tJf3N4nTDLQIft5yHAvejwqHxAVNoDLs5uYBoucklVa9sWCZQfvNe1tyMPt+B2fo1akPZAi2GmKQYebAlLZEKXfNOIlQMVvfrTfU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b9e2e78-94c6-439b-a1f2-08d71010b4cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 08:27:03.3482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_012707_712529_8851E2B5 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> Quoting Anson Huang (2019-04-24 22:19:12)
> > i.MX7ULP peripheral clock ONLY allow parent/rate to be changed with
> > clock gated, however, during clock tree initialization, the peripheral
> > clock could be enabled by bootloader, but the prepare count in clock
> > tree is still zero, so clock core driver will allow parent/rate
> > changed even with CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE
> 
> That's a bug. Can you send a patch to fix the core framework code to fail an
> assigned rate or parent change if those flags are set? Or is that because the
> core doesn't respect these flags when they're buried in the middle of the clk
> tree and some rate or parent change comes in and affects the middle of the
> tree that has the flag set on it?

If changing the core framework code to return fail for clk parent/rate assignment,
that means clk assignment in DT will NOT work for i.MX7ULP, then all the clk
rate/parent settings will be done in driver? That will lead to more issues/changes.

It is just because core framework ONLY checks the prepare_count and CLK_SET_PARENT_GATE
flag to determine if the parent switch is allowed, however, during clock tree initialization,
the prepare_count is always 0 but the HW status could be enabled actually, so the core framework
will allow the parent switch while HW status does NOT allow the parent switch, so core framework
will treat the parent switch successfully but HW is actually NOT. 

I think we can treat it as platform specific issue, if bootloader can guarantee all peripheral clocks
are disabled before jumping to kernel, then there will be no issue, but we can NOT assume that, so
I have to find some place in early kernel phase to disable those peripheral clocks.

> 
> > set, but the change will fail due to HW NOT allow parent/rate change
> > with clock enabled. It will cause clock HW status mismatch with clock
> > tree info and lead to function issue. Below is an example:
> >
> > usdhc0's pcc clock value is 0xC5000000 during kernel boot up, it means
> > usdhc0 clock is enabled, its parent is APLL_PFD1. In DT file, the
> > usdhc0 clock settings are as below:
> >
> > assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>; assigned-clock-parents =
> > <&scg1 IMX7ULP_CLK_NIC1_DIV>;
> >
> > when kernel boot up, the clock tree info is as below, but the usdhc0
> > PCC register is still 0xC5000000, which means its parent is still from
> > APLL_PFD1, which is incorrect and cause usdhc0 NOT work.
> >
> > nic1_clk       2        2        0   176000000          0     0  50000
> >     usdhc0       0        0        0   176000000          0     0  50000
> >
> > After making sure the peripheral clock is disabled during clock tree
> > initialization, the usdhc0 is working, and this change is necessary
> > for all i.MX7ULP peripheral clocks.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/clk/imx/clk-composite-7ulp.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/drivers/clk/imx/clk-composite-7ulp.c
> > b/drivers/clk/imx/clk-composite-7ulp.c
> > index 060f860..1a05411 100644
> > --- a/drivers/clk/imx/clk-composite-7ulp.c
> > +++ b/drivers/clk/imx/clk-composite-7ulp.c
> > @@ -32,6 +32,7 @@ struct clk_hw *imx7ulp_clk_composite(const char
> *name,
> >         struct clk_gate *gate = NULL;
> >         struct clk_mux *mux = NULL;
> >         struct clk_hw *hw;
> > +       u32 val;
> >
> >         if (mux_present) {
> >                 mux = kzalloc(sizeof(*mux), GFP_KERNEL); @@ -70,6
> > +71,18 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
> >                 gate_hw = &gate->hw;
> >                 gate->reg = reg;
> >                 gate->bit_idx = PCG_CGC_SHIFT;
> > +               /*
> > +                * make sure clock is gated during clock tree initialization,
> > +                * the HW ONLY allow clock parent/rate changed with clock gated,
> > +                * during clock tree initialization, clocks could be enabled
> > +                * by bootloader, so the HW status will mismatch with clock tree
> > +                * prepare count, then clock core driver will allow parent/rate
> > +                * change since the prepare count is zero, but HW actually
> > +                * prevent the parent/rate change due to the clock is enabled.
> > +                */
> 
> Is it OK to forcibly gate the clk like this at init time? If so, why can't we force
> the clk off when we change the rate and then restore the on state after
> changing the rate? That would be more "robust" than doing it once here. Plus
> then we could remove the CLK_SET_RATE_GATE flag.

Yes, it is ONLY for composite clocks which are for peripheral clocks, ONLY earlycon
could be impacted but we can add imx_register_uart_clocks() call to make earlycon
also work.

Forcing the clk off and restore them ON for rate/parent change will need to change
common composite clock ops, currently i.MX7ULP all use common ops, so unless
i.MX7ULP implements composite clock ops, and the change will be very significant.  

Thanks,
Anson

> 
> > +               val = readl_relaxed(reg);
> > +               val &= ~(1 << PCG_CGC_SHIFT);
> > +               writel_relaxed(val, reg);
> >         }
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
