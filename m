Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EFBB9F47
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 20:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuVP7zMODMKhaX3HvfWx/EFXIuh5Pkxl3vB2S7R+GLc=; b=aANZaerxuxTx5r
	E0Gu3YxLrKy/qwRnDPK5/BasqvIKYjXqiODXRxAqD+SgE6hXbQVFY0RZmimg3MW3czus4JHLlwpY/
	KHRESh8l1lTs6WUVSL53z4YldbjD2El6TadLoVXUxRtkc+ocuCZPkH0FjX1Quhes49maHDe9r0Of0
	qx9CMJzVcuUuxkD7AtGmkVUyUt5OQbFu6PnTYbr2S/YgsPsT3MC2fmi1Y47+PG2Q99gExPnqsui2O
	PyCAKjF8h0aKE7cqlUTChnJTnc7TEmPYV41sspk0Wz9MAPKuyUztwzbhPtUTpgm0T5UxAjDXPzmf5
	kAQ+hkEV1X9VHLXJVV9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBjk1-000660-S7; Sat, 21 Sep 2019 18:04:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBjjn-00065g-2O
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 18:04:04 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3D712080F;
 Sat, 21 Sep 2019 18:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569089042;
 bh=lcwNAkt0bSGmxQUYfiV3LKK1DJcTTpWRR97v2btnNd0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qieHYtiyiwUf3OoA8NV3cFoZS2ffU0SOjTH3F+mfdQNpP59HjYjanyicgRydfmJPQ
 QSuq2zlniFlEbHAQNROm5uPoTvUNZv3qe6pit2fWQPPJA5ww1e/pql4M3m7msfK3hI
 z2pAopE8jcURhrQxTTff9aGvauqE9hS1Ho1Vf6tc=
Date: Sat, 21 Sep 2019 19:03:57 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: fix kernel-doc warnings
Message-ID: <20190921190357.7dc08c2d@archlinux>
In-Reply-To: <1568980206-5428-1-git-send-email-fabrice.gasnier@st.com>
References: <1568980206-5428-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_110403_156280_D2F86870 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 13:50:06 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Fix the following warnings when documentation is built:
> drivers/iio/adc/stm32-adc-core.c:62: warning: cannot understand function
>  prototype: 'struct stm32_adc_common_regs '
> drivers/iio/adc/stm32-adc-core.c:78: warning: cannot understand function
>  prototype: 'struct stm32_adc_priv_cfg '
> drivers/iio/adc/stm32-adc-core.c:123: warning: Function parameter or
>  member 'pdev' not described in 'stm32f4_adc_clk_sel'
> drivers/iio/adc/stm32-adc.c:219: warning: cannot understand function
>  prototype: 'struct stm32_adc_regs '
> drivers/iio/adc/stm32-adc.c:237: warning: cannot understand function
>  prototype: 'struct stm32_adc_regspec '
> drivers/iio/adc/stm32-adc.c:264: warning: cannot understand function
>  prototype: 'struct stm32_adc_cfg '
> drivers/iio/adc/stm32-adc.c:323: warning: Function parameter or member
>  'difsel' not described in 'N'
> drivers/iio/adc/stm32-adc.c:323: warning: Function parameter or member
>  'pcsel' not described in 'stm32_adc'
> drivers/iio/adc/stm32-adc.c:371: warning: cannot understand function
>  prototype: 'const struct stm32_adc_regs stm32f4_sq[STM32_ADC_MAX_SQ + 1]
> drivers/iio/adc/stm32-adc.c:417: warning: cannot understand function
>  prototype: 'const struct stm32_adc_regs stm32f4_smp_bits[] = '
> drivers/iio/adc/stm32-adc.c:508: warning: cannot understand function
>  prototype: 'const struct stm32_adc_regs stm32h7_smp_bits[] = '
> drivers/iio/adc/stm32-adc.c:1112: warning: Function parameter or member
>  'indio_dev' not described in 'stm32_adc_get_trig_extsel'
> drivers/iio/adc/stm32-adc.c:1420: warning: Function parameter or member
>  'indio_dev' not described in 'stm32_adc_debugfs_reg_access'
> drivers/iio/adc/stm32-adc.c:1420: warning: Function parameter or member
>  'reg' not described in 'stm32_adc_debugfs_reg_access'
> drivers/iio/adc/stm32-adc.c:1420: warning: Function parameter or member
>  'writeval' not described in 'stm32_adc_debugfs_reg_access'
> drivers/iio/adc/stm32-adc.c:1420: warning: Function parameter or member
>  'readval' not described in 'stm32_adc_debugfs_reg_access'
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

As I don't think we build these particular docs by default, I'm not going
to take this as a fix.  Hence it'll have to wait for the below to be
upstream of my togreg branch.

Give me a poke if that's true and I seem to have missed it.

Thanks,

Jonathan

