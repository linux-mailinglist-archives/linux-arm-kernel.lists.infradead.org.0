Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E0B102975
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=o5Z+xryx1fZ6HTP/YZ7Kuc2zF15MTN3oIOniWXTrjNU=; b=NrmEA6YjJgS3Z2
	htc8zoZ41chI5OT4OyjOk1KrrZS0az/S4nt5x3iuF7CjrIXdoRi1gUMEUtzIOhL4S+FSX5wNlpIzJ
	m8AauXSYTffaT4YKdTdemyZNPg366fwy0z/uOW+mli0obMwGLQAabt7XE4lTcGzNNoyhyzkm9QZiB
	O6aqtq/6fzQ/qSVIUiW6/g+AaoDVx852pKq5QCNQXhzv1qtaoVJEf3FuNXdeObEwLoXAXYtk9H0a8
	HPjsOBn6bkMa8NtVN7qtxff4L0Okhww1EN+nUQXLFOQxSxPJ7C46Ebp0M3vdALbu6m2QvFu42g1NP
	HlClT2H5Yz833nJQrjOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6Qm-0008FJ-Ks; Tue, 19 Nov 2019 16:32:44 +0000
Received: from mail-eopbgr10059.outbound.protection.outlook.com ([40.107.1.59]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6Qe-0008EH-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:32:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnU7+JqXtGw5TKHrfJ5cebMN6FgpRqT2zrFW2B/ib8b2gqFLvnObhkdyJhk4zlDd19SWKSLkLQbubdSjH0zWsT0marHDeqQSlv/NvZ655Dnfr9OpCF5zJ8xYxG3xuMVRkn2Ov1cqhlFluUSFCBdKJE1Z/phJqliGqT/5wHTmFTH3vi61roOHOuXinlxWEhKrWPBB8t82DmDTzqNze0FM4X4gDOD/CYSmS1k1S6oeC0Iyxs+Ry2UGLzKVnFqmR77mU/QDtm0dIw6bLdr3Mk0cfOSgPhhqhyXQ1CFZNRLoxGmNpyUzSFdlgq4g3e+eojhgJaji0Bq1jN3+3ekci9MzjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8H5EYfKGTwvH5MfYXExnVjcRuozl4n4nEalVrilFxw=;
 b=MHr+QgAtRqljhr6orJzWNHoxU4JhkftdmjqlMIhfoiNuHQ7/rvw2p3cJgsQYCzmhW30A2GthSZ3cXpw2JkU+m8u8RZFdi65UynFOsyrH1+xahleGYrC7ieErmzgVpc/u2h07Uhw4ZHXmiot2MlSMNkCBTfvnwksIEV3QN6FXQnT8DVNmLhyNIkUGPuSQGvgEM9mXax7HsuJN9dSWhz9H5C5McrZ03vy2tIIIjEwvmOA9JKPLqnccuv9xOBlE1EQTE0JEXd5Wrf+EPmZeyzG83PGU+bLHWRddkY9WQNseLyrDcie+akO/Qa6i9lUo06a01xXKTZT4TKnlVhcVPPjl7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8H5EYfKGTwvH5MfYXExnVjcRuozl4n4nEalVrilFxw=;
 b=S0fK+1ZaUQn2s4Bj4KXIaZt3KjoKXh0P9z8SpfEeGOjB+/xy55rmt47k+abfzYtNVh9z4rLO3lF99Jb5a+c9TXTdBNBdGH0+L4Fmh1q5S4l5hy167IdKoFJIETcYo6CCFr4KAGpq4z6XcEoImHHnYDy5CrdSyQRuQOAgV0xa+cM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4351.eurprd04.prod.outlook.com (52.134.122.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Tue, 19 Nov 2019 16:32:27 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2451.031; Tue, 19 Nov 2019
 16:32:27 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Stephen
 Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 5/9] clk: imx: Rename sccg and frac pll register to
 suggest clk_hw
Thread-Topic: [PATCH 5/9] clk: imx: Rename sccg and frac pll register to
 suggest clk_hw
Thread-Index: AQHVnuLaLySjs9P8E0eseKYJ9/xfoA==
Date: Tue, 19 Nov 2019 16:32:27 +0000
Message-ID: <VI1PR04MB702360DD60D297B19F346B7FEE4C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
 <1574172496-12987-6-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 797010f2-4026-4d44-6531-08d76d0e10eb
x-ms-traffictypediagnostic: VI1PR04MB4351:|VI1PR04MB4351:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB435193A81862390CF8D4BA83EE4C0@VI1PR04MB4351.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(346002)(136003)(376002)(189003)(199004)(316002)(6436002)(256004)(5660300002)(9686003)(229853002)(52536014)(7696005)(8936002)(55016002)(76176011)(4326008)(54906003)(110136005)(86362001)(8676002)(81156014)(81166006)(99286004)(6246003)(186003)(4001150100001)(478600001)(26005)(66946007)(102836004)(64756008)(91956017)(66446008)(76116006)(53546011)(6506007)(446003)(66556008)(66476007)(71200400001)(71190400001)(305945005)(74316002)(25786009)(486006)(33656002)(7736002)(3846002)(476003)(6116002)(14454004)(66066001)(44832011)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4351;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NC2YCxtS7C7v2b+qIWCSVVNsvW7DqydGmv50WFswLj8zF/oRXekq9bb6JcMhTTqEBDDekCRwAqHEdcRrTVKSR6Gs9+4knfehTHJaSmwrNCcOhl1mGW2IUgEUSozBze8UzKJIeti/vT6ugscGGiModHgmxET3lWp2mlP40TaL1ZOPpItshO6yFQzkHuC7AT+qX8JPx0T00pqZOsAVyRI6iLN9tauyj2Mx5C6K4bkAi8XPzoU+q+h5w86FEAygOZtmeUteohYTz0Hbq2Jx1GHQT/IguW9RjRpPhIVeGwIS598BYjj8T6/DP8sedJ+l4Zb0g1ioTrx606D7R4y4V83+39l4bs2eZy3CrFgwZNftHjW6zCTIOgA+Bq7NEnL9XQ+dRkg7iOVvozn+j9FNqSTwdmGUe5Be+jP3DpIQkgGOo2tK7xDsmDBu+uhW7h22shEV
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 797010f2-4026-4d44-6531-08d76d0e10eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 16:32:27.5961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JqSLlQ6l68t3C/gD99wBcRL8sjAFsCXLvtdUEEeG+2bv/DG32A8k+6CSDMkRE/x4yVANh3BVdD98ezN2oDyitQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4351
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_083236_153523_8F733F55 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.59 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.59 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-19 4:08 PM, Abel Vesa wrote:
> Renaming the imx_clk_frac_pll and imx_clk_sccg_pll register functions to
> imx_clk_hw_frac_pll, respectively imx_clk_hw_sccg_pll to be more obvious
> that they are clk_hw based
On a somewake unrelated note there is no "SCCG", reference manual refers 
to this as "SSCG": "Spread Sprectum Clock Generator"

These wrapping macros don't correctly forward null or error either.

> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>   drivers/clk/imx/clk-frac-pll.c |  7 ++++---
>   drivers/clk/imx/clk-sccg-pll.c |  4 ++--
>   drivers/clk/imx/clk.h          | 12 ++++++++++--
>   3 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
> index fece503..101e0a3 100644
> --- a/drivers/clk/imx/clk-frac-pll.c
> +++ b/drivers/clk/imx/clk-frac-pll.c
> @@ -201,8 +201,9 @@ static const struct clk_ops clk_frac_pll_ops = {
>   	.set_rate	= clk_pll_set_rate,
>   };
>   
> -struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
> -			     void __iomem *base)
> +struct clk_hw *imx_clk_hw_frac_pll(const char *name,
> +				   const char *parent_name,
> +				   void __iomem *base)
>   {
>   	struct clk_init_data init;
>   	struct clk_frac_pll *pll;
> @@ -230,5 +231,5 @@ struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
>   		return ERR_PTR(ret);
>   	}
>   
> -	return hw->clk;
> +	return hw;
>   }
> diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
> index 5d65f65..2cf8748 100644
> --- a/drivers/clk/imx/clk-sccg-pll.c
> +++ b/drivers/clk/imx/clk-sccg-pll.c
> @@ -506,7 +506,7 @@ static const struct clk_ops clk_sccg_pll_ops = {
>   	.determine_rate	= clk_sccg_pll_determine_rate,
>   };
>   
> -struct clk *imx_clk_sccg_pll(const char *name,
> +struct clk_hw *imx_clk_hw_sccg_pll(const char *name,
>   				const char * const *parent_names,
>   				u8 num_parents,
>   				u8 parent, u8 bypass1, u8 bypass2,
> @@ -545,5 +545,5 @@ struct clk *imx_clk_sccg_pll(const char *name,
>   		return ERR_PTR(ret);
>   	}
>   
> -	return hw->clk;
> +	return hw;
>   }
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 71b21ab..15c6f54 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -115,6 +115,14 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
>   #define imx_clk_pllv2(name, parent, base) \
>   	imx_clk_hw_pllv2(name, parent, base)->clk
>   
> +#define imx_clk_frac_pll(name, parent_name, base) \
> +	imx_clk_hw_frac_pll(name, parent_name, base)->clk
> +
> +#define imx_clk_sccg_pll(name, parent_names, num_parents, parent,\
> +				bypass1, bypass2, base, flags) \
> +	imx_clk_hw_sccg_pll(name, parent_names, num_parents, parent,\
> +				bypass1, bypass2, base, flags)->clk \
> +
>   struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
>   		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
>   
> @@ -124,10 +132,10 @@ struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
>   struct clk_hw *imx_clk_hw_pllv2(const char *name, const char *parent,
>   		void __iomem *base);
>   
> -struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
> +struct clk_hw *imx_clk_hw_frac_pll(const char *name, const char *parent_name,
>   			     void __iomem *base);
>   
> -struct clk *imx_clk_sccg_pll(const char *name,
> +struct clk_hw *imx_clk_hw_sccg_pll(const char *name,
>   				const char * const *parent_names,
>   				u8 num_parents,
>   				u8 parent, u8 bypass1, u8 bypass2,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
