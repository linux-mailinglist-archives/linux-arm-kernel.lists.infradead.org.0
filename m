Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4558017C8A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mx+KsNTUnF7Bqq990XnrDPJ1CqACCrEC7CWpx8E1g/I=; b=namdumCsSDYTwF
	JFCdnvolmCkhsONknb+fmVRc1ICuCdZrpvAfN/Vi/uJ5GhYfe6WGbS0I7Xr36H5Tm/SMdDYqyyUlO
	4zf1wQB36ibBzKRe/cibDMZiZZdy17ZJ3s26DS6nHEMYrMS902SgGpiVrr5KgrV8nSzQ1MME8nizI
	hw3Ci1N1Ya/PGeFwxRNoSNSQCxomz6bo9d6s3ukK7j2CGioTMN6RsN13cjPdwIQsdgBBRYdR0OrhC
	xktiYoTglMrQEJdS4XpbKIPo3v3TicLaOYOhqzIQTPhuDa50iyJkpUUPyhO91vT33YWeX9EcWFya9
	G/pE0gAG/VmnOL+cyXGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALzX-0000Yy-NL; Fri, 06 Mar 2020 23:02:51 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jALzQ-0000YV-4S
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:02:45 +0000
Received: by mail-ed1-x542.google.com with SMTP id g19so4355998eds.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 15:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pXwY9kZsDr2SZGX5k1OX7n8vFsAeKymBZXMokmmHvgE=;
 b=R4J4lHYv//4yEzHWU/RG0e4PhJW4aOW0ZJg0M5AAnvn5ZAlepi40bORyC83hUv6f96
 9+wNu8NN/xkjl81diF3vVYkkIX6bNbTQLKkpXM9mPx+BBlNJikcZb8qu0R/kxMmW0MBf
 q9u486WaFnItX9wU5vT6IJjDfXm12WgKWdAZLV+7kKIN+ExBIKd6MBkihEyZYurWwkjN
 h+p+8i7MrfQTxAE7aDUIxbYJCG2UGjAA+A2d3r+FSIFqdCsGQjmAQaQAgobxJfqWiK27
 7gvqVk9/c8jFvm1/26fQl+kO3+1JO5IJEB48Zo7JlooC7zqRoqBeacaN8SPes1BD5Doe
 6uiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=pXwY9kZsDr2SZGX5k1OX7n8vFsAeKymBZXMokmmHvgE=;
 b=O0xe+WiTvIUHUA4N6l7zTg1t/MHrfbGPiVscC0HyPqhf3oXHZ1azel2f3DVNHMfch3
 1Azz4SNsnekYxR4stgY4kyUQcmIHOQA53AUFF0eVYmCaXKMNadEnGAHs6TncPmy9DUYW
 0nXgNcG+XsafN9/WdhY8QPrBlrEWZb8H6l4I7kpRGjpYE5NGIsvm7AcxBbvg+gzNdpoY
 Uf91YaMKDl/MCAFCr7fBamnGvWyuyuxpoKg5yEsVcgsS18GSgQktjo0oebaUQXBOjGco
 MXeAHtu2gQjc9eAfv/yfHHQWFqUvJkhAitg6NuR+gt4ZWxjM1EpBvT7saPRVnzlk/kBY
 RgfA==
X-Gm-Message-State: ANhLgQ0+Ufu5DPw+di9r0sAKSYcfUNKHWmPBGOmkY7zSYyo3sfkohyXw
 8btQyThgYQBoIdTFg/NVWIqTQbT+
X-Google-Smtp-Source: ADFU+vurlvAjqQ4Okdwipjm4AfN/rPfObofn8pUkaEGeNw/iU54P0LffU21JL45PA9wcd1dQWha+OA==
X-Received: by 2002:a05:6402:95b:: with SMTP id
 h27mr5679209edz.114.1583535759799; 
 Fri, 06 Mar 2020 15:02:39 -0800 (PST)
Received: from [10.67.48.239] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id i15sm1636107ejh.56.2020.03.06.15.02.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 15:02:38 -0800 (PST)
Subject: Re: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
To: Kevin Li <kevin-ke.li@broadcom.com>, Mark Brown <broonie@kernel.org>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <8d4fc59e-f892-7228-4369-f40ced5dc2d3@gmail.com>
 <31b665e609f3cfee935f4489a073af21@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <26805c24-7339-d9c9-269c-d6c027a891d1@gmail.com>
Date: Fri, 6 Mar 2020 15:02:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <31b665e609f3cfee935f4489a073af21@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_150244_177653_147526F3 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Stephen Boyd <swboyd@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/6/20 2:50 PM, Kevin Li wrote:
> Hi Florian,
> 
> It is called from bcm63xx-i2s-whistler.c.
> Maybe the name "_probe" function confused. It was 2 platform drivers, I
> combined them together now.
> 
> Let me know if this answers your question, and what to do to address your
> question.

Ok, that makes sense now, sorry for not spotting it earlier.

PS: no top posting please ;)

> 
> Regards!
> Kevin
> 
> -----Original Message-----
> From: Florian Fainelli [mailto:f.fainelli@gmail.com]
> Sent: Friday, March 06, 2020 2:34 PM
> To: Kevin Li <kevin-ke.li@broadcom.com>; Mark Brown <broonie@kernel.org>
> Cc: alsa-devel@alsa-project.org; linux-kernel@vger.kernel.org; Kuninori
> Morimoto <kuninori.morimoto.gx@renesas.com>; Scott Branden
> <sbranden@broadcom.com>; Liam Girdwood <lgirdwood@gmail.com>; Ray Jui
> <rjui@broadcom.com>; Takashi Iwai <tiwai@suse.com>; Jaroslav Kysela
> <perex@perex.cz>; bcm-kernel-feedback-list@broadcom.com; Stephen Boyd
> <swboyd@chromium.org>; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
> 
> On 3/6/20 2:27 PM, Kevin Li wrote:
>> This patch adds Broadcom DSL/PON SoC audio driver with Whistler I2S
>> block. The SoC supported by this patch are BCM63158B0,BCM63178 and
>> BCM47622/6755.
>>
>> Signed-off-by: Kevin Li <kevin-ke.li@broadcom.com>
>> ---
> 
> [snip]
> 
>> +int bcm63xx_soc_platform_probe(struct platform_device *pdev,
>> +			       struct bcm_i2s_priv *i2s_priv) {
>> +	int ret;
>> +
>> +	i2s_priv->r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
>> +	if (!i2s_priv->r_irq) {
>> +		dev_err(&pdev->dev, "Unable to get register irq resource.\n");
>> +		return -ENODEV;
>> +	}
>> +
>> +	ret = devm_request_irq(&pdev->dev, i2s_priv->r_irq->start, i2s_dma_isr,
>> +			i2s_priv->r_irq->flags, "i2s_dma", (void *)i2s_priv);
>> +	if (ret) {
>> +		dev_err(&pdev->dev,
>> +			"i2s_init: failed to request interrupt.ret=%d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	return devm_snd_soc_register_component(&pdev->dev,
>> +					&bcm63xx_soc_platform, NULL, 0); }
>> +
>> +int bcm63xx_soc_platform_remove(struct platform_device *pdev) {
>> +	return 0;
>> +}
> 
> How does one probe this module if the bcm63xx_soc_platform_probe() functions
> are not called from anywhere and/or hooked up to the module entry/exit
> points?
> 
> Are you not missing a platform_driver entry which matches the compatible
> string you defined?
> --
> Florian
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
