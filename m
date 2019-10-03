Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADE1CAE55
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SIYGmVmck1xtpmhnlKAdWO+aLl5gLoAPsjSmosSGxiU=; b=fsUhbMj6gdEBrCt2rXaBLbYro
	B+z6ZwMJuWpfrBvEXYF6BEdbO0vV+ciJ9KB8PYHMXsJcuoE1lCJ8WI6whavcqb7bJBxbdQEop27tU
	u8epd46QTZlzGDGf/8a1FVEMrbUsQp3nXl6217I5fXKIFfvh/n2IR/bcMJ1OZK6JmSsozDn2kDgu5
	eSFQ8JoL7lXY4mLGvoPeG4Wlunv9UdmJCBamvZ71CMFsMqZe7JJwBgOoo/Iaq3IwEiSgFN6UZOxPI
	H0x9pKDfAEg4i3GZ6iPLwS6fPyga1hudqAwBTTrznCLHCEVJ468Yhw5LkSufOq7QvtFagfOM/dhbV
	a0lWtD8Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5yH-0005WX-AK; Thu, 03 Oct 2019 18:37:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5y8-0005WA-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 18:36:53 +0000
Received: by mail-pg1-x543.google.com with SMTP id 23so2286221pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Re8qV2QdvbkLCeb2K8HW6hCEuJ7wbKTMp5YuNreyJxY=;
 b=DhN5LdLlc5xvMIxx+vE4iDLvGqtc3RN6Ll9kD5TCP0XPOUl9jAD6ivWCq31Q9jG1Dc
 xwLcQ3N40GFgAGHTDlvYM4TP9qXfOOW/CwEIZhxaAUqbwkhN16Ut+NgbbutBz9dX269C
 7BIlIfjg+RsItpnL7PVKdDy/aM6ypmt2kbppw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Re8qV2QdvbkLCeb2K8HW6hCEuJ7wbKTMp5YuNreyJxY=;
 b=pLJNsSMut5wFGhcHrvvv0fNhnWmGMOEqIjW1BkCF5ybr6sl8/7JVRSFUQvs7CGTQGs
 +LEKVKIbSPFI5YnURNpt5ZFaFL4qRGdzWogflD9bBRz/JXXg9clWtoBugU4iWn0WvcO0
 16Z63EuEW4RD/Xld55zHiTsJNa1ggPLim4MaUiZg66aB0MCN+kEMnHPp+HvOlobyXD3C
 SGdwJw0CvEFxC3ljR4XX2NPfubXYKgP95CjWDpucMh7C4VSiu6+lMr9XKU0uZ5ONLitZ
 62syb1AMea78VZlAaUgGb2Ii9o6m/hyhJn1/1KAUNpZ4+PkIPFdewgu5Ptf6fbVA6kBF
 yTmg==
X-Gm-Message-State: APjAAAXhtJMk+3wx0Dx97TTq85VHWVvLHLMCf+vwnEsgzy8r88nh+nMF
 nFOkkHhrLHIIm5iwUgrdf3+nCg==
X-Google-Smtp-Source: APXvYqwQam6eWnyNaRnvLC8IN79OfdtNQK6s5BG7GaJaxRKfpvaD0CESp4p/ah8VMpLvWn6AtodhCA==
X-Received: by 2002:a17:90b:8d1:: with SMTP id
 ds17mr12110001pjb.47.1570127811972; 
 Thu, 03 Oct 2019 11:36:51 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id k8sm2795137pgm.14.2019.10.03.11.36.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 11:36:51 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <3c03506b-8ac3-4f17-3784-fd0292e3d3ee@broadcom.com>
Date: Thu, 3 Oct 2019 11:36:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_113652_672782_F6342966 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

looks fine

On 2019-10-02 5:03 p.m., Chris Packham wrote:
> Use the dev_name(dev) for the irqc->name so that we get unique names
> when we have multiple instances of this driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Acked-by: Scott Branden <scott.branden@broadcom.com>
> ---
>   drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> index 8971fc54e974..c24d49d436ce 100644
> --- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> +++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> @@ -858,7 +858,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
>   		struct gpio_irq_chip *girq;
>   
>   		irqc = &chip->irqchip;
> -		irqc->name = "bcm-iproc-gpio";
> +		irqc->name = dev_name(dev);
>   		irqc->irq_ack = iproc_gpio_irq_ack;
>   		irqc->irq_mask = iproc_gpio_irq_mask;
>   		irqc->irq_unmask = iproc_gpio_irq_unmask;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
