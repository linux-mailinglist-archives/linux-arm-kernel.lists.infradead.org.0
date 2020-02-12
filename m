Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E121615AA53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 14:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3mV69viYZSt7JjOanzB54Jq+Hc0yAhgYgRuGgZLR44=; b=NLeAhbGeXl0NGz
	gQJghsZ78rUsJn+BYwgF0yuIP4tR439EkYauM4Q5/XlRL+O1Z9AntQAJCScgxuOzCGpSPuirbLT+E
	oeBG9idZJXRfwFrSIcpVAmSwvf9F/3bUq/k3OPd/O8W4A+iBw3NYWkfjDb/ULlaIgbACKWJN6BWs2
	KpFATnh4Vo87R19KhKgeCT+4KHU4rlpOl/7M4gZ4hYWeALqhhN/8C6m/8AoDOywaYOkDXT769Kl+n
	+jyo93WYTwCSOds9WeapOakgkR+HNZpvlvbOYMqj5OkHMMalACQSRgr4xdWYuHERYzVL8/M/EYVMz
	0mcw1QAyU+E3VmJLYUjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sMm-0000nc-Tm; Wed, 12 Feb 2020 13:47:48 +0000
Received: from mail-eopbgr150044.outbound.protection.outlook.com
 ([40.107.15.44] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sMf-0000n7-Pa
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 13:47:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RkpzD2R8+ufzpo276Fu1mlUv+rB+WH0RQ91gQIsUZfYJYroQuaq8bOgvtpoPhrWjwT5Fso7mYher9y0DG4B2YfYQCxpKT6+Z6F6uSmGYaXUBQbBllFXTNhLO2roRFwL6gzgfXBypm5E0TDfJZ0jfjb/je/N73TDO2HtTKpmKxuvqPiiocb3BXLdsQxYn0P2uME8M7RN1jeigmyAK9O7dru2+mCkkqVTn2OfgWSSQwiVh2DNJZIM+OhAY1TwQYE77JSne6JkgVJUaWaT2orhYDbx6XaGhA81+yOBDXhv6T6YEu808edFuTVXisRH2irGrO0sS3APPt54kLeoliPKfgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fAhYFwFxfz7rKc2UVmoE13yAuDAqkXFjoApYdBSkQLQ=;
 b=e7J1WN8uOKq9rJzYszQDJEOoRGj4VF2jHlm9gxx5hljSzbTE3HO7hTLEeN1/oDftSS+64Pe2oWtifjuKgRVdQV8UxH6b5t7zm4c4CVs1O6FPGLyNvCUh6zNw65qFDlBwl+IbqrYemJkPARHVPTBMzccqmVvWkmyeoR3VhrI2TeGH3qpjKa9lLKmjO2+5jWyAYK6XmKdeytCreQ9opk8sveWzSo534ebbXse9Oh8sLO8gy8Cb4i8BI5B6u8gqlu6ha0jv1JYl0xIuOwD3j8t+BlvB99t8mIncUwHiZt7YMryyCuPwbQmnQYf9LhGTswnMroweV9ECoHOdXTb0aruWxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fAhYFwFxfz7rKc2UVmoE13yAuDAqkXFjoApYdBSkQLQ=;
 b=q84PW7+bFmq5Dh3VizIHUGgfU7VGe2ThRt35O072PCrZQaXUiaHhtGW3kJuxeDE2MIkwojWD/uo8dZe5S2nKjZbWxdkQaWnez09H8aVjZilQwQtNXDuCqGjtHsRPeXHrNyTUvnExkyQYKNDPn4WI0tpV6DHylF4UhYk1h6nawlo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5889.eurprd04.prod.outlook.com (20.178.118.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.26; Wed, 12 Feb 2020 13:47:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 13:47:38 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V2 1/4] clk: imx: imx8mq: fix a53 cpu clock
Thread-Topic: [PATCH V2 1/4] clk: imx: imx8mq: fix a53 cpu clock
Thread-Index: AQHVyqwL+gJCbLkXRk231KEqZiOAVqgXv2QAgAAAROA=
Date: Wed, 12 Feb 2020 13:47:38 +0000
Message-ID: <AM0PR04MB4481C9B71B5860BACA47CB1B881B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578986576-6168-1-git-send-email-peng.fan@nxp.com>
 <1578986576-6168-2-git-send-email-peng.fan@nxp.com>
 <20200212134310.GG11096@dragon>
In-Reply-To: <20200212134310.GG11096@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4e1862e5-854f-4031-b88b-08d7afc21fcb
x-ms-traffictypediagnostic: AM0PR04MB5889:|AM0PR04MB5889:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB588997224AFEA6540640B079881B0@AM0PR04MB5889.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(376002)(346002)(136003)(199004)(189003)(2906002)(52536014)(4326008)(6506007)(26005)(44832011)(8936002)(186003)(5660300002)(9686003)(55016002)(478600001)(86362001)(71200400001)(316002)(66446008)(6916009)(54906003)(81166006)(81156014)(8676002)(64756008)(76116006)(66476007)(7696005)(33656002)(66556008)(66946007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5889;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SgIzHIPioB996eeh7AbLNeYOSrEXnhMuqeg4wBGiSeNvec2Lji65PbPwnFrAZ3fxR8LcqKwFv5P9zQM4rtipWA72/GuVJqtL9amZ8Q/rGpVvEidSkTLalVJRRi7s/kHZxWh12Zm7jtsl0QmKe27+Uls0D1PzpEUJ6RVSTuxeblCC37dMwul7BOcCVrTKDGxQz/moybnLCi54XDKGnYofbU/hWgtKk2CoxLvqDqQdTvbE0gSCAhnuDN1LN4+6fpwsBS2B+Q3kV53dgjUlErByBDrgttSrsgnYkwzl1Qy1OnE5oi4+tm1W3OpdLLi5H1kALy44IRm9w0ipvwKHjrbkJ98g3WrnhYyWCJvJ98sBR2bRDAt9Y46YHjx9dPGZoGqx2NfhkcnJZtbuc7BAQRPe2CEKWzkvA5nxfJx7RomLjfPKpdIRUKA0U1mmq40LMFh1ZCVc4MYpgqX2arw+Pla/YrK8ni3M8pNz5BJJGgUEozBfWIfBvYalWlVz+6mJusqh
x-ms-exchange-antispam-messagedata: bQgYB3BbtK+9RGdSYGEcvB7gMcB5rTMt8ODm/vptz0vwLKWRNSExIHyHZ4+hVevVAhgGoJCrKwXxzqfRB3rVFsYxKxc2qpkMMGjmVcfiOmTYSEnrzK19VCMmXpCs6mQj2sv8VlTUeDVh9yOaPmdkZA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e1862e5-854f-4031-b88b-08d7afc21fcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 13:47:38.6806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zw31SEIktbbmI+rH8MLgJjPZbxEoearo0F5LI6H3u2eoMYr8ho5BpclLsnh6LkHzUODDwydQvp2DgXNQhb+RNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5889
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_054741_835592_FC1B2B34 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: Re: [PATCH V2 1/4] clk: imx: imx8mq: fix a53 cpu clock
> 
> On Tue, Jan 14, 2020 at 07:27:15AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> 
> The 'imx: ' in subject is not really needed.  'clk: imx8mq: ' should be already
> clear enough.
> 
> >
> > The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
> > signoff timing is 1Ghz,
> 
> Is this restriction mentioned in any document?

This information was not mentioned in documentation. But I have confirmed
the limitation with design team.

> 
> > however the A53 core which sources from CCM root could run above 1GHz
> > which voilates the CCM.
> 
> s/voilates/violates

Fix in v3.

> 
> >
> > There is a CORE_SEL slice before A53 core, we need configure the
> 
> s/need/need to

Fix in v3.

> 
> > CORE_SEL slice source from ARM PLL, not A53 CCM clk root.
> >
> > The A53 CCM clk root should only be used when need to change ARM PLL
> > frequency.
> >
> > Add arm_a53_core clk that could source from arm_a53_div and
> arm_pll_out.
> > Configure a53 ccm root sources from 800MHz sys pll Configure a53 core
> > sources from arm_pll_out Mark arm_a53_core as critical clock
> >
> > Fixes: db27e40b27f1 ("clk: imx8mq: Add the missing ARM clock")
> 
> We have been running this for quite a while with OPPs above 1GHz.  Why
> didn't we hear any issue report?

In room temperature, there might be no issue. But the A53 clk root
signoff timing is 1Ghz, so if we keep using the clk root for OPPs above
1GHz, we could not make sure there is no problem.

Thanks,
Peng.

> 
> Shawn
> 
> > Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V2:
> >  None
> >
> >  drivers/clk/imx/clk-imx8mq.c             | 16 ++++++++++++----
> >  include/dt-bindings/clock/imx8mq-clock.h |  4 +++-
> >  2 files changed, 15 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8mq.c
> > b/drivers/clk/imx/clk-imx8mq.c index b031183ff427..82a16b8e98a9
> 100644
> > --- a/drivers/clk/imx/clk-imx8mq.c
> > +++ b/drivers/clk/imx/clk-imx8mq.c
> > @@ -41,6 +41,8 @@ static const char * const video2_pll_out_sels[] =
> > {"video2_pll1_ref_sel", };  static const char * const imx8mq_a53_sels[] =
> {"osc_25m", "arm_pll_out", "sys2_pll_500m", "sys2_pll_1000m",
> >  					"sys1_pll_800m", "sys1_pll_400m", "audio_pll1_out",
> > "sys3_pll_out", };
> >
> > +static const char * const imx8mq_a53_core_sels[] = {"arm_a53_div",
> > +"arm_pll_out", };
> > +
> >  static const char * const imx8mq_arm_m4_sels[] = {"osc_25m",
> "sys2_pll_200m", "sys2_pll_250m", "sys1_pll_266m",
> >  					"sys1_pll_800m", "audio_pll1_out", "video_pll1_out",
> > "sys3_pll_out", };
> >
> > @@ -411,6 +413,9 @@ static int imx8mq_clocks_probe(struct
> platform_device *pdev)
> >  	hws[IMX8MQ_CLK_GPU_CORE_DIV] =
> imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels,
> base + 0x8180);
> >  	hws[IMX8MQ_CLK_GPU_SHADER_DIV] =
> > imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels,
> base
> > + 0x8200);
> >
> > +	/* CORE SEL */
> > +	hws[IMX8MQ_CLK_A53_CORE] =
> imx_clk_hw_mux2_flags("arm_a53_core",
> > +base + 0x9880, 24, 1, imx8mq_a53_core_sels,
> > +ARRAY_SIZE(imx8mq_a53_core_sels), CLK_IS_CRITICAL);
> > +
> >  	/* BUS */
> >  	hws[IMX8MQ_CLK_MAIN_AXI] =
> imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base
> + 0x8800);
> >  	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi",
> > imx8mq_enet_axi_sels, base + 0x8880); @@ -574,11 +579,14 @@ static int
> imx8mq_clocks_probe(struct platform_device *pdev)
> >  	hws[IMX8MQ_GPT_3M_CLK] = imx_clk_hw_fixed_factor("gpt_3m",
> "osc_25m", 1, 8);
> >  	hws[IMX8MQ_CLK_DRAM_ALT_ROOT] =
> > imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
> >
> > -	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
> > -					   hws[IMX8MQ_CLK_A53_DIV]->clk,
> > -					   hws[IMX8MQ_CLK_A53_SRC]->clk,
> > +	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_SRC],
> hws[IMX8MQ_SYS1_PLL_800M]);
> > +	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_CORE],
> > +hws[IMX8MQ_ARM_PLL_OUT]);
> > +
> > +	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
> > +					   hws[IMX8MQ_CLK_A53_CORE]->clk,
> > +					   hws[IMX8MQ_CLK_A53_CORE]->clk,
> >  					   hws[IMX8MQ_ARM_PLL_OUT]->clk,
> > -					   hws[IMX8MQ_SYS1_PLL_800M]->clk);
> > +					   hws[IMX8MQ_CLK_A53_DIV]->clk);
> >
> >  	imx_check_clk_hws(hws, IMX8MQ_CLK_END);
> >
> > diff --git a/include/dt-bindings/clock/imx8mq-clock.h
> > b/include/dt-bindings/clock/imx8mq-clock.h
> > index 3bab9b21c8d7..ac71e9e502b8 100644
> > --- a/include/dt-bindings/clock/imx8mq-clock.h
> > +++ b/include/dt-bindings/clock/imx8mq-clock.h
> > @@ -424,6 +424,8 @@
> >  #define IMX8MQ_SYS2_PLL_500M_CG			283
> >  #define IMX8MQ_SYS2_PLL_1000M_CG		284
> >
> > -#define IMX8MQ_CLK_END				285
> > +#define IMX8MQ_CLK_A53_CORE			285
> > +
> > +#define IMX8MQ_CLK_END				286
> >
> >  #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
