Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69CB1D62F5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHf2Nttfffd29Lf8bgDMpluDRiyv3byA0LkYHXKvUUo=; b=n/TLzsKFgnT0js
	VRBbmozSwmESAPsK0APwPxVelTWwG14wGrXkqiBIdnUWCbHfsV7aTU/2RVteDdGE0f2Deptksqzpg
	/npE4nIy09auGotJhwUyOGmsI7FDPYnp6uWoZYIyOB3wN9czqgTGzEOYq+HnF/ag1EKEy6Gr/YoLG
	jo/YpdvwNl2U2jB6Lw73jolymPMmOO4O1rKwM4rZrhKIvpRzwyYOYKD7b66uYa/swMqFk3hOjtLyN
	vZ4+u5UOnzkVDay/e0MhuVsJcGsq/foKSLi+Oc4vKxlfNN4sjkH+UPm3/050CHBvFLLkenNC+Wy9b
	+H7iSBetELb1hEXZEnmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0Rn-0004E3-AV; Sat, 16 May 2020 17:18:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0Re-0004DY-Mm
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 17:17:55 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C1C720756;
 Sat, 16 May 2020 17:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589649474;
 bh=IcHZ7TOh5vvvk0say8vEkTHU3vT+7RvmCSLthgNzCLg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vsrsTh6IOhShbQ5wYFS+COo68gFFwCD/TNQhprwkiTMwrVUbFGacw8W+L7ruNT0gR
 Y3ZgdhYioeixFEVMOs7E/sH4nkzIPXAeKAICDRXl71IcDuXvQHxBenOPs1px1ZcyQv
 Gzrpg3u8nQn+nJq0CYd3hVneWeX9woZBBrJnR35c=
Date: Sat, 16 May 2020 18:17:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH v2 3/8] iio: at91_adc: pass ref to IIO device via param
 for int function
Message-ID: <20200516181749.243c9515@archlinux>
In-Reply-To: <20200514131710.84201-4-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
 <20200514131710.84201-4-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_101754_765105_9FDDB532 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, ak@it-klinger.de, mcoquelin.stm32@gmail.com,
 eugen.hristev@microchip.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 16:17:05 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> Since there will be some changes to how iio_priv_to_dev() is implemented,
> it could be that the helper becomes a bit slower, as it will be hidden away
> in the IIO core.
> 
> For this driver, the IIO device can be passed directly as a parameter to
> the at91_ts_sample() function, thus making it immune to the change of
> iio_priv_to_dev().
> The function gets called in an interrupt context.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
I wonder. Should we just pass the struct device?  It's only used for
error printing I think, so we could make that explicit.

I'm not that bothered either way though.

Jonathan

> ---
>  drivers/iio/adc/at91_adc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
> index 0368b6dc6d60..5999defe47cd 100644
> --- a/drivers/iio/adc/at91_adc.c
> +++ b/drivers/iio/adc/at91_adc.c
> @@ -287,13 +287,12 @@ static void handle_adc_eoc_trigger(int irq, struct iio_dev *idev)
>  	}
>  }
>  
> -static int at91_ts_sample(struct at91_adc_state *st)
> +static int at91_ts_sample(struct iio_dev *idev, struct at91_adc_state *st)
>  {
>  	unsigned int xscale, yscale, reg, z1, z2;
>  	unsigned int x, y, pres, xpos, ypos;
>  	unsigned int rxp = 1;
>  	unsigned int factor = 1000;
> -	struct iio_dev *idev = iio_priv_to_dev(st);
>  
>  	unsigned int xyz_mask_bits = st->res;
>  	unsigned int xyz_mask = (1 << xyz_mask_bits) - 1;
> @@ -449,7 +448,7 @@ static irqreturn_t at91_adc_9x5_interrupt(int irq, void *private)
>  
>  		if (status & AT91_ADC_ISR_PENS) {
>  			/* validate data by pen contact */
> -			at91_ts_sample(st);
> +			at91_ts_sample(idev, st);
>  		} else {
>  			/* triggered by event that is no pen contact, just read
>  			 * them to clean the interrupt and discard all.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
