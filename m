Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779885CC4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KQiK/P1bfNuIwlentxRQ2g9i+dSmYEiBf/18sxSh/8M=; b=b5/dvpUuyHWgwwOin8NyG3Uh7
	H1XWrZPzTTGbixToemLpOboTF7d5vYSFpz6Eq6H1dWCIdtZ1OTFvlG9pKSSPbbWZ28Gyh5Y2S77mk
	UjDd5HUF/EcSpOC4VKcKu0IbReW4q3sNLxt5dE/KgJuwLquCowqAAJkomyKhw78GRQO3EFoj4a/Jo
	WMfXSaDG4APKTfAr3wGVxwJrl8UFmjEQDVnpeHVTOW9kqcaAHLSWZ+fmfV4E2VraOooRQhzztTzoy
	8LC3r0NhhliqlqY1WPEd8qGuEQhvXLE2Fe4rCmuiXKNbp9xHNkCKPjS1gN9J4lsUvcMkKuaXCg8Jc
	M5hdUH9bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEg6-0002Co-O9; Tue, 02 Jul 2019 09:02:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEfv-0002BJ-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:02:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id u18so314039wru.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 02:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UYqevnI0spcyedfiOLJ3vdJN7KeUhPxc6owycWTRKgQ=;
 b=kNZfMLh00xnDEGdyC0iMBLY3n5hKUNwtHEhscIYyRu5QdBU8iXikuYKclzZ4F+RGCK
 S6LNIhsKN0ymzqyVPrK9D4krSgW29DhsBIMN8qLF13phqddvbHbk3QsIowLUof5CiE3W
 Adhoe3+1xqurjhsFfPGGjmFerkhGU8fxZHZZ83yVnrtCXpMli/vgDurTNBYZYzIrK189
 ll8jNF8I6Ry98ZCfRnt3Luin+fFFYxhHCS3vDGnefmmSsVhe7w42q0IRzxQ3DrWrWBSy
 6Wv5vwS9v8z/uz7RDdfqT/GI1sdH96WAO0YFRg960KbLyx3V81mfc5Y2fr5RzWHcdzym
 nZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UYqevnI0spcyedfiOLJ3vdJN7KeUhPxc6owycWTRKgQ=;
 b=M9+LdsbiA+RRBJu2QE8mflP4CjoODbUh9GeOaEIN39ySFkUB0wdHEZYIRE0dfoA7Gc
 iE9A6EHk+O4hD46hVDhX3JsveSy8hlaN04NrRnD5Zv/LVaYcnUoL22nJtVHyMq5zJ2Nu
 TJKCvRLovkJGkhg9/QjEIZFmiF52ElMk2qoLEsgb/X2hP9CqkWNNXadYTaJdjfE34J+q
 0sN4f+kgOZCLl5F5sKPyVlkCvnLtWnlNJ4VApAtZGIgYP+KB0eZ0OsgcAe2EDSbmBkY8
 V0q6CYw3H7NLN7QsfnoDTCxFn9dsTX9MMt2rXRue+Wt1crYToailiLnYYl3i3HG/vbdh
 YOZA==
X-Gm-Message-State: APjAAAXb1C/HdsMAcgikGcWOLT03+lTjG6yoys7R2pLBk8hsxszjrmBj
 d5Fs2onHQ6lVn8hThU7Ohpypew==
X-Google-Smtp-Source: APXvYqwe8Sm/0nT25qcnzu4by7nlxEbs2dugrf6wEZ/ThBZTX0iMnPIhJfIGmRRbZlCWJVwSZilmew==
X-Received: by 2002:a5d:5450:: with SMTP id w16mr13519041wrv.128.1562058125256; 
 Tue, 02 Jul 2019 02:02:05 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.googlemail.com with ESMTPSA id z5sm11056873wrh.16.2019.07.02.02.02.04
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 02:02:04 -0700 (PDT)
Subject: Re: [PATCH 01/12] backlight: gpio: allow to probe non-pdata devices
 from board files
To: Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 Kevin Hilman <khilman@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <20190625163434.13620-2-brgl@bgdev.pl>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <57229b83-c876-1042-2866-1a63e6654bd4@linaro.org>
Date: Tue, 2 Jul 2019 10:02:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-2-brgl@bgdev.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_020207_275838_78022B07 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
> Currently we can only probe devices that either use device tree or pass
> platform data to probe(). Rename gpio_backlight_probe_dt() to
> gpio_backlight_probe_prop() and use generic device properties instead
> of OF specific helpers.

This has already been done in (which IIRC did get queued for the next 
release):
https://www.spinics.net/lists/dri-devel/msg215050.html

> Reverse the logic checking the presence of
> platform data in probe(). This way we can probe devices() registered
> from machine code that neither have a DT node nor use platform data.

Andy's patch did not reverse this logic... but it does check 
pdev->dev.fwnode rather than of_node .


Daniel.


> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>   drivers/video/backlight/gpio_backlight.c | 24 ++++++++----------------
>   1 file changed, 8 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
> index b9300f3e1ee6..654c19d3a81d 100644
> --- a/drivers/video/backlight/gpio_backlight.c
> +++ b/drivers/video/backlight/gpio_backlight.c
> @@ -54,15 +54,14 @@ static const struct backlight_ops gpio_backlight_ops = {
>   	.check_fb	= gpio_backlight_check_fb,
>   };
>   
> -static int gpio_backlight_probe_dt(struct platform_device *pdev,
> -				   struct gpio_backlight *gbl)
> +static int gpio_backlight_probe_prop(struct platform_device *pdev,
> +				     struct gpio_backlight *gbl)
>   {
>   	struct device *dev = &pdev->dev;
> -	struct device_node *np = dev->of_node;
>   	enum gpiod_flags flags;
>   	int ret;
>   
> -	gbl->def_value = of_property_read_bool(np, "default-on");
> +	gbl->def_value = device_property_read_bool(dev, "default-on");
>   	flags = gbl->def_value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
>   
>   	gbl->gpiod = devm_gpiod_get(dev, NULL, flags);
> @@ -86,26 +85,15 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>   	struct backlight_properties props;
>   	struct backlight_device *bl;
>   	struct gpio_backlight *gbl;
> -	struct device_node *np = pdev->dev.of_node;
>   	int ret;
>   
> -	if (!pdata && !np) {
> -		dev_err(&pdev->dev,
> -			"failed to find platform data or device tree node.\n");
> -		return -ENODEV;
> -	}
> -
>   	gbl = devm_kzalloc(&pdev->dev, sizeof(*gbl), GFP_KERNEL);
>   	if (gbl == NULL)
>   		return -ENOMEM;
>   
>   	gbl->dev = &pdev->dev;
>   
> -	if (np) {
> -		ret = gpio_backlight_probe_dt(pdev, gbl);
> -		if (ret)
> -			return ret;
> -	} else {
> +	if (pdata) {
>   		/*
>   		 * Legacy platform data GPIO retrieveal. Do not expand
>   		 * the use of this code path, currently only used by one
> @@ -126,6 +114,10 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>   		gbl->gpiod = gpio_to_desc(pdata->gpio);
>   		if (!gbl->gpiod)
>   			return -EINVAL;
> +	} else {
> +		ret = gpio_backlight_probe_prop(pdev, gbl);
> +		if (ret)
> +			return ret;
>   	}
>   
>   	memset(&props, 0, sizeof(props));
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