> ---
> Note: this applies on top of "iio: adc: stm32-adc: fix a race when using
> several adcs with dma and irq"
> ---
>  drivers/iio/adc/stm32-adc-core.c | 11 ++++++-----
>  drivers/iio/adc/stm32-adc.c      | 21 +++++++++++++--------
>  2 files changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 93a096a..20c626c 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -38,12 +38,12 @@
>  #define HAS_ANASWVDD		BIT(1)
>  
>  /**
> - * stm32_adc_common_regs - stm32 common registers, compatible dependent data
> + * struct stm32_adc_common_regs - stm32 common registers
>   * @csr:	common status register offset
>   * @ccr:	common control register offset
> - * @eoc1:	adc1 end of conversion flag in @csr
> - * @eoc2:	adc2 end of conversion flag in @csr
> - * @eoc3:	adc3 end of conversion flag in @csr
> + * @eoc1_msk:	adc1 end of conversion flag in @csr
> + * @eoc2_msk:	adc2 end of conversion flag in @csr
> + * @eoc3_msk:	adc3 end of conversion flag in @csr
>   * @ier:	interrupt enable register offset for each adc
>   * @eocie_msk:	end of conversion interrupt enable mask in @ier
>   */
> @@ -60,7 +60,7 @@ struct stm32_adc_common_regs {
>  struct stm32_adc_priv;
>  
>  /**
> - * stm32_adc_priv_cfg - stm32 core compatible configuration data
> + * struct stm32_adc_priv_cfg - stm32 core compatible configuration data
>   * @regs:	common registers for all instances
>   * @clk_sel:	clock selection routine
>   * @max_clk_rate_hz: maximum analog clock rate (Hz, from datasheet)
> @@ -117,6 +117,7 @@ static int stm32f4_pclk_div[] = {2, 4, 6, 8};
>  
>  /**
>   * stm32f4_adc_clk_sel() - Select stm32f4 ADC common clock prescaler
> + * @pdev: platform device
>   * @priv: stm32 ADC core private data
>   * Select clock prescaler used for analog conversions, before using ADC.
>   */
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 663f8a5..76a247b 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -102,7 +102,7 @@ struct stm32_adc_calib {
>  };
>  
>  /**
> - * stm32_adc_regs - stm32 ADC misc registers & bitfield desc
> + * struct stm32_adc_regs - stm32 ADC misc registers & bitfield desc
>   * @reg:		register offset
>   * @mask:		bitfield mask
>   * @shift:		left shift
> @@ -114,7 +114,7 @@ struct stm32_adc_regs {
>  };
>  
>  /**
> - * stm32_adc_regspec - stm32 registers definition, compatible dependent data
> + * struct stm32_adc_regspec - stm32 registers definition
>   * @dr:			data register offset
>   * @ier_eoc:		interrupt enable register & eocie bitfield
>   * @isr_eoc:		interrupt status register & eoc bitfield
> @@ -140,7 +140,7 @@ struct stm32_adc_regspec {
>  struct stm32_adc;
>  
>  /**
> - * stm32_adc_cfg - stm32 compatible configuration data
> + * struct stm32_adc_cfg - stm32 compatible configuration data
>   * @regs:		registers descriptions
>   * @adc_info:		per instance input channels definitions
>   * @trigs:		external trigger sources
> @@ -183,8 +183,8 @@ struct stm32_adc_cfg {
>   * @rx_buf:		dma rx buffer cpu address
>   * @rx_dma_buf:		dma rx buffer bus address
>   * @rx_buf_sz:		dma rx buffer size
> - * @difsel		bitmask to set single-ended/differential channel
> - * @pcsel		bitmask to preselect channels on some devices
> + * @difsel:		bitmask to set single-ended/differential channel
> + * @pcsel:		bitmask to preselect channels on some devices
>   * @smpr_val:		sampling time settings (e.g. smpr1 / smpr2)
>   * @cal:		optional calibration data on some devices
>   * @chan_name:		channel name array
> @@ -254,7 +254,7 @@ static const struct stm32_adc_info stm32h7_adc_info = {
>  	.num_res = ARRAY_SIZE(stm32h7_adc_resolutions),
>  };
>  
> -/**
> +/*
>   * stm32f4_sq - describe regular sequence registers
>   * - L: sequence len (register & bit field)
>   * - SQ1..SQ16: sequence entries (register & bit field)
> @@ -301,7 +301,7 @@ static struct stm32_adc_trig_info stm32f4_adc_trigs[] = {
>  	{}, /* sentinel */
>  };
>  
> -/**
> +/*
>   * stm32f4_smp_bits[] - describe sampling time register index & bit fields
>   * Sorted so it can be indexed by channel number.
>   */
> @@ -392,7 +392,7 @@ static struct stm32_adc_trig_info stm32h7_adc_trigs[] = {
>  	{},
>  };
>  
> -/**
> +/*
>   * stm32h7_smp_bits - describe sampling time register index & bit fields
>   * Sorted so it can be indexed by channel number.
>   */
> @@ -994,6 +994,7 @@ static int stm32_adc_conf_scan_seq(struct iio_dev *indio_dev,
>  
>  /**
>   * stm32_adc_get_trig_extsel() - Get external trigger selection
> + * @indio_dev: IIO device structure
>   * @trig: trigger
>   *
>   * Returns trigger extsel value, if trig matches, -EINVAL otherwise.
> @@ -1297,6 +1298,10 @@ static int stm32_adc_of_xlate(struct iio_dev *indio_dev,
>  
>  /**
>   * stm32_adc_debugfs_reg_access - read or write register value
> + * @indio_dev: IIO device structure
> + * @reg: register offset
> + * @writeval: value to write
> + * @readval: value to read
>   *
>   * To read a value from an ADC register:
>   *   echo [ADC reg offset] > direct_reg_access


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
