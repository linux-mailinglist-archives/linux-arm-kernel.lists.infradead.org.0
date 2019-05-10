Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D12819716
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 05:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKr8iOwYanOvgEq5LF8rKrSH2edO3IMk/qQrS56DTyI=; b=FJjGXYVeJ5Zr1U
	pKi2hKxdTzlQQfwuqWMZ0SQMF4zWVR+G+OTbeKa7vIezcEZk2TQ1EpZo9W4i4Wi82GcyK25R2rOlv
	jmccVah2V7jSZfB0Ejjm5nW7xZF0GbTtcxAoY2jRo90GRglzy9vN4XlA8Fk/vi0bKV22RRtkzUc2c
	BJsLOG7KOvReZXAqvJ5+luyGFEepY5b/fTB4M9aY2zchBPr00pHa1lleGu6hVqpHsiUwN3tRW+S8e
	HPPbatHD3IyiduDoeVqFpFbUuuNu9tg2J2NdhcLX3PQmpmapeVGDEbzQ6sTDVqBs8cX7kDPay7Mei
	TtOefFLLI2X7dbhEjiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOwCq-0003Bu-En; Fri, 10 May 2019 03:28:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOwCh-0003A8-34
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 03:28:12 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA6B72084A;
 Fri, 10 May 2019 03:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557458890;
 bh=Vodgijw9WRizuu9THwepTbSoYZ8ws+bZYRW+EAXnc5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gQpZsDQDPDNB4zpoaSbm0NrOEyRfw2BQLvhe1PjydIwKZj65kqZXgWsw8o0buW1SP
 qA7AIiOu8aTFMaRuFPZMTSpwX0ALZV0FNkNcpKYDLLFLaxZN7IURhqLgVhG0YvCASL
 M3y79cQxl7bCd9d4nQQL/rqut2Nvy1btGirdopHg=
Date: Fri, 10 May 2019 11:27:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] clk: imx6sll: Fix mispelling uart4_serial as serail
Message-ID: <20190510032746.GF15856@dragon>
References: <8776296d079b3b4d67d4421656238757a8ad373d.1556046082.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8776296d079b3b4d67d4421656238757a8ad373d.1556046082.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_202811_150849_B279ADE8 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 07:05:08PM +0000, Leonard Crestez wrote:
> This looks like a copy-paste error. This string is not referenced
> anywhere so it's safe to rename it.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

I see this keep coming, so have to ask you to fix your patch sender.
The base64 encoding makes it very difficult to apply patch.  I have done
manual applying for your patches a couple of times, and I thought that's
just accident.  It seems not.  Please fix and resend. 

Shawn

> ---
>  drivers/clk/imx/clk-imx6sll.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx6sll.c b/drivers/clk/imx/clk-imx6sll.c
> index 3bd2044cf25c..9def76df0879 100644
> --- a/drivers/clk/imx/clk-imx6sll.c
> +++ b/drivers/clk/imx/clk-imx6sll.c
> @@ -266,11 +266,11 @@ static void __init imx6sll_clocks_init(struct device_node *ccm_node)
>  	clks[IMX6SLL_CLK_EPIT1]		= imx_clk_gate2("epit1",	"perclk", base + 0x6c, 12);
>  	clks[IMX6SLL_CLK_EPIT2]		= imx_clk_gate2("epit2",	"perclk", base + 0x6c, 14);
>  	clks[IMX6SLL_CLK_GPT_BUS]	= imx_clk_gate2("gpt1_bus",	"perclk", base + 0x6c, 20);
>  	clks[IMX6SLL_CLK_GPT_SERIAL]	= imx_clk_gate2("gpt1_serial",	"perclk", base + 0x6c, 22);
>  	clks[IMX6SLL_CLK_UART4_IPG]	= imx_clk_gate2("uart4_ipg",	"ipg", base + 0x6c, 24);
> -	clks[IMX6SLL_CLK_UART4_SERIAL]	= imx_clk_gate2("uart4_serail",	"uart_podf", base + 0x6c, 24);
> +	clks[IMX6SLL_CLK_UART4_SERIAL]	= imx_clk_gate2("uart4_serial",	"uart_podf", base + 0x6c, 24);
>  	clks[IMX6SLL_CLK_GPIO1]		= imx_clk_gate2("gpio1",	"ipg", base + 0x6c, 26);
>  	clks[IMX6SLL_CLK_GPIO5]		= imx_clk_gate2("gpio5",	"ipg", base + 0x6c, 30);
>  
>  	/* CCGR2 */
>  	clks[IMX6SLL_CLK_GPIO6]		= imx_clk_gate2("gpio6",	"ipg",    base + 0x70, 0);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
