Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64163BEE09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mb8fXn0IOzsWsbtfjlPpM4ITMQvE5H2f6I3LhcgQfvU=; b=rQTJXLeW3v0NSW
	qr9/CzlfQ2tqAaxli40JGMZ8f7EQU8kBYnUS2GTA42VOZuSTQWmr/QmVSaVOqIrAf7i4b7dvaO3n4
	9m0PTa/LgOUgulnQEPV6zWFpDdBj0ogvwK8MjISDwVq8wnWAgH8YGzsF0aVKac89b+GUyCNDbiPUK
	Xx6gQG4fTJy7O63HPELN1WvMheXUEcgC5yGDjWU7JG7OYz9xtM7ctUS/YxkxAW44XJjl7Gsn26m20
	0wZ3ZDIKGBYwJWZCzB6UI6XXwN7qvrLEoU798ulqEzY+OqKpavyMqCvsN7xGXT3Acqp0I3Yvph9X1
	NEBPvgBMZI3JFAlqWyVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPkE-0008Gp-7G; Thu, 26 Sep 2019 09:07:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPio-0008DD-IA
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 09:06:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id f22so1695980wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 02:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=y3UAKILIqpgM19VWO+ghuctuhVWrhxkcd8iKP1VJBP8=;
 b=gnwJafIBrwq0EIp4RDn08UIZ08l7IIRf7mtmT4dxDOOcZBfSvct5ndYseSAMZs0E71
 HaRj0jbiu90eRoW0Q6Rv6xTZAbv2AMkDCgLEARbTMX25ZrJ4cMLrRIOwECYLan0eCI0j
 ZSVC1X4DPNDHa9HQFu7c+Mp8V2upBqkjfS29BRTEhdoUIp6K1AHToUOGntfe/Fsvfcow
 Ob4R+b8QZ0NBXB34MQCyshnktp3kghJwYXfGsJcXdWTuFdcixKLixBx4zc8D9dc4hbyo
 pTbFBmHPsR6aESZ2W4/ZUuVMC7OUaUfd20AC+axsdZOudddWcuK7Mr6T7sgqlEvlLaiH
 QnyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=y3UAKILIqpgM19VWO+ghuctuhVWrhxkcd8iKP1VJBP8=;
 b=lqaRQEkayhMZT2tK9fYCN0vt57wnOjjLfXSkDomQS50MkpB0cGitgw5yVvD8+UG77x
 AnAig715fwAXJhYmAkNxiLxqpr6gg26P/bEESkr1TsPqIVSxccgU67L33aeyZGGuX+SQ
 6a3/WjHjPjj0gFc4/aT8sy0eKnlOyFObh41KZL7VBjxp+tGik2zwNrJttuqDnbBwwMzJ
 IebjTpGkefgJy7bHUYHo3fzuvQRlzXBXNRRYVRrWT1YMtI1UjtxN6yU/en43oi9ozLmQ
 FF0HEaAjlnrs64WTzGO11n083RWkl0h+0qY+oBbpdMh885YLB2jK26EyBUgIbJpNQUX8
 J6Kg==
X-Gm-Message-State: APjAAAX80ExP9SpOeqRdcuBStdXuLq6cy6xupOqoERTSgDcj9/CTwqa6
 wE+uReWHVi4s61q7x+XmSc4q4A==
X-Google-Smtp-Source: APXvYqxOXCCanM1wt6rtzf5BBxuK3PzOwqkWJ4j6vkm4GpILZMxzBY5FVLhNNCeOGNKGVw0rgft4/Q==
X-Received: by 2002:a1c:a404:: with SMTP id n4mr2032775wme.41.1569488754154;
 Thu, 26 Sep 2019 02:05:54 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x129sm2412840wmg.8.2019.09.26.02.05.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 02:05:53 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] soc: amlogic: ee-pwrc: ensure driver state maches
 HW state
To: Kevin Hilman <khilman@kernel.org>, linux-amlogic@lists.infradead.org
References: <20190925213528.21515-1-khilman@kernel.org>
 <20190925213528.21515-3-khilman@kernel.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <8936e777-8996-5c7b-ea9d-8e17c8d6c4b1@baylibre.com>
Date: Thu, 26 Sep 2019 11:05:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925213528.21515-3-khilman@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_020601_010774_CB2A172C 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/09/2019 23:35, Kevin Hilman wrote:
> From: Kevin Hilman <khilman@baylibre.com>
> 
> During init, ensure that the driver on/off state as well as clock and
> reset state matches the hardware state.  Do this by always calling the
> drivers 'on' function, and then callling the 'off' function if the
> HW state was initially detected as off.
> 
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
>  drivers/soc/amlogic/meson-ee-pwrc.c | 29 ++++++++---------------------
>  1 file changed, 8 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
> index dcce8e694a07..2e8eee0dc166 100644
> --- a/drivers/soc/amlogic/meson-ee-pwrc.c
> +++ b/drivers/soc/amlogic/meson-ee-pwrc.c
> @@ -323,6 +323,8 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
>  				     struct meson_ee_pwrc *pwrc,
>  				     struct meson_ee_pwrc_domain *dom)
>  {
> +	bool is_off;
> +
>  	dom->pwrc = pwrc;
>  	dom->num_rstc = dom->desc.reset_names_count;
>  	dom->num_clks = dom->desc.clk_names_count;
> @@ -356,27 +358,12 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
>  	dom->base.power_on = meson_ee_pwrc_on;
>  	dom->base.power_off = meson_ee_pwrc_off;
>  
> -	/*
> -         * TOFIX: This is a special case for the VPU power domain, which can
> -	 * be enabled previously by the bootloader. In this case the VPU
> -         * pipeline may be functional but no driver maybe never attach
> -         * to this power domain, and if the domain is disabled it could
> -         * cause system errors. This is why the pm_domain_always_on_gov
> -         * is used here.
> -         * For the same reason, the clocks should be enabled in case
> -         * we need to power the domain off, otherwise the internal clocks
> -         * prepare/enable counters won't be in sync.
> -         */
> -	if (dom->num_clks && dom->desc.is_off && !dom->desc.is_off(dom)) {
> -		int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
> -		if (ret)
> -			return ret;
> -
> -		pm_genpd_init(&dom->base, &pm_domain_always_on_gov, false);
> -	} else
> -		pm_genpd_init(&dom->base, NULL,
> -			      (dom->desc.is_off ?
> -			       dom->desc.is_off(dom) : true));
> +	/* Ensure that driver state matches HW state */
> +	is_off = dom->desc.is_off ? dom->desc.is_off(dom) : true;
> +	meson_ee_pwrc_on(&dom->base);
> +	if (is_off)
> +		meson_ee_pwrc_off(&dom->base);
> +	pm_genpd_init(&dom->base, NULL, is_off);
>  
>  	return 0;
>  }
> 

I don't see what you are trying to solve except simplifying the code.

And the case is more that "matching the clock state" here, the
pm_domain_always_on_gov was is a real case when booting from the Amlogic
U-boot.

The display power domain is complex and as been half solved by using
"simple-framebuffer" on gx and is missing on g12a/g12b/sm1.

For example, Debian installer runs without the modules, but will use
the EFIfb set by U-Boot, but in this precise case :
- the DRM driver isn't loaded
- we can't hook this power domain with EFIfb

When *not* in EFIfb, we use simple-framebuffer on GX, using this
power domain, but it hasn't been copied to G12A.

Personally I'll leave this code until we really tested and checked all
uses cases, not only on the sei510/sei610 using mainline u-boot.

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
