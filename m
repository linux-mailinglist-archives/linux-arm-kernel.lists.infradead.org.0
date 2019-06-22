Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D6C4F4A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 11:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUpRH/IHQD7KGZyAGnlQTHoK9/DLn9P3ZCOcldxGH4s=; b=bQtj86f2pKU1UA
	7cbGFYQFBwvrXsQGX0OD+m84MdAUo/q65sxngd2zLbMhp/kRu54asfFoW/5Cw8P4Vw8rwNR+sEABQ
	hKHpO933zt3nelyuvLE7EjMMpWKLEOkJmJaM0uoVmaPOG1uB8JkPhLmdLaJvVZx3jY3t3HWZ/PSmU
	lGTn3Fgg1ZjAN9+vUQnwnd29QBJoLwufXeNkZ5qf4Yp8DgRCNWZBiuMvOzi9raR1ZhDcjMlINNATj
	/mEUQ79K+CgE4uGYbGzdaiwZT9EOenj6wPrT+Hkw4oUKM7jgWd+SVvqKo6p9pwwBUmD9pkgYM5zo7
	YnXwzpY9yRBNF8lwWhAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecAz-0006HA-Go; Sat, 22 Jun 2019 09:19:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecAq-0006Gf-Ow
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 09:19:06 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC5ED205F4;
 Sat, 22 Jun 2019 09:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561195144;
 bh=x4xOdESXRxmqb5RQT+U91smwsJH2g5aBGIhfM6soSd0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UYgI9HnrvLQrMVKgt+f5LvhIKjzP6UVoLtkkpQmhcGGqvJkt0ZFbBAbjtnSV4EB7M
 bdakMWuOtilTYhMLrkXOvIdsYOtvywWKoWoGp5ieJpor+LdGXkcrk4KQqLKB5qZGnl
 yF1bDufCrGmOGlVwktaWrWqIeCAO3wkAsMdbpzGI=
Date: Sat, 22 Jun 2019 10:18:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH 1/5] iio: adc: stm32-dfsdm: fix output resolution
Message-ID: <20190622101858.3a6d916a@archlinux>
In-Reply-To: <1560949431-22948-2-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
 <1560949431-22948-2-git-send-email-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_021904_850704_3C74CE5A 
X-CRM114-Status: GOOD (  27.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

On Wed, 19 Jun 2019 15:03:47 +0200
Olivier Moysan <olivier.moysan@st.com> wrote:

> In buffered mode, output samples are shifted left
> unconditionally. This works for filter order 3,
> but this shift is not adapted for other filter orders.
> Compute required shift, left or right, and shift
> output data accordingly.
> Add also saturation management to avoid wrap-around
> when maximum positive sample is reached.
> 
> Fixes: eca949800d2d ("IIO: ADC: add stm32 DFSDM support for PDM microphone")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Hi Olivier,

I'm going to take this the 'slow way' for two reasons.
1) We are late in a cycle so I'm not keen on sending things upstream until
   the merge window (unless they are very urgent!)
2) This is large and invasive.  If we want to think about backporting this
   to stable kernels, we may want to see if there is a simpler way of making it
   not broken, perhaps at the cost of functionality.

Anyhow, with that note, applied to the togreg branch of iio.git and pushed
out as testing for the autobuilders to play with it.

thanks,

Jonathan
	
> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 158 +++++++++++++++++++++++++++++---------
>  drivers/iio/adc/stm32-dfsdm.h     |  24 ++++--
>  2 files changed, 142 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index 588907cc3b6b..cb596f104919 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -39,9 +39,16 @@
>  #define DFSDM_MAX_INT_OVERSAMPLING 256
>  #define DFSDM_MAX_FL_OVERSAMPLING 1024
>  
> -/* Max sample resolutions */
> -#define DFSDM_MAX_RES BIT(31)
> -#define DFSDM_DATA_RES BIT(23)
> +/* Limit filter output resolution to 31 bits. (i.e. sample range is +/-2^30) */
> +#define DFSDM_DATA_MAX BIT(30)
> +/*
> + * Data are output as two's complement data in a 24 bit field.
> + * Data from filters are in the range +/-2^(n-1)
> + * 2^(n-1) maximum positive value cannot be coded in 2's complement n bits
> + * An extra bit is required to avoid wrap-around of the binary code for 2^(n-1)
> + * So, the resolution of samples from filter is actually limited to 23 bits
> + */
> +#define DFSDM_DATA_RES 24
>  
>  /* Filter configuration */
>  #define DFSDM_CR1_CFG_MASK (DFSDM_CR1_RCH_MASK | DFSDM_CR1_RCONT_MASK | \
> @@ -181,14 +188,15 @@ static int stm32_dfsdm_get_jextsel(struct iio_dev *indio_dev,
>  	return -EINVAL;
>  }
>  
> -static int stm32_dfsdm_set_osrs(struct stm32_dfsdm_filter *fl,
> -				unsigned int fast, unsigned int oversamp)
> +static int stm32_dfsdm_compute_osrs(struct stm32_dfsdm_filter *fl,
> +				    unsigned int fast, unsigned int oversamp)
>  {
>  	unsigned int i, d, fosr, iosr;
> -	u64 res;
> -	s64 delta;
> +	u64 res, max;
> +	int bits, shift;
>  	unsigned int m = 1;	/* multiplication factor */
>  	unsigned int p = fl->ford;	/* filter order (ford) */
> +	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
>  
>  	pr_debug("%s: Requested oversampling: %d\n",  __func__, oversamp);
>  	/*
> @@ -207,11 +215,9 @@ static int stm32_dfsdm_set_osrs(struct stm32_dfsdm_filter *fl,
>  
>  	/*
>  	 * Look for filter and integrator oversampling ratios which allows
> -	 * to reach 24 bits data output resolution.
> -	 * Leave as soon as if exact resolution if reached.
> -	 * Otherwise the higher resolution below 32 bits is kept.
> +	 * to maximize data output resolution.
>  	 */
> -	fl->res = 0;
> +	flo->res = 0;
>  	for (fosr = 1; fosr <= DFSDM_MAX_FL_OVERSAMPLING; fosr++) {
>  		for (iosr = 1; iosr <= DFSDM_MAX_INT_OVERSAMPLING; iosr++) {
>  			if (fast)
> @@ -236,32 +242,68 @@ static int stm32_dfsdm_set_osrs(struct stm32_dfsdm_filter *fl,
>  			res = fosr;
>  			for (i = p - 1; i > 0; i--) {
>  				res = res * (u64)fosr;
> -				if (res > DFSDM_MAX_RES)
> +				if (res > DFSDM_DATA_MAX)
>  					break;
>  			}
> -			if (res > DFSDM_MAX_RES)
> +			if (res > DFSDM_DATA_MAX)
>  				continue;
> +
>  			res = res * (u64)m * (u64)iosr;
> -			if (res > DFSDM_MAX_RES)
> +			if (res > DFSDM_DATA_MAX)
>  				continue;
>  
> -			delta = res - DFSDM_DATA_RES;
> -
> -			if (res >= fl->res) {
> -				fl->res = res;
> -				fl->fosr = fosr;
> -				fl->iosr = iosr;
> -				fl->fast = fast;
> -				pr_debug("%s: fosr = %d, iosr = %d\n",
> -					 __func__, fl->fosr, fl->iosr);
> +			if (res >= flo->res) {
> +				flo->res = res;
> +				flo->fosr = fosr;
> +				flo->iosr = iosr;
> +
> +				bits = fls(flo->res);
> +				/* 8 LBSs in data register contain chan info */
> +				max = flo->res << 8;
> +
> +				/* if resolution is not a power of two */
> +				if (flo->res > BIT(bits - 1))
> +					bits++;
> +				else
> +					max--;
> +
> +				shift = DFSDM_DATA_RES - bits;
> +				/*
> +				 * Compute right/left shift
> +				 * Right shift is performed by hardware
> +				 * when transferring samples to data register.
> +				 * Left shift is done by software on buffer
> +				 */
> +				if (shift > 0) {
> +					/* Resolution is lower than 24 bits */
> +					flo->rshift = 0;
> +					flo->lshift = shift;
> +				} else {
> +					/*
> +					 * If resolution is 24 bits or more,
> +					 * max positive value may be ambiguous
> +					 * (equal to max negative value as sign
> +					 * bit is dropped).
> +					 * Reduce resolution to 23 bits (rshift)
> +					 * to keep the sign on bit 23 and treat
> +					 * saturation before rescaling on 24
> +					 * bits (lshift).
> +					 */
> +					flo->rshift = 1 - shift;
> +					flo->lshift = 1;
> +					max >>= flo->rshift;
> +				}
> +				flo->max = (s32)max;
> +
> +				pr_debug("%s: fast %d, fosr %d, iosr %d, res 0x%llx/%d bits, rshift %d, lshift %d\n",
> +					 __func__, fast, flo->fosr, flo->iosr,
> +					 flo->res, bits, flo->rshift,
> +					 flo->lshift);
>  			}
> -
> -			if (!delta)
> -				return 0;
>  		}
>  	}
>  
> -	if (!fl->res)
> +	if (!flo->res)
>  		return -EINVAL;
>  
>  	return 0;
> @@ -384,6 +426,36 @@ static int stm32_dfsdm_filter_set_trig(struct stm32_dfsdm_adc *adc,
>  	return 0;
>  }
>  
> +static int stm32_dfsdm_channels_configure(struct stm32_dfsdm_adc *adc,
> +					  unsigned int fl_id,
> +					  struct iio_trigger *trig)
> +{
> +	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct regmap *regmap = adc->dfsdm->regmap;
> +	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[fl_id];
> +	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
> +	const struct iio_chan_spec *chan;
> +	unsigned int bit;
> +	int ret;
> +
> +	if (!flo->res)
> +		return -EINVAL;
> +
> +	for_each_set_bit(bit, &adc->smask,
> +			 sizeof(adc->smask) * BITS_PER_BYTE) {
> +		chan = indio_dev->channels + bit;
> +
> +		ret = regmap_update_bits(regmap,
> +					 DFSDM_CHCFGR2(chan->channel),
> +					 DFSDM_CHCFGR2_DTRBS_MASK,
> +					 DFSDM_CHCFGR2_DTRBS(flo->rshift));
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int stm32_dfsdm_filter_configure(struct stm32_dfsdm_adc *adc,
>  					unsigned int fl_id,
>  					struct iio_trigger *trig)
> @@ -391,6 +463,7 @@ static int stm32_dfsdm_filter_configure(struct stm32_dfsdm_adc *adc,
>  	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
>  	struct regmap *regmap = adc->dfsdm->regmap;
>  	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[fl_id];
> +	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
>  	u32 cr1;
>  	const struct iio_chan_spec *chan;
>  	unsigned int bit, jchg = 0;
> @@ -398,13 +471,13 @@ static int stm32_dfsdm_filter_configure(struct stm32_dfsdm_adc *adc,
>  
>  	/* Average integrator oversampling */
>  	ret = regmap_update_bits(regmap, DFSDM_FCR(fl_id), DFSDM_FCR_IOSR_MASK,
> -				 DFSDM_FCR_IOSR(fl->iosr - 1));
> +				 DFSDM_FCR_IOSR(flo->iosr - 1));
>  	if (ret)
>  		return ret;
>  
>  	/* Filter order and Oversampling */
>  	ret = regmap_update_bits(regmap, DFSDM_FCR(fl_id), DFSDM_FCR_FOSR_MASK,
> -				 DFSDM_FCR_FOSR(fl->fosr - 1));
> +				 DFSDM_FCR_FOSR(flo->fosr - 1));
>  	if (ret)
>  		return ret;
>  
> @@ -573,7 +646,7 @@ static int dfsdm_adc_set_samp_freq(struct iio_dev *indio_dev,
>  			"Rate not accurate. requested (%u), actual (%u)\n",
>  			sample_freq, spi_freq / oversamp);
>  
> -	ret = stm32_dfsdm_set_osrs(fl, 0, oversamp);
> +	ret = stm32_dfsdm_compute_osrs(fl, 0, oversamp);
>  	if (ret < 0) {
>  		dev_err(&indio_dev->dev, "No filter parameters that match!\n");
>  		return ret;
> @@ -623,6 +696,10 @@ static int stm32_dfsdm_start_conv(struct stm32_dfsdm_adc *adc,
>  	struct regmap *regmap = adc->dfsdm->regmap;
>  	int ret;
>  
> +	ret = stm32_dfsdm_channels_configure(adc, adc->fl_id, trig);
> +	if (ret < 0)
> +		return ret;
> +
>  	ret = stm32_dfsdm_start_channel(adc);
>  	if (ret < 0)
>  		return ret;
> @@ -729,6 +806,8 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
>  {
>  	struct iio_dev *indio_dev = data;
>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
> +	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
> +	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
>  	int available = stm32_dfsdm_adc_dma_residue(adc);
>  	size_t old_pos;
>  
> @@ -751,10 +830,19 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
>  	old_pos = adc->bufi;
>  
>  	while (available >= indio_dev->scan_bytes) {
> -		u32 *buffer = (u32 *)&adc->rx_buf[adc->bufi];
> +		s32 *buffer = (s32 *)&adc->rx_buf[adc->bufi];
>  
>  		/* Mask 8 LSB that contains the channel ID */
> -		*buffer = (*buffer & 0xFFFFFF00) << 8;
> +		*buffer &= 0xFFFFFF00;
> +		/* Convert 2^(n-1) sample to 2^(n-1)-1 to avoid wrap-around */
> +		if (*buffer > flo->max)
> +			*buffer -= 1;
> +		/*
> +		 * Samples from filter are retrieved with 23 bits resolution
> +		 * or less. Shift left to align MSB on 24 bits.
> +		 */
> +		*buffer <<= flo->lshift;
> +
>  		available -= indio_dev->scan_bytes;
>  		adc->bufi += indio_dev->scan_bytes;
>  		if (adc->bufi >= adc->buf_sz) {
> @@ -1078,7 +1166,7 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
>  		ret = iio_device_claim_direct_mode(indio_dev);
>  		if (ret)
>  			return ret;
> -		ret = stm32_dfsdm_set_osrs(fl, 0, val);
> +		ret = stm32_dfsdm_compute_osrs(fl, 0, val);
>  		if (!ret)
>  			adc->oversamp = val;
>  		iio_device_release_direct_mode(indio_dev);
> @@ -1327,8 +1415,8 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
>  	int ret, chan_idx;
>  
>  	adc->oversamp = DFSDM_DEFAULT_OVERSAMPLING;
> -	ret = stm32_dfsdm_set_osrs(&adc->dfsdm->fl_list[adc->fl_id], 0,
> -				   adc->oversamp);
> +	ret = stm32_dfsdm_compute_osrs(&adc->dfsdm->fl_list[adc->fl_id], 0,
> +				       adc->oversamp);
>  	if (ret < 0)
>  		return ret;
>  
> diff --git a/drivers/iio/adc/stm32-dfsdm.h b/drivers/iio/adc/stm32-dfsdm.h
> index 8708394b0725..18b06ee6ed7b 100644
> --- a/drivers/iio/adc/stm32-dfsdm.h
> +++ b/drivers/iio/adc/stm32-dfsdm.h
> @@ -243,19 +243,33 @@ enum stm32_dfsdm_sinc_order {
>  };
>  
>  /**
> - * struct stm32_dfsdm_filter - structure relative to stm32 FDSDM filter
> + * struct stm32_dfsdm_filter_osr - DFSDM filter settings linked to oversampling
>   * @iosr: integrator oversampling
>   * @fosr: filter oversampling
> - * @ford: filter order
> + * @rshift: output sample right shift (hardware shift)
> + * @lshift: output sample left shift (software shift)
>   * @res: output sample resolution
> + * @max: output sample maximum positive value
> + */
> +struct stm32_dfsdm_filter_osr {
> +	unsigned int iosr;
> +	unsigned int fosr;
> +	unsigned int rshift;
> +	unsigned int lshift;
> +	u64 res;
> +	s32 max;
> +};
> +
> +/**
> + * struct stm32_dfsdm_filter - structure relative to stm32 FDSDM filter
> + * @ford: filter order
> + * @flo: filter oversampling structure
>   * @sync_mode: filter synchronized with filter 0
>   * @fast: filter fast mode
>   */
>  struct stm32_dfsdm_filter {
> -	unsigned int iosr;
> -	unsigned int fosr;
>  	enum stm32_dfsdm_sinc_order ford;
> -	u64 res;
> +	struct stm32_dfsdm_filter_osr flo;
>  	unsigned int sync_mode;
>  	unsigned int fast;
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
