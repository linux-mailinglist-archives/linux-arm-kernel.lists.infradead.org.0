Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028AA9AB25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kDTwXwE5RmkO6SFLnGsC1y6JwVVrji8c0w9XYJ7WeZ0=; b=DpoGebIaCPUk8kb5NMcZ9HVOh
	14E0PtyuXEuHjm0cUCpWj+edlXb0dYVyZLFZCQs9FYwMrtFZDOmAzZMDKFG98BeXWxwJRVW1tebX4
	4yV7DpKd/dONWDgw44LHaNlQ/OHeB5jGZwhGDNX4C7dCrflrDvAsrJMgAGshSg12gru2jKUngm6I3
	n6ecQC2BtThzUeyuSXyl5B7eNwpHsRh19aD4tBecdL32cXQsLRrr0QA7ZpsC4o0x5lxRmj7tr5met
	Gx0VQwHR+3PYGtBuM33fDJPXp8xg+tG1JLj9VekiHMq92yqjaWESqYPVqhBrC17af8FSINyxwO2Fw
	C9uxVNxdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Zs-00058n-DA; Fri, 23 Aug 2019 09:09:48 +0000
Received: from smtpng2.m.smailru.net ([94.100.179.3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Zb-00058L-2i
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=nXK2D0TcC1nhX8n9bWUP8IEizetK3TCvGKOu8cukqU4=; 
 b=m+kjkDc1dQLEU3rpYMd70IyRkDMoN0pNWeg+bKJuw1u8gRwW4mIul3nli0kedjahpBn6pf4IGMt47uU4K6b2TMIbvckOH04yps3Cbc0Rs8qyEIndzJJ5D+hKlF49wTTJ3sxy4Pojhc0xdhYABuVF938ELhXFrhpPbX2PQ5XEGG0=;
Received: by smtpng2.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1i15ZT-0001ba-SE; Fri, 23 Aug 2019 12:09:24 +0300
Subject: Re: [PATCH 20/21] ASoC: sun4i-i2s: Add support for TDM slots
To: Maxime Ripard <mripard@kernel.org>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
 <26392af30b3e7b31ee48d5b867d45be8675db046.1566242458.git-series.maxime.ripard@bootlin.com>
 <c311e88a-fdd2-8a01-275e-675d98dc90ba@orpaltech.com>
 <20190821120551.r4b3h4nnet357wem@flea>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <606f8345-827c-e6e8-7cff-221b4b592eba@orpaltech.com>
Date: Fri, 23 Aug 2019 12:09:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821120551.r4b3h4nnet357wem@flea>
Content-Language: en-US
Authentication-Results: smtpng2.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-77F55803: 257C4F86AB09C89C5A78504BD2AC2941988784FC6C4AE31FFB04523ACB9590FAFF1072D5B91DFA916CB0DE5807FA22B3BA680126405A466E
X-7FA49CB5: 0D63561A33F958A5C7E4CF47E883CCF65960FDBDE3D08C9A25FE0D63A85EB8D88941B15DA834481FA18204E546F3947CEDCF5861DED71B2F389733CBF5DBD5E9C8A9BA7A39EFB7666BA297DBC24807EA117882F44604297287769387670735209ECD01F8117BC8BEA471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E735F0CA3639F44440439F6CB68E6F63A0CD731C566533BA786A40A5AABA2AD371193C9F3DD0FB1AF5EB38286209DE2710BF3C9F3DD0FB1AF5EB4E70A05D1297E1BBCB5012B2E24CD356
X-Mailru-Sender: 689FA8AB762F739303AC06854B75154566D093553CD66664EC06F020B2E840B7778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: OK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020931_309349_844C5A52 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.179.3 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, codekipper@gmail.com,
 Chen-Yu Tsai <wens@csie.org>, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Maxime,

On 8/21/19 3:05 PM, Maxime Ripard wrote:
> Hi,
>
> On Tue, Aug 20, 2019 at 08:46:30AM +0300, Sergey Suloev wrote:
>> Hi, Maxime,
>>
>> On 8/19/19 10:25 PM, Maxime Ripard wrote:
>>> From: Maxime Ripard <maxime.ripard@bootlin.com>
>>>
>>> The i2s controller supports TDM, for up to 8 slots. Let's support the TDM
>>> API.
>>>
>>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>>> ---
>>>    sound/soc/sunxi/sun4i-i2s.c | 40 ++++++++++++++++++++++++++++++++------
>>>    1 file changed, 34 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
>>> index 0dac09814b65..4f76daeaaed7 100644
>>> --- a/sound/soc/sunxi/sun4i-i2s.c
>>> +++ b/sound/soc/sunxi/sun4i-i2s.c
>>> @@ -168,6 +168,8 @@ struct sun4i_i2s {
>>>    	struct reset_control *rst;
>>>    	unsigned int	mclk_freq;
>>> +	unsigned int	slots;
>>> +	unsigned int	slot_width;
>>>    	struct snd_dmaengine_dai_dma_data	capture_dma_data;
>>>    	struct snd_dmaengine_dai_dma_data	playback_dma_data;
>>> @@ -287,7 +289,7 @@ static bool sun4i_i2s_oversample_is_valid(unsigned int oversample)
>>>    static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
>>>    				  unsigned int rate,
>>> -				  unsigned int channels,
>>> +				  unsigned int slots,
>>>    				  unsigned int word_size)
>>>    {
>>>    	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
>>> @@ -335,7 +337,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
>>>    	bclk_parent_rate = i2s->variant->get_bclk_parent_rate(i2s);
>>>    	bclk_div = sun4i_i2s_get_bclk_div(i2s, bclk_parent_rate,
>>> -					  rate, channels, word_size);
>>> +					  rate, slots, word_size);
>>>    	if (bclk_div < 0) {
>>>    		dev_err(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
>>>    		return -EINVAL;
>>> @@ -419,6 +421,10 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
>>>    				  const struct snd_pcm_hw_params *params)
>>>    {
>>>    	unsigned int channels = params_channels(params);
>>> +	unsigned int slots = channels;
>>> +
>>> +	if (i2s->slots)
>>> +		slots = i2s->slots;
>>>    	/* Map the channels for playback and capture */
>>>    	regmap_write(i2s->regmap, SUN8I_I2S_TX_CHAN_MAP_REG, 0x76543210);
>>> @@ -428,7 +434,6 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
>>>    	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
>>>    			   SUN4I_I2S_CHAN_SEL_MASK,
>>>    			   SUN4I_I2S_CHAN_SEL(channels));
>>> -
>>>    	regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
>>>    			   SUN4I_I2S_CHAN_SEL_MASK,
>>>    			   SUN4I_I2S_CHAN_SEL(channels));
>>> @@ -452,10 +457,18 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>>>    			       struct snd_soc_dai *dai)
>>>    {
>>>    	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
>>> +	unsigned int word_size = params_width(params);
>>>    	unsigned int channels = params_channels(params);
>>> +	unsigned int slots = channels;
>>>    	int ret, sr, wss;
>>>    	u32 width;
>>> +	if (i2s->slots)
>>> +		slots = i2s->slots;
>>> +
>>> +	if (i2s->slot_width)
>>> +		word_size = i2s->slot_width;
>>> +
>>>    	ret = i2s->variant->set_chan_cfg(i2s, params);
>>>    	if (ret < 0) {
>>>    		dev_err(dai->dev, "Invalid channel configuration\n");
>>> @@ -477,15 +490,14 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>>>    	if (sr < 0)
>>>    		return -EINVAL;
>>> -	wss = i2s->variant->get_wss(i2s, params_width(params));
>>> +	wss = i2s->variant->get_wss(i2s, word_size);
>>>    	if (wss < 0)
>>>    		return -EINVAL;
>>>    	regmap_field_write(i2s->field_fmt_wss, wss);
>>>    	regmap_field_write(i2s->field_fmt_sr, sr);
>>> -	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
>>> -				      channels, params_width(params));
>>> +	return sun4i_i2s_set_clk_rate(dai, params_rate(params), slots, word_size);
>>>    }
>>>    static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
>>> @@ -785,10 +797,26 @@ static int sun4i_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
>>>    	return 0;
>>>    }
>>> +static int sun4i_i2s_set_tdm_slot(struct snd_soc_dai *dai,
>>> +				  unsigned int tx_mask, unsigned int rx_mask,
>>> +				  int slots, int slot_width)
>>> +{
>>> +	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
>>> +
>>> +	if (slots > 8)
>>> +		return -EINVAL;
>>> +
>>> +	i2s->slots = slots;
>>> +	i2s->slot_width = slot_width;
>>> +
>>> +	return 0;
>>> +}
>>> +
>>>    static const struct snd_soc_dai_ops sun4i_i2s_dai_ops = {
>>>    	.hw_params	= sun4i_i2s_hw_params,
>>>    	.set_fmt	= sun4i_i2s_set_fmt,
>>>    	.set_sysclk	= sun4i_i2s_set_sysclk,
>>> +	.set_tdm_slot	= sun4i_i2s_set_tdm_slot,
>>>    	.trigger	= sun4i_i2s_trigger,
>>>    };
>> it seems like you forgot to implement sun4i_i2s_dai_ops.set_bclk_ratio
>> because, as I far as I understand, it should alter tdm slots functionality
>> indirectly.
> As far as I can see, while this indeed changes a few things on the TDM
> setup, it's optional, orthogonal and it has a single user in the tree
> (some intel platform card).
>
> So I'd say that if someone ever needs it, we can have it, but it's not
> a blocker.

"orthogonal" meaning that one can achieve the same effect with using 
"sun4i_i2s_set_tdm_slot" instead of "set_bclk_ratio" ?

For example, for WM8731 codec in "non-USB" master mode should generate 
BCLK = 64 * FS, and I had to implement "set_bclk_ratio" in order to 
setup it. Note, that this is 100% mandatory condition for the code to 
operate in this mode.

Did you mean that now the correct way would be using 
"sun4i_i2s_set_tdm_slot" instead ?


Thank you


>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
