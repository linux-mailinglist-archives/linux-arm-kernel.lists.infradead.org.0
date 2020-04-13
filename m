Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ADD1A68FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHpgSSwjUw2ieqPGh0/Asx7EfrXi9CPu4DA0z7PwQ/o=; b=E5epCIv3XO/pAP
	vmfgNN6pK4EwQnwZ4q6tllSiUPqlV9vAfoXmIPTEbuR/iS/sJLatsLWEZOcbbuEoElVpLB1igIVez
	X6sAgSyWbfClaTO9JWMUGTjs6X5VzWiqka/E0LncmPgAhhdR+3RZ+tZpgG10ThJqbjnfLkkWrOmOK
	+veEx6BkDe/OYKiOYiS/5ZXoHnXVylWzzxIvlL9uunnQdG7jSPNR88cOWuMjpJPjZh8rtdzjgRjU5
	cVrRRwQ5RXiKsICTEHGXNALvMsxIAiQjUDUdSaQ/LIA49aH3AMYnh/GzL4W9c7MFku4jN+1murmF9
	Yq7cdQ4gquOi7LNQthyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO18H-00036o-5S; Mon, 13 Apr 2020 15:36:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO189-000368-Kd
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:36:15 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA5622072C;
 Mon, 13 Apr 2020 15:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586792173;
 bh=ySJ/GZ+In15NYeLHoiARho05iwPwM96hM78oDSnn3u4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k2i6dfph/vfNL/JUvwdMldgHGQna7KMCx43iJ0B9PPYZKoRGdbusbuGVzC0ZkzgtI
 bZt9ct5xW8bBDEiZ0elrES7yPSglluNUH/YQxJmoV3tyXa/FDS+4ABNXA4bH3fQk/N
 7/bGXJKBPnBjKzo6QjgwwGud7rg617wrjKbPoBcA=
Date: Mon, 13 Apr 2020 16:36:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Aishwarya R <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
Message-ID: <20200413163607.4fc548a2@archlinux>
In-Reply-To: <20200412135644.4027-1-aishwaryarj100@gmail.com>
References: <20200409151125.32677-1-aishwaryarj100@gmail.com>
 <20200412135644.4027-1-aishwaryarj100@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_083613_695328_746268AA 
X-CRM114-Status: GOOD (  15.48  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Kefeng Wang <wangkefeng.wang@huawei.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Richard Fontana <rfontana@redhat.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 12 Apr 2020 19:26:42 +0530
Aishwarya R <aishwaryarj100@gmail.com> wrote:

> From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
> 
> Use the helper function that wraps the calls to
> platform_get_resource() and devm_ioremap_resource()
> together. It reduces boilerplate and suggested by coccinelle.
> 
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Same comments as the previous patch.  Applied anyway (this time)
mostly because it's quicker for me than insisting on a v3.

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

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
