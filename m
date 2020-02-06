Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C796C1541F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 11:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egaMhlFrsyjJ7ilb5O9cPDywVm+V/6ETzoKaprp7xJk=; b=n0Qo0JuZ3698sa
	vdzY8bAyakS6ef+TW0uRV/OmrQOUGQj3nTyFmgPzjtWzl7OvJ27mMbJrilLlzuEeENwJW/MIHp/5k
	NrpxiBjTqHGgJEhvNt4EXpK2jnDjmKIDA/Hn83T6QWq5irhPWlrR0scxYC9vLtUQg3oYk8KSONqZA
	wZus1rt3MWZxkWvGYkwJHQriM+jFxyT4gzr+s3AnWisgqYC4GnZmfE0PkECuRfzVfSeoiA5Nbti+V
	dc426X68WvtPPEzpr39RWiEqPCEDnWKuHtFjr0EAvvfFnHb/nQ0l2+rWfT2VRCljDU3IZIhZK8xrA
	LBNdtBjC+p+acxsMRhtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izeUb-0005RU-Uq; Thu, 06 Feb 2020 10:34:42 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izeUS-0005R1-Fl
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 10:34:34 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 4283967A7D8;
 Thu,  6 Feb 2020 11:34:24 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 6 Feb 2020
 11:34:23 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Thu, 6 Feb 2020 11:34:23 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Abel Vesa <abel.vesa@nxp.com>, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>, "Sascha
 Hauer" <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>, "Anson
 Huang" <anson.huang@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [PATCH v2] clk: imx8mm: Switch to platform driver
Thread-Topic: [PATCH v2] clk: imx8mm: Switch to platform driver
Thread-Index: AQHV3Nj/eAC8KOmHpke/9mSCMhEqHQ==
Date: Thu, 6 Feb 2020 10:34:23 +0000
Message-ID: <2df024c3-ab46-4e33-f961-5ef994aea145@kontron.de>
References: <1562682003-20951-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1562682003-20951-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <76976B4AC74DF04DBC03208EA1B541AE@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 4283967A7D8.A1437
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: abel.vesa@nxp.com, anson.huang@nxp.com,
 fabio.estevam@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 ping.bai@nxp.com, sboyd@kernel.org, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_023432_845092_F328F61A 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peng Fan <peng.fan@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 09.07.19 16:20, Abel Vesa wrote:
> There is no strong reason for this to use CLK_OF_DECLARE instead
> of being a platform driver. Plus, this will now be aligned with the
> other i.MX8M clock drivers which are platform drivers.
> 
> In order to make the clock provider a platform driver
> all the data and code needs to be outside of .init section.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>

This has been upstream for quite some time now, but somehow I have an 
issue with SPI on the i.MX8MM that gets resolved when I revert this patch.

When I try to probe an SPI NOR flash with latest 5.4 or even 5.5:

	spi_imx 30820000.spi: dma setup error -19, use pio
	spi-nor spi0.0: unrecognized JEDEC id bytes: 00 00 00 00 00 00
	spi_imx 30820000.spi: probed

When I revert this patch:

	spi_imx 30820000.spi: dma setup error -19, use pio
	spi-nor spi0.0: mx25r1635f (2048 Kbytes)
	spi_imx 30820000.spi: probed

Please note, that in both cases I have disabled DMA, as this causes even 
more trouble (see [1]). But even with DMA enabled and ignoring the DMA 
errors, the issue described above occurs.

Does someone have an idea what's wrong?
Am I the only user of SPI on i.MX8MM as this issue seems to exist 
upstream since v5.4-rc1?

Thanks,
Frieder

