Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549C4194DF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 01:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Subject:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Rga677xBufAw5X4tir4y5KG5c2ab2yU5ptog1i4KGc=; b=M0+deGM43iQHB3VQJeFg1WX1l
	KgeLg/5e1uD6PuUCYL88CDDhjC0ib5gAC8/EqT9WCRmPrnJVQhExSk1x5wvgRanuNk4dIFsQ/tNNW
	nnUsPVTkscwXX+IKF7fX/ObgC1xeNOaAQ51N4pyWeTOgXwYYJES0FTnqfqsNYSKo3zWK75wHwc8yu
	iB4x6Fw9YSETOgTWiNY++DsBZK+4JDdK5RiYisTJVKY/eRQzIj5o3tNnLqEB5g72x2m2MWqVhJGlq
	pDu9fxD0HHGA1EB2AnB+b3H62E06DBJ1plWm1YqirCeMFlS+dOLHZ042ADWDsZ7s5Gu167rq6FEYD
	HoTN0L/cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHcni-0005ia-6O; Fri, 27 Mar 2020 00:24:42 +0000
Received: from mx.flatmax.org ([13.55.16.222])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHcna-0005i7-PU; Fri, 27 Mar 2020 00:24:36 +0000
Received: from 41.68.233.220.static.exetel.com.au ([220.233.68.41]
 helo=[192.168.1.51])
 by mx.flatmax.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <flatmax@flatmax.org>)
 id 1jHcMl-0007WX-6U; Fri, 27 Mar 2020 10:56:51 +1100
Subject: Re: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent in
 hwparams
References: <20200324090823.20754-1-flatmax@flatmax.org>
From: Matt Flax <flatmax@flatmax.org>
Message-ID: <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
Date: Fri, 27 Mar 2020 10:56:50 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200324090823.20754-1-flatmax@flatmax.org>
Content-Language: en-US
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "mx.flatmax.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Should this patch be handled through the ALSA team the R.
 Pi team or the BCM team ? thanks Matt 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flatmax.org]
 1.0 MISSING_HEADERS        Missing To: header
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_172434_971409_7943D4CC 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, alsa-devel@alsa-project.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Should this patch be handled through the ALSA team the R. Pi team or the 
BCM team ?


thanks

Matt

On 24/3/20 8:08 pm, Matt Flax wrote:
> Substream sample alignment was being set in hwparams for both
> substreams at the same time. This became a problem when	the Audio
> Injector isolated sound card needed to offset sample alignment
> for high sample	rates. The latency difference between playback
> and capture occurs because of the digital isolation chip
> propagation time, particularly when the codec is master and
> the DAC return is twice delayed.
>
> This patch sets sample alignment registers  based on the substream
> direction in hwparams. This gives the machine driver more control
> over sample alignment in the bcm2835 i2s driver.
>
> Signed-off-by: Matt Flax <flatmax@flatmax.org>
> ---
>   sound/soc/bcm/bcm2835-i2s.c | 36 +++++++++++++++++++-----------------
>   1 file changed, 19 insertions(+), 17 deletions(-)
>
> diff --git a/sound/soc/bcm/bcm2835-i2s.c b/sound/soc/bcm/bcm2835-i2s.c
> index e6a12e271b07..9db542699a13 100644
> --- a/sound/soc/bcm/bcm2835-i2s.c
> +++ b/sound/soc/bcm/bcm2835-i2s.c
> @@ -493,11 +493,6 @@ static int bcm2835_i2s_hw_params(struct snd_pcm_substream *substream,
>   		return -EINVAL;
>   	}
>   
> -	bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_ch2_pos,
> -		rx_mask, slot_width, data_delay, odd_slot_offset);
> -	bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_pos,
> -		tx_mask, slot_width, data_delay, odd_slot_offset);
> -
>   	/*
>   	 * Transmitting data immediately after frame start, eg
>   	 * in left-justified or DSP mode A, only works stable
> @@ -508,19 +503,26 @@ static int bcm2835_i2s_hw_params(struct snd_pcm_substream *substream,
>   			"Unstable slave config detected, L/R may be swapped");
>   
>   	/*
> -	 * Set format for both streams.
> -	 * We cannot set another frame length
> -	 * (and therefore word length) anyway,
> -	 * so the format will be the same.
> +	 * Set format on a per stream basis.
> +	 * The alignment format can be different depending on direction.
>   	 */
> -	regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_REG,
> -		  format
> -		| BCM2835_I2S_CH1_POS(rx_ch1_pos)
> -		| BCM2835_I2S_CH2_POS(rx_ch2_pos));
> -	regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_REG,
> -		  format
> -		| BCM2835_I2S_CH1_POS(tx_ch1_pos)
> -		| BCM2835_I2S_CH2_POS(tx_ch2_pos));
> +	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
> +		bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_ch2_pos,
> +			rx_mask, slot_width, data_delay, odd_slot_offset);
> +		regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_REG,
> +			  format
> +			| BCM2835_I2S_CH1_POS(rx_ch1_pos)
> +			| BCM2835_I2S_CH2_POS(rx_ch2_pos));
> +	}
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> +		bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_pos,
> +			tx_mask, slot_width, data_delay, odd_slot_offset);
> +		regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_REG,
> +			  format
> +			| BCM2835_I2S_CH1_POS(tx_ch1_pos)
> +			| BCM2835_I2S_CH2_POS(tx_ch2_pos));
> +	}
>   
>   	/* Setup the I2S mode */
>   

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
