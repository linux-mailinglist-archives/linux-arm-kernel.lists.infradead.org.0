Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0367619A9DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 12:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jES8FgX2pvb23pQO6Cl9gzmfsSSNJJeqwvYmVlM3J+w=; b=Pk7sHISOdmENUk0oQIvcuJNnz
	QGZ9w/1trFpOeKJawVsdVtN2GIP5XRhZ5Sq25swu6uFqmKBDd6KRvOceXPcOPBnZ/PY+taFBhMZ7d
	MuYxLESChiLO38Nb991uXzDnAwfdi1uUOMhdkIu4fx53bwkAzsPjK+42eOYaROFVSWUQFgOsVvBHP
	aKUa9FFBxi4IPNbYzBO0tGMiwiIjU5uGVDzU1xVb6TWiObdb4jOQ4oFLtk1frfUKCCB3N6JzUklKG
	GihJ4GOJA8OesEhTTf1sApnri5ZY27pSWClnoLuO7yqW1hrBjb7fL+AanEuGDX1oI0gnow/7tSq7D
	c/kCy5ewA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJb5v-0005sX-Nn; Wed, 01 Apr 2020 10:59:39 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJb5o-0005rw-FH
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 10:59:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id 131so719582lfh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 03:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lebedev-lt.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Kz/wvvEw8riqfKsZFfaKvWpn4ePkjlhRkXHpb0+VV70=;
 b=ejfPSZulqW6tvHwp6O4/dUlM1nKpSZnaSH3gKz3lf/dZFBlKJTgeOxGPwCrbLlOp5x
 sjDvP0MNzNkWS1cmTGAw2bUyaoM4GyZINostLPnrriP2E5Le6XjvyFdo8cTnJWJLUFsf
 NNdTsdv/zRM7lI439J0JVL64Duxzrg0wGx3L7+65cWU4+UI5a5u8G8W/ZjOcKpXXQQMX
 cny7dzHBYyLYidmycoljgSzUG0AwqJq+iUOJH638eKjvzJp/LnB9gjzWrM8EJqBx9b66
 YWD9C9gfcr0zB+8BMDaRU73I7HNWAnk2YtNgyfcCbsXpRSAiS6a9GIeK4x7fOiknpV0s
 HRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Kz/wvvEw8riqfKsZFfaKvWpn4ePkjlhRkXHpb0+VV70=;
 b=p/HUYMkHjCb2smI5yJ7+5U+7/DiygD7BM7WYD4GQ1xpfAE91ABYf/AEp3Y+kZF8Oa2
 ZLWwWyse+CSufAKz1M0bXEFEr26fF5rMdYXm4MYLN7RntCyTG57Slg5q+wD1oZf64gVm
 68VA3ihZ0KvWEXaGm7m8tSmbe2cho8/u2QRjwZlTiGPw31ZHGu3lNl1HoW22wJo5pQkg
 59r8fqDY3YlEyWSIVCs9w256gYpGuNuGINcHcbletAf4OA4MmZmNkPN6b+ONoCQ5Y82J
 LJmZ7yW29TVd2ONdL75V1s1vbs4vGByzb8OzrMc3l7Eo4yPrbMKfC9Y/IfOhwUb15QTz
 O2Tw==
X-Gm-Message-State: AGi0PuYHpo+9PFUe+CCfDt7Iw+ldgAaTFtjLbwdZXkkN0OugEiCbMj51
 0wz7VUOsrF3xSFD1Lr6cnoeAPQ==
X-Google-Smtp-Source: APiQypL0dcEPevylSoyk56qeZt4wBG2S/JxfVQwOwqYclDb2rWm8vIGL5nT0j4NY6Uk65RKVtRpV6Q==
X-Received: by 2002:a19:f606:: with SMTP id x6mr14154741lfe.44.1585738768950; 
 Wed, 01 Apr 2020 03:59:28 -0700 (PDT)
