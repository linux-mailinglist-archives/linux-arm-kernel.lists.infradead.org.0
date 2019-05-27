Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B394D2B4FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIMquy76tVQ8n4Bik/ooRlIGxy9L0eIPWJAG3irACPs=; b=QjBVIGTDeVNjoY
	zcrYUmysCF2ug0hFoAyqORiBCWYOU1HtyrzdiYHzI6U/misWz/YXqYchs3JBILM7Qa1Njrez8r+9T
	uF7dPGCAE5+avYbLalnIhYtGeDfh6unc12K/6Fm+3ldmZsJvwtg8f3DDwtSwQgOUKg4RESw05OObR
	wmN+kT+R6kBNlrhf50oQWhRbLPRC5Nk0ShsuTQoNjaOz34DrwR3WPCsqG+D+Ktw6gAcc7L/dIptzV
	RgXxUvmMdRuc61jYKgR+vD11XrO3dLJyXtAJidMh9NZlrOMS+uOMXJnGn1wk656lamLYkWwEv0NBL
	/CVgWepXmq30txyTyMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEgs-0003qC-Dx; Mon, 27 May 2019 12:25:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEgh-0003ox-Uh
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:25:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id f8so16770861wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 05:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sGKq4BVOhx+YoEDuHoZbnnRiDJ7L5mqSr1atGmHYHsY=;
 b=OAXFYXR7xyjkw6rYeOaIlE2B+Zvbvs9mSYi3/1CihglxPJKMFFFPfQw2agA2xOn/VX
 yqen6pnt0JpNcOluLTi0Nv+mh4msw98TTC/CM7ad7Z5PrcoIAW0JBp9E2BjgyFj0PBH8
 brBIf35wR/psVOYGMohRcCL4BiBt6xIediybjmLh9UHffxtkgHWxL1wapEnYci8ipFAl
 WR/o4C2avtWU/GJbdb/PC8tO2BIXG0yxck3JnPfneXZbvktD/tq7HWdugg4L6ohfILKV
 2DGj8JTOrv7qj15oxKnNouO2H1u1hx5VxP/1M4mPtZqs8JzoePUmJ1YYuE9NmISVylr8
 v8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sGKq4BVOhx+YoEDuHoZbnnRiDJ7L5mqSr1atGmHYHsY=;
 b=ab7NYXzS529orRfze1wXjksadhfFXZXOgSNSzZe8WdgY79iVyNQgf61I1FrvB7hQBf
 BuvBAIMcZavFBR30hItPuTOCJOH7wzaFzbbTgTMYF7ALZjz+JDHDkJ/ZU7nwVEZhn70f
 q+13xLhvCX/sprcR7SX/CpEaHgKJajsIETwyF2oOh86nk81/pAwrSFFmrKymx4DIqwvD
 tir9JcYb0e6gkGgOFyntvFLQ14XiQgRmXZq0reR5bXWLSjZmUPo354Jp1TmFYVb4uCZ1
 /d0PnyNN7WtFnycTgsc77xDNpTNavV0IJu6MpmXKJ1PnBZwueMqAixs4kOHdJ5kKWgT/
 V/3A==
X-Gm-Message-State: APjAAAUFN3RZSWbQv2x3BRlAPl57Wk/4tTw4m6CtQOhJ/2w6M2Pj6fOV
 bgu4kEbEaNrYtVAjICUNLafFYiFKT05njA==
X-Google-Smtp-Source: APXvYqxU3izd1btk+vMP58AKtWbDUacGuBFB8+c9b7OBPXUV/xBIYP3n8Xyvjqiry+ZGmJ+CpDpKWQ==
X-Received: by 2002:a5d:5501:: with SMTP id b1mr53897257wrv.222.1558959909853; 
 Mon, 27 May 2019 05:25:09 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g2sm9709001wru.37.2019.05.27.05.25.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 05:25:08 -0700 (PDT)
Subject: Re: [PATCH 01/14] pwm: meson: unify the parameter list of
 meson_pwm_{enable, disable}
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
 <20190525181133.4875-2-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <bb920cb5-0e0b-ef1b-0ed9-35e865d54add@baylibre.com>
Date: Mon, 27 May 2019 14:25:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190525181133.4875-2-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_052511_986848_95F2A642 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/05/2019 20:11, Martin Blumenstingl wrote:
> This is a preparation for a future cleanup. Pass struct pwm_device
> instead of passing the individual values required by each function as
> these can be obtained for each struct pwm_device instance.
> 
> As a nice side-effect the driver now uses "switch (pwm->hwpwm)"
> everywhere. Before some functions used "switch (id)" while others used
> "switch (pwm->hwpwm)".
> 
> No functional changes.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/pwm/pwm-meson.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
> index 5fef7e925282..3fbbc4128ce8 100644
> --- a/drivers/pwm/pwm-meson.c
> +++ b/drivers/pwm/pwm-meson.c
> @@ -183,15 +183,14 @@ static int meson_pwm_calc(struct meson_pwm *meson,
>  	return 0;
>  }
>  
> -static void meson_pwm_enable(struct meson_pwm *meson,
> -			     struct meson_pwm_channel *channel,
> -			     unsigned int id)
> +static void meson_pwm_enable(struct meson_pwm *meson, struct pwm_device *pwm)
>  {
> +	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
>  	u32 value, clk_shift, clk_enable, enable;
>  	unsigned int offset;
>  	unsigned long flags;
>  
> -	switch (id) {
> +	switch (pwm->hwpwm) {
>  	case 0:
>  		clk_shift = MISC_A_CLK_DIV_SHIFT;
>  		clk_enable = MISC_A_CLK_EN;
> @@ -228,12 +227,12 @@ static void meson_pwm_enable(struct meson_pwm *meson,
>  	spin_unlock_irqrestore(&meson->lock, flags);
>  }
>  
> -static void meson_pwm_disable(struct meson_pwm *meson, unsigned int id)
> +static void meson_pwm_disable(struct meson_pwm *meson, struct pwm_device *pwm)
>  {
>  	u32 value, enable;
>  	unsigned long flags;
>  
> -	switch (id) {
> +	switch (pwm->hwpwm) {
>  	case 0:
>  		enable = MISC_A_EN;
>  		break;
> @@ -266,7 +265,7 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>  		return -EINVAL;
>  
>  	if (!state->enabled) {
> -		meson_pwm_disable(meson, pwm->hwpwm);
> +		meson_pwm_disable(meson, pwm);
>  		channel->state.enabled = false;
>  
>  		return 0;
> @@ -293,7 +292,7 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>  	}
>  
>  	if (state->enabled && !channel->state.enabled) {
> -		meson_pwm_enable(meson, channel, pwm->hwpwm);
> +		meson_pwm_enable(meson, pwm);
>  		channel->state.enabled = true;
>  	}
>  
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
