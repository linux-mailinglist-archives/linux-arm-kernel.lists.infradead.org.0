Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B1613D1B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 02:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5fqXpzDg7+QG9ylQeZhnfZaWOtn0ePkMt6eg5UqWtQ=; b=MkodQNTDWFHfzr
	9kl7cK7GFYzFw8yw2DSvR3UV3kbMgBAVUAgStq55s9tpbLGsd3EUeJMZLi2QG+DzQBK3Dkk5hgXvI
	I3b+UbENvYxrOsqNad2VkP00rUOmLGsZFA8+4Gs8kQYc17WugfACs/LCRIMskUKWaXVGSujl0bzef
	MFOa5A4bmhv6XJ05GfzcIBcBFURdY7yfmq+sZpek0SkgCErQamACsAyAWckVqBIIWdiGM7Da4TZC+
	h6dsaWQ4fizjVftUTJppOe+vRbiXV962rQfzplmwVvZ3w9ye79ZF0PeKBZEtCoTh/COeO+cbF2f7O
	iNlcqiZBr1Sz9svfBGkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iruGq-0003dO-Rl; Thu, 16 Jan 2020 01:48:28 +0000
Received: from mail-db3eur04on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::621]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iruGg-0003cj-FN
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 01:48:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUudgm1v6tG6H3Ca7Xz9IvC9bJOdRHQZOK0uEGCJ7r6q4Wp81sPOjDA8fcn9/bmWYF9Fxh4idbHz2JFvy2ej3neUtlPN0CD23745Iu+EYHdHa+OTC6mRahRiH9CSfN/TCY8PU+ra6mqlf2FnNqaVHwLDuIGDjPcv2zsMitp1KXIWvKg9PuON2oaflOs3kkLhTKflzo2pP3d53zjJi3DOKGqRpvMyCIFlbvQzD3Bj0AmO/FKdsmLF2wOa+bBz/zJalF0mpdadIlc2tszEghWvcS2MtU9YM3/ZT0idBvi+X16bGG5fBEfzoEMx459Z5ditlEWobEoIRGWctW1pXLftxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npi2VuDAt1RSXQOaoFeFnIFa5c22TI1F+oe/Nn35VkM=;
 b=GcdmHh4KmvlYz5LJiMaPcTiUyB4TxjbI6Vx0szSf1iLMO8nj3Vl+lg+64jFIrBcsbPDPnrfyuLp1d/Y6FDrSrVfsZtThUAn/QC6rhO8RSa9L7uMnizqb1YwsddmVluYKqfmphhRF+rxnhsMj/5xzqv9Xhd5c/fOD+8eXhq4FmYhhkhyldbs+XyqcgFin6zQCVkJDlqxxFm+yGDO4ON98Ct+LDGM7W154Dw9650ree+C/0HldJAeT32JusS2qmMYhkd5IXzn07BUDBK1G5Qp2OShK9oF2xUsAUyghn7odJDcNbN1poZNJvnQZHuA/zndjtdssArg8q0mUYx8QeXIPQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npi2VuDAt1RSXQOaoFeFnIFa5c22TI1F+oe/Nn35VkM=;
 b=VhtwsMtnU5zgN0bDCg2wausLLvYKY00Oh8kXQi1tsVsVXe0lSwUanGlrVyqn2J1OA9cGG56x6emy2mqUXAn0wk546FBU2Pm8i4AWbzjmJL0G6iTfqEDGu2OFeu+5Y/M70njq1LBrvxKjWA2t16qPIkAFdBrHcSPMmvVXRP2ZJAw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4770.eurprd04.prod.outlook.com (20.177.41.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Thu, 16 Jan 2020 01:48:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 01:48:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH V2 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V2 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Index: AQHVx4YUjgdbWY8cjkmCWC9mUDXV2qfrmjKAgAD0nRA=
Date: Thu, 16 Jan 2020 01:48:14 +0000
Message-ID: <AM0PR04MB44816FCE748476F818719E9088360@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
 <1578640411-16991-3-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023981770D458F6D1FB546FEE340@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20200115111205.GB29329@T480>
In-Reply-To: <20200115111205.GB29329@T480>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c73792e1-9785-4f14-ae8a-08d79a2626b0
x-ms-traffictypediagnostic: AM0PR04MB4770:|AM0PR04MB4770:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4770B36157D6F97C21A95A9088360@AM0PR04MB4770.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(346002)(366004)(189003)(199004)(8676002)(52536014)(6636002)(478600001)(66476007)(66556008)(64756008)(76116006)(8936002)(5660300002)(66446008)(44832011)(86362001)(66946007)(81156014)(55016002)(9686003)(81166006)(71200400001)(110136005)(54906003)(26005)(33656002)(53546011)(6506007)(4326008)(2906002)(7696005)(316002)(186003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4770;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kpDV00Nq64UoXLRKkY8iIrNO73DhBrEwhk6+cHdWCw5K4whJ6dMJfIGwA4VvzoRjlk7Vs5ihTQgAjoFxhmpgzwX4Tr/09Ytnpnci5+cluPPRUv0RDoqtN9xGFqmS6C87DfMXURKSacAC4Z4oz82i7okHVcM6jMNfUmBPN4OAtaJf1tX1vBhm3XjtGNJuiMzEw0ITeaZS1DM4agT5iLVUI3ln0eZ9/Pe7JHw/y3vzGRSHQhuYSPQhrqfS5bYHzXIZBZjsa0/eoE2CX+2/T4gCv2y9zrOs9WNpMkJ7GvshlL0fdQDNKjyOknEnaVXOFY88wJtf3oTLygGyqeH8p8U06f4DGkQaxLhZQLs9bi6rInDQieFqdgN7sqX+mqXB6IwBWsNYPhsEIe+VGHPhnANr7S5Tyt36kRyHgNPPwZnHqKJ9JLDBys+GL+xy163TOM+NsPL7LyLxoqosE5ElikkzlDtPqiYKRbuYO2FzJDqDc5cpLiYt8qwS17ZF4N4vs+PR
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c73792e1-9785-4f14-ae8a-08d79a2626b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 01:48:14.3623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V2VcrSsLGthDt7lnZcMopJbncF65nw9W1TU9ufda0TtoAr7jHC2eMX9MAvDK7hyYYp1wdbp09IeLyV6ovTGPpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_174818_516858_3ABDC521 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:621 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2 2/4] clk: imx: imx8mq: use
> imx8m_clk_hw_composite_core
> 
> On Tue, Jan 14, 2020 at 04:49:20PM +0000, Leonard Crestez wrote:
> > On 10.01.2020 09:17, Peng Fan wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Use imx8m_clk_hw_composite_core to simplify code.
> > >
> > > Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >   drivers/clk/imx/clk-imx8mq.c | 19 +++++--------------
> > >   1 file changed, 5 insertions(+), 14 deletions(-)
> > >
> > > diff --git a/drivers/clk/imx/clk-imx8mq.c
> > > b/drivers/clk/imx/clk-imx8mq.c index 4c0edca1a6d0..b031183ff427
> > > 100644
> > > --- a/drivers/clk/imx/clk-imx8mq.c
> > > +++ b/drivers/clk/imx/clk-imx8mq.c
> > > @@ -403,22 +403,13 @@ static int imx8mq_clocks_probe(struct
> > > platform_device *pdev)
> > >
> > >   	/* CORE */
> > >   	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src",
> base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
> > > -	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base
> + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
> > > -	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base +
> 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
> > > -	hws[IMX8MQ_CLK_GPU_CORE_SRC] =
> imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,
> imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
> > > -	hws[IMX8MQ_CLK_GPU_SHADER_SRC] =
> imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3,
> imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
> > > -
> > >   	hws[IMX8MQ_CLK_A53_CG] =
> imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28,
> CLK_IS_CRITICAL);
> > > -	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg",
> "arm_m4_src", base + 0x8080, 28);
> > > -	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src",
> base + 0x8100, 28);
> > > -	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg",
> "gpu_core_src", base + 0x8180, 28);
> > > -	hws[IMX8MQ_CLK_GPU_SHADER_CG] =
> imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
> > > -
> > >   	hws[IMX8MQ_CLK_A53_DIV] =
> imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
> > > -	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div",
> "arm_m4_cg", base + 0x8080, 0, 3);
> > > -	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div",
> "vpu_cg", base + 0x8100, 0, 3);
> > > -	hws[IMX8MQ_CLK_GPU_CORE_DIV] =
> imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
> > > -	hws[IMX8MQ_CLK_GPU_SHADER_DIV] =
> imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0,
> 3);
> > > +
> > > +	hws[IMX8MQ_CLK_M4_DIV] =
> imx8m_clk_hw_composite_core("arm_m4_div", imx8mq_arm_m4_sels, base
> + 0x8080);
> > > +	hws[IMX8MQ_CLK_VPU_DIV] =
> imx8m_clk_hw_composite_core("vpu_div", imx8mq_vpu_sels, base +
> 0x8100);
> > > +	hws[IMX8MQ_CLK_GPU_CORE_DIV] =
> imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels,
> base + 0x8180);
> > > +	hws[IMX8MQ_CLK_GPU_SHADER_DIV] =
> > > +imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels,
> > > +base + 0x8200);
> > >
> > >   	/* BUS */
> > >   	hws[IMX8MQ_CLK_MAIN_AXI] =
> > > imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels,
> > > base + 0x8800);
> >
> > Collapsing _SRC _CG into _DIV is an useful simplification but it
> > technically breaks DT compatibility rules.
> >
> > Inside imx8mq.dtsi there are clock assignments for
> > IMX8MQ_CLK_GPU_CORE_SRC and IMX8MQ_CLK_GPU_SHADER_SRC
> which no longer
> > exist so those assignments don't take effect.
> 
> We do not want to break existing DTBs for this case.  Patches dropped.

I'll send a v3 to address the issues. Sorry.

Thanks,
Peng.

> 
> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
