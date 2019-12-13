Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CAC11DB55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yc65eE8Kq7y+fW78nOFeakyf/ccTkDo0CD3ZBWkK+3o=; b=ApHECWDyLs2Rf01gQmgPqLjHa
	iYuqqQGe4rhW04Yoyx2FkYd+AkyItWI1mqRf3uIcXKoffkm3/RgRV537IU1wcpaY+ZrcjYMibEop2
	rJ29OmYiVQXz9NSfr5HVWrJzhd7r4CE9kb+3HO59FVk6tzORc/MP+Xp2A5rM1FAJmACStzse3mpjd
	HSG06E8oXQ3wid4nja0934gY4mJDlqXIje3lSt/w0YS5nxzwzyD67lLP+RP9FtWQYMEAvOLR/GWHe
	EKKhFvI9sKeYVv8Qgcj2ZUMf+0DVrwKx5fLizMMN9Vv2ZHz6saJ75etB/TAIteSVpoeaUmOYUh5jz
	82WRrJJJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifZFN-0000vt-0E; Fri, 13 Dec 2019 00:55:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifZFB-0000v3-Rm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:55:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so4754298wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gFjhozgG0wJvhDM360uom2X/mNpI/FjmSBDUTyP3cAk=;
 b=Racuw22f7+pJ6uT9JFY9UKo0OLsikNY/eEUH3YQ6Ve+NSCAVgJh0Zd6rHUOK6SyA3F
 viwwP03XAisSR6dCxCu2KS5PLhNbSzmcWXE9j4IfFWauXkT7TyLDWBhVh5lAhjxwutrV
 AXedO+6jiXvcsPFyHxIvRmSWPZVAIWSgH/ax0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gFjhozgG0wJvhDM360uom2X/mNpI/FjmSBDUTyP3cAk=;
 b=ORB+AN+icxv70ETWSsbex4veirs4PJVIqH2ywkrBvB9FBTzIfp11d+SQML9wXBR+RD
 LleIXv66bKI9X5Hh1ohXhf/6fPFxokDYYQx3EL54YBMqwheyofi9qt/zqB/AuvsLt92m
 +pP7WzZqRsyW+9Ro2b84QNC3cMvXubw8Ji2dzPFEd0wFVXIqCW1xisJ/Uc5qWtEHcE3V
 BdjyzYas9NR16Z6vHYTuHVAK+o33mXWhA2uEG2YPulnZPm12Mi2gTwgI1DwZq9OKYERC
 fZRYKCy4v3VVKd0YKleTSfFl4N2W1MjFnuFxLPPIJW+wdSMjnOppxa1vccpAUoxR43X5
 KxOg==
X-Gm-Message-State: APjAAAWlH2RfKusc6JwxTK0VqqzdLrYHvNdKjIGpDzxTB+mtsVHZkugp
 FggaVOVNZimjv9lc1TyEmd5k6UUuKPKZKvrqAgOQHxcjKkaKXXj+8inomGRIr8qDUod8ZDveEdg
 os+zgknN4wVpahoZR60zAtGpC7mLGUETLwLhi/SisSVbE4oVMMVwqRgkJD5DQAVVw4UxYtCkCeC
 lEXOlEihxVTgg=
X-Google-Smtp-Source: APXvYqzdij9d5WV2KSvynrYakAFyUlnevS/Iz6htmvAoKT/4hvWf5MZFA0y7Xl19BmhVuW+oj8Jg9w==
X-Received: by 2002:a5d:44cd:: with SMTP id z13mr9454072wrr.104.1576198543557; 
 Thu, 12 Dec 2019 16:55:43 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id x7sm7925462wrq.41.2019.12.12.16.55.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2019 16:55:42 -0800 (PST)
Subject: Re: [PATCH 1/1] pinctrl: iproc: Set irq handler based on trig type
To: Hamish Martin <hamish.martin@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com
References: <20191212220923.15089-1-hamish.martin@alliedtelesis.co.nz>
 <20191212220923.15089-2-hamish.martin@alliedtelesis.co.nz>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <a5a47959-8a56-c558-f104-c4071bb512c3@broadcom.com>
Date: Thu, 12 Dec 2019 16:55:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191212220923.15089-2-hamish.martin@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_165545_904674_5B9F5EF8 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-12-12 2:09 p.m., Hamish Martin wrote:
> Rather than always using handle_simple_irq() as the gpio_irq_chip
> handler, set a more appropriate handler based on the IRQ trigger type
> requested.
> This is important for level triggered interrupts which need to be
> masked during handling.
> 
> Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
> ---
>   drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> index 831a9318c384..c79e91eb1a47 100644
> --- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> +++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> @@ -288,6 +288,11 @@ static int iproc_gpio_irq_set_type(struct irq_data *d, unsigned int type)
>   		       rising_or_high);
>   	raw_spin_unlock_irqrestore(&chip->lock, flags);
>   
> +	if (type & IRQ_TYPE_EDGE_BOTH)
> +		irq_set_handler_locked(d, handle_edge_irq);
> +	else
> +		irq_set_handler_locked(d, handle_level_irq);
> +

I think it would make more sense to put them under the above spinlock 
protection, right?

In addition, with this, can the default assignment in 'iproc_gpio_probe' 
be removed?

girq->handler = handle_simple_irq;

Thanks,

Ray

>   	dev_dbg(chip->dev,
>   		"gpio:%u level_triggered:%d dual_edge:%d rising_or_high:%d\n",
>   		gpio, level_triggered, dual_edge, rising_or_high);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
