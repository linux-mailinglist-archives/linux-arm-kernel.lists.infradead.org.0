Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224B7142C5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 14:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ROqWZ6+0WfihRMkJH3HxcC/yQXaAcaI+y9wpqvZnv0I=; b=HV3XgiGFwPs+uc
	SOBunuvtVIAk/GoUyBmMJs49LVquXP5DkkgoFZh9gtof3/fxRoG0kLuGoeqb0e2jPzwvw3Bxry5Kt
	hBPSqSsvnfLR78Agnv2iHM/d2wy7FLt3INkdNCwKJbIRERsXxo56Sh/VCHk6kdwQvpVTiX4OjiTsm
	g1f1iv0JMe/xhV7ZXVHMh62r/u6xitESndLS1pJlJuzjeSzLnrTWL4+k+YNh91BMvZ1ztK2LFdkmU
	Vx6MO72B4MfoGGz7xk+haRrYkJIUv3/DgOY3QUkI9sj/SuLI9inHwwuxHjF324M0nSd+TvxaKTECE
	6QXwgoi3+uafx2tLjJ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXJ4-0005nU-5K; Mon, 20 Jan 2020 13:41:30 +0000
Received: from mail-eopbgr140043.outbound.protection.outlook.com
 ([40.107.14.43] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXIq-0005ma-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 13:41:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pizwg8jPLaAkRSjhFV256qFwfx2AEsEoeFRZo6KkuXw/Tq0IZwXZ/1gJpRTRCZJVSvVidKSmeh03bxutDlQ0Os/EsoY8yYyhGtZh+NapNS8sdPp5pf2hdEEYrZdwtjxjY8FVybxqZuP/wLy1NCjxgD/SaBYJNUd82UHAJYDdTiLTsoOANlIM4eOJIflaRKJj11P/5VKcYYSBGnTUKvYDTCr+1FuH3S7yVLuMmL2ABpzTRPjFszNynBJr7KOiRGU4VcV05jLdqp3r/Jf4z3+H498dS723KxaumczRFriCvLUBs1+cLMs1WOsKWJjVlPwqoEQTOxy6hLT4P90YTGBL4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Um2LmzTaVMSt3ymdpwDMXW3UnG+kHcqBUdDBNyphCkA=;
 b=aE2DR0d5rHfRb+Gl+aHNJU4ql0vFp16bea7P9l61Q1MR4uXLGPVi6aQJlzueGvatj4T9rkvWzDqljwVjxFodROURPqJpWqjNeKS1zZnTfB3SLdBO1N7meO63InpDaApoptFdlSTZ9A0gnuyP3ouQZB1Huy7DiL2I42ntke1YzQbfLpzrmWy3cWZsjTcZjvAjvR3BAX2yZDRLxa3mXZBWZrFAHb0Q/IBsSKC+2G6UQ1CFkX7nTQERcocAT18gl2frzpW4P1xrKRTfTXlng9AxRNVys25S1ZXsCER0+6doIkfm28ui9AsaIax2xfSKI/HpUfAJQU4JnZ8P3hzySRk6iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Um2LmzTaVMSt3ymdpwDMXW3UnG+kHcqBUdDBNyphCkA=;
 b=YLyswj3yv9addm0RO1UYKh5c1J/E9YZ86I/EJeAlnl3CQqZnNeJ3xMo2nFZOAlNZ+zLonH2A5WPNLHK+JHF0Cjd15P0Yqraf4I3xLAK2wvm+K020DpJezu3oU0CwIjvK647YQNEp5mW1JS886+MG/saQhy9cyuMm1FtuYGv9fS0=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB7149.eurprd04.prod.outlook.com (10.186.159.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Mon, 20 Jan 2020 13:41:14 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 13:41:13 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH V3 1/4] clk: imx: composite-8m: add
 imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V3 1/4] clk: imx: composite-8m: add
 imx8m_clk_hw_composite_core
Thread-Index: AQHVzBLeomevoDMgFk6s1Cu8sUYGcA==
Date: Mon, 20 Jan 2020 13:41:13 +0000
Message-ID: <VI1PR04MB7023C33CB9D5EEFB094BF1ADEE320@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1579140562-8060-1-git-send-email-peng.fan@nxp.com>
 <1579140562-8060-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3a850660-d49e-43b5-fc05-08d79dae6aec
