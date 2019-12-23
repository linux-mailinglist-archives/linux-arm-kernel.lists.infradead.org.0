Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B506D1295FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crrf2fgSD7cDSDVd3fR1ykFYRD8lrPYfa3ZELQ/F1lg=; b=Uo4+pj18wB44HN
	LYJxGxTltQu+3JPurzc6TsgfmnOF8hPfgbkdOOYKG3kaPiMofKyg23v5m6JyiY4q7wLyF6/F4dFq4
	PjkJfzgb508wFPANsupq4RhO8BqJaYjhWbDfn9Xr6lu4Pt9f2SIZD0DG3d5cD6PAuDEWleUT+L5js
	ma6N/DHbZRa/uFQbYTOZRBIEzE4rRdBvY5WFwweS9d33HBmrDEaOBTnOtF1DORKXioe3i4iofttNf
	c23CnGfZ7KbaAqz0VNO5oznKSeTI1hROIhn7otjjXs/PCfI2Iiji6JmlnpVCKcS3w099c6gGua1u0
	xWGIjtL6Gt0HCJHwrIvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMkz-0000FU-HD; Mon, 23 Dec 2019 12:24:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMkl-0000Db-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:24:05 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49060206D3;
 Mon, 23 Dec 2019 12:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577103843;
 bh=Vgx5kkZxq6WSwi2yMCs7kTKdgl096+zl5Kn0qpcdGXI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Q9DMPPFOz/+LcUdzqXvoP02fVbupfL3O7o9COhqUulh4Ja1VMN0mPY5YV4wD1Sw3M
 qwj5ze01u7GvIb8htE+nKT6vobbvZjpuE8laFrEPAtj4XMDHOgejgTQi2BkB8ik5D5
 Hp+Pn5yu+KY04xuk4WyQpcVddfgbbh8YiwBXDHHc=
Date: Mon, 23 Dec 2019 12:23:57 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 07/10] iio: adc: at91-sama5d2_adc: fix differential
 channels in triggered mode
Message-ID: <20191223122357.52d0ac11@archlinux>
In-Reply-To: <1576686157-11939-8-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-8-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_042403_685604_E055CF31 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, a.zummo@towertech.it, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 16:24:02 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The differential channels require writing the channel offset register (COR).
> Otherwise they do not work in differential mode.
> The configuration of COR is missing in triggered mode.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
I'm not totally sure whether this predates the changes here, but if it does
please pull it to the front of the set and give it a fixes tag.

Otherwise, look at merging it in with where-ever it was introduced.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index a6b4dff..ccffa48 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -900,6 +900,7 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio)
>  
>  	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
>  		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
> +		u32 cor;
>  
>  		if (!chan)
>  			continue;
> @@ -908,6 +909,17 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio)
>  		    chan->type == IIO_PRESSURE)
>  			continue;
>  
> +		cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
> +
> +		if (chan->differential)
> +			cor |= (BIT(chan->channel) | BIT(chan->channel2)) <<
> +			       AT91_SAMA5D2_COR_DIFF_OFFSET;
> +		else
> +			cor &= ~(BIT(chan->channel) <<
> +			       AT91_SAMA5D2_COR_DIFF_OFFSET);
> +
> +		at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
> +
>  		at91_adc_writel(st, AT91_SAMA5D2_CHER, BIT(chan->channel));
>  		if (use_irq) {
>  			at91_adc_writel(st, AT91_SAMA5D2_IER,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
