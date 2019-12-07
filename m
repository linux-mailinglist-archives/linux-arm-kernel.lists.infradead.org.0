Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FFC115C5C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 14:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycCxj1psv0lbd90F9pKupvAZ1jAO82UF5U8JvLzehVc=; b=tvwDayzPA/1ZTa
	PbTvXYs/3+uExsBRe0LR+s3Ee4DCyyFQBWhNwxL6L8rxMWwp6JzBEhM++N24tMtey0r3egpW2JVzL
	0I+rh9X8vvm3G263feHCEQXrUY2mHTvcZAomWkz/ompuah3jltv2+4ibe5u7D10b8do14XtMyGsIK
	O+tEa6tthvyu4NxRXQZUqrpi940TLUfZUPVLzGmWuM2KomzQjaRBNA8MgdQn9RAvCzbQnE2DR81FI
	kPxTNVAOC1WAqkZOv7oqYNRZFfxQwY3RYUldtwYTinyDux5zi73os+ZfAmG5FFKsK27lORmj5xjyJ
	GoKU2cLzDeHJL0itODIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ida91-0001xm-SW; Sat, 07 Dec 2019 13:29:11 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ida8s-0001x7-LU
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 13:29:03 +0000
Received: by mail-ed1-f67.google.com with SMTP id f8so8401251edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 05:29:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7y0ZNBEgzv9XawrP/HXbktND1cefPtKyMWBgc9jJ2Vc=;
 b=aCQKMS6OUNtY67rvjsSQkJ3ixoHMFKkAsPMelUBTanSIsYvg0SZwY4z4dnQydkWZ+b
 q+PXcFn4Npb6kmVvCSCjuDus6JSeN/R+RvMnMAyWx7Yk5n0oD8n7dmJO4PxdpvuNIW0y
 niD//SJIJG7MxEjg1bA/8lmLaCdu3dVYtTGsJ7PBbsrIyLwg95wUJIprO8ITW0rBZy8x
 0Kfoej+HWRgRcaOKb9jLX6pUqcFAL5/7XDZ4mHfBcJY64gAQNcMSSherx+LcWbr+Y3bD
 M4f0WQllJeYBy+1zlJCIF7NGexL3WKLQtz7RkEjUW0k1CbaoToGH8ZBVS61dJx2NtA5w
 irjA==
X-Gm-Message-State: APjAAAXPTnIwQ4iwGH4BKU4YUo+zFiFnVMOzpekIwtp9SdSqH9wUFAUU
 FYMoR3rRBMKZK/F5nDotQJQ=
X-Google-Smtp-Source: APXvYqwRuhyCcWafkNThzuWx6NKR53IU32fzXyZq05AftVy3xEUUe89MpZPIHixera5+axOlKJ1iTg==
X-Received: by 2002:a17:906:2ecd:: with SMTP id
 s13mr14517103eji.195.1575725338853; 
 Sat, 07 Dec 2019 05:28:58 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id rl27sm191361ejb.11.2019.12.07.05.28.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 07 Dec 2019 05:28:58 -0800 (PST)
Date: Sat, 7 Dec 2019 14:28:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@gmail.com>
Subject: Re: [PATCH 1/2] irqchip: define EXYNOS_IRQ_COMBINER
Message-ID: <20191207132855.GA4384@kozik-lap>
References: <20191207130049.27533-1-hyunki00.koo@gmail.com>
 <20191207130049.27533-2-hyunki00.koo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207130049.27533-2-hyunki00.koo@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_052902_702683_182FE3F8 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, jason@lakedaemon.net, maz@kernel.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, kgene@kernel.org,
 Hyunki Koo <hyunki00.koo@samsung.com>, tglx@linutronix.de,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 07, 2019 at 10:00:48PM +0900, Hyunki Koo wrote:
> From: Hyunki Koo <hyunki00.koo@samsung.com>
> 
> Not all exynos device have IRQ_COMBINER.
> Thus add the config for EXYNOS_IRQ_COMBINER.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
>  drivers/irqchip/Kconfig  | 7 +++++++
>  drivers/irqchip/Makefile | 2 +-
>  2 files changed, 8 insertions(+), 1 deletion(-)
>

Hi,

There is no changelog and versioning of this patch so I do not
understand how it differs with previous. It's a resend? v2? It brings
the confusion and looks like you're ignoring previous comments.

Looks the same and looks like breaking Exynos platforms in the same way.

If you not want to skip combiner on ARMv8, it makes sense, then please
follow the approach we did for Pinctrl drivers (PINCTRL_EXYNOS_ARM and
PINCTRL_EXYNOS_ARM64).

Best regards,
Krzysztof


> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index ba152954324b..3ed7b7f2ae26 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -499,4 +499,11 @@ config SIFIVE_PLIC
>  
>  	   If you don't know what to do here, say Y.
>  
> +config EXYNOS_IRQ_COMBINER
> +	bool "Samsung Exynos IRQ combiner support"
> +	depends on ARCH_EXYNOS
> +	help
> +	  Say yes here to add support for the IRQ combiner devices embedded
> +	  in Samsung Exynos chips.
> +
>  endmenu
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index e806dda690ea..60d7c7260fc3 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -9,7 +9,7 @@ obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2835.o
>  obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2836.o
>  obj-$(CONFIG_DAVINCI_AINTC)		+= irq-davinci-aintc.o
>  obj-$(CONFIG_DAVINCI_CP_INTC)		+= irq-davinci-cp-intc.o
> -obj-$(CONFIG_ARCH_EXYNOS)		+= exynos-combiner.o
> +obj-$(CONFIG_EXYNOS_IRQ_COMBINER)	+= exynos-combiner.o
>  obj-$(CONFIG_FARADAY_FTINTC010)		+= irq-ftintc010.o
>  obj-$(CONFIG_ARCH_HIP04)		+= irq-hip04.o
>  obj-$(CONFIG_ARCH_LPC32XX)		+= irq-lpc32xx.o
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
