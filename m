Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143921A5E09
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 12:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktnwtR5M62wGg9QXTN+CNuABb7fho3pXBs8I+F1sLSo=; b=ulWcBFWKLmMY6R
	UVidJGmmrrogJrlHYB2bP3I/rwwDGEhoFjA8s9wbKaXffKzB+4FLIEvopYrZFwd+q9NrBETHOW5OL
	NjYoejwjaLZBsm/iZMk8oAF1w2fA1nO6PeXaYtqi+aV43H69BQMGXTlX0vWJdmKl6NxrbP+hinXfr
	Yhjm6iaQjOTQI8fMW3bpoTJ27Xblcve4A2brffc4ELAw27I6DEKFVM/+qikhW186hhKH7Zv17jnw2
	1HgsHOKq/HvxT7SURjXzEJYwTOXo7BXWsVKxsEZaLogad1BOVDXLyn8/cO7bzaLg2IhkY4jvLJE5L
	1jkg0aONXqGBKkAt4zXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNZoI-0002iI-Es; Sun, 12 Apr 2020 10:25:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNZoB-0002hz-Bn
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 10:25:48 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1ABE820708;
 Sun, 12 Apr 2020 10:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586687146;
 bh=GPoR6fO9oT8HCa7+VFKYGXh0NeNqRhagYkJ4iTjJt/U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BXF89qPSLNzeNHt80CdhfT3Z5f0uYHt7THlNdM3epKAaCVFqrCGjxeERp/OjeSI/S
 Jxjhr83g+1iBKcB85v67YpHhBaPhL6Gz2EJZhPbLCej2+3M1+KUZDibLqgxxon0o0m
 eI/GChqvxjQF1CloTeeJyHa4Ynu6YN6Q05784YwQ=
Date: Sun, 12 Apr 2020 11:25:41 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Aishwarya R <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] iio: adc: fsl-imx25-gcq: Use
 devm_platform_ioremap_resource
Message-ID: <20200412112541.2a2097fa@archlinux>
In-Reply-To: <20200409151306.308-1-aishwaryarj100@gmail.com>
References: <20200409151306.308-1-aishwaryarj100@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_032547_423017_9E163059 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Thomas Gleixner <tglx@linutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 20:43:05 +0530
Aishwarya R <aishwaryarj100@gmail.com> wrote:

> Use the helper function that wraps the calls to
> platform_get_resource() and devm_ioremap_resource()
> together.
> 
> Signed-off-by: Aishwarya R <aishwaryarj100@gmail.com>
Please update the commit message for v2. In particular if an automated
tool was used to identify this location then mention that.  If not just
say 'by inspection' or similar!

Also, same thing about the signed-off-by as in previous patch.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/fsl-imx25-gcq.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
> index fa71489195c6..b0a4dc88ba9b 100644
> --- a/drivers/iio/adc/fsl-imx25-gcq.c
> +++ b/drivers/iio/adc/fsl-imx25-gcq.c
> @@ -294,7 +294,6 @@ static int mx25_gcq_probe(struct platform_device *pdev)
>  	struct mx25_gcq_priv *priv;
>  	struct mx25_tsadc *tsadc = dev_get_drvdata(pdev->dev.parent);
>  	struct device *dev = &pdev->dev;
> -	struct resource *res;
>  	void __iomem *mem;
>  	int ret;
>  	int i;
> @@ -305,8 +304,7 @@ static int mx25_gcq_probe(struct platform_device *pdev)
>  
>  	priv = iio_priv(indio_dev);
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	mem = devm_ioremap_resource(dev, res);
> +	mem = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(mem))
>  		return PTR_ERR(mem);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
