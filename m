Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8A21A68FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIaxD49ThoFp7lJ8vxcsynYAotnS8dvYMm+fEioV/Lk=; b=cJKIqG5/pZlkOq
	uqmmarsUF/xQLTrAfaC+PnhUGRHrwlkWlQsbQl3js8qBofU2BZs/OeAJGYUY7SHDXgio/3JEr4obs
	qKiXMMeXE6/DU6p0kRYZArQfJslcZ2EhwHbdtaNK8d1OLadcQM1IhAjOrFNiE7FfcPW7dyPAlem5J
	Tz+WqtbYe9PebaNoDa96zutoqiemjFxDwOVkiw5q4Jv2cdJvfRlbgAPeBDgX/MLjkxexnxGRjj8+9
	SsW63+msSmjX1IBJq21L0F6t+QX5wijEHu8hza2TNbE/mOgaDSI5Bd+IB8usR0j6V5oHLyPWVVEzV
	qb8ASf8VHpdawc2RapRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO19n-0003Ny-KR; Mon, 13 Apr 2020 15:37:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO19d-0003Nb-IF
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:37:47 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F8B32072C;
 Mon, 13 Apr 2020 15:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586792265;
 bh=lQ8kyjkpMTyR85fSUdpR9VATKBOfxGyqeQRWXIWSwHw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NfgsGatWPdOuSoVilt1i+8H0bYzRjSVvm2+qN90yARaeKWT9voanCYZ0YuSmgXyNH
 Bvt10f/cQ0+5gdY4GvfKOLicT01q51fsLe62EYzgnMV82Ot0jabjgwRcoq43YTH+R8
 9X6PgLY6pG97BuQuPDt88moH3eYsx9hmLw8Duu5k=
Date: Mon, 13 Apr 2020 16:37:39 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Aishwarya R <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] iio: adc: fsl-imx25-gcq: Use
 devm_platform_ioremap_resource
Message-ID: <20200413163739.38474d8a@archlinux>
In-Reply-To: <20200412135023.3831-1-aishwaryarj100@gmail.com>
References: <20200409151306.308-1-aishwaryarj100@gmail.com>
 <20200412135023.3831-1-aishwaryarj100@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_083745_622703_F5FAF914 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: Enrico Weigelt <info@metux.net>, Lars-Peter Clausen <lars@metafoo.de>,
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

On Sun, 12 Apr 2020 19:20:20 +0530
Aishwarya R <aishwaryarj100@gmail.com> wrote:

> From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
> 
> Use the helper function that wraps the calls to
> platform_get_resource() and devm_ioremap_resource()
> together.It reduces boilerplate and suggested by coccinelle.
> 
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Again see earlier patches for comments but applied anyway to
save myself time.

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

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
