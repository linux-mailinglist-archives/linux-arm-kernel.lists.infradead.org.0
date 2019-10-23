Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC80E1767
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjcnvcBkgs/P06AWMJh4p1JV5fOnGsTFzKEnREJBpVk=; b=twU9YMRg9IucLX
	EM0MsEvyyU703PuJZM3qQnFTtdd19/TzkmJzVUWEYDpnYbLIJJ1P1b0UiAc3f2BxFKM8imZQ2Irr1
	Ra1Tcfo7iJQ7tskVZtXJXEanRQg2khI4Piv+vvnGxC0QIr1Czt+RIBgftxFNIYO/NE4FTpXBrzSaH
	WyAXa1cRlAEl2ul1bG3Yo+vmhLxToQJ6JYIln4uHX8orzLz1M9m4DCD0rlV0Tm3JtmQF8o5snFAEK
	U/kPQvTunmZ5tTgEQbh0VcFjtyZVy8/mOZd84ZdZQot+kCWpE2m58a86+ZOLXLC98L1fVR/+Z2RC1
	ZeM0zrkSD0spo+mfgz3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDan-0003rF-TZ; Wed, 23 Oct 2019 10:10:13 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDag-0002cn-Qg
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:10:08 +0000
Received: by mail-ed1-f67.google.com with SMTP id r18so15272666eds.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 03:10:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9uAybyicxo2gw3uVW8b5qH4zjAAO2fuhAA7FE9Cx2o4=;
 b=OA+fvV5VCQfcdiAH2/6KUeefMc2q/nN3GCRUcEO4R9n9/1GWIb/BJJOn3pQR7OdB3B
 mhV5ETdswBb1G/0oTVp11KDdEZvbHfip6WZZt3YijSr02KUIFVxLZlU2brQg03fOVqKZ
 6voser79FCmKGzMxcm7hFpbfF/ThGZ0mTRxcJeXHCj2ICaHxb2JFCqgfIdclY1sFu+R+
 aZgIULBMpNIJif9UsyMPvfVFadEXn8TkPSD4QsWoSKWYA9mXNklO7i8TLApf8fe5U0pa
 9VgI7QB29iercxyuas5v6l1coIN/7NYFbibs5IDDt0iinQ+0KnjGAtXr9fEZco5s/O7s
 uG/g==
X-Gm-Message-State: APjAAAUZHkdIk2ioe3wpDbjP2jdw+I0i8M3gF/dhADD9DimMlK4zd+/E
 wfakbHPlRWl1LtpJT5ojWmU=
X-Google-Smtp-Source: APXvYqzvB0tjiJA4qlXPZfegtzIijfOu8E91o8fBax7pqDOSCiZLTLwUav4NEhfcWYA2WrJw96ILPQ==
X-Received: by 2002:a50:fb0d:: with SMTP id d13mr13099867edq.200.1571825401263; 
 Wed, 23 Oct 2019 03:10:01 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id o31sm851700edd.17.2019.10.23.03.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 03:10:00 -0700 (PDT)
Date: Wed, 23 Oct 2019 12:09:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 04/36] usb: gadget: s3c-hsudc: remove platform header
 dependency
