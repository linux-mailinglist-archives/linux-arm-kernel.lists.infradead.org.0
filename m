Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4AE4F4AC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 11:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfYwjlMqR04uUeD7p+xqnIcfwbZlw6HJBEp7PzD8fBA=; b=md3ZRHQ2xmGNef
	FWFVRxX036twQCBhc73IzwytLt4bbZ4UEwit11SQgzmA7aRtl8iHqcFYwCdq4P7Re/mQporNtcl7q
	0rIVIGeH0YN4Lge1gUdhlg6KB1sxyek9GO6023aj902jzeDXS9Z0vlCZ6f29E1FdeAbgv/9EUb3yX
	ovbPH9bS/ae0lDv6hfq1YarfC85fdCSjjtVyAKS2ObudaZlc9dwKP0fk1UzjqOigqOQqA6cboRlAL
	n9SAAflMzltsxKDq6+/PzsApn63tL5J9CoqmrOKC47JJ0+NaBOkk4Q7IsU3UpVQs58qZt8P3hlvmW
	tKlG1rk/gYVapgUvDBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecFC-0008Jw-81; Sat, 22 Jun 2019 09:23:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecEz-0008JZ-92
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 09:23:22 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8572206BA;
 Sat, 22 Jun 2019 09:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561195401;
 bh=8MdsXVlMi4vSBSz+Up33KUEB/PHAE+taEljjGpQ1cvo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ssmbRe9ttHQo0BO0o0UJlKAZDtHHdgGh4RQRJ3UeaAli22V7anbUE0Hu2y+O7Fruf
 OqzozYlIa/SB9yPtNZH5vGuKCugOXK4K0O4AXLUF0VjC72QrGY0xMpz9lOkEIM0PT8
 nC9VS9JyFcfqATYAspQpwxBZcB6pqyndFRd4Cagw=
Date: Sat, 22 Jun 2019 10:23:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH 3/5] iio: adc: stm32-dfsdm: manage data resolution in
 trigger mode
Message-ID: <20190622102315.2484d6de@archlinux>
In-Reply-To: <1560949431-22948-4-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
 <1560949431-22948-4-git-send-email-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_022321_351856_01114539 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 15:03:49 +0200
Olivier Moysan <olivier.moysan@st.com> wrote:

> Add output sample resolution management in scan mode.
> Add stm32_dfsdm_process_data() function to share sample
> processing between continuous and trigger modes.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Makes sense, though I would have preferred a little bit more info
on what the user visible effects fo this change are in
the patch description.  I think I know from reading the code,
but not every one will do that ;)

Applied to the togreg branch of iio.git and pushed out as
testing for the autobuilders to play with it.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 41 ++++++++++++++++++++++++++-------------
>  1 file changed, 28 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index 6b90a40882f2..5b19a88412a6 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -779,6 +779,30 @@ static unsigned int stm32_dfsdm_adc_dma_residue(struct stm32_dfsdm_adc *adc)
>  	return 0;
>  }
>  
> +static inline void stm32_dfsdm_process_data(struct stm32_dfsdm_adc *adc,
> +					    s32 *buffer)
> +{
> +	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
> +	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
> +	unsigned int i = adc->nconv;
> +	s32 *ptr = buffer;
> +
> +	while (i--) {
> +		/* Mask 8 LSB that contains the channel ID */
> +		*ptr &= 0xFFFFFF00;
> +		/* Convert 2^(n-1) sample to 2^(n-1)-1 to avoid wrap-around */
> +		if (*ptr > flo->max)
> +			*ptr -= 1;
> +		/*
> +		 * Samples from filter are retrieved with 23 bits resolution
> +		 * or less. Shift left to align MSB on 24 bits.
> +		 */
> +		*ptr <<= flo->lshift;
> +
> +		ptr++;
> +	}
> +}
> +
>  static irqreturn_t stm32_dfsdm_adc_trigger_handler(int irq, void *p)
>  {
>  	struct iio_poll_func *pf = p;
> @@ -787,7 +811,9 @@ static irqreturn_t stm32_dfsdm_adc_trigger_handler(int irq, void *p)
>  	int available = stm32_dfsdm_adc_dma_residue(adc);
>  
>  	while (available >= indio_dev->scan_bytes) {
> -		u32 *buffer = (u32 *)&adc->rx_buf[adc->bufi];
> +		s32 *buffer = (s32 *)&adc->rx_buf[adc->bufi];
> +
> +		stm32_dfsdm_process_data(adc, buffer);
>  
>  		iio_push_to_buffers_with_timestamp(indio_dev, buffer,
>  						   pf->timestamp);
> @@ -806,8 +832,6 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
>  {
>  	struct iio_dev *indio_dev = data;
>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
> -	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
> -	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
>  	int available = stm32_dfsdm_adc_dma_residue(adc);
>  	size_t old_pos;
>  
> @@ -832,16 +856,7 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
>  	while (available >= indio_dev->scan_bytes) {
>  		s32 *buffer = (s32 *)&adc->rx_buf[adc->bufi];
>  
> -		/* Mask 8 LSB that contains the channel ID */
> -		*buffer &= 0xFFFFFF00;
> -		/* Convert 2^(n-1) sample to 2^(n-1)-1 to avoid wrap-around */
> -		if (*buffer > flo->max)
> -			*buffer -= 1;
> -		/*
> -		 * Samples from filter are retrieved with 23 bits resolution
> -		 * or less. Shift left to align MSB on 24 bits.
> -		 */
> -		*buffer <<= flo->lshift;
> +		stm32_dfsdm_process_data(adc, buffer);
>  
>  		available -= indio_dev->scan_bytes;
>  		adc->bufi += indio_dev->scan_bytes;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
