Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFF017EF6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Up4i57o1aPGAs/maRqcZpnlaAnIiHPGJTstjuv37lqs=; b=E0DiXlofKfbGul
	2Q41oPCWxThQgkl0VKdRG9GNvDXqc5occ2hPXM5199ojXaPvAfhTcd4kOyYWN+aWycyKhiUMFBZyg
	9JRvPYA/J76zGUGXoxSBaYNktAfH0PTeDkyzcZiu5H+rE8CUuwLJ5v6IMX0cLxvKrgdFYDeApZaKt
	4QcrRa8yz+0KqegvFFAKzLoOW7huMbrMxoOPuejDPQgJ8slWmneabvZLpe4EUUF7Dh7AkeSasFdbR
	gADDRa3PWdKbLyWPu3lRBM4MiSyyCcfi10ajgU/WZ1n3ZlXZZBeVjwFscLGiWl8yTFcCBt7nBGkkd
	arFdyrNIEwBCJcGZ/+pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVpd-00027m-Nl; Tue, 10 Mar 2020 03:45:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVpW-00027O-EO
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:45:19 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 125CD24649;
 Tue, 10 Mar 2020 03:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583811918;
 bh=XU1iaEoFKeDSPhyM0B1RGxdNirA5m5Riwf4RccYZs6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tKO1iKnqIswkp3yypbOocsMQQtQU0I5BoVoL1ifXV41HcmVT9Fb4uan7rt2pnwRjN
 IhkYcgq7H/J3yZ1aRGsAPoDEDc3HjX40OjfskfPCsh7VAQU4C4lEvxJPG6LGwuIBW7
 32PC/s4h03GSYz415BKZpbDLos6SNn0Ti/rLvSvc=
Date: Tue, 10 Mar 2020 11:45:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 4/7] clk: imx: imx8qxp: Enable SCU and LPCG clocks for
 I2C in CM40 SS
Message-ID: <20200310034506.GC15729@dragon>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
 <1581909561-12058-5-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581909561-12058-5-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_204518_522633_D8C7D7B2 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, daniel.baluta@nxp.com, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:19:18AM +0800, Joakim Zhang wrote:
> Enable SCU and LPCG clocks for I2C in CM40 SS.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

So you decided to stop waiting for Aisheng's new imx8qxp clock driver?

Shawn

> ---
>  drivers/clk/imx/clk-imx8qxp-lpcg.c | 12 ++++++++++++
>  drivers/clk/imx/clk-imx8qxp-lpcg.h |  3 +++
>  drivers/clk/imx/clk-imx8qxp.c      |  4 ++++
>  3 files changed, 19 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> index 04c8ee35e14c..795909ecfba6 100644
> --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> @@ -151,6 +151,17 @@ static const struct imx8qxp_lpcg_data imx8qxp_lpcg_lsio[] = {
>  	{ IMX_LSIO_LPCG_PWM6_IPG_MSTR_CLK, "pwm6_lpcg_ipg_mstr_clk", "pwm6_clk", 0, LSIO_PWM_6_LPCG, 24, 0, },
>  };
>  
> +static const struct imx8qxp_lpcg_data imx8qxp_lpcg_cm40[] = {
> +	{ IMX_CM40_LPCG_I2C_CLK, "cm40_lpcg_i2c_clk", "cm40_i2c_clk", 0, CM40_I2C_LPCG, 0, 0, },
> +	{ IMX_CM40_LPCG_I2C_IPG_CLK, "cm40_lpcg_i2c_ipg_clk", "cm40_ipg_clk_root", 0, CM40_I2C_LPCG, 16, 0, },
> +};
> +
> +static const struct imx8qxp_ss_lpcg imx8qxp_ss_cm40 = {
> +	.lpcg = imx8qxp_lpcg_cm40,
> +	.num_lpcg = ARRAY_SIZE(imx8qxp_lpcg_cm40),
> +	.num_max = IMX_CM40_LPCG_CLK_END,
> +};
> +
>  static const struct imx8qxp_ss_lpcg imx8qxp_ss_lsio = {
>  	.lpcg = imx8qxp_lpcg_lsio,
>  	.num_lpcg = ARRAY_SIZE(imx8qxp_lpcg_lsio),
> @@ -219,6 +230,7 @@ static const struct of_device_id imx8qxp_lpcg_match[] = {
>  	{ .compatible = "fsl,imx8qxp-lpcg-adma", &imx8qxp_ss_adma, },
>  	{ .compatible = "fsl,imx8qxp-lpcg-conn", &imx8qxp_ss_conn, },
>  	{ .compatible = "fsl,imx8qxp-lpcg-lsio", &imx8qxp_ss_lsio, },
> +	{ .compatible = "fsl,imx8qxp-lpcg-cm40", &imx8qxp_ss_cm40, },
>  	{ /* sentinel */ }
>  };
>  
> diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.h b/drivers/clk/imx/clk-imx8qxp-lpcg.h
> index 2a37ce57c500..28ca730dd135 100644
> --- a/drivers/clk/imx/clk-imx8qxp-lpcg.h
> +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.h
> @@ -99,4 +99,7 @@
>  #define ADMA_FLEXCAN_1_LPCG		0x1ce0000
>  #define ADMA_FLEXCAN_2_LPCG		0x1cf0000
>  
> +/* CM40 SS */
> +#define CM40_I2C_LPCG			0x60000
> +
>  #endif /* _IMX8QXP_LPCG_H */
> diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> index 5e2903efc488..d051073ff042 100644
> --- a/drivers/clk/imx/clk-imx8qxp.c
> +++ b/drivers/clk/imx/clk-imx8qxp.c
> @@ -53,6 +53,7 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
>  	clks[IMX_HSIO_PER_CLK]		= clk_hw_register_fixed_rate(NULL, "hsio_per_clk_root", NULL, 0, 133333333);
>  	clks[IMX_LSIO_MEM_CLK]		= clk_hw_register_fixed_rate(NULL, "lsio_mem_clk_root", NULL, 0, 200000000);
>  	clks[IMX_LSIO_BUS_CLK]		= clk_hw_register_fixed_rate(NULL, "lsio_bus_clk_root", NULL, 0, 100000000);
> +	clks[IMX_CM40_IPG_CLK]		= clk_hw_register_fixed_rate(NULL, "cm40_ipg_clk_root", NULL, 0, 132000000);
>  
>  	/* ARM core */
>  	clks[IMX_A35_CLK]		= imx_clk_scu("a35_clk", IMX_SC_R_A35, IMX_SC_PM_CLK_CPU);
> @@ -128,6 +129,9 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
>  	clks[IMX_GPU0_CORE_CLK]		= imx_clk_scu("gpu_core0_clk",	 IMX_SC_R_GPU_0_PID0, IMX_SC_PM_CLK_PER);
>  	clks[IMX_GPU0_SHADER_CLK]	= imx_clk_scu("gpu_shader0_clk", IMX_SC_R_GPU_0_PID0, IMX_SC_PM_CLK_MISC);
>  
> +	/* CM40 SS */
> +	clks[IMX_CM40_I2C_CLK]		= imx_clk_scu("cm40_i2c_clk", IMX_SC_R_M4_0_I2C, IMX_SC_PM_CLK_PER);
> +
>  	for (i = 0; i < clk_data->num; i++) {
>  		if (IS_ERR(clks[i]))
>  			pr_warn("i.MX clk %u: register failed with %ld\n",
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
