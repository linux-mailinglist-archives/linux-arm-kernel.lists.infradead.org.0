Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F592B549
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avzy4M7giDHPS/d+ISqDI+yEmJtPTiyiNIm+UDr7baM=; b=aejm0ISb673NVf
	Xh7rX8v3fKUwpksoqrJ49kMn4fqH2NGvaXpHg0YHUJ7lfNs7XY01I5d8APEPhXuukJlbAhT1FFq/H
	87UihvN755dLDZmjnQeGr9D5/yIv6VxnBKYYL5wO+4Zap5DMmDx8XbQgM6C1esI3boczE3TTlBaJO
	QCfOBL7YjWJvwj4eZtIUKzTxb/S8XIEAbbiQnCnhrU5pmWjlbWFal1i99U2PgOVSJw1Op2Si6M4z+
	lc1ReXf/yqSXTloRn1lNOxyXjMcm7PB+RgSJ49AHV5A1gr+PKuMH1zCAwP3aUD+hQ87bh3jRSDRKI
	IU14GPtbMt7IOBi7T0Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEnK-0001kr-Me; Mon, 27 May 2019 12:32:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEnA-0001jT-6F
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:31:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id l17so8368990wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 05:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=VjkdbNWZWv/rWi3OTs4zJ/tKh8dhOP47Y2RwgPFUEn8=;
 b=CEdoD4gVbp5zp+dHatzwc7rKBJk/kKVgrUGS16Lr4BC4tY8qqpQyj6pwwrKeAq6cor
 ECXr2NLc3AvlrapiiJfFOgEW7391VT/h08CcYhL2g857h8K7XnhBCAUpdgkg5BqTlAyb
 E9Ua68vfyqDWHTKoLGf4QT3Ee/7N98fZdX3iJ2tGGoJI8zSCcl1JXOMnybQXYa7mHpBy
 ExEFJ5l/7QKkY7pz9hnkj0CUYjPLV/TsUMtdsURuoklq1VuanXXMRQFxRaGCDFyrgsps
 k8//8iKBiZGmhIhnxH3yTcLJuPajfj63nPX7rpjISKk81BUfuO92eYswc4k7mzyTROpE
 YYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=VjkdbNWZWv/rWi3OTs4zJ/tKh8dhOP47Y2RwgPFUEn8=;
 b=P2rZMz42JwF2mJqnjvYRXf9s0dmVUMlYylhVsFkAA7gI7PSk4uiHrHpi4nAbE89tTh
 nNz4BHZQ31c/XZaAnDyedflPIGTQN8c9fqS000BuXVJSH8hmfahplWnIKrnYrh8GA58W
 BVhxDXbEgzjucRTXZfCo2EDXd2xQhR5MEG1HOXPlJowBiCyEfPIUJW/47pbHGBTExHu7
 sqykgRZT5UFSYMNYQvSNSxBDNBX4sWm7yWe8VLVLAvtFoG+mYm3N6N8zRXExjwkWbDHF
 WkeQ9rQL8gxKDBYGz2AzAwJRohtYFodqxSKysGLOx7U48k4Y5jadjnJMXhWvi0fGAgKW
 qxJw==
X-Gm-Message-State: APjAAAWTtuBe6zvjILfsPBCpJOUEZ7XFPW+HZMTqa42XJSR7RkpyltYz
 5MdVRjn919AITbi4j74DUSQ+KnHLNmxk1Q==
X-Google-Smtp-Source: APXvYqxy4hWx4u6r8rSw9MeqwBP6+PaZ5MbMXeZKRRYUxSBT2HiMkUBXrzgt9yLyvSDvRAcpaYsvVQ==
X-Received: by 2002:a5d:4411:: with SMTP id z17mr29220039wrq.168.1558960310585; 
 Mon, 27 May 2019 05:31:50 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f10sm21641304wrg.24.2019.05.27.05.31.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 05:31:50 -0700 (PDT)
Subject: Re: [PATCH 12/14] pwm: meson: don't cache struct pwm_state internally
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
 <20190525181133.4875-13-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <e0d88134-32f1-cbe2-5aa6-d1a31914c20e@baylibre.com>
Date: Mon, 27 May 2019 14:31:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190525181133.4875-13-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_053152_350506_6E544A56 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
> The PWM core already caches the "current struct pwm_state" as the
> "current state of the hardware registers" inside struct pwm_device.
> 
> Drop the struct pwm_state from struct meson_pwm_channel in favour of the
> struct pwm_state in struct pwm_device. While here also drop any checks
> based on the pwm_state because the PWM core already takes care of this.
> 
> No functional changes intended.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/pwm/pwm-meson.c | 25 +------------------------
>  1 file changed, 1 insertion(+), 24 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
> index 010212166d5d..900d362ec3c9 100644
> --- a/drivers/pwm/pwm-meson.c
> +++ b/drivers/pwm/pwm-meson.c
> @@ -68,8 +68,6 @@ struct meson_pwm_channel {
>  	unsigned int lo;
>  	u8 pre_div;
>  
> -	struct pwm_state state;
> -
>  	struct clk *clk_parent;
>  	struct clk_mux mux;
>  	struct clk *clk;
> @@ -127,8 +125,6 @@ static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
>  		return err;
>  	}
>  
> -	chip->ops->get_state(chip, pwm, &channel->state);
> -
>  	return pwm_set_chip_data(pwm, channel);
>  }
>  
> @@ -153,10 +149,6 @@ static int meson_pwm_calc(struct meson_pwm *meson, struct pwm_device *pwm,
>  	if (state->polarity == PWM_POLARITY_INVERSED)
>  		duty = period - duty;
>  
> -	if (period == channel->state.period &&
> -	    duty == channel->state.duty_cycle)
> -		return 0;
> -
>  	fin_freq = clk_get_rate(channel->clk);
>  	if (fin_freq == 0) {
>  		dev_err(meson->chip.dev, "invalid source clock frequency\n");
> @@ -253,7 +245,6 @@ static void meson_pwm_disable(struct meson_pwm *meson, struct pwm_device *pwm)
>  static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>  			   struct pwm_state *state)
>  {
> -	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
>  	struct meson_pwm *meson = to_meson_pwm(chip);
>  	int err = 0;
>  
> @@ -262,26 +253,12 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>  
>  	if (!state->enabled) {
>  		meson_pwm_disable(meson, pwm);
> -		channel->state.enabled = false;
> -
> -		return 0;
> -	}
> -
> -	if (state->period != channel->state.period ||
> -	    state->duty_cycle != channel->state.duty_cycle ||
> -	    state->polarity != channel->state.polarity) {
> +	} else {
>  		err = meson_pwm_calc(meson, pwm, state);
>  		if (err < 0)
>  			return err;
>  
> -		channel->state.polarity = state->polarity;
> -		channel->state.period = state->period;
> -		channel->state.duty_cycle = state->duty_cycle;
> -	}
> -
> -	if (state->enabled && !channel->state.enabled) {
>  		meson_pwm_enable(meson, pwm);
> -		channel->state.enabled = true;
>  	}
>  
>  	return 0;
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
