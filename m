Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA9716BD22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbQT7WcGn7lGlRIEHKxN9eDPEViauU//0hHCAfOm1mE=; b=FoytUQKlPn/HX9
	+CyBKsd2ezhu0WQg8ZTNwfKjkVjCMgWGWH+n/vlSbv1+xDi3FiIsgCgV6TIwAFW3Am7Zb4UuOXv3T
	a7qRRREiPPr4L3jSJJQ31sEzz5aS0FpSZwZthWGVD2bPNev3/Y7iXml1gdmUp6CqM4mfl4WBfSLjD
	xtV/Fh+TGFdrP/z12+JGeJHPVREFxZtwT59yNuV4x24q7x9B33OrF1Ix0GetohN1VV8aBPfJ692EM
	7K+dVKWSkH1OcNgCPlCutdzBG6oC2K7tVEzMQXUd7WhHBWzVBpdVEdtsiYV7OTwjOvohhFQ8S7E7g
	xbDgfpjqWlUk+4VLBSsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WLX-0004GG-3O; Tue, 25 Feb 2020 09:17:43 +0000
Received: from mail-db3eur04on0625.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::625]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WLN-0004Fg-MO
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:17:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISrWzpzEEHvcQ2tTU8+YzPVzjRcztibLUAyQuBp0JM3iK1YfR8y+AxLncKqWJCmVCRvwk9wIr0yQZ5R9t7fPQKZdttoLzg+7uFNmYQaTu2acQB/N7Cviw+pJWWfUGRaTAT9awA80mTD3U4w2m1QorgthEGNFzDflWom59pNpW5kq8k5uwNWE37PNj3PRVPuOlY2CkpZmSUFeaNHlDcyRYvQXGBHSF2an8UWS1xsZ1Au2tIt2ef9Czgpzlqyf5Bo+Kja+2e0wCUGSUn7joXjX1fH7uzVYNg31swznBqx5ZrPu+FslCthIdnhZJmKUJGyykXyLYIukNQXioGf31TZPZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxJB/KTQmkcZNCA5oK4QO++JzMeiP00SUso+Hrkt1Os=;
 b=ML0UZcFnq0I4tmR59jQy1JlAygRLbwYFuJ8rYk/MpCCjaGRrHi6CQRYzbXasZ3M0l+/9EYbiXouHAuZABBAoCpPKDkw9na8gmtXGEQbmqiSaH8/Bj4hwwPEMjH3Day6vU9KqzGKBE8OYA2/Y7aBIzuCicRj6ZirTUU2UrhCt0v4U6euc2ql27Ke8kzIStwfxvnmqqVIVRJKLJYSqS/hCTz/JzVSZmhQaAwmD5YZlrpUej5I+SA9lLY3us6mp58t+lDbsO5kq11TYuWTsig9bLxg+b/UsHftgYuePTpinzrAEAcHYVyyPUhZtuRnWRyRx+3ate/jd8QURKMEQDFzUQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxJB/KTQmkcZNCA5oK4QO++JzMeiP00SUso+Hrkt1Os=;
 b=GQ36jw2Fwe5g3257twM0/2EPdXk0wHs1r8nmWTIU2keU3kqaGDcJ3MW2okJ6tQ/nlHkiMIymnnEMNIxZRoJYhFrGwcODFZBHhT5/VxEOHAg/FWGgeGpk7X5w04ZlYNBISj1aDwBvodpuAeejdDjJrz8gl+agKk7I2485rM7zICo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3658.eurprd04.prod.outlook.com (52.134.65.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Tue, 25 Feb 2020 09:17:29 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 09:17:29 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Andy Duan
 <fugang.duan@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Thread-Topic: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Thread-Index: AQHV67lWYlwi4heaT0+36i2d6OFDc6grnAMAgAAEkTA=
Date: Tue, 25 Feb 2020 09:17:29 +0000
Message-ID: <DB3PR0402MB39160C67665B2A101F2B0885F5ED0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582620554-32689-1-git-send-email-Anson.Huang@nxp.com>
 <65500dc7-dc03-7dc1-92cd-5557cd73232e@nxp.com>
In-Reply-To: <65500dc7-dc03-7dc1-92cd-5557cd73232e@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ebbd52ec-2b1d-491c-81a8-08d7b9d389cb
x-ms-traffictypediagnostic: DB3PR0402MB3658:|DB3PR0402MB3658:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3658591EC1E4187B39866E30F5ED0@DB3PR0402MB3658.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(189003)(199004)(8936002)(44832011)(81156014)(8676002)(76116006)(316002)(81166006)(478600001)(33656002)(5660300002)(71200400001)(2906002)(4326008)(110136005)(52536014)(186003)(86362001)(26005)(66946007)(9686003)(53546011)(6506007)(55016002)(7696005)(66476007)(64756008)(66556008)(66446008)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3658;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yF6bHjdAtRua/kYS48I90xIrcel/ZWQHFw9IxX7EeT5WgPEVOCpXxQe5tZvp6Z81WHNbPTsDOJO6p93f22IrikFhd/lRG06F1bZBGQWrgO3jDUc/3v+JCL6FwM46nYIeMzRnUHYETmxSQ5obweCY4KNCDn9Kry0BZ+m9XrUKgKHEaHVt3JwbGlOV8axuRs2vixX6keOEnSuWsi3w43KNdoaCLwazLZLoH6VUuEmsbNdsB2h1DBlIyVZIPIVo11Pgopbj2jygGhLDup7Xp+vPQgv2DGxvIOIEPY1Gy9EL47Sq3KpVBB8Pmnf3+hA0BYWGpmPL2k/O3MMkaKaHznb9tIEhqAjK9dTGDBZMjUDIfb+OVKcg7lMP7FpeGttpweRxM8Lq/KSQMdDsROBNWi7tiMMPzP+f4IwgDj8ruuDBx7Bw4KYq3GjRpnERD+5SVuuIr8fr645yaduhvVN+93GaqKlIDWxX+4oSmzU6RuEdKXp/fS023124WVEuFafCEE7BLcJ2ZAH+stsevNiC19VUcQ==
x-ms-exchange-antispam-messagedata: V13pJgZ17A/Qfsu6sG4+wfZ2+Q3KhKJGFp2WF9vtLPtAi0zeP4mDM92N7BNbX8+mtGh+A9nUq/DD0b9kedDivLBi1+SKeIJuFFhu0y8XK/iBjc8GW20uqSxlKu+NlMzeliomeb91bnjZtdvW0f2HCQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbd52ec-2b1d-491c-81a8-08d7b9d389cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 09:17:29.5459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MoqwFmDyfsBO5vuSGpZWOGoSAv3Qk1g/OnBNZBnAHwnHjpSVgvii5M/VbSpmgVTgNFmYEnhcQA+fmipMQbocsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3658
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_011733_735072_3B2C6105 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:625 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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

Hi, Daniel

> Subject: Re: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
> 
> Hi Anson,
> 
> One comment inline:
> 
> On 25.02.2020 10:49, Anson Huang wrote:
> > 'A53_CORE' is just a mux and no need to be critical, being critical
> > will cause its parent clock always ON which does NOT make sense, to
> > make sure CPU's hardware clock source NOT being disabled during clock
> > tree setup, need to move the 'A53_SRC'/'A53_CORE' reparent operations
> > to after critical clock 'ARM_CLK' setup finished.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >   drivers/clk/imx/clk-imx8mn.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8mn.c
> > b/drivers/clk/imx/clk-imx8mn.c index 83618af..0bc7070 100644
> > --- a/drivers/clk/imx/clk-imx8mn.c
> > +++ b/drivers/clk/imx/clk-imx8mn.c
> > @@ -428,7 +428,7 @@ static int imx8mn_clocks_probe(struct
> platform_device *pdev)
> >   	hws[IMX8MN_CLK_GPU_SHADER_DIV] =
> hws[IMX8MN_CLK_GPU_SHADER];
> >
> >   	/* CORE SEL */
> > -	hws[IMX8MN_CLK_A53_CORE] =
> imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1,
> imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels),
> CLK_IS_CRITICAL);
> > +	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core",
> base +
> > +0x9880, 24, 1, imx8mn_a53_core_sels,
> > +ARRAY_SIZE(imx8mn_a53_core_sels));
> >
> >   	/* BUS */
> >   	hws[IMX8MN_CLK_MAIN_AXI] =
> > imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels,
> base
> > + 0x8800); @@ -559,15 +559,15 @@ static int imx8mn_clocks_probe(struct
> > platform_device *pdev)
> >
> >   	hws[IMX8MN_CLK_DRAM_ALT_ROOT] =
> > imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
> >
> > -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC],
> hws[IMX8MN_SYS_PLL1_800M]);
> > -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE],
> hws[IMX8MN_ARM_PLL_OUT]);
> 
> 
> Why do you need to move this code? If there is a reason please add a
> separate patch and explain why.

I have explained the reason in the commit message, maybe NOT detail enough
for you, if these two set parent is put before ARM_CLK register, it will cause ARM_PLL
being disabled as no consumer using it, so the changes must be done in this patch.
After ARM_CLK register done, as it is critical, its parent will be always ON, hence re-parent
is OK. 

Thanks,
Anson

> 
> > -
> >   	hws[IMX8MN_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
> >   					   hws[IMX8MN_CLK_A53_CORE]->clk,
> >   					   hws[IMX8MN_CLK_A53_CORE]->clk,
> >   					   hws[IMX8MN_ARM_PLL_OUT]->clk,
> >   					   hws[IMX8MN_CLK_A53_DIV]->clk);
> >
> > +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC],
> hws[IMX8MN_SYS_PLL1_800M]);
> > +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE],
> > +hws[IMX8MN_ARM_PLL_OUT]);
> > +
> >   	imx_check_clk_hws(hws, IMX8MN_CLK_END);
> >
> >   	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get,
> > clk_hw_data);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
