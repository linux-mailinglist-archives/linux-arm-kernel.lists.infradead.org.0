Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE921322B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPudmd9jIgXRK5xnCIXJCuqrcFXqreTd1Avq5m1UB3k=; b=FHzEe1fLrIEw3W
	8ozM2sDoczq/YLB7EGyZXkcQhqDmx/DlyTUjTL0ByzT9bkTWkS2ujTFEuUeX35Rz3GYli6eSAsny2
	IPoJSiyoLjYCM5aen2KmO247SnYH9kqSkz76qYLxWIqOwpD+DoAGbjir4HEQdQ4vHPZqPsiPSyK0+
	PcIBL+rXi3DE3QQ/r0Rn73EyhcM2UsI0FiORXhx7UgxcIkrm8mA8PoAIqi4CCYGJPQc5qg94+6qnT
	nEOLZOV/UkkV57rX4mFASjTPYLSJCaAUviNp2wKXHEpScCpArQaRvbSTOj5C8NdhN3QbFrj6BB/va
	PGMb4wpRS9qRvuDIuR5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolMa-0006zG-NC; Tue, 07 Jan 2020 09:41:24 +0000
Received: from mail-db8eur05on2063.outbound.protection.outlook.com
 ([40.107.20.63] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolMT-0006yf-N9
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:41:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jl/Ph9U7+sA3zcvrAkBSIaT/vgcgZiVWe7oBco39Wca3GcKNbAmWiFWKcR4KNzm9WIQ4IrGFYjMJ9fNa9fjaDSt0cr4I8vZJyiDf8viXqX3BY0gRE7VoQjJIV8WQtTCi0MikhTTRMJoKjEAip5lshOcgpuiH2vUOL1yT74ogbBtESXQ3FncPbmAn8Uw2XbeC6htXOvea3UFZ2ZOhG87Ex4ut4pxEX5Cnb5eFaEIKCqPxvQLYO+OOAyUdDRIcBCDVrTFqnt77qM3aLPhgt12RegWk3HcQbFaIk+H4StaFcFsvub6dEhoRvuJCk9zhwmX++sI9LAGQcozYbBZJ2ueXFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RUZ+uiYQGxdcHbQMS/uvJClzjmw0DPUc88nuwfpx7Cs=;
 b=CIHyeoc64//z+mE7e4xk1rDlGgaiaGSBhOMvYTnNclz0hH+ren4L0lEhhBvKOQLPqC/dC9BeqvOoafucDSCeTNqnFu7sVIalg9B+zpyNhTsauXyuFF+nq5Va9PCigB8VRK78HTtjJJ6Qg1P/fc8lVk47FsymBR+uFXgjcj93JdzFOXOCFSl2xmHTRC9xzD+nt5vKdAOwSNXsC0mVGJGxOyBKo4S2tb544sCNCG4k7eYt67M5cM0/TNSRJIJ+FKKtdlVoDCHHYrs2A+VzygqiIK5Q5L0hde2y3SPU68wakPLxRmmHTMevMTEGhTryF2dFSQX9ah0l2s2IWdYAFiOGkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RUZ+uiYQGxdcHbQMS/uvJClzjmw0DPUc88nuwfpx7Cs=;
 b=mU0lbJ+e81vHHxhjl2JzLE9U/8f+qqUKAZyqqhmVBaDX3oe4Vj0mU2mUg06nxeMaAnXigQON2Gn0/kp5/IyJmQ72PSINIL1EE1zhfiTu9YXkNa4dWU6xArGIvwYOEuHUvOUEaU3JFjZYyOmonFUPPLgGMfaXXaytzKIsCm6AbJc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4595.eurprd04.prod.outlook.com (52.135.148.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Tue, 7 Jan 2020 09:41:12 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2602.015; Tue, 7 Jan 2020
 09:41:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, 
 "olof@lixom.net" <olof@lixom.net>, "maxime@cerno.tech" <maxime@cerno.tech>,
 Leonard Crestez <leonard.crestez@nxp.com>, "dinguyen@kernel.org"
 <dinguyen@kernel.org>, "marcin.juszkiewicz@linaro.org"
 <marcin.juszkiewicz@linaro.org>, Jacky Bai <ping.bai@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "nsekhar@ti.com" <nsekhar@ti.com>, "t-kristo@ti.com"
 <t-kristo@ti.com>, "yuehaibing@huawei.com" <yuehaibing@huawei.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2 2/5] clk: imx: Add support for i.MX8M hw based clk
 provider
Thread-Topic: [PATCH V2 2/5] clk: imx: Add support for i.MX8M hw based clk
 provider
Thread-Index: AQHVxT228Vt5l3+cHEmR0q9IeJPpWafe8jmw
Date: Tue, 7 Jan 2020 09:41:11 +0000
Message-ID: <AM0PR04MB4481A2BBA0CCE3501F5337A6883F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578387197-5750-1-git-send-email-Anson.Huang@nxp.com>
 <1578387197-5750-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1578387197-5750-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d6510887-a957-42d7-7edf-08d79355bb49
x-ms-traffictypediagnostic: AM0PR04MB4595:|AM0PR04MB4595:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB45952D031E82AF08FB132359883F0@AM0PR04MB4595.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:18;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(366004)(39860400002)(376002)(189003)(199004)(5660300002)(9686003)(55016002)(7696005)(316002)(86362001)(966005)(2906002)(110136005)(8676002)(66946007)(33656002)(81156014)(26005)(81166006)(8936002)(7416002)(76116006)(52536014)(186003)(66556008)(6506007)(478600001)(4326008)(66446008)(66476007)(44832011)(64756008)(71200400001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4595;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S54cTXe8CSHBkUAVGiturIPelZoNPc7z9pm42P0Ooq1wYcwsOT5S8g4ymRx0wkbjPhjA2vUmuh4LSU745+kGIMqqYU4GuCA7wj8pFXPl6BqXt4cgcxzNIjxJKarluF0D46Z0lC2IvufAgdDY4ubRS/iwVqmLqxVyoGnCtEC4rIzoz6pMOFTb5DgRAxGXdtIJAwqW+VUSDBt3AsTCpEqF0ffEFVGJEhC+bXMj+b32MdUabRcmMVDQ5mPEF0FKbFAq80HeSQtoRP+UWJSsAnzVCLQX7tCjr/TaGHhgA+wZHwKqe4r1PdrcjX7hNaG0gvyk1sGrq48dq77reyg+kEuWS+oD/YNqAmszaL7hmEZatYxHbUB6xBu9lJYzffc0NvKacpCn3oiqufYSyJ8BHoW3FUeRNQD3IzFwqYXzAS3Oizi+jnMs2h4soh1LmlM7lJ3vpHlmoNEBkKT0ohi7NArGn9RzO4SvXr9wlm3luVolRwzd0vS8KFUhX8QPRDrC7ZzcIDbZZ//fHDKlb451TpNL0WYeF8pVPJvH38tujPV571E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6510887-a957-42d7-7edf-08d79355bb49
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 09:41:11.8404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4JOcHgsxHc/LjFRT8UDBoOJW+doXAPwk9ZoH8SRQe3TvzfIwi/b+gDCKWBH8mEO1rD97gBCZJYhKMrD6BbSoXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_014117_891126_822E54BB 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH V2 2/5] clk: imx: Add support for i.MX8M hw based clk
> provider
> 
> Add hw based provider support for i.MX8M composite clk, pll14xx clk and
> other gate/mux clk APIs, so that new added i.MX8M SoCs can use hw based
> clk provider.

i.MX8M hw composite clk has been in shawn's tree,
https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/
commit/?h=for-next&id=a4b431f8038a67222fde888a48bcbd704d2daca0

You might be using an old base?

Regards,
Peng.

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  drivers/clk/imx/clk-composite-8m.c |  4 ++--
>  drivers/clk/imx/clk-pll14xx.c      | 18 +++++++++-------
>  drivers/clk/imx/clk.h              | 42
> +++++++++++++++++++++++++++++++++-----
>  3 files changed, 50 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c
> b/drivers/clk/imx/clk-composite-8m.c
> index d3486ee..20f7c91 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -123,7 +123,7 @@ static const struct clk_ops
> imx8m_clk_composite_divider_ops = {
>  	.set_rate = imx8m_clk_composite_divider_set_rate,
>  };
> 
> -struct clk *imx8m_clk_composite_flags(const char *name,
> +struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  					const char * const *parent_names,
>  					int num_parents, void __iomem *reg,
>  					unsigned long flags)
> @@ -171,7 +171,7 @@ struct clk *imx8m_clk_composite_flags(const char
> *name,
>  	if (IS_ERR(hw))
>  		goto fail;
> 
> -	return hw->clk;
> +	return hw;
> 
>  fail:
>  	kfree(gate);
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c index
> e238427..db12fb6 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -376,14 +376,15 @@ static const struct clk_ops clk_pll1443x_ops = {
>  	.set_rate	= clk_pll1443x_set_rate,
>  };
> 
> -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> +struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char
> +*parent_name,
>  			    void __iomem *base,
>  			    const struct imx_pll14xx_clk *pll_clk)  {
>  	struct clk_pll14xx *pll;
> -	struct clk *clk;
> +	struct clk_hw *hw;
>  	struct clk_init_data init;
>  	u32 val;
> +	int ret;
> 
>  	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
>  	if (!pll)
> @@ -415,16 +416,19 @@ struct clk *imx_clk_pll14xx(const char *name,
> const char *parent_name,
>  	pll->rate_table = pll_clk->rate_table;
>  	pll->rate_count = pll_clk->rate_count;
> 
> +	hw = &pll->hw;
> +
>  	val = readl_relaxed(pll->base + GNRL_CTL);
>  	val &= ~BYPASS_MASK;
>  	writel_relaxed(val, pll->base + GNRL_CTL);
> 
> -	clk = clk_register(NULL, &pll->hw);
> -	if (IS_ERR(clk)) {
> -		pr_err("%s: failed to register pll %s %lu\n",
> -			__func__, name, PTR_ERR(clk));
> +	ret = clk_hw_register(NULL, hw);
> +	if (ret) {
> +		pr_err("%s: failed to register pll %s %d\n",
> +			__func__, name, ret);
>  		kfree(pll);
> +		return ERR_PTR(ret);
>  	}
> 
> -	return clk;
> +	return hw;
>  }
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> afc7947..90f9ab8 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -123,8 +123,13 @@ extern struct imx_pll14xx_clk imx_1443x_dram_pll;
>  				bypass1, bypass2, base, flags) \
>  	to_clk(imx_clk_hw_sscg_pll(name, parent_names, num_parents,
> parent,\
>  				bypass1, bypass2, base, flags))
> +#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
> +	to_clk(imx_clk_hw_pll14xx(name, parent_name, base, pll_clk))
> 
> -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> +#define imx8m_clk_composite_flags(name, parent_names, num_parents,
> reg, flags) \
> +	to_clk(imx8m_clk_hw_composite_flags(name, parent_names,
> num_parents,
> +reg, flags))
> +
> +struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char
> +*parent_name,
>  		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
> 
>  struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char
> *name, @@ -388,6 +393,14 @@ static inline struct clk
> *imx_clk_gate4_flags(const char *name,
>  			reg, shift, 0x3, 0, &imx_ccm_lock, NULL);  }
> 
> +static inline struct clk_hw *imx_clk_hw_gate4_flags(const char *name, const
> char *parent,
> +		void __iomem *reg, u8 shift, unsigned long flags) {
> +	return clk_hw_register_gate2(NULL, name, parent,
> +			flags | CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
> +			reg, shift, 0x3, 0, &imx_ccm_lock, NULL); }
> +
>  static inline struct clk_hw *imx_clk_hw_mux(const char *name, void
> __iomem *reg,
>  			u8 shift, u8 width, const char * const *parents,
>  			int num_parents)
> @@ -437,6 +450,15 @@ static inline struct clk *imx_clk_mux2_flags(const
> char *name,
>  			reg, shift, width, 0, &imx_ccm_lock);  }
> 
> +static inline struct clk_hw *imx_clk_hw_mux2_flags(const char *name, void
> __iomem *reg,
> +				u8 shift, u8 width, const char * const *parents,
> +				int num_parents, unsigned long flags) {
> +	return clk_hw_register_mux(NULL, name, parents, num_parents,
> +			flags | CLK_SET_RATE_NO_REPARENT |
> CLK_OPS_PARENT_ENABLE,
> +			reg, shift, width, 0, &imx_ccm_lock); }
> +
>  static inline struct clk_hw *imx_clk_hw_mux_flags(const char *name,
>  						  void __iomem *reg, u8 shift,
>  						  u8 width,
> @@ -453,10 +475,9 @@ struct clk_hw *imx_clk_hw_cpu(const char *name,
> const char *parent_name,
>  		struct clk *div, struct clk *mux, struct clk *pll,
>  		struct clk *step);
> 
> -struct clk *imx8m_clk_composite_flags(const char *name,
> -					const char * const *parent_names,
> -					int num_parents, void __iomem *reg,
> -					unsigned long flags);
> +struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
> +		const char * const *parent_names, int num_parents,
> +		void __iomem *reg, unsigned long flags);
> 
>  #define __imx8m_clk_composite(name, parent_names, reg, flags) \
>  	imx8m_clk_composite_flags(name, parent_names, \ @@ -469,6 +490,17
> @@ struct clk *imx8m_clk_composite_flags(const char *name,  #define
> imx8m_clk_composite_critical(name, parent_names, reg) \
>  	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
> 
> +#define __imx8m_clk_hw_composite(name, parent_names, reg, flags) \
> +	imx8m_clk_hw_composite_flags(name, parent_names, \
> +		ARRAY_SIZE(parent_names), reg, \
> +		flags | CLK_SET_RATE_NO_REPARENT |
> CLK_OPS_PARENT_ENABLE)
> +
> +#define imx8m_clk_hw_composite(name, parent_names, reg) \
> +	__imx8m_clk_hw_composite(name, parent_names, reg, 0)
> +
> +#define imx8m_clk_hw_composite_critical(name, parent_names, reg) \
> +	__imx8m_clk_hw_composite(name, parent_names, reg,
> CLK_IS_CRITICAL)
> +
>  struct clk_hw *imx_clk_hw_divider_gate(const char *name, const char
> *parent_name,
>  		unsigned long flags, void __iomem *reg, u8 shift, u8 width,
>  		u8 clk_divider_flags, const struct clk_div_table *table,
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
