Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F971C39A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6vB4AgSmwr0tag2sqTAIXqlGSFDle31KHTDzN+pr/8=; b=EJA05zWLOWY+qj
	DIc+1RSv24mvdDc10TwZnPdq6YOeo0QaZay/gbZlh4z36nNQvbBOvfka5cFQPWpsRJJgxLO1951ET
	zsblnww1ssjM5f9G7H3owepdhFVoTc2y6dv23k9yyBTlBdKH7j3jaFdKOk9plVtBh5rzLkWyDZBS7
	BHjTzr6Q6bEUhNkgKhHmytw+wOgfGgC4GW8b3eLqBQQcU6JYrZ+/Txh/FRT8+jr23Re1y3wODFt5u
	9cp9bqMn60O3LGsQCu737nqLfPqal5De8HXS0CmuWBt0LVVtehLUnvyzqkyFLu5eZz7iIbdKec1NX
	I6+v+qC00FwCzAC/SQfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaR6-0001uz-7M; Mon, 04 May 2020 12:43:04 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaR0-0001uR-Bo
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:42:59 +0000
IronPort-SDR: 7rZUWScetOHbYtwB7bV7bJF83tSi0pWvywgtXm1nFM2rJ8CTt+PZ5WGQ8fN1CkhHjOLhTnn9bW
 cU3FZw3PtMww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 05:42:57 -0700
IronPort-SDR: GZ5CLlJqOXi5gp7wS+11Ftok3l7QEB8bkkbjg3l7se4ElhXZSXh++4QMLGzklhBtp32cu/PIvn
 OvjiMVJc5Dfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="338307544"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 04 May 2020 05:42:54 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jVaQy-004cHK-N9; Mon, 04 May 2020 15:42:56 +0300
Date: Mon, 4 May 2020 15:42:56 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] i2c: drivers: Remove superfluous error message
Message-ID: <20200504124256.GF185537@smile.fi.intel.com>
References: <20200503120847.13528-1-aishwaryarj100@gmail.com>
 <20200504114408.9128-1-aishwaryarj100@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504114408.9128-1-aishwaryarj100@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_054258_415457_39400EA9 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org,
 Thor Thayer <thor.thayer@linux.intel.com>, Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-i2c@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 05:14:06PM +0530, Aishwarya Ramakrishnan wrote:
> The function platform_get_irq can log an error by itself.
> This omit a redundant message for exception handling in the
> calling function.

FWIW,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>


> Suggested by Coccinelle.

Compile tested only, right?

> 
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
> ---
>  drivers/i2c/busses/i2c-altera.c   | 4 +---
>  drivers/i2c/busses/i2c-cht-wc.c   | 4 +---
>  drivers/i2c/busses/i2c-img-scb.c  | 4 +---
>  drivers/i2c/busses/i2c-lpc2k.c    | 4 +---
>  drivers/i2c/busses/i2c-uniphier.c | 4 +---
>  5 files changed, 5 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-altera.c b/drivers/i2c/busses/i2c-altera.c
> index f5c00f903df3..af6985f0ae63 100644
> --- a/drivers/i2c/busses/i2c-altera.c
> +++ b/drivers/i2c/busses/i2c-altera.c
> @@ -395,10 +395,8 @@ static int altr_i2c_probe(struct platform_device *pdev)
>  		return PTR_ERR(idev->base);
>  
>  	irq = platform_get_irq(pdev, 0);
> -	if (irq < 0) {
> -		dev_err(&pdev->dev, "missing interrupt resource\n");
> +	if (irq < 0)
>  		return irq;
> -	}
>  
>  	idev->i2c_clk = devm_clk_get(&pdev->dev, NULL);
>  	if (IS_ERR(idev->i2c_clk)) {
> diff --git a/drivers/i2c/busses/i2c-cht-wc.c b/drivers/i2c/busses/i2c-cht-wc.c
> index 35e55feda763..343ae5754e6e 100644
> --- a/drivers/i2c/busses/i2c-cht-wc.c
> +++ b/drivers/i2c/busses/i2c-cht-wc.c
> @@ -314,10 +314,8 @@ static int cht_wc_i2c_adap_i2c_probe(struct platform_device *pdev)
>  	int ret, reg, irq;
>  
>  	irq = platform_get_irq(pdev, 0);
> -	if (irq < 0) {
> -		dev_err(&pdev->dev, "Error missing irq resource\n");
> +	if (irq < 0)
>  		return -EINVAL;
> -	}
>  
>  	adap = devm_kzalloc(&pdev->dev, sizeof(*adap), GFP_KERNEL);
>  	if (!adap)
> diff --git a/drivers/i2c/busses/i2c-img-scb.c b/drivers/i2c/busses/i2c-img-scb.c
> index 422097a31c95..2f6de763816a 100644
> --- a/drivers/i2c/busses/i2c-img-scb.c
> +++ b/drivers/i2c/busses/i2c-img-scb.c
> @@ -1344,10 +1344,8 @@ static int img_i2c_probe(struct platform_device *pdev)
>  		return PTR_ERR(i2c->base);
>  
>  	irq = platform_get_irq(pdev, 0);
> -	if (irq < 0) {
> -		dev_err(&pdev->dev, "can't get irq number\n");
> +	if (irq < 0)
>  		return irq;
> -	}
>  
>  	i2c->sys_clk = devm_clk_get(&pdev->dev, "sys");
>  	if (IS_ERR(i2c->sys_clk)) {
> diff --git a/drivers/i2c/busses/i2c-lpc2k.c b/drivers/i2c/busses/i2c-lpc2k.c
> index 13b0c12e2dba..43dc9b7043e4 100644
> --- a/drivers/i2c/busses/i2c-lpc2k.c
> +++ b/drivers/i2c/busses/i2c-lpc2k.c
> @@ -362,10 +362,8 @@ static int i2c_lpc2k_probe(struct platform_device *pdev)
>  		return PTR_ERR(i2c->base);
>  
>  	i2c->irq = platform_get_irq(pdev, 0);
> -	if (i2c->irq < 0) {
> -		dev_err(&pdev->dev, "can't get interrupt resource\n");
> +	if (i2c->irq < 0)
>  		return i2c->irq;
> -	}
>  
>  	init_waitqueue_head(&i2c->wait);
>  
> diff --git a/drivers/i2c/busses/i2c-uniphier.c b/drivers/i2c/busses/i2c-uniphier.c
> index 668b1fa2b0ef..ee00a44bf4c7 100644
> --- a/drivers/i2c/busses/i2c-uniphier.c
> +++ b/drivers/i2c/busses/i2c-uniphier.c
> @@ -324,10 +324,8 @@ static int uniphier_i2c_probe(struct platform_device *pdev)
>  		return PTR_ERR(priv->membase);
>  
>  	irq = platform_get_irq(pdev, 0);
> -	if (irq < 0) {
> -		dev_err(dev, "failed to get IRQ number\n");
> +	if (irq < 0)
>  		return irq;
> -	}
>  
>  	if (of_property_read_u32(dev->of_node, "clock-frequency", &bus_speed))
>  		bus_speed = I2C_MAX_STANDARD_MODE_FREQ;
> -- 
> 2.17.1
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
