Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942EDECCEF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 03:55:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qrcSsnB9Rrim5Ke7QbhT3ytafARJ6D6Y5f0CEQhHL4=; b=PqVjwpipL9Ew6A
	kqgtlOZ3DniNISosm6goNVP2s7Ub8tc4u9O3k4d3x9v5KibzEetrxljcMkjpGUsXuoiy38Ontqy+9
	8DT/RixcwUBr08D16N0EQkc76Q8zyop5lNmDewxuE1dA89q/zD/XAzrskQWcRF+8P1tJPxvhI5omz
	FgZdrKd9tVBfgIWwlC8cyN64SdDwFYAD6jAH5nyalU7D2ITGRB+AXUdJmbWraYZgVtslm/05FkUBw
	6Yv9mF8x8xshSGVOcOvGuwTxv0L+CX/1tAW89j1sgaV0X3e52EPIVT5ywWOcICCSBnvP3sDMMWXUw
	Ng7Vz96kfvRO6jHM++Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQjZS-00043c-EZ; Sat, 02 Nov 2019 02:55:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQjZL-00042m-DK
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 02:55:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id d13so8265063pfq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 19:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7ZNNTe5mkOuzZ1b3W8Xkq2eMV4qjyE7CsioiQ3occ8s=;
 b=JgBG/edDtW18OFtkSYrEnJo1YamRpxQlTLQnoYLDbIDMyNZv3mVxKQzwAEE3KI9Cz0
 iBJWao3C2C8VQJZrubB5eHV4+I4iKNohnhwjQJnnnjeVNOS1yRtI/7JuCO+vfwFDIzcw
 npNswin/PMLjK5R9h/kE9NHOP2G4O3PJqiJJ3R1yy5zPY7JAQYidXb4UtSGO5Hapv70t
 4aPLzEN9KCBVaK7EaUuWLb3SOKddLqc7A12/va8N2IoCRCShOy+M2MIq/H0v11X9TB/2
 5+UdFuAo4sAX3kn5gIFCdgGvUd5585gtZybpTc0wdozCAp0DqtWFVeC/fTjcvYbuvdZk
 RW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7ZNNTe5mkOuzZ1b3W8Xkq2eMV4qjyE7CsioiQ3occ8s=;
 b=YtlvOV09JzcC06919eVL6lN1V9BiRkzvfTmQevqnACBz8ywLB9zOprJUzXExWno3cH
 G3b2jdpXFVgL0gwSSbawpjIRV0Es1K0fF0YttOWWKzlbLBDNjfFG0ITxfupEcpmQE/lS
 4UjibYHm2zjraCGRp6mziqO3XUm5pUSdy/nEJfQe7prUSATMDNPEiICDJ13+bTk0tGX0
 dITfW1Rap8h5pELLHPwVE7fb5lJucxk9KI+dtujVjOZAqiy0cJG7u2DZb0r5ckluDSaK
 YC/oVs16l0vgKQHN5V4TotpiDS36JbcSnjjM2Drpzbrm/l0xvgguu42fta/xsNNn7aCl
 bSMw==
X-Gm-Message-State: APjAAAXrrRQNF+3QE9vL6udxvl8i34WvGavMQ/86Ra53IaUm4pjcevry
 ESl11ckdDrQqe6+GSsAR/wQTKfDV
X-Google-Smtp-Source: APXvYqxg4OgJaYUyM3OKDwg+WHMVAXgkfTOYP2+s9ay3+BRTVdfbTd4PGssEzC8VuRD1mvWisVejHg==
X-Received: by 2002:aa7:9639:: with SMTP id r25mr17314826pfg.17.1572663313252; 
 Fri, 01 Nov 2019 19:55:13 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 z14sm5449440pfq.66.2019.11.01.19.55.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 Nov 2019 19:55:12 -0700 (PDT)
Subject: Re: [PATCH 1/2] pinctrl: bcm: nsp: use gpiolib infrastructure for
 interrupts
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20191101015621.12451-1-chris.packham@alliedtelesis.co.nz>
 <20191101015621.12451-2-chris.packham@alliedtelesis.co.nz>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b681ed9d-a31a-e5cc-04ba-6f38a5cc745b@gmail.com>
Date: Fri, 1 Nov 2019 19:55:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191101015621.12451-2-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_195515_479603_FD17CF05 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/31/2019 6:56 PM, Chris Packham wrote:
> Use more of the gpiolib infrastructure for handling interrupts. The
> root interrupt still needs to be handled manually as it is shared with
> other peripherals on the SoC.
> 
> This will allow multiple instances of this driver to be supported and
> will clean up gracefully on failure thanks to the device managed APIs.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---

Just a couple of comments below:

[snip]

> +		irqc->name = dev_name(dev);

The irq_chip used to be named "gpio-a" now it most likely will contain
the address.unit-name notation from Device Tree, since this is visible
in /proc/interrupts one might consider this to be an ABI breakage.

> +		irqc->irq_ack = nsp_gpio_irq_ack;
> +		irqc->irq_mask = nsp_gpio_irq_mask;
> +		irqc->irq_unmask = nsp_gpio_irq_unmask;
> +		irqc->irq_set_type = nsp_gpio_irq_set_type;
>  
> -			irq_set_chip_and_handler(irq, &nsp_gpio_irq_chip,
> -						 handle_simple_irq);
> -			irq_set_chip_data(irq, chip);
> -		}
> +		val = readl(chip->base + NSP_CHIP_A_INT_MASK);
> +		val = val | NSP_CHIP_A_GPIO_INT_BIT;
> +		writel(val, (chip->base + NSP_CHIP_A_INT_MASK));
>  
>  		/* Install ISR for this GPIO controller. */
> -		ret = devm_request_irq(&pdev->dev, irq, nsp_gpio_irq_handler,
> -				       IRQF_SHARED, "gpio-a", chip);
> +		ret = devm_request_irq(dev, irq, nsp_gpio_irq_handler,
> +				       IRQF_SHARED, "gpio-a", &chip->gc);
>  		if (ret) {
>  			dev_err(&pdev->dev, "Unable to request IRQ%d: %d\n",
>  				irq, ret);
> -			goto err_rm_gpiochip;
> +			return ret;
>  		}
>  
> -		val = readl(chip->base + NSP_CHIP_A_INT_MASK);
> -		val = val | NSP_CHIP_A_GPIO_INT_BIT;
> -		writel(val, (chip->base + NSP_CHIP_A_INT_MASK));
> +		girq = &chip->gc.irq;
> +		girq->chip = irqc;
> +		/* This will let us handle the parent IRQ in the driver */
> +		girq->parent_handler = NULL;
> +		girq->num_parents = 0;
> +		girq->parents = NULL;
> +		girq->default_type = IRQ_TYPE_NONE;
> +		girq->handler = handle_simple_irq;

It might be worth creating a helper that can be called to initialize all
relevant members to the values that indicate: let me manage the
interrupt. This would make us more future proof with respect to
assumptions being made in gpiolib as well as if new fields are added in
the future. This would be a separate patch obviously.

Other than that:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
