Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD70149E89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 06:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6WZqgDNUWAquOCO1Yk13rakRJFPy0/JIYTJc5sXJas=; b=RSWZMomF0l42lY
	2hu20jNMJ5Cj+9m07CDOY6l8XQFjxgOng24WGWkhcbTilj2+kqO11+FwX3ZW+HdRU8SqSEGBYiehp
	Vr3EUGwVaVXGdpWT1Zd7iNM2sIifgZs7wOSFp3PVj5+TvIVmwvtdSW6qul46vFwEdshQB0z+pu34Q
	DGQ0St4faiEONIs8odYN+ehiKjwWtHQ9y0aVyv9Dy1wXwyRguHaG0MubLF+MeMiz3hz/PBsLVnJmt
	Ott9EL+DTfact3fSC4D45zQs96GNJGQHDcOt7C1qF++B1P8JE0zg8MHmCrvMSG8XPFOK9pABBZhvX
	yh2g+U8jty8gZm4TnOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivwVw-0008Kq-JK; Mon, 27 Jan 2020 05:00:44 +0000
Received: from mail-eopbgr140049.outbound.protection.outlook.com
 ([40.107.14.49] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivwVj-0008KI-J0
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 05:00:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixbrgpBkZ+qPCNrScidjSBbX4zuOaE6FkD38wewDhomfbpsAeIJm4snWNx6XILnWDaC+GA3zzhlSm4wSqDMIFn5zMVYRjA06B3gaMU/pfxVJcAdAYvfA4N2UHmzMTTGLqLepjLKRCKGygQzR0aLoV4q8N74cOqq+zFZSXbHcwNj2lfz31nMB2Ob7k8MxgihiFMO5UIuu4p4wJfWh8dkerXQ/JCrw4cTlRVcbsUWu04UaTD7IRFQ/xKt5l2r7RGIYz70XMWjJNQYskpfevKQBoV9HAMkdKYEv9TG+RpR1LJ5df2Ma0mRY7PUyhy1q/AoOm1HVQ79wb064Rdsp+spJ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H6VWt2dUTfR+eYglH/8RzaKXrQPUuZ2/G07u54Uknco=;
 b=fYsSajpebAFnmEbBnLB8gnznFZ1pGEep95nvVqPCH/q1uYlSCayZ6KEI4m5oqbTw7SrrSp84Aan91KCm2hxadsELkIjGr6N+MNPt45Cds/8OcC9/EpKhJPEBJSHjidRgkklF27bVFcc0857f6JGIgXzFbZh8lEiRlU2K5CwgLfs7Gegabe60sOidfBw1l2HOslV0XmNRqPQmVmtENNBCCcxmtPaRCexwmj2gf+7knu9i8elYqtuURZdrc3BPnYnClvJIoCZJUM0hnaLH3qjZAy8eAEj4rEozW3i+fBrHWIMwtLBUUUnv6BLY1EuxB+cSPBSNeJgDPxykUMGzcTGjqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H6VWt2dUTfR+eYglH/8RzaKXrQPUuZ2/G07u54Uknco=;
 b=X4VO6Hm5IcE0hWGfM8qr5uXajbFH7gkZ5J0Ao2iA8utHZpV10504Gd/RSt19a2JKN8AMlTBqdNuZPkex3SCW9Y8D3ADp4FOQ8jsfJMdLgdzKRr1eTQ9I/Y+Ca8J1tcLIVmhmNjDniJamgdhXr2bvHiV7SpYOg2ynlLWql86CX6w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6883.eurprd04.prod.outlook.com (52.132.212.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Mon, 27 Jan 2020 05:00:26 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 05:00:26 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH V3 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V3 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Index: AQHVzBLhTw2vfOWK6k2th/PMm5Cat6f+BJtQ
Date: Mon, 27 Jan 2020 05:00:26 +0000
Message-ID: <AM0PR04MB4481A8AF4694F539FBED0D54880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1579140562-8060-1-git-send-email-peng.fan@nxp.com>
 <1579140562-8060-3-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB70239267F223F63918362DDCEE320@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB70239267F223F63918362DDCEE320@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4ce7a854-e73f-4a91-5b03-08d7a2e5d2ac
x-ms-traffictypediagnostic: AM0PR04MB6883:|AM0PR04MB6883:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6883DFBCF04FEBCC70E27EB8880B0@AM0PR04MB6883.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(346002)(366004)(199004)(189003)(52536014)(8936002)(5660300002)(55016002)(9686003)(66556008)(64756008)(66446008)(66476007)(76116006)(53546011)(66946007)(8676002)(81156014)(81166006)(44832011)(71200400001)(6506007)(186003)(86362001)(33656002)(26005)(110136005)(4326008)(316002)(54906003)(2906002)(7696005)(478600001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6883;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bpvQNh9p/rff4/IjTUKSeOcHbVaZidA+wfdjC9Gh7O72axqc2BVotyIcwx2B2v+fBqHEioqr9W5MOi854Spjct9pzOpRbQS0wGtTJGkf4m09vcYuDNBgYPmIhFI293QIHkxUG3jddhnatp8UhJ/owDcmyxj/0U0TtaSjL/1tkfiz+MXQkEDmnKbw/m7Ahh9uhSPSvYuOtcG1Rj4jhlYS6B+Sxm/VRoNNglI/78bzCegO7EQvsGe75mVhmo1NWVf8qE7phTAqsESwUs+Q2TdwBTRa4870mkY1qMqsuDbqO2TALf9RYrPqL9cRxi99+m2Z1mHEn2fGqXVEIETX5Yimhnnz6vHGH38hEE3REsxVm9CTejidUJEIYAeA5RoWch/lUi5wtdbypOOER316yz9JLVIW6qs8rZsoPreLk5BrT/wbVdeF9gd3Cf3LpSSaeuPjbggQSAefvW85pV2mE522iTmplXlm7s+MiEPoKBlhLJTAn+AXPE0KvkTEMAaFOwM9
x-ms-exchange-antispam-messagedata: AL2/2jhIcb+mdH+t+ggQWgjeAyP/5dJuALdezdX3RjKnibrgcP+Zir9UCckcc7tqA7SuSeUQrLXZ4g3kVDDfqXAmy4zl07A3ViQmOIZcYcGn52aliH7vKJzNUVPh4godnHM0C5QmfVVzYu0enFgn/g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce7a854-e73f-4a91-5b03-08d7a2e5d2ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 05:00:26.1232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AGgAQMofhNrsHMUOu5PGHFJj+2dxXROloxcP4sygsKnPVi3gM/q5sZaoVTYi8xyXrRiEgfR1Eeq0PZz4FlqY6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_210031_735360_B8B179E4 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V3 2/4] clk: imx: imx8mq: use
> imx8m_clk_hw_composite_core
> 
> On 16.01.2020 04:15, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Use imx8m_clk_hw_composite_core to simplify code.
> >
> > Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >   drivers/clk/imx/clk-imx8mq.c | 22 ++++++++--------------
> >   1 file changed, 8 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8mq.c
> > b/drivers/clk/imx/clk-imx8mq.c index 4c0edca1a6d0..e928c1355ad8
> 100644
> > --- a/drivers/clk/imx/clk-imx8mq.c
> > +++ b/drivers/clk/imx/clk-imx8mq.c
> > @@ -403,22 +403,16 @@ static int imx8mq_clocks_probe(struct
> > platform_device *pdev)
> >
> >   	/* CORE */
> >   	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src",
> base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
> > -	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base
> + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
> > -	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base +
> 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
> > -	hws[IMX8MQ_CLK_GPU_CORE_SRC] =
> imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,
> imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
> > -	hws[IMX8MQ_CLK_GPU_SHADER_SRC] =
> imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3,
> imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
> > -
> >   	hws[IMX8MQ_CLK_A53_CG] =
> imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28,
> CLK_IS_CRITICAL);
> > -	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg",
> "arm_m4_src", base + 0x8080, 28);
> > -	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src",
> base + 0x8100, 28);
> > -	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg",
> "gpu_core_src", base + 0x8180, 28);
> > -	hws[IMX8MQ_CLK_GPU_SHADER_CG] =
> imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
> > -
> >   	hws[IMX8MQ_CLK_A53_DIV] =
> imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
> > -	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div",
> "arm_m4_cg", base + 0x8080, 0, 3);
> > -	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div",
> "vpu_cg", base + 0x8100, 0, 3);
> > -	hws[IMX8MQ_CLK_GPU_CORE_DIV] =
> imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
> > -	hws[IMX8MQ_CLK_GPU_SHADER_DIV] =
> imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0,
> 3);
> > +
> > +	hws[IMX8MQ_CLK_M4_DIV] =
> imx8m_clk_hw_composite_core("arm_m4_div", imx8mq_arm_m4_sels, base
> + 0x8080);
> > +	hws[IMX8MQ_CLK_VPU_DIV] =
> imx8m_clk_hw_composite_core("vpu_div", imx8mq_vpu_sels, base +
> 0x8100);
> > +	hws[IMX8MQ_CLK_GPU_CORE_DIV] =
> imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels,
> base + 0x8180);
> > +	hws[IMX8MQ_CLK_GPU_SHADER_DIV] =
> > +imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels,
> base
> > ++ 0x8200);
> 
> > +	/* For DTS which still assign parents for gpu core src clk */
> > +	hws[IMX8MQ_CLK_GPU_CORE_SRC] =
> hws[IMX8MQ_CLK_GPU_CORE_DIV];
> > +	hws[IMX8MQ_CLK_GPU_SHADER_SRC] =
> hws[IMX8MQ_CLK_GPU_SHADER_DIV];
> 
> Why not assign to all the old clocks?

Are those clocks expect the GPU ones needed?

Currently only the gpu clocks are needed, others are not used in dts.

For dts update to use the SRC clocks should be avoided in future for Linux,
DIV clocks should be used.

How do you think?

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
