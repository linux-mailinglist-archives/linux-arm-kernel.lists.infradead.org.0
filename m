Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF0D1DFF2D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 15:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fs5e9iQ6XoAwSNbAUN8usrXd6kZmRnMLDJbOLERwLIs=; b=jf4gGVycPVjIlS
	7HAiXuqPeOjBO+DckxTeFOtIbtpMOmRfQYAoodI1lAy873L6JBCgKI/1b0PU0fTvd9vm1b1W3qtcW
	u5ZvLwkP52T5HXo9Miz1E8MeDI6/uUzJ0fzB6xn6yAslWGSFZVjWnFQMdq5RAm/tZBNnKQJlRKLHh
	unx6vGzBJUgadYcWJqMYoTpz7e6eu8yULoq7yZJevoNO+5hQjJlndnZaeNn8dw+TUh9fvlUG2RuAm
	S3rPspKqV7vpMW5uEBWy6wrCHz0bZ2WegKXEIfV1TrNcXQtDsQf1uUS6nI4bPxrmGbZ7I27AJXJKS
	xwHmbDTjj2FiY1zMH3vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcqtG-0001LD-Bx; Sun, 24 May 2020 13:42:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcqt5-0001Ku-Mk
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 13:42:01 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C77C206D5;
 Sun, 24 May 2020 13:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590327719;
 bh=8eQG/BYGAjic6GRVvVa9VAujJMvySuULM0CvvRUSoWw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ofrsYUDJy3fWUH87qiM1P8x3MXh32cNQ6zQQwdSyOnr9jOiGu4ykW5tMpdX7kL5nZ
 qvuWGZ930N/SAZxVnAdkqhG+mPqmauFslc2qjiefLZJphIcqEpcStPBjLERNmzeB2D
 H0DVUjOBJ+jCSltHoPSEOiIoPwSPrgXRsGLeOUME=