Message-ID: <20191023100958.GB10630@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-4-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-4-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031006_877427_F9E693AB 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:48PM +0200, Arnd Bergmann wrote:
> There is no real phy driver, so s3c-hsudc just pokes the registers
> itself. Improve this a little by making it a platform data callback
> like we do for gpios.
> 
> There is only one board using this driver, and it's unlikely
> that another would be added, so this is a minimal workaround.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  .../include/mach/regs-s3c2443-clock.h         | 49 +++++++++++++++++
>  arch/arm/plat-samsung/devs.c                  |  3 +
>  drivers/usb/gadget/udc/s3c-hsudc.c            | 55 ++-----------------
>  include/linux/platform_data/s3c-hsudc.h       |  2 +
>  4 files changed, 58 insertions(+), 51 deletions(-)
> 
> diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
> index 6bf924612b06..682759549e63 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
> @@ -10,6 +10,8 @@
>  #ifndef __ASM_ARM_REGS_S3C2443_CLOCK
>  #define __ASM_ARM_REGS_S3C2443_CLOCK
>  
> +#include <linux/delay.h>
> +
>  #define S3C2443_CLKREG(x)		((x) + S3C24XX_VA_CLKPWR)
>  
>  #define S3C2443_PLLCON_MDIVSHIFT	16
> @@ -184,5 +186,52 @@ s3c2443_get_epll(unsigned int pllval, unsigned int baseclk)
>  	return (unsigned int)fvco;
>  }
>  
> +static inline void s3c_hsudc_init_phy(void)
> +{
> +	u32 cfg;
> +
> +	cfg = readl(S3C2443_PWRCFG) | S3C2443_PWRCFG_USBPHY;
> +	writel(cfg, S3C2443_PWRCFG);
> +
> +	cfg = readl(S3C2443_URSTCON);
> +	cfg |= (S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
> +	writel(cfg, S3C2443_URSTCON);
> +	mdelay(1);
> +
> +	cfg = readl(S3C2443_URSTCON);
> +	cfg &= ~(S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
> +	writel(cfg, S3C2443_URSTCON);
> +
> +	cfg = readl(S3C2443_PHYCTRL);
> +	cfg &= ~(S3C2443_PHYCTRL_CLKSEL | S3C2443_PHYCTRL_DSPORT);
> +	cfg |= (S3C2443_PHYCTRL_EXTCLK | S3C2443_PHYCTRL_PLLSEL);
> +	writel(cfg, S3C2443_PHYCTRL);
> +
> +	cfg = readl(S3C2443_PHYPWR);
> +	cfg &= ~(S3C2443_PHYPWR_FSUSPEND | S3C2443_PHYPWR_PLL_PWRDN |
> +		S3C2443_PHYPWR_XO_ON | S3C2443_PHYPWR_PLL_REFCLK |
> +		S3C2443_PHYPWR_ANALOG_PD);
> +	cfg |= S3C2443_PHYPWR_COMMON_ON;
> +	writel(cfg, S3C2443_PHYPWR);
> +
> +	cfg = readl(S3C2443_UCLKCON);
> +	cfg |= (S3C2443_UCLKCON_DETECT_VBUS | S3C2443_UCLKCON_FUNC_CLKEN |
> +		S3C2443_UCLKCON_TCLKEN);
> +	writel(cfg, S3C2443_UCLKCON);
> +}
> +
> +static inline void s3c_hsudc_uninit_phy(void)
> +{
> +	u32 cfg;
> +
> +	cfg = readl(S3C2443_PWRCFG) & ~S3C2443_PWRCFG_USBPHY;
> +	writel(cfg, S3C2443_PWRCFG);
> +
> +	writel(S3C2443_PHYPWR_FSUSPEND, S3C2443_PHYPWR);
> +
> +	cfg = readl(S3C2443_UCLKCON) & ~S3C2443_UCLKCON_FUNC_CLKEN;
> +	writel(cfg, S3C2443_UCLKCON);
> +}
> +
>  #endif /*  __ASM_ARM_REGS_S3C2443_CLOCK */
>  
> diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
> index 1d1fa068d228..6e4c1cb07104 100644
> --- a/arch/arm/plat-samsung/devs.c
> +++ b/arch/arm/plat-samsung/devs.c
> @@ -40,6 +40,7 @@
>  #include <mach/dma.h>
>  #include <mach/irqs.h>
>  #include <mach/map.h>
> +#include <mach/regs-s3c2443-clock.h>
>  
>  #include <plat/cpu.h>
>  #include <plat/devs.h>
> @@ -1038,6 +1039,8 @@ struct platform_device s3c_device_usb_hsudc = {
>  void __init s3c24xx_hsudc_set_platdata(struct s3c24xx_hsudc_platdata *pd)
>  {
>  	s3c_set_platdata(pd, sizeof(*pd), &s3c_device_usb_hsudc);
> +	pd->phy_init = s3c_hsudc_init_phy;
> +	pd->phy_uninit = s3c_hsudc_uninit_phy;
>  }
>  #endif /* CONFIG_PLAT_S3C24XX */
>  
> diff --git a/drivers/usb/gadget/udc/s3c-hsudc.c b/drivers/usb/gadget/udc/s3c-hsudc.c
> index 858993c73442..d482cbb4bb4d 100644
> --- a/drivers/usb/gadget/udc/s3c-hsudc.c
> +++ b/drivers/usb/gadget/udc/s3c-hsudc.c
> @@ -30,8 +30,6 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/pm_runtime.h>
>  
> -#include <mach/regs-s3c2443-clock.h>
> -
>  #define S3C_HSUDC_REG(x)	(x)
>  
>  /* Non-Indexed Registers */
> @@ -186,53 +184,6 @@ static inline void __orr32(void __iomem *ptr, u32 val)
>  	writel(readl(ptr) | val, ptr);
>  }
>  
> -static void s3c_hsudc_init_phy(void)
> -{
> -	u32 cfg;
> -
> -	cfg = readl(S3C2443_PWRCFG) | S3C2443_PWRCFG_USBPHY;
> -	writel(cfg, S3C2443_PWRCFG);
> -
> -	cfg = readl(S3C2443_URSTCON);
> -	cfg |= (S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
> -	writel(cfg, S3C2443_URSTCON);
> -	mdelay(1);
> -
> -	cfg = readl(S3C2443_URSTCON);
> -	cfg &= ~(S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
> -	writel(cfg, S3C2443_URSTCON);
> -
> -	cfg = readl(S3C2443_PHYCTRL);
> -	cfg &= ~(S3C2443_PHYCTRL_CLKSEL | S3C2443_PHYCTRL_DSPORT);
> -	cfg |= (S3C2443_PHYCTRL_EXTCLK | S3C2443_PHYCTRL_PLLSEL);
> -	writel(cfg, S3C2443_PHYCTRL);
> -
> -	cfg = readl(S3C2443_PHYPWR);
> -	cfg &= ~(S3C2443_PHYPWR_FSUSPEND | S3C2443_PHYPWR_PLL_PWRDN |
> -		S3C2443_PHYPWR_XO_ON | S3C2443_PHYPWR_PLL_REFCLK |
> -		S3C2443_PHYPWR_ANALOG_PD);
> -	cfg |= S3C2443_PHYPWR_COMMON_ON;
> -	writel(cfg, S3C2443_PHYPWR);
> -
> -	cfg = readl(S3C2443_UCLKCON);
> -	cfg |= (S3C2443_UCLKCON_DETECT_VBUS | S3C2443_UCLKCON_FUNC_CLKEN |
> -		S3C2443_UCLKCON_TCLKEN);
> -	writel(cfg, S3C2443_UCLKCON);
> -}
> -
> -static void s3c_hsudc_uninit_phy(void)
> -{
> -	u32 cfg;
> -
> -	cfg = readl(S3C2443_PWRCFG) & ~S3C2443_PWRCFG_USBPHY;
> -	writel(cfg, S3C2443_PWRCFG);
> -
> -	writel(S3C2443_PHYPWR_FSUSPEND, S3C2443_PHYPWR);
> -
> -	cfg = readl(S3C2443_UCLKCON) & ~S3C2443_UCLKCON_FUNC_CLKEN;
> -	writel(cfg, S3C2443_UCLKCON);
> -}
> -
>  /**
>   * s3c_hsudc_complete_request - Complete a transfer request.
>   * @hsep: Endpoint to which the request belongs.
> @@ -1188,7 +1139,8 @@ static int s3c_hsudc_start(struct usb_gadget *gadget,
>  
>  	pm_runtime_get_sync(hsudc->dev);
>  
> -	s3c_hsudc_init_phy();
> +	if (hsudc->pd->phy_init)
> +		hsudc->pd->gpio_init();

Copy paste error - phy_init().

Are here (and in previous usb gadget patch) any dependencies? If so, I
would need an ack to take it through samsung-soc.

Best regards,
Krzysztof

>  	if (hsudc->pd->gpio_init)
>  		hsudc->pd->gpio_init();
>  
> @@ -1210,7 +1162,8 @@ static int s3c_hsudc_stop(struct usb_gadget *gadget)
>  
>  	spin_lock_irqsave(&hsudc->lock, flags);
>  	hsudc->gadget.speed = USB_SPEED_UNKNOWN;
> -	s3c_hsudc_uninit_phy();
> +	if (hsudc->pd->phy_uninit)
> +		hsudc->pd->phy_uninit();
>  
>  	pm_runtime_put(hsudc->dev);
>  
> diff --git a/include/linux/platform_data/s3c-hsudc.h b/include/linux/platform_data/s3c-hsudc.h
> index 4dc9b8760166..a170939832d5 100644
> --- a/include/linux/platform_data/s3c-hsudc.h
> +++ b/include/linux/platform_data/s3c-hsudc.h
> @@ -26,6 +26,8 @@ struct s3c24xx_hsudc_platdata {
>  	unsigned int	epnum;
>  	void		(*gpio_init)(void);
>  	void		(*gpio_uninit)(void);
> +	void		(*phy_init)(void);
> +	void		(*phy_uninit)(void);
>  };
>  
>  #endif	/* __LINUX_USB_S3C_HSUDC_H */
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
