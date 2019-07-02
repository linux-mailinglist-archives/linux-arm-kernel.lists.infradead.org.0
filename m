Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229B15CC70
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Krysi6IlRYjcrbPOc2AkRxAUot+KppFzUbEPTp5Vws=; b=LKN70HZ307JIIAM0HsabcxcS7
	BD1NyRUkkPddkFt4VpYRaq1U03YgusiHTXPq9yBWj5dHoxx6HdbKR3TrpoLH9Jasx6P5l+3CqyiTa
	wv14FS1GFXdB982XnLOwfLTDaPWuSaeMoRk8eS8IdAUthl+c1cm81XyXhumkL9p+ak8JYinzx/zPN
	JXLOc6H69DGY3S8RGwsmM/jcQow4oNfw8vR28ZgdNjGHOT013EB8fxjhgkEh3G8RES610oLwVBp9A
	WJaSuvpMMF9b3cuxgkv90uDUg70rQY4j9mdv3zhwS7acCU1LVpXaejvsWioJsAyESVoBAITzurqYC
	4ERN8IR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEp5-0006sq-Sn; Tue, 02 Jul 2019 09:11:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEop-0006sN-96
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:11:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so105674wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 02:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YL/v7kwpoAOgfrWESvYJW+oEOt7FvpXlkjkTWAE20U0=;
 b=g8XO7GiaR9I/8MSq8vNOC8n9Zjdf9iwOmT25kQ4xcSoHEFAaUVXiioDJpXSFEGM/FX
 QiRHrnXy4C3eZbMS/HKHHHjfTNbwQKYvjDzOAeoK37i9GxcyCUnr7oP3jMf/093uPLP2
 gIexxaR99d8BsZFHxFMms0ILgNIgHYtwtUJD9vCPbgRPpY1aIQTsTiokf3xlDM3IT+Hf
 hr0Bq9xF4PbuQR81x6ZodSzm+rS6cI/6wQH1K7/J9qs9v06RUDnqh0t/3VINH2ZWbg50
 DVfRErAm0zplGE9wp8ZiAFxl11rqLvItVbBQWxNu3NOE0Qfq4H/BPMrUo0RpkwlRjL45
 XhqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YL/v7kwpoAOgfrWESvYJW+oEOt7FvpXlkjkTWAE20U0=;
 b=Di0XXILsRm3JM3wbqygeLIA9GhLAya4CGJ/RkkL91vFLkWNlRHNZzmdrQLoqgXm5EK
 ldGG3NCsUFsxw3n2l+1f9W0QAvO0UOatYijVjuEQJneKUyYgWSQoqW+00h1lVffL0XVG
 wRo0lTniyffSXN+amhiyerW+8R8FirBSzcg5e7y3apecTpIpXrrkoGURipQ3XZMBh7HL
 LSyVy8/lHCeotPMi0Yr6NEmx+lemOrvZKbA0x5wQzc2BXL0rFpTW9yXGGoxYdR1pA8PA
 8hDVVuirlWRIL2Z1d41Cg2wLotxJnljC47ukR40EP6Hwv9naEGNhHyIKfc0PSX+N9Hok
 8L5Q==
X-Gm-Message-State: APjAAAXR3NtOH8nNg4dVK0cKM52JB1hbPJ0/en0/yACfkeMyjFsz7kZW
 d+F4nUE3/uA3CN7um/x/JudkUA==
X-Google-Smtp-Source: APXvYqyixyro0WIMqI0C7CGaQ2nlzq7IOMfvK1UOk36VvkyNl9VTipL9Hb/JJxMLaV9Nrsw90+v0Yg==
X-Received: by 2002:a7b:cd84:: with SMTP id y4mr779871wmj.79.1562058677297;
 Tue, 02 Jul 2019 02:11:17 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.googlemail.com with ESMTPSA id t15sm12269862wrx.84.2019.07.02.02.11.16
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 02:11:16 -0700 (PDT)
Subject: Re: [PATCH 03/12] backlight: gpio: pull the non-pdata device probing
 code into probe()
To: Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 Kevin Hilman <khilman@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <20190625163434.13620-4-brgl@bgdev.pl>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <920a5359-d662-5111-8b3d-4f5c63b2afb6@linaro.org>
Date: Tue, 2 Jul 2019 10:11:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-4-brgl@bgdev.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_021119_321236_536AD63E 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/06/2019 17:34, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> There's no good reason to have the generic probing code in a separate
> routine. This function is short and is inlined by the compiler anyway.
> Move it into probe under the pdata-specific part.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Like the others, this will need to be respun to match latest code but 
when it comes round again:
Acked-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.


> ---
>   drivers/video/backlight/gpio_backlight.c | 39 ++++++++----------------
>   1 file changed, 13 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
> index 8adbc8d75097..89e10bccfd3c 100644
> --- a/drivers/video/backlight/gpio_backlight.c
> +++ b/drivers/video/backlight/gpio_backlight.c
> @@ -54,30 +54,6 @@ static const struct backlight_ops gpio_backlight_ops = {
>   	.check_fb	= gpio_backlight_check_fb,
>   };
>   
> -static int gpio_backlight_probe_prop(struct platform_device *pdev,
> -				     struct gpio_backlight *gbl)
> -{
> -	struct device *dev = &pdev->dev;
> -	enum gpiod_flags flags;
> -	int ret;
> -
> -	gbl->def_value = device_property_read_bool(dev, "default-on");
> -	flags = gbl->def_value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
> -
> -	gbl->gpiod = devm_gpiod_get(dev, NULL, flags);
> -	if (IS_ERR(gbl->gpiod)) {
> -		ret = PTR_ERR(gbl->gpiod);
> -
> -		if (ret != -EPROBE_DEFER) {
> -			dev_err(dev,
> -				"Error: The gpios parameter is missing or invalid.\n");
> -		}
> -		return ret;
> -	}
> -
> -	return 0;
> -}
> -
>   static int gpio_backlight_probe(struct platform_device *pdev)
>   {
>   	struct gpio_backlight_platform_data *pdata =
> @@ -86,6 +62,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>   	struct device *dev = &pdev->dev;
>   	struct backlight_device *bl;
>   	struct gpio_backlight *gbl;
> +	enum gpiod_flags flags;
>   	int ret;
>   
>   	gbl = devm_kzalloc(dev, sizeof(*gbl), GFP_KERNEL);
> @@ -116,9 +93,19 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>   		if (!gbl->gpiod)
>   			return -EINVAL;
>   	} else {
> -		ret = gpio_backlight_probe_prop(pdev, gbl);
> -		if (ret)
> +		gbl->def_value = device_property_read_bool(dev, "default-on");
> +		flags = gbl->def_value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
> +
> +		gbl->gpiod = devm_gpiod_get(dev, NULL, flags);
> +		if (IS_ERR(gbl->gpiod)) {
> +			ret = PTR_ERR(gbl->gpiod);
> +
> +			if (ret != -EPROBE_DEFER) {
> +				dev_err(dev,
> +					"Error: The gpios parameter is missing or invalid.\n");
> +			}
>   			return ret;
> +		}
>   	}
>   
>   	memset(&props, 0, sizeof(props));
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
