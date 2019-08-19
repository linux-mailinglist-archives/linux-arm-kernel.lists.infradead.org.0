Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395CD92542
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikIwOb+Xf36vVJNbEsDDY4u/GW8PUfPLMREVS/mxFWI=; b=sC4OMYwEfkRPw9
	WRIiC0qKbssc6ult+zpTCrzZ9NsDMG2HTVrtBSm+AI/VULO0+5/UT9thMp1jhcVg6zE69LJwtcHaD
	B5uZT6v/OvbGTEMh9+UBV2hPN8YBOm6d8RuUXYkSM5P2rZHJO0jLt5o2qYlAOm+YzT44we8tGCH+H
	o2prX4KDgsp5orjCoM0FP/XbKwK5bM73s06wNwwk9vJgpTJBZa6exgBLDqkckeD4t3PNZpa0VVD8B
	xzytJQ8cjv4IW6NLNZSM88Y2xS1UaFIMXDmL5gvsV5TtFXRnkZEeDjFMj1znwRY45ryxg3VqRU9X1
	XKBvJwLL5/LsvkXtjwsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhs2-00026G-I4; Mon, 19 Aug 2019 13:38:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhrt-00025o-Ny
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:38:43 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3448120644;
 Mon, 19 Aug 2019 13:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566221921;
 bh=47ZKROnn84RKEvkEyiFYQznmN0p3z6+yXmQR9SMFTMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yOVGtXx9Ke+ACtLOruQ8xvXQWXqBmbRxFvzbqQIVQ7iOm+klS13QjFZZ7uIgcxIo3
 pFofrGRRBoWyHpTzR75z6Aduga1/zuvMatrTJM/DpzX/qYB7A8W+1FkOvb2Z2m86AZ
 JUvuGYvXp7sVRAkT8pD70BHw7ks9dAPiwQg/HDI8=
Date: Mon, 19 Aug 2019 15:38:28 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH RESEND V2 5/7] clk: imx8mn: Add missing rate_count
 assignment for each PLL structure
Message-ID: <20190819133827.GN5999@X250>
References: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
 <1566109945-11149-5-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566109945-11149-5-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063841_802009_3F7E30FF 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org, viresh.kumar@linaro.org,
 s.hauer@pengutronix.de, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 18, 2019 at 02:32:23AM -0400, Anson Huang wrote:
> Add .rate_count assignment which is necessary for searching required
> PLL rate from the each PLL table.
> 
> Fixes: 96d6392b54db ("clk: imx: Add support for i.MX8MN clock driver")

The commit ID is not stable before the commit lands on mainline, so I
dropped it and applied the patch.

Shawn

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- split the patch into 2 patches, #1 fixed those missing .rate_count assignment,
> 	  #2 add missing frequency points.
> ---
>  drivers/clk/imx/clk-imx8mn.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index ecd1062..b5a027c 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -67,36 +67,43 @@ static const struct imx_pll14xx_rate_table imx8mn_drampll_tbl[] = {
>  static struct imx_pll14xx_clk imx8mn_audio_pll = {
>  		.type = PLL_1443X,
>  		.rate_table = imx8mn_audiopll_tbl,
> +		.rate_count = ARRAY_SIZE(imx8mn_audiopll_tbl),
>  };
>  
>  static struct imx_pll14xx_clk imx8mn_video_pll = {
>  		.type = PLL_1443X,
>  		.rate_table = imx8mn_videopll_tbl,
> +		.rate_count = ARRAY_SIZE(imx8mn_videopll_tbl),
>  };
>  
>  static struct imx_pll14xx_clk imx8mn_dram_pll = {
>  		.type = PLL_1443X,
>  		.rate_table = imx8mn_drampll_tbl,
> +		.rate_count = ARRAY_SIZE(imx8mn_drampll_tbl),
>  };
>  
>  static struct imx_pll14xx_clk imx8mn_arm_pll = {
>  		.type = PLL_1416X,
>  		.rate_table = imx8mn_pll1416x_tbl,
> +		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
>  };
>  
>  static struct imx_pll14xx_clk imx8mn_gpu_pll = {
>  		.type = PLL_1416X,
>  		.rate_table = imx8mn_pll1416x_tbl,
> +		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
>  };
>  
>  static struct imx_pll14xx_clk imx8mn_vpu_pll = {
>  		.type = PLL_1416X,
>  		.rate_table = imx8mn_pll1416x_tbl,
> +		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
>  };
>  
>  static struct imx_pll14xx_clk imx8mn_sys_pll = {
>  		.type = PLL_1416X,
>  		.rate_table = imx8mn_pll1416x_tbl,
> +		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
>  };
>  
>  static const char * const pll_ref_sels[] = { "osc_24m", "dummy", "dummy", "dummy", };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
