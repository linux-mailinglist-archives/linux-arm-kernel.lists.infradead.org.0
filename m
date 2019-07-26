Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A333176101
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tM92o7KFpC9lv2bqnlMwtnKai65QWp4juu5BHlSddw=; b=dkIj/KkiIAWuVM
	S/mm4DpWoVkMLSQUV5rWkahnyeA+NGPjQBuyV8+tr+ES+Ro9fX3w48xK69mn74Bdjvru4hAVMz5KT
	+pBbGQazDQ+kLx8C+7xhVnOlPsX2ejtgRY+0p0CnL34TFFb9FDv6kQ5miNsqancWNZ1dEcf0fs7LP
	uu7NvLodAGcyyt1DNKKcPyF9iRuKEuLYz+0qIKRAo4rkvwrMFOSjy1aJjRvZmaUGEyOCEJWbtcg2Q
	UvREXEA1846zmsrssIPs13eyUGy9vSLnBtCmBVI/Wbf8LU+1TTpn1nlytSNBMyHK5AmNmttXbrdLQ
	UgArJVrHrtkB6va1lp7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvks-00039C-JU; Fri, 26 Jul 2019 08:39:10 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvkQ-00038g-O8
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:38:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 24CCF1A0413;
 Fri, 26 Jul 2019 10:38:41 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 17CB21A0966;
 Fri, 26 Jul 2019 10:38:41 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F0415205E6;
 Fri, 26 Jul 2019 10:38:40 +0200 (CEST)
Date: Fri, 26 Jul 2019 11:38:40 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] clk: imx8mn: Keep uart clocks on for early console
Message-ID: <20190726083840.k26dyjgpq4b56gab@fsr-ub1664-175>
References: <20190724075017.11003-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724075017.11003-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_013842_930935_B8D8980A 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-24 15:50:17, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Call imx_register_uart_clocks() API to keep uart clocks enabled
> when earlyprintk or earlycon is active.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mn.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index 07481a5..ecd1062 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -355,6 +355,14 @@ static const char * const imx8mn_clko2_sels[] = {"osc_24m", "sys_pll2_200m", "sy
>  static struct clk *clks[IMX8MN_CLK_END];
>  static struct clk_onecell_data clk_data;
>  
> +static struct clk ** const uart_clks[] = {
> +	&clks[IMX8MN_CLK_UART1_ROOT],
> +	&clks[IMX8MN_CLK_UART2_ROOT],
> +	&clks[IMX8MN_CLK_UART3_ROOT],
> +	&clks[IMX8MN_CLK_UART4_ROOT],
> +	NULL
> +};
> +
>  static int imx8mn_clocks_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -612,6 +620,8 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>  		goto unregister_clks;
>  	}
>  
> +	imx_register_uart_clocks(uart_clks);
> +
>  	return 0;
>  
>  unregister_clks:
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
