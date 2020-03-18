Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6FC189A59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jo1ol5DMshhRapOQfRpJO20ix8rJQeGrNFpEX9hJI6g=; b=kMQBgKW2q27kYc
	d4oM7kj6uKJED7pzH9KrxO0Vl0jvWgK4JfJbsLWMrFfjmei3qJN8nnTf2Yy42QwhdIMly3rlgnBPL
	Z4HQEZV8PlKmwEqmSes/HY+rBMwlVLWUh+a4QfqVHvwQF+CtV6jukUyI+WQ7AFvho++UsPDijxfrK
	as9mP5QsUw9awIff4d9dQe4Fw0gN/Hvfijy5wbtItmifQXs6CviZXWFm5UOWqncIdP6D8s5rNFXfP
	5g3T7wVi1lduVjQcAozarTPS8SWHjXDz5TziKIQyUVpAUsSbErBGyrZrC9vypsh8c0cCLEfJvXnBw
	1yDco+WijPJfQftKA9Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWeo-0005yr-67; Wed, 18 Mar 2020 11:14:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWee-0005xy-4x
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:14:33 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CF602201204;
 Wed, 18 Mar 2020 12:14:30 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C1E1E200F02;
 Wed, 18 Mar 2020 12:14:30 +0100 (CET)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id ACE2820506;
 Wed, 18 Mar 2020 12:14:30 +0100 (CET)
Date: Wed, 18 Mar 2020 13:14:30 +0200
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-sscg-pll: Remove unnecessary blank lines
Message-ID: <20200318111430.ugbcekyk75yg7jh4@fsr-ub1664-175>
References: <1584495566-15110-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584495566-15110-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_041432_349443_B46DCD02 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sboyd@kernel.org, shawnguo@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, t-kristo@ti.com,
 Linux-imx@nxp.com, kernel@pengutronix.de, jonas.gorski@gmail.com,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-03-18 09:39:25, Anson Huang wrote:
> Remove many unnecessary blank lines for cleanup.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-sscg-pll.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
> index d4a2be1..773d8a5 100644
> --- a/drivers/clk/imx/clk-sscg-pll.c
> +++ b/drivers/clk/imx/clk-sscg-pll.c
> @@ -72,7 +72,6 @@ struct clk_sscg_pll_setup {
>  	int divr2, divf2;
>  	int divq;
>  	int bypass;
> -
>  	uint64_t vco1;
>  	uint64_t vco2;
>  	uint64_t fout;
> @@ -86,11 +85,8 @@ struct clk_sscg_pll_setup {
>  struct clk_sscg_pll {
>  	struct clk_hw	hw;
>  	const struct clk_ops  ops;
> -
>  	void __iomem *base;
> -
>  	struct clk_sscg_pll_setup setup;
> -
>  	u8 parent;
>  	u8 bypass1;
>  	u8 bypass2;
> @@ -194,7 +190,6 @@ static int clk_sscg_pll2_find_setup(struct clk_sscg_pll_setup *setup,
>  					struct clk_sscg_pll_setup *temp_setup,
>  					uint64_t ref)
>  {
> -
>  	int ret;
>  
>  	if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
> @@ -253,7 +248,6 @@ static int clk_sscg_pll1_find_setup(struct clk_sscg_pll_setup *setup,
>  					struct clk_sscg_pll_setup *temp_setup,
>  					uint64_t ref)
>  {
> -
>  	int ret;
>  
>  	if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
> @@ -280,7 +274,6 @@ static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
>  	temp_setup.fout_request = rate;
>  
>  	switch (try_bypass) {
> -
>  	case PLL_BYPASS2:
>  		if (prate == rate) {
>  			setup->bypass = PLL_BYPASS2;
> @@ -288,11 +281,9 @@ static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
>  			ret = 0;
>  		}
>  		break;
> -
>  	case PLL_BYPASS1:
>  		ret = clk_sscg_pll2_find_setup(setup, &temp_setup, prate);
>  		break;
> -
>  	case PLL_BYPASS_NONE:
>  		ret = clk_sscg_pll1_find_setup(setup, &temp_setup, prate);
>  		break;
> @@ -301,7 +292,6 @@ static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
>  	return ret;
>  }
>  
> -
>  static int clk_sscg_pll_is_prepared(struct clk_hw *hw)
>  {
>  	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
