Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA807CAE51
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/u0wG9mwNdL/xpVIi6rf3m33vQR0Sj5f15e4r/KoiaA=; b=Vot5N0XSscRmPFG6LXn7XAx0L
	Rnper4gG5SazmKFWH0p5YA0lR3/z85EARepi6B9Z6zpwkQ4H9rp0ulmlDFJdHKzhXTOZcAQCXEgIr
	cvJ1lO0wXEMjb6m4UtUfVfD9nHB10MkAHKeorZ5NhZdQP1nY6RZDYRmrbylMfvBpJDH+hxY5bYSO6
	LDLul/bdtdCoKFxDX2/O3h33UfdYsMn8ZCTiWkm9JNz63BMMF6Q1pTn59fkhrGjA1/IOTTtp5BS87
	jrXoUHN/GDq1S3bovCOwmizJ2Y7eEDQuB3LicMdH1/g6sviPdhK5sLdyuXrs4YvYzfCE+7lEIsEUR
	ZUOJzZicQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5xZ-0005BE-24; Thu, 03 Oct 2019 18:36:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5xR-0005AN-9l
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 18:36:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id y5so2305015pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=YFyTJ8BzR0j/Y9IcLHxBPvpd6JctIzAZJXdgxvtLnB4=;
 b=HjYUlKzlfPmLuOeVnGPU1fDy8FAs93KFB4BbrHc2eQ3zoY9a/AeHZZapnk0WReita+
 dvGoW+KaCndigpvJPQMiCF0AuNnvnfGzxp8pwXtIRFC1D++SCikoOlik7zow8WM/Ow9J
 IzktcyTzDwY3BB3ygRkVfzJmNy6zxHstm0+nA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YFyTJ8BzR0j/Y9IcLHxBPvpd6JctIzAZJXdgxvtLnB4=;
 b=WreEMQ7BbtasiIfN6oljcHpjkovjEJA+a/zyZFCEIEOkiGuDTJf8AaVGHYbSJ1S8lD
 Eh8RFi/JvMvVazggSA44D4ok3179QYbZkpANbsd/LqgGVoaWfKe1v06b/OIzqc3RZT/7
 2YsdtZfyKNorNCKx779vCl7JvUiYCux3TgIriAhSwP0HdorAhZBuErUkL8NVypBP6GyF
 AP6kqAByPgTYuMQBX2vAfN0OZ8/BCXZU7wYksUIxf9CwvtRsZVGQ0O8bs6uaO80Clokm
 A2WzjlPwFP6Tq1quRG2jL5tRs+RATlcfMC2SaOecsto6QfngzeM4+70S7dpFNqXmrdqs
 wK0Q==
X-Gm-Message-State: APjAAAWo9+X/Aigq7Dd6fOLJZd6cZHTn9dy/yl+2Dez8A1+a3u1V5bit
 tBISgaJRZsx1URM6QhRlMZFN9g==
X-Google-Smtp-Source: APXvYqw/7fw6vP2s6NX9UHYGAKljiKQWnc4jhc+Ay4Tgk/hDnxvqm18CQECsXyauhzkcvzEEWggUGQ==
X-Received: by 2002:a17:90a:3d08:: with SMTP id
 h8mr12382854pjc.12.1570127768511; 
 Thu, 03 Oct 2019 11:36:08 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id b16sm4355458pfb.54.2019.10.03.11.36.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 11:36:07 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] pinctrl: iproc: allow for error from
 platform_get_irq()
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-2-chris.packham@alliedtelesis.co.nz>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <420179c4-3e8c-2ad9-4bdd-ee745cedd8d5@broadcom.com>
Date: Thu, 3 Oct 2019 11:36:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003000310.17099-2-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_113609_346391_ED2272A4 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Thanks for fix.

On 2019-10-02 5:03 p.m., Chris Packham wrote:
> platform_get_irq() can return an error code. Allow for this when getting
> the irq.
>
> Fixes: 6f265e5d4da7 ("pinctrl: bcm-iproc: Pass irqchip when adding gpiochip")
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Acked-by: Scott Branden <scott.branden@broadcom.com>
> ---
>   drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> index 6f7d3a2f2e97..8971fc54e974 100644
> --- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> +++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> @@ -853,7 +853,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
>   
>   	/* optional GPIO interrupt support */
>   	irq = platform_get_irq(pdev, 0);
> -	if (irq) {
> +	if (irq > 0) {
>   		struct irq_chip *irqc;
>   		struct gpio_irq_chip *girq;
>   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