Received: from [192.168.1.108] ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id r2sm1312764lfn.35.2020.04.01.03.59.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Apr 2020 03:59:28 -0700 (PDT)
Subject: Re: [PATCH 5/5] drm/sun4i: tcon: Support LVDS output on Allwinner A20
To: Maxime Ripard <maxime@cerno.tech>,
 Andrey Lebedev <andrey.lebedev@gmail.com>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-6-andrey.lebedev@gmail.com>
 <20200220172512.dmjtqgyay73x3ubx@gilmour.lan>
From: Andrey Lebedev <andrey@lebedev.lt>
Message-ID: <fa780b70-f1cc-ee4c-e779-089c7e9159ab@lebedev.lt>
Date: Wed, 1 Apr 2020 13:59:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220172512.dmjtqgyay73x3ubx@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_035932_584927_D9DEE309 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Maxime,

Since Linus' merge window is now open, do I have to do anything to get 
this merged into the mainline kernel?

On 2/20/20 7:25 PM, Maxime Ripard wrote:
> On Wed, Feb 19, 2020 at 08:08:58PM +0200, Andrey Lebedev wrote:
>> From: Andrey Lebedev <andrey@lebedev.lt>
>>
>> A20 SoC (found in Cubieboard 2 among others) requires different LVDS set
>> up procedure than A33. Timing controller (tcon) driver only implements
>> sun6i-style procedure, that doesn't work on A20 (sun7i).
>>
>> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
>> ---
>>   drivers/gpu/drm/sun4i/sun4i_tcon.c | 37 +++++++++++++++++++++++++++++-
>>   drivers/gpu/drm/sun4i/sun4i_tcon.h | 11 +++++++++
>>   2 files changed, 47 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
>> index b7234eef3c7b..09ee6e8c6914 100644
>> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
>> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
>> @@ -114,6 +114,30 @@ static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
>>   	}
>>   }
>>
>> +static void sun4i_tcon_setup_lvds_phy(struct sun4i_tcon *tcon,
>> +				      const struct drm_encoder *encoder)
>> +{
>> +	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
>> +		     SUN4I_TCON0_LVDS_ANA0_CK_EN |
>> +		     SUN4I_TCON0_LVDS_ANA0_REG_V |
>> +		     SUN4I_TCON0_LVDS_ANA0_REG_C |
>> +		     SUN4I_TCON0_LVDS_ANA0_EN_MB |
>> +		     SUN4I_TCON0_LVDS_ANA0_PD |
>> +		     SUN4I_TCON0_LVDS_ANA0_DCHS);
>> +
>> +	udelay(2); /* delay at least 1200 ns */
>> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
>> +			   SUN4I_TCON0_LVDS_ANA1_INIT,
>> +			   SUN4I_TCON0_LVDS_ANA1_INIT);
>> +	udelay(1); /* delay at least 120 ns */
>> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
>> +			   SUN4I_TCON0_LVDS_ANA1_UPDATE,
>> +			   SUN4I_TCON0_LVDS_ANA1_UPDATE);
>> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
>> +			   SUN4I_TCON0_LVDS_ANA0_EN_MB,
>> +			   SUN4I_TCON0_LVDS_ANA0_EN_MB);
>> +}
>> +
>>   static void sun6i_tcon_setup_lvds_phy(struct sun4i_tcon *tcon,
>>   				      const struct drm_encoder *encoder)
>>   {
>> @@ -1455,7 +1479,18 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
>>   	.dclk_min_div		= 1,
>>   };
>>
>> +static const struct sun4i_tcon_quirks sun7i_a20_tcon0_quirks = {
>> +	.supports_lvds		= true,
>> +	.has_channel_0		= true,
>> +	.has_channel_1		= true,
>> +	.dclk_min_div		= 4,
>> +	/* Same display pipeline structure as A10 */
>> +	.set_mux		= sun4i_a10_tcon_set_mux,
>> +	.setup_lvds_phy		= sun4i_tcon_setup_lvds_phy,
>> +};
>> +
>>   static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
>> +	.supports_lvds		= false,
> 
> False is already the default here.
> 
> I've removed it while applying
> 
> Maxime
> 

-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