> ---
> 
> Changes since v1:
>   * Switched to platform driver memory mapping API
>   * Removed extra newline
>   * Added an explanation of why this change is done
>     in the commit message
> 
>   drivers/clk/imx/clk-imx8mm.c | 57 ++++++++++++++++++++++++++++----------------
>   1 file changed, 36 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 6b8e75d..7a8e713 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -68,43 +68,43 @@ static const struct imx_pll14xx_rate_table imx8mm_drampll_tbl[] = {
>   	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
>   };
>   
> -static struct imx_pll14xx_clk imx8mm_audio_pll __initdata = {
> +static struct imx_pll14xx_clk imx8mm_audio_pll = {
>   		.type = PLL_1443X,
>   		.rate_table = imx8mm_audiopll_tbl,
>   		.rate_count = ARRAY_SIZE(imx8mm_audiopll_tbl),
>   };
>   
> -static struct imx_pll14xx_clk imx8mm_video_pll __initdata = {
> +static struct imx_pll14xx_clk imx8mm_video_pll = {
>   		.type = PLL_1443X,
>   		.rate_table = imx8mm_videopll_tbl,
>   		.rate_count = ARRAY_SIZE(imx8mm_videopll_tbl),
>   };
>   
> -static struct imx_pll14xx_clk imx8mm_dram_pll __initdata = {
> +static struct imx_pll14xx_clk imx8mm_dram_pll = {
>   		.type = PLL_1443X,
>   		.rate_table = imx8mm_drampll_tbl,
>   		.rate_count = ARRAY_SIZE(imx8mm_drampll_tbl),
>   };
>   
> -static struct imx_pll14xx_clk imx8mm_arm_pll __initdata = {
> +static struct imx_pll14xx_clk imx8mm_arm_pll = {
>   		.type = PLL_1416X,
>   		.rate_table = imx8mm_pll1416x_tbl,
>   		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
>   };
>   
> -static struct imx_pll14xx_clk imx8mm_gpu_pll __initdata = {
> +static struct imx_pll14xx_clk imx8mm_gpu_pll = {
>   		.type = PLL_1416X,
>   		.rate_table = imx8mm_pll1416x_tbl,
>   		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
>   };
>   
> -static struct imx_pll14xx_clk imx8mm_vpu_pll __initdata = {
> +static struct imx_pll14xx_clk imx8mm_vpu_pll = {
>   		.type = PLL_1416X,
>   		.rate_table = imx8mm_pll1416x_tbl,
>   		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
>   };
>   
> -static struct imx_pll14xx_clk imx8mm_sys_pll __initdata = {
> +static struct imx_pll14xx_clk imx8mm_sys_pll = {
>   		.type = PLL_1416X,
>   		.rate_table = imx8mm_pll1416x_tbl,
>   		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
> @@ -374,7 +374,7 @@ static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m",
>   static struct clk *clks[IMX8MM_CLK_END];
>   static struct clk_onecell_data clk_data;
>   
> -static struct clk ** const uart_clks[] __initconst = {
> +static struct clk ** const uart_clks[] = {
>   	&clks[IMX8MM_CLK_UART1_ROOT],
>   	&clks[IMX8MM_CLK_UART2_ROOT],
>   	&clks[IMX8MM_CLK_UART3_ROOT],
> @@ -382,19 +382,20 @@ static struct clk ** const uart_clks[] __initconst = {
>   	NULL
>   };
>   
> -static int __init imx8mm_clocks_init(struct device_node *ccm_node)
> +static int imx8mm_clocks_probe(struct platform_device *pdev)
>   {
> -	struct device_node *np;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
>   	void __iomem *base;
>   	int ret;
>   
>   	clks[IMX8MM_CLK_DUMMY] = imx_clk_fixed("dummy", 0);
> -	clks[IMX8MM_CLK_24M] = of_clk_get_by_name(ccm_node, "osc_24m");
> -	clks[IMX8MM_CLK_32K] = of_clk_get_by_name(ccm_node, "osc_32k");
> -	clks[IMX8MM_CLK_EXT1] = of_clk_get_by_name(ccm_node, "clk_ext1");
> -	clks[IMX8MM_CLK_EXT2] = of_clk_get_by_name(ccm_node, "clk_ext2");
> -	clks[IMX8MM_CLK_EXT3] = of_clk_get_by_name(ccm_node, "clk_ext3");
> -	clks[IMX8MM_CLK_EXT4] = of_clk_get_by_name(ccm_node, "clk_ext4");
> +	clks[IMX8MM_CLK_24M] = of_clk_get_by_name(np, "osc_24m");
> +	clks[IMX8MM_CLK_32K] = of_clk_get_by_name(np, "osc_32k");
> +	clks[IMX8MM_CLK_EXT1] = of_clk_get_by_name(np, "clk_ext1");
> +	clks[IMX8MM_CLK_EXT2] = of_clk_get_by_name(np, "clk_ext2");
> +	clks[IMX8MM_CLK_EXT3] = of_clk_get_by_name(np, "clk_ext3");
> +	clks[IMX8MM_CLK_EXT4] = of_clk_get_by_name(np, "clk_ext4");
>   
>   	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
>   	base = of_iomap(np, 0);
> @@ -480,10 +481,10 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>   	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
>   	clks[IMX8MM_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
>   
> -	np = ccm_node;
> -	base = of_iomap(np, 0);
> -	if (WARN_ON(!base))
> -		return -ENOMEM;
> +	np = dev->of_node;
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (WARN_ON(IS_ERR(base)))
> +		return PTR_ERR(base);
>   
>   	/* Core Slice */
>   	clks[IMX8MM_CLK_A53_SRC] = imx_clk_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
> @@ -682,4 +683,18 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>   
>   	return 0;
>   }
> -CLK_OF_DECLARE_DRIVER(imx8mm, "fsl,imx8mm-ccm", imx8mm_clocks_init);
> +
> +static const struct of_device_id imx8mm_clk_of_match[] = {
> +	{ .compatible = "fsl,imx8mm-ccm" },
> +	{ /* Sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, imx8mm_clk_of_match);
> +
> +static struct platform_driver imx8mm_clk_driver = {
> +	.probe = imx8mm_clocks_probe,
> +	.driver = {
> +		.name = "imx8mm-ccm",
> +		.of_match_table = of_match_ptr(imx8mm_clk_of_match),
> +	},
> +};
> +module_platform_driver(imx8mm_clk_driver);
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
