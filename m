Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DA31DFF39
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 15:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GM673mLVDJygUGDa7VYPHZsStmM9lSSGe1y/UKHyUts=; b=EEN4fmv9PEJX/0
	kHphPdpAaLaLol1IFcRlBjr5Q/b6rm2c7f/IWatoiqoyLGsg2HHsQFMMbWZ561MvUjlfmgHBOeAMd
	+r/ezL/knO2kfti3RMbMwpEPrgEEez6VEi3B6wjBNzhesjunQriCC5EgnByYjwY8GH9RbBK2O9A4N
	+iZWhxmZI5BmjvMWbtUY6J00/6xA3VZqmALk14yKvqgL9k/eMWJzbHQELE7bYbQAdypPIiidQlPR6
	TKkKo6kMr4oCOGefdD0R00ZCjeW8T5CSlQpXmu4hj8wQy+eanuDL26NXOJMQEtCDLUjs2Z7gCkBgZ
	lu7tPXdZFIxcQhgxEwZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcr5W-0007e5-VO; Sun, 24 May 2020 13:54:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcr5N-0007dh-6O
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 13:54:42 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9CBD20776;
 Sun, 24 May 2020 13:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590328480;
 bh=lNY5bwD2IWRGQ8GGVNTkDd032tPyr6wbfzXC+8He9gw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UsLMt05sTxkz3a8fEenO5DfnsQhZGB2VyQzFbvaOSCozSuoVa+oWAJeOOWyMR/C1i
 ffZA1kaCJhQHgSs+mLnh4McG7eeKc+0t65sp+noywP+ACpAo+vaFQZJbox74kBbfds
 be6DSlTNCbw1nSjWlQldmzLi2UKuEoSmD/jeRYf4=
Date: Sun, 24 May 2020 14:54:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH 2/3] iio: adc: at91-sama5d2_adc: remove
 predisable/postenable hooks
Message-ID: <20200524145436.41aaeea2@archlinux>
In-Reply-To: <20200522104632.517470-2-alexandru.ardelean@analog.com>
References: <20200522104632.517470-1-alexandru.ardelean@analog.com>
 <20200522104632.517470-2-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_065441_259245_42F80F8C 
X-CRM114-Status: GOOD (  16.01  )
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
Cc: linus.walleij@linaro.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, songqiang1304521@gmail.com,
 mcoquelin.stm32@gmail.com, lorenzo.bianconi83@gmail.com, shawnguo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 13:46:31 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> This should be squashed into the first patch, but it's the more peculiar of
> the changes.
> I am not sure whether this is correct. The touchscreen channels shouldn't
> be enabled by the IIO framework. So, we may need a different way to handle
> those if needed.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Hmm. Unfortunately I can't remember exactly what is going on here.

From a quick look my suspicion is we can handle this using the same
'is it a triggered buffer' test as you now have in the core code.

The touchscreen path operates as a non triggered buffer (I think...)

I'm definitely looking for an ack and preferably a tested-by for this
one.  You are right - it's non obvious!

Jonathan

> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 18 ------------------
>  1 file changed, 18 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index 9abbbdcc7420..f71071096392 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -937,14 +937,6 @@ static int at91_adc_buffer_preenable(struct iio_dev *indio_dev)
>  	return 0;
>  }
>  
> -static int at91_adc_buffer_postenable(struct iio_dev *indio_dev)
> -{
> -	if (at91_adc_current_chan_is_touch(indio_dev))
> -		return 0;
> -
> -	return iio_triggered_buffer_postenable(indio_dev);
> -}
> -
>  static int at91_adc_buffer_postdisable(struct iio_dev *indio_dev)
>  {
>  	struct at91_adc_state *st = iio_priv(indio_dev);
> @@ -995,19 +987,9 @@ static int at91_adc_buffer_postdisable(struct iio_dev *indio_dev)
>  	return 0;
>  }
>  
> -static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
> -{
> -	if (at91_adc_current_chan_is_touch(indio_dev))
> -		return 0;
> -
> -	return iio_triggered_buffer_predisable(indio_dev);
> -}
> -
>  static const struct iio_buffer_setup_ops at91_buffer_setup_ops = {
>  	.preenable = &at91_adc_buffer_preenable,
>  	.postdisable = &at91_adc_buffer_postdisable,
> -	.postenable = &at91_adc_buffer_postenable,
> -	.predisable = &at91_adc_buffer_predisable,
>  };
>  
>  static struct iio_trigger *at91_adc_allocate_trigger(struct iio_dev *indio,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
