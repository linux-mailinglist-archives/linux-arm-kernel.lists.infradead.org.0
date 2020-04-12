Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F401A5DFF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 12:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFmCVaNet0Xg6RTansa/6Jr8p5xo4iHpYMmvsb6jcQE=; b=VjywIs/IgXJ1rt
	fLv8AoGpe1//vXjEcsSsQMFSfh570oGeU9kTt9F2NiVF5lCqtJ+cRHLUaKua1WTqJelaTcEWuG9vE
	UoOQvbG6o1ssyLJqKioKH15g3/DEhzMPspz+iK0yNAMmNLf+XKTPQ8y1S0wFPnEYwRZRAG9hpQt2k
	nwC2oENFGHy6HmnpSgTPZwHVOh0DfpX56yO2vFNxR2odZlqiGxTRVIygC3ijP6GvvoykX8ZuH8zYx
	3Tk7QrlJbXgPhHds78MVdHz0ddnxNR1JjHGGsSLVr66FXKnsCMN4oVYJ4eM6tqd1KhPNx7dmRM+vm
	Y4o2mlhHPKBDs1aWNm6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNZcd-0002V7-IB; Sun, 12 Apr 2020 10:13:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNZcW-0002US-W6
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 10:13:46 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65C37206DA;
 Sun, 12 Apr 2020 10:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586686419;
 bh=Km3t+lTTTiSV9AJxSvLGxQM3QWc8v3EtPhvy9GxYp78=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Qzml9lHLuO8FdM9NYT7jYkBqWHM6OLkPUa8ELk6Sf1wwaRdUqyubGjC7KWZSte/46
 Ffjlrk8ffBoBUlVAjOIN5rrAfmDym//KFhTZIaemZ0nVggKQJMq8h8ZqpSXj4Me+oh
 AtPgDLjtkkuEM4tJ7/lOsxzLGYeq2UgD3HsuUkJs=
Date: Sun, 12 Apr 2020 11:13:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Aishwarya R <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
Message-ID: <20200412111334.46fccd20@archlinux>
In-Reply-To: <20200409151125.32677-1-aishwaryarj100@gmail.com>
References: <20200409151125.32677-1-aishwaryarj100@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_031345_052014_D633C476 
X-CRM114-Status: GOOD (  16.04  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Kefeng Wang <wangkefeng.wang@huawei.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 20:41:23 +0530
Aishwarya R <aishwaryarj100@gmail.com> wrote:

> Use the helper function that wraps the calls to
> platform_get_resource() and devm_ioremap_resource()
> together.
> 
> Signed-off-by: Aishwarya R <aishwaryarj100@gmail.com>
Hi Aishwarya R,

Thanks for the patch.  Good to add a little more detail to the description
and note that I do prefer one patch per driver for IIO drivers.

One other thing.  Please use full name for the signed-off-by.
I see you use a longer form in your email later in the thread.
The DCO is a formal legal statement 
https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin
so we tend to be fussy!

Thanks,

Jonathan


> ---
>  drivers/iio/adc/at91_adc.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
> index abe99856c823..0368b6dc6d60 100644
> --- a/drivers/iio/adc/at91_adc.c
> +++ b/drivers/iio/adc/at91_adc.c
> @@ -1152,7 +1152,6 @@ static int at91_adc_probe(struct platform_device *pdev)
>  	int ret;
>  	struct iio_dev *idev;
>  	struct at91_adc_state *st;
> -	struct resource *res;
>  	u32 reg;
>  
>  	idev = devm_iio_device_alloc(&pdev->dev, sizeof(struct at91_adc_state));
> @@ -1182,9 +1181,7 @@ static int at91_adc_probe(struct platform_device *pdev)
>  	if (st->irq < 0)
>  		return -ENODEV;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -
> -	st->reg_base = devm_ioremap_resource(&pdev->dev, res);
> +	st->reg_base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(st->reg_base))
>  		return PTR_ERR(st->reg_base);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
