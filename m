Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EE41A68EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I1ms7REpiFXd0AoUUqNksV5mBH/+DmAs9w9gOL+cSs=; b=FxuaBiruWndmCQ
	xh6+QRDDvN0NL8YW32Z71gbxHO1xh2CIdk5XvSlc2jED0DsBzteg6M2ceX013dbvW/75qnGxakEuV
	3tL2leMj/X+tPLRvCdGtFusEX45oev0GDkzkv8wX7YMhZnz/3//2dvNVI2x0lGnLwyU1wVW8/gKam
	24nj4KS7EoYAR+j4d5HmHtryeeO1bIiyuN6heoE4cS5R36xtmlzVEKUjY6+phHOk1TWkBQaT0zDLj
	fxYlNkBQg1PhHUarISVqmzvJJ7YzI8Hwck6VDfPthd/ZyaP4W6U8jw7Da59SGFAF5opDqjQW6jHTv
	C1r4t/Gp8mibVlUlgbFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO165-0000LB-Pz; Mon, 13 Apr 2020 15:34:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO15y-0000K8-NF
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:34:00 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4773C2072C;
 Mon, 13 Apr 2020 15:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586792036;
 bh=C3rwpvDMNRiUZqo5CRZNrWuQ/iGdulM0YD+Yiedl4is=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Nch7zZynKO9XRTNRHTyGFb43yPeXfg7AeWvauV6v/IMXB9OxThDPanZyxhR51xuey
 mWeAgikpzWUR7Exd4nZl6YlU9Ikg+9GrMkH80dO8KrRZdSRikf6LSPTqit48yz2qDd
 tIyupxztaVnKwHL6CnsX3cOH2wWIePm5bsrT3eSQ=
Date: Mon, 13 Apr 2020 16:33:51 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Aishwarya R <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] iio: adc: sun4i-gpadc-iio: Use
 devm_platform_ioremap_resource
Message-ID: <20200413163351.3b7cfd4e@archlinux>
In-Reply-To: <20200412143220.4476-1-aishwaryarj100@gmail.com>
References: <20200409141331.30882-1-aishwaryarj100@gmail.com>
 <20200412143220.4476-1-aishwaryarj100@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_083358_777991_D921B2A1 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lars-Peter Clausen <lars@metafoo.de>, Yangtao Li <tiny.windzz@gmail.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-iio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 12 Apr 2020 20:02:18 +0530
Aishwarya R <aishwaryarj100@gmail.com> wrote:

> From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
> 
> Use the helper function that wraps the calls to platform_get_resource()
> and devm_ioremap_resource() together.Reduces boilerplate and suggested
> by coccinelle.
> 
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>

So couple of general things for future reference.
1. New versions of a patch need a title such as [PATCH V2]
2. You have several similar patches, they would have been best sent
   as a series as that lets a maintainer pick them all up in one go.
3. Don't send new versions in reply to older versions.  It doesn't scale
   as we regularly end up 10 or more versions in to a series.  Not to mention
   many reviewers read backwards in time (as often earlier patches are resolved
   before you get to them) so by sending it as a reply you ensured it was much
   less likely to be applied.  Here you were luck as I am on holiday so have
   time to catch up.

Applied to the togreg branch of iio.git with the message above tidied up
a little.  Will be pushed out as testing for the autobuilders to poke at it.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/sun4i-gpadc-iio.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
> index 176e1cb4abb1..0f2c1738a90d 100644
> --- a/drivers/iio/adc/sun4i-gpadc-iio.c
> +++ b/drivers/iio/adc/sun4i-gpadc-iio.c
> @@ -496,7 +496,6 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
>  				struct iio_dev *indio_dev)
>  {
>  	struct sun4i_gpadc_iio *info = iio_priv(indio_dev);
> -	struct resource *mem;
>  	void __iomem *base;
>  	int ret;
>  
> @@ -508,8 +507,7 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
>  	indio_dev->num_channels = ARRAY_SIZE(sun8i_a33_gpadc_channels);
>  	indio_dev->channels = sun8i_a33_gpadc_channels;
>  
> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(&pdev->dev, mem);
> +	base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
