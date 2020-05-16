Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94A71D62F0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d20g86q+rSPGzZ4vxGdR9g/qaN9HiU7o6X8Zd2/b/FE=; b=sDGGS0AzWQ5UvW
	axEyqufGVLhOdLpKybHr7pTzvc9Xj3HxCYkVf0SLI8Dz9GvjZaUOTbGhcdpAKX+JRoqIgYq2qD4wt
	cIaEHuLAdZBQ/kI/6oLIDtl5nr+HE/7/f4uROaGAUU5jqmkHdwdmUEa5jwrGAnFTAnw01cn4kdafd
	BUYiXMZsS00Hz2DXoF726Jk9fpkhPwI58852mtNYQoAIwjARKaHT+EBCn4/r3sRmYb927ZUgRWYB6
	RQGEOdMLFGM5065MH+W2IJBVhe/BoNpF2sG1+c2fa0K87l5artx8AkoHBXIamqhN7dBYZFLYmEC/N
	nc3xzUlY53x4Yf7CJmvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0PP-0003ti-KP; Sat, 16 May 2020 17:15:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0PH-0003t7-K5
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 17:15:28 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 618AC20756;
 Sat, 16 May 2020 17:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589649327;
 bh=UFcxAeFE3SPRLnvNasRhmzG8Bcy6a0fnOsbSJPfdJ60=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IjDYS2+lL53IsLZmPGS9PxVLjYvUEWxRk58arwUdxRBAHEiERoPkdkSur8zVAV4gT
 Vaj8DkhvkYppWWOJRcNVj10K7VXZ7TbgtabI+8uWRGJj06kVrWQq7bLDdTMQWb4nWo
 rQqIhLe0OgGTQRACXGKGTMQxb3ZygaGgkpg7lCiI=
Date: Sat, 16 May 2020 18:15:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH v2 2/8] iio: at91-sama5d2_adc: pass ref to IIO device
 via param for int function
Message-ID: <20200516181522.096433bc@archlinux>
In-Reply-To: <20200514131710.84201-3-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
 <20200514131710.84201-3-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_101527_679314_A00084BA 
X-CRM114-Status: GOOD (  17.95  )
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

On Thu, 14 May 2020 16:17:04 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> Since there will be some changes to how iio_priv_to_dev() is implemented,
> it could be that the helper becomes a bit slower, as it will be hidden away
> in the IIO core.
> 
> For this driver, the IIO device can be passed directly as a parameter to
> the at91_adc_no_pen_detect_interrupt() function, thus making it immune to
> the change of iio_priv_to_dev().
> The function gets called in an interrupt context.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Looks sensible to me.   We could get the state structure from the 
iio_dev inside that function, but then it would be different from the
pen version, so I think what you have here is probably best option.

Jonathan

> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index 9abbbdcc7420..822b8782acba 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -1275,10 +1275,9 @@ static void at91_adc_pen_detect_interrupt(struct at91_adc_state *st)
>  	st->touch_st.touching = true;
>  }
>  
> -static void at91_adc_no_pen_detect_interrupt(struct at91_adc_state *st)
> +static void at91_adc_no_pen_detect_interrupt(struct iio_dev *indio_dev,
> +					     struct at91_adc_state *st)
>  {
> -	struct iio_dev *indio_dev = iio_priv_to_dev(st);
> -
>  	at91_adc_writel(st, AT91_SAMA5D2_TRGR,
>  			AT91_SAMA5D2_TRGR_TRGMOD_NO_TRIGGER);
>  	at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_NOPEN |
> @@ -1318,7 +1317,7 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
>  		at91_adc_pen_detect_interrupt(st);
>  	} else if ((status & AT91_SAMA5D2_IER_NOPEN)) {
>  		/* nopen detected IRQ */
> -		at91_adc_no_pen_detect_interrupt(st);
> +		at91_adc_no_pen_detect_interrupt(indio, st);
>  	} else if ((status & AT91_SAMA5D2_ISR_PENS) &&
>  		   ((status & rdy_mask) == rdy_mask)) {
>  		/* periodic trigger IRQ - during pen sense */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