Date: Sun, 24 May 2020 14:41:54 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH 1/3] iio: Move attach/detach of the poll func to the core
Message-ID: <20200524144154.76fdfbdc@archlinux>
In-Reply-To: <20200522104632.517470-1-alexandru.ardelean@analog.com>
References: <20200522104632.517470-1-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_064159_782595_087742C9 
X-CRM114-Status: GOOD (  25.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linus.walleij@linaro.org, Lars-Peter Clausen <lars@metafoo.de>,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, songqiang1304521@gmail.com,
 mcoquelin.stm32@gmail.com, lorenzo.bianconi83@gmail.com, shawnguo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 13:46:30 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> From: Lars-Peter Clausen <lars@metafoo.de>
> 
> All devices using a triggered buffer need to attach and detach the trigger
> to the device in order to properly work. Instead of doing this in each and
> every driver by hand move this into the core.
> 
> At this point in time, all drivers should have been resolved to
> attach/detach the poll-function in the same order.
> 
> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Looks good to me.

Jonathan


> ---
>  .../buffer/industrialio-triggered-buffer.c    | 10 +--------
>  drivers/iio/iio_core_trigger.h                | 17 ++++++++++++++
>  drivers/iio/industrialio-buffer.c             | 13 +++++++++++
>  drivers/iio/industrialio-trigger.c            | 22 ++++---------------
>  include/linux/iio/trigger_consumer.h          |  7 ------
>  5 files changed, 35 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/iio/buffer/industrialio-triggered-buffer.c b/drivers/iio/buffer/industrialio-triggered-buffer.c
> index e8046c1ecd6b..6c20a83f887e 100644
> --- a/drivers/iio/buffer/industrialio-triggered-buffer.c
> +++ b/drivers/iio/buffer/industrialio-triggered-buffer.c
> @@ -13,11 +13,6 @@
>  #include <linux/iio/triggered_buffer.h>
>  #include <linux/iio/trigger_consumer.h>
>  
> -static const struct iio_buffer_setup_ops iio_triggered_buffer_setup_ops = {
> -	.postenable = &iio_triggered_buffer_postenable,
> -	.predisable = &iio_triggered_buffer_predisable,
> -};
> -
>  /**
>   * iio_triggered_buffer_setup() - Setup triggered buffer and pollfunc
>   * @indio_dev:		IIO device structure
> @@ -67,10 +62,7 @@ int iio_triggered_buffer_setup(struct iio_dev *indio_dev,
>  	}
>  
>  	/* Ring buffer functions - here trigger setup related */
> -	if (setup_ops)
> -		indio_dev->setup_ops = setup_ops;
> -	else
> -		indio_dev->setup_ops = &iio_triggered_buffer_setup_ops;
> +	indio_dev->setup_ops = setup_ops;
>  
>  	/* Flag that polled ring buffering is possible */
>  	indio_dev->modes |= INDIO_BUFFER_TRIGGERED;
> diff --git a/drivers/iio/iio_core_trigger.h b/drivers/iio/iio_core_trigger.h
> index e59fe2f36bbb..9d1a92cc6480 100644
> --- a/drivers/iio/iio_core_trigger.h
> +++ b/drivers/iio/iio_core_trigger.h
> @@ -18,6 +18,12 @@ void iio_device_register_trigger_consumer(struct iio_dev *indio_dev);
>   **/
>  void iio_device_unregister_trigger_consumer(struct iio_dev *indio_dev);
>  
> +
> +int iio_trigger_attach_poll_func(struct iio_trigger *trig,
> +				 struct iio_poll_func *pf);
> +int iio_trigger_detach_poll_func(struct iio_trigger *trig,
> +				 struct iio_poll_func *pf);
> +
>  #else
>  
>  /**
> @@ -37,4 +43,15 @@ static void iio_device_unregister_trigger_consumer(struct iio_dev *indio_dev)
>  {
>  }
>  
> +static inline int iio_trigger_attach_poll_func(struct iio_trigger *trig,
> +					       struct iio_poll_func *pf)
> +{
> +	return 0;
> +}
> +static inline int iio_trigger_detach_poll_func(struct iio_trigger *trig,
> +					       struct iio_poll_func *pf)
> +{
> +	return 0;
> +}
> +
>  #endif /* CONFIG_TRIGGER_CONSUMER */
> diff --git a/drivers/iio/industrialio-buffer.c b/drivers/iio/industrialio-buffer.c
> index ec4f531994fa..88d756107fb2 100644
> --- a/drivers/iio/industrialio-buffer.c
> +++ b/drivers/iio/industrialio-buffer.c
> @@ -20,6 +20,7 @@
>  
>  #include <linux/iio/iio.h>
>  #include "iio_core.h"
> +#include "iio_core_trigger.h"
>  #include <linux/iio/sysfs.h>
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/buffer_impl.h>
> @@ -972,6 +973,13 @@ static int iio_enable_buffers(struct iio_dev *indio_dev,
>  		}
>  	}
>  
> +	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
> +		ret = iio_trigger_attach_poll_func(indio_dev->trig,
> +						   indio_dev->pollfunc);
> +		if (ret)
> +			goto err_disable_buffers;
> +	}
> +
>  	return 0;
>  
>  err_disable_buffers:
> @@ -998,6 +1006,11 @@ static int iio_disable_buffers(struct iio_dev *indio_dev)
>  	if (list_empty(&indio_dev->buffer_list))
>  		return 0;
>  
> +	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
> +		iio_trigger_detach_poll_func(indio_dev->trig,
> +					     indio_dev->pollfunc);
> +	}
> +
>  	/*
>  	 * If things go wrong at some step in disable we still need to continue
>  	 * to perform the other steps, otherwise we leave the device in a
> diff --git a/drivers/iio/industrialio-trigger.c b/drivers/iio/industrialio-trigger.c
> index 53d1931f6be8..6f16357fd732 100644
> --- a/drivers/iio/industrialio-trigger.c
> +++ b/drivers/iio/industrialio-trigger.c
> @@ -239,8 +239,8 @@ static void iio_trigger_put_irq(struct iio_trigger *trig, int irq)
>   * the relevant function is in there may be the best option.
>   */
>  /* Worth protecting against double additions? */
> -static int iio_trigger_attach_poll_func(struct iio_trigger *trig,
> -					struct iio_poll_func *pf)
> +int iio_trigger_attach_poll_func(struct iio_trigger *trig,
> +				 struct iio_poll_func *pf)
>  {
>  	int ret = 0;
>  	bool notinuse
> @@ -290,8 +290,8 @@ static int iio_trigger_attach_poll_func(struct iio_trigger *trig,
>  	return ret;
>  }
>  
> -static int iio_trigger_detach_poll_func(struct iio_trigger *trig,
> -					 struct iio_poll_func *pf)
> +int iio_trigger_detach_poll_func(struct iio_trigger *trig,
> +				 struct iio_poll_func *pf)
>  {
>  	int ret = 0;
>  	bool no_other_users
> @@ -705,17 +705,3 @@ void iio_device_unregister_trigger_consumer(struct iio_dev *indio_dev)
>  	if (indio_dev->trig)
>  		iio_trigger_put(indio_dev->trig);
>  }
> -
> -int iio_triggered_buffer_postenable(struct iio_dev *indio_dev)
> -{
> -	return iio_trigger_attach_poll_func(indio_dev->trig,
> -					    indio_dev->pollfunc);
> -}
> -EXPORT_SYMBOL(iio_triggered_buffer_postenable);
> -
> -int iio_triggered_buffer_predisable(struct iio_dev *indio_dev)
> -{
> -	return iio_trigger_detach_poll_func(indio_dev->trig,
> -					     indio_dev->pollfunc);
> -}
> -EXPORT_SYMBOL(iio_triggered_buffer_predisable);
> diff --git a/include/linux/iio/trigger_consumer.h b/include/linux/iio/trigger_consumer.h
> index c3c6ba5ec423..3aa2f132dd67 100644
> --- a/include/linux/iio/trigger_consumer.h
> +++ b/include/linux/iio/trigger_consumer.h
> @@ -50,11 +50,4 @@ irqreturn_t iio_pollfunc_store_time(int irq, void *p);
>  
>  void iio_trigger_notify_done(struct iio_trigger *trig);
>  
> -/*
> - * Two functions for common case where all that happens is a pollfunc
> - * is attached and detached from a trigger
> - */
> -int iio_triggered_buffer_postenable(struct iio_dev *indio_dev);
> -int iio_triggered_buffer_predisable(struct iio_dev *indio_dev);
> -
>  #endif


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