x-ms-traffictypediagnostic: VI1PR04MB7149:|VI1PR04MB7149:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB714919FF6899FBA0485805EAEE320@VI1PR04MB7149.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(189003)(199004)(478600001)(52536014)(55016002)(9686003)(8936002)(4326008)(7696005)(86362001)(2906002)(33656002)(81166006)(110136005)(91956017)(54906003)(44832011)(64756008)(66556008)(66446008)(81156014)(186003)(66476007)(316002)(66946007)(8676002)(71200400001)(76116006)(5660300002)(26005)(53546011)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7149;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: InbLd+ERJ2hfIg/Qtot8qTJlgEEm26U+Ij7/ErMLw7v+Tt7FPgIvp4TpQjCuPBGZut28PxWX3WS9eC2Lx2aO8SkmthjBEmbEHo22/d3avv7LEtQCuIPACRBA9qKdDTHDOOMEeQ5nh+mefp1q7s6KtTsYFkGmBojXmxfv3l2VEyE+m0Ttn/Fgd4WaacYmP4vftvwqJYYlBBajtnQX2/RkWhB9vNcGfFYFpQ/l/v2kDeInqrY58ifjrIm/Nqe2FyT8HIQQvjDp7hvl+aPC45F0lSSmWq9IAqZGTQutoELFlV2T4fpDVwBZs7rvq9t9mUH5ZHGi/X2oFqfIXb0eUh/M4QtAe2fczl1k1gfUzkqufwMs9TBjMTcYaeEay54kO5ZWa/CggEjuqw/5+EiT8T8HShj2xW+6r5VxExpMptnrrjGjyTUN13Z14GTHCyqn0zcQ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a850660-d49e-43b5-fc05-08d79dae6aec
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 13:41:13.9005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aUVWKH1MBEPmQAexo8ScNNifvPVUQz/QpwFdlxMh4OlrkdhvEcRY1k47bZEEWDvD9hCX4LmDZdVJUDXEZ8otSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_054116_866077_F6E15752 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 16.01.2020 04:15, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> There are several clock slices, current composite code
> only support bus/ip clock slices, it could not support core
> slice.
> 
> So introduce a new API imx8m_clk_hw_composite_core to support
> core slice. To core slice, post divider with 3 bits width and
> no pre divider. Other fields are same as bus/ip slices.
> 
> Add a flag IMX_COMPOSITE_CORE for the usecase.
> 
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

> ---
>   drivers/clk/imx/clk-composite-8m.c | 18 ++++++++++++++----
>   drivers/clk/imx/clk.h              | 13 +++++++++++--
>   2 files changed, 25 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
> index e0f25983e80f..4174506e8bdd 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -15,6 +15,7 @@
>   #define PCG_PREDIV_MAX		8
>   
>   #define PCG_DIV_SHIFT		0
> +#define PCG_CORE_DIV_WIDTH	3
>   #define PCG_DIV_WIDTH		6
>   #define PCG_DIV_MAX		64
>   
> @@ -126,6 +127,7 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
>   struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   					const char * const *parent_names,
>   					int num_parents, void __iomem *reg,
> +					u32 composite_flags,
>   					unsigned long flags)
>   {
>   	struct clk_hw *hw = ERR_PTR(-ENOMEM), *mux_hw;
> @@ -133,6 +135,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   	struct clk_divider *div = NULL;
>   	struct clk_gate *gate = NULL;
>   	struct clk_mux *mux = NULL;
> +	const struct clk_ops *divider_ops;
>   
>   	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
>   	if (!mux)
> @@ -149,8 +152,16 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   
>   	div_hw = &div->hw;
>   	div->reg = reg;
> -	div->shift = PCG_PREDIV_SHIFT;
> -	div->width = PCG_PREDIV_WIDTH;
> +	if (composite_flags & IMX_COMPOSITE_CORE) {
> +		div->shift = PCG_DIV_SHIFT;
> +		div->width = PCG_CORE_DIV_WIDTH;
> +		divider_ops = &clk_divider_ops;
> +	} else {
> +		div->shift = PCG_PREDIV_SHIFT;
> +		div->width = PCG_PREDIV_WIDTH;
> +		divider_ops = &imx8m_clk_composite_divider_ops;
> +	}
> +
>   	div->lock = &imx_ccm_lock;
>   	div->flags = CLK_DIVIDER_ROUND_CLOSEST;
>   
> @@ -164,8 +175,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   
>   	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
>   			mux_hw, &clk_mux_ops, div_hw,
> -			&imx8m_clk_composite_divider_ops,
> -			gate_hw, &clk_gate_ops, flags);
> +			divider_ops, gate_hw, &clk_gate_ops, flags);
>   	if (IS_ERR(hw))
>   		goto fail;
>   
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index b05213b91dcf..f074dd8ec42e 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -477,20 +477,29 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
>   		struct clk *div, struct clk *mux, struct clk *pll,
>   		struct clk *step);
>   
> +#define IMX_COMPOSITE_CORE	BIT(0)
> +
>   struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   					    const char * const *parent_names,
>   					    int num_parents,
>   					    void __iomem *reg,
> +					    u32 composite_flags,
>   					    unsigned long flags);
>   
> +#define imx8m_clk_hw_composite_core(name, parent_names, reg)	\
> +	imx8m_clk_hw_composite_flags(name, parent_names, \
> +			ARRAY_SIZE(parent_names), reg, \
> +			IMX_COMPOSITE_CORE, \
> +			CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
> +
>   #define imx8m_clk_composite_flags(name, parent_names, num_parents, reg, \
>   				  flags) \
>   	to_clk(imx8m_clk_hw_composite_flags(name, parent_names, \
> -				num_parents, reg, flags))
> +				num_parents, reg, 0, flags))
>   
>   #define __imx8m_clk_hw_composite(name, parent_names, reg, flags) \
>   	imx8m_clk_hw_composite_flags(name, parent_names, \
> -		ARRAY_SIZE(parent_names), reg, \
> +		ARRAY_SIZE(parent_names), reg, 0, \
>   		flags | CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
>   
>   #define __imx8m_clk_composite(name, parent_names, reg, flags) \
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
