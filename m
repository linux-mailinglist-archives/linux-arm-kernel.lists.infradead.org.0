Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64715CC59
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=51guWwM58043x5UKqJEVNNLJFs0HcqY5S1LoYKORuNg=; b=HIdgXfIYZDCqSAm2tQVsjsF+3
	QcmB3goNKPywXqMBfGRKJpsz+jg2PcPmMoaZvKyVSL+CIrT0nyBSIIz8R3THsnIMBJoeqNDMJVtkO
	QfGhaZprqUnx9muBS6HF1z2aqUGx2AjaYlQ48hKL3hxGntEEHNSwwaAe0830r6AH1GIyLNFYAFM2d
	osPf4EK8mzs8K7zsZ+jIoDW5VAExKPd2HF2k+ri0/aRR8NbAeuxPhDvZsc2FNy/4Rgyvvz1Zw7j1j
	nvHVf8J3htvZC+cYiXEEBfJfYaSEohZ/NYjQYTMW42IwRUZ66J4GOmwIYOJwiiHS2KvDrKffOWEvQ
	kroWq9X3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEjc-000481-VD; Tue, 02 Jul 2019 09:05:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEjQ-00047g-4F
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:05:45 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so16829768wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 02:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dGGbbVrqx3epkvQ7DyUVG6YDxBKrBKIRNUqt51MsijM=;
 b=wqvvFWgtmzbFxo8VIz+VxphSEkiKA5bEkqsSJbk4N9X6ToqP0Ug0T390wJ64sQNiSo
 0dpDPjUpSc4dprK2hO+WKHjiVjvMnqJRTwJAKJ3pYIQBTCVP4fwcnojimRI6/XX58fK1
 Zc/qyltOkfvRJdr7J9Ryjhfp1jccErLoyG6BY4djPD09BuaQMtJf2IjrxLSpyIi2ZR/E
 zFRrP032ysoweK5yydg5EfUMDUdCedbRQIlRBSZ4XFl4PjBhZIL8hUD54x073ZkjN3bv
 pptW0BFA1tZ9vGiIjVpOkl2MPRu/sV3gyYd8y+I81DB9m4RBX5JsYt2PXUULcovGkcGJ
 jyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dGGbbVrqx3epkvQ7DyUVG6YDxBKrBKIRNUqt51MsijM=;
 b=OJIhzJfuDtk5nt/kU7mVKakC4I1EiNANp2ZpX+8pjds73P8z+7+IFzJk7hvrDBQd4d
 iTMZhkgnblyyS3ClXZje6AaGxpspwqrVqpQRTj/4oaGX7gg/laMhGFjUwiDBKwbQPuiS
 O/wcWoGRskYmf7UJ1ZPUETVnpNqarO+hV6J5SubdNdBVUAMBj5uuFQa7ADzbXVRuhXrg
 bGxBXhv8mtXVhhWvSJJAmXyM3fOn2K0A+hAAsx+4f0EHqsIj84TbLOVIaZ1rHJRNl87n
 WSGxhzZKUP2OupM4kTs0oQnw80R1EqCEy8QoUMoaV+bgWInupBMT/hpJIdqlyjg5gQmZ
 Z6pA==
X-Gm-Message-State: APjAAAVwGvKTOyLvkSkJYj+cYTX7F/PQ9Jyg/JAU/qgkq5WB/9WMroJE
 8ePttCEZHg2KU2qJHAd6tVzK/Q==
X-Google-Smtp-Source: APXvYqyBUFgKUMPUQ1VT+uu50twL4iJvolYnaYIt4CMSKd/z9qxaRpeKXoSJKscs/7Q4ud6bG1ycrA==
X-Received: by 2002:a5d:618d:: with SMTP id j13mr22383402wru.195.1562058342873; 
 Tue, 02 Jul 2019 02:05:42 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.googlemail.com with ESMTPSA id u6sm2334585wml.9.2019.07.02.02.05.41
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 02:05:42 -0700 (PDT)
Subject: Re: [PATCH 02/12] backlight: gpio: use a helper variable for
 &pdev->dev
To: Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 Kevin Hilman <khilman@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <20190625163434.13620-3-brgl@bgdev.pl>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <ada53c47-c768-8390-928a-caf7cb72bcac@linaro.org>
Date: Tue, 2 Jul 2019 10:05:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-3-brgl@bgdev.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_020544_176447_56FDD141 
X-CRM114-Status: GOOD (  19.11  )
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
> Instead of dereferencing pdev each time, use a helper variable for
> the associated device pointer.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

No objections but I think this will need to be respun against 
backlight-next (or v5.3).

> ---
>   drivers/video/backlight/gpio_backlight.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
> index 654c19d3a81d..8adbc8d75097 100644
> --- a/drivers/video/backlight/gpio_backlight.c
> +++ b/drivers/video/backlight/gpio_backlight.c
> @@ -83,15 +83,16 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>   	struct gpio_backlight_platform_data *pdata =
>   		dev_get_platdata(&pdev->dev);

Why leave this one out?


Daniel.


>   	struct backlight_properties props;
> +	struct device *dev = &pdev->dev;
>   	struct backlight_device *bl;
>   	struct gpio_backlight *gbl;
>   	int ret;
>   
> -	gbl = devm_kzalloc(&pdev->dev, sizeof(*gbl), GFP_KERNEL);
> +	gbl = devm_kzalloc(dev, sizeof(*gbl), GFP_KERNEL);
>   	if (gbl == NULL)
>   		return -ENOMEM;
>   
> -	gbl->dev = &pdev->dev;
> +	gbl->dev = dev;
>   
>   	if (pdata) {
>   		/*
> @@ -108,7 +109,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>   		ret = devm_gpio_request_one(gbl->dev, pdata->gpio, flags,
>   					    pdata ? pdata->name : "backlight");
>   		if (ret < 0) {
> -			dev_err(&pdev->dev, "unable to request GPIO\n");
> +			dev_err(dev, "unable to request GPIO\n");
>   			return ret;
>   		}
>   		gbl->gpiod = gpio_to_desc(pdata->gpio);
> @@ -123,11 +124,10 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>   	memset(&props, 0, sizeof(props));
>   	props.type = BACKLIGHT_RAW;
>   	props.max_brightness = 1;
> -	bl = devm_backlight_device_register(&pdev->dev, dev_name(&pdev->dev),
> -					&pdev->dev, gbl, &gpio_backlight_ops,
> -					&props);
> +	bl = devm_backlight_device_register(dev, dev_name(dev), dev, gbl,
> +					    &gpio_backlight_ops, &props);
>   	if (IS_ERR(bl)) {
> -		dev_err(&pdev->dev, "failed to register backlight\n");
> +		dev_err(dev, "failed to register backlight\n");
>   		return PTR_ERR(bl);
>   	}
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
