Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185DDE17E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gU8ms/SXhucopeiI5ph05q8bWCt7sabRavWbfFlrVTk=; b=UjX0UALlJGxDGK
	yh9zWE5aGN/msjudWX/fu5RFPsKmkMuhsL2t2so2ZCjrNjFFWEBUrw6k0dmbG8HEY0qKQxlhOg4Mq
	NXXFILSEFA9yMHzu6V8eW0wLK5zWtFWeXqN+YEW/vS0aqBikX4u12BxU9cGIDP6iL9xX8cinLJzy+
	F+WMZ8+xxUuCU9lVizQc4JSyiE4KQPyjfnOjyFmVHGHI3TuTW794UuqAobNMdeE5Rqi4OpjC25bnt
	fiScMf51l9Z994ztnqBpGOLaPru9nlOWHvxtXKhMPIp6LvYEOpJ9OCfmdV8TSa7qC15zL+5sRRXu3
	sTsYIpPafA8yKLzj9oYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDsU-0006J7-BE; Wed, 23 Oct 2019 10:28:30 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDrv-0006BM-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:27:57 +0000
Received: by mail-ed1-f67.google.com with SMTP id h2so15349263edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 03:27:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sN1khWqhEdLQ73NvMDu4PylBTsZjnLiQFTCzkxlO2MQ=;
 b=HxU123CwSlsXWy4NukZb5rhMt0g7pxsipf/V6WtiMjYTeKfHklLHtwelFk9DWcZPtV
 DN30XBybcfNr1ptTYagmluX0o06PwlRkUfBodnFY6y3I1yR5g2ZahsghmuD52WIsmFPa
 epGLUotb7jvdT5lFtmGs0LVLXDe16NbATsI55hYkItbptEGvZTqyZkPR44VbiQrOz3Oo
 SphQf/rWpNTgLa8Kyq3lfSw5YH0B+izde/awkhE0lGOTf3B+RH4SeCD9mnOW3AmaF8EL
 N0Z2PKSal0cZyYe4AGcDYub6ZgWguUWrCEixrg4VmghQ8Bt0xqlS7Wvdo51tN/2HnQYo
 3T+A==
X-Gm-Message-State: APjAAAUEaxQaFzyjBPpQHgZxXgElkhCt4XTWwSSE6y7JT8mMeBqzYmC4
 pD6wxfEMF99bH907E2pZP90=
X-Google-Smtp-Source: APXvYqweO7L9OX5pU8/x+P5juNGpeFrV4kxRZI/Y+xaj7+Ve9ixjue5f2pYzFGNYsQIqVVZTlnBVtQ==
X-Received: by 2002:a17:906:a2d1:: with SMTP id
 by17mr32249056ejb.206.1571826473749; 
 Wed, 23 Oct 2019 03:27:53 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id q2sm681528edh.41.2019.10.23.03.27.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 03:27:52 -0700 (PDT)
Date: Wed, 23 Oct 2019 12:27:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 05/36] ARM: samsung: make pm-debug platform independent
Message-ID: <20191023102750.GD10630@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-5-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-5-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_032755_325837_E94392BB 
X-CRM114-Status: GOOD (  25.86  )
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
Cc: linux-samsung-soc@vger.kernel.org, linus.walleij@linaro.org,
 Tomasz Figa <tomasz.figa@gmail.com>, linux-kernel@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:49PM +0200, Arnd Bergmann wrote:
> The pm-debug code is one of the few things shared between s3c24xx/s3c64xx
> and the newer s5pv210. In order to make s5pv210 independent of plat-samsung,
> change the common bits of this code to no longer reference the s3c specific
> bits.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c24xx/include/mach/pm-core.h  |  7 +--
>  arch/arm/mach-s3c64xx/include/mach/pm-core.h  | 44 +---------------
>  arch/arm/mach-s3c64xx/pm.c                    | 50 +++++++++++++++++++
>  arch/arm/mach-s5pv210/pm.c                    |  6 +--
>  .../arm/plat-samsung/include/plat/pm-common.h | 29 +++++------
>  arch/arm/plat-samsung/pm-debug.c              | 23 ++-------
>  arch/arm/plat-samsung/pm.c                    | 10 ++--
>  7 files changed, 80 insertions(+), 89 deletions(-)
> 
> diff --git a/arch/arm/mach-s3c24xx/include/mach/pm-core.h b/arch/arm/mach-s3c24xx/include/mach/pm-core.h
> index 5e4ce89d0158..8f87606c4cdc 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/pm-core.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/pm-core.h
> @@ -15,6 +15,7 @@
>  
>  static inline void s3c_pm_debug_init_uart(void)
>  {
> +#ifdef CONFIG_SAMSUNG_PM_DEBUG
>  	unsigned long tmp = __raw_readl(S3C2410_CLKCON);
>  
>  	/* re-start uart clocks */
> @@ -24,6 +25,7 @@ static inline void s3c_pm_debug_init_uart(void)
>  
>  	__raw_writel(tmp, S3C2410_CLKCON);
>  	udelay(10);
> +#endif
>  }
>  
>  static inline void s3c_pm_arch_prepare_irqs(void)
> @@ -75,11 +77,6 @@ static inline void s3c_pm_arch_show_resume_irqs(void)
>  				s3c_irqwake_eintmask);
>  }
>  
> -static inline void s3c_pm_arch_update_uart(void __iomem *regs,
> -					   struct pm_uart_save *save)
> -{
> -}
> -
>  static inline void s3c_pm_restored_gpios(void) { }
>  static inline void samsung_pm_saved_gpios(void) { }
>  
> diff --git a/arch/arm/mach-s3c64xx/include/mach/pm-core.h b/arch/arm/mach-s3c64xx/include/mach/pm-core.h
> index bbf79ed28583..33cf242734a0 100644
> --- a/arch/arm/mach-s3c64xx/include/mach/pm-core.h
> +++ b/arch/arm/mach-s3c64xx/include/mach/pm-core.h
> @@ -20,6 +20,7 @@
>  
>  static inline void s3c_pm_debug_init_uart(void)
>  {
> +#ifdef CONFIG_SAMSUNG_PM_DEBUG
>  	u32 tmp = __raw_readl(S3C_PCLK_GATE);
>  
>  	/* As a note, since the S3C64XX UARTs generally have multiple
> @@ -35,6 +36,7 @@ static inline void s3c_pm_debug_init_uart(void)
>  
>  	__raw_writel(tmp, S3C_PCLK_GATE);
>  	udelay(10);
> +#endif
>  }
>  
>  static inline void s3c_pm_arch_prepare_irqs(void)
> @@ -63,48 +65,6 @@ static inline void s3c_pm_arch_show_resume_irqs(void)
>  #define s3c_irqwake_intallow  0
>  #endif
>  
> -static inline void s3c_pm_arch_update_uart(void __iomem *regs,
> -					   struct pm_uart_save *save)
> -{
> -	u32 ucon = __raw_readl(regs + S3C2410_UCON);
> -	u32 ucon_clk = ucon & S3C6400_UCON_CLKMASK;
> -	u32 save_clk = save->ucon & S3C6400_UCON_CLKMASK;
> -	u32 new_ucon;
> -	u32 delta;
> -
> -	/* S3C64XX UART blocks only support level interrupts, so ensure that
> -	 * when we restore unused UART blocks we force the level interrupt
> -	 * settigs. */
> -	save->ucon |= S3C2410_UCON_TXILEVEL | S3C2410_UCON_RXILEVEL;
> -
> -	/* We have a constraint on changing the clock type of the UART
> -	 * between UCLKx and PCLK, so ensure that when we restore UCON
> -	 * that the CLK field is correctly modified if the bootloader
> -	 * has changed anything.
> -	 */
> -	if (ucon_clk != save_clk) {
> -		new_ucon = save->ucon;
> -		delta = ucon_clk ^ save_clk;
> -
> -		/* change from UCLKx => wrong PCLK,
> -		 * either UCLK can be tested for by a bit-test
> -		 * with UCLK0 */
> -		if (ucon_clk & S3C6400_UCON_UCLK0 &&
> -		    !(save_clk & S3C6400_UCON_UCLK0) &&
> -		    delta & S3C6400_UCON_PCLK2) {
> -			new_ucon &= ~S3C6400_UCON_UCLK0;
> -		} else if (delta == S3C6400_UCON_PCLK2) {
> -			/* as an precaution, don't change from
> -			 * PCLK2 => PCLK or vice-versa */
> -			new_ucon ^= S3C6400_UCON_PCLK2;
> -		}
> -
> -		S3C_PMDBG("ucon change %04x => %04x (save=%04x)\n",
> -			  ucon, new_ucon, save->ucon);
> -		save->ucon = new_ucon;
> -	}
> -}
> -
>  static inline void s3c_pm_restored_gpios(void)
>  {
>  	/* ensure sleep mode has been cleared from the system */
> diff --git a/arch/arm/mach-s3c64xx/pm.c b/arch/arm/mach-s3c64xx/pm.c
> index fd6dbb263ed5..a612e9779057 100644
> --- a/arch/arm/mach-s3c64xx/pm.c
> +++ b/arch/arm/mach-s3c64xx/pm.c
> @@ -305,6 +305,56 @@ static void s3c64xx_pm_prepare(void)
>  	__raw_writel(__raw_readl(S3C64XX_WAKEUP_STAT), S3C64XX_WAKEUP_STAT);
>  }
>  
> +#ifdef CONFIG_SAMSUNG_PM_DEBUG
> +void s3c_pm_arch_update_uart(void __iomem *regs, struct pm_uart_save *save)
> +{
> +	u32 ucon;
> +	u32 ucon_clk
> +	u32 save_clk;
> +	u32 new_ucon;
> +	u32 delta;
> +
> +	if (!soc_is_s3c64xx())
> +		return;
> +
> +	ucon = __raw_readl(regs + S3C2410_UCON);
> +	ucon_clk = ucon & S3C6400_UCON_CLKMASK;
> +	sav_clk = save->ucon & S3C6400_UCON_CLKMASK;
> +
> +	/* S3C64XX UART blocks only support level interrupts, so ensure that
> +	 * when we restore unused UART blocks we force the level interrupt
> +	 * settigs. */
> +	save->ucon |= S3C2410_UCON_TXILEVEL | S3C2410_UCON_RXILEVEL;
> +
> +	/* We have a constraint on changing the clock type of the UART
> +	 * between UCLKx and PCLK, so ensure that when we restore UCON
> +	 * that the CLK field is correctly modified if the bootloader
> +	 * has changed anything.
> +	 */
> +	if (ucon_clk != save_clk) {
> +		new_ucon = save->ucon;
> +		delta = ucon_clk ^ save_clk;
> +
> +		/* change from UCLKx => wrong PCLK,
> +		 * either UCLK can be tested for by a bit-test
> +		 * with UCLK0 */
> +		if (ucon_clk & S3C6400_UCON_UCLK0 &&
> +		    !(save_clk & S3C6400_UCON_UCLK0) &&
> +		    delta & S3C6400_UCON_PCLK2) {
> +			new_ucon &= ~S3C6400_UCON_UCLK0;
> +		} else if (delta == S3C6400_UCON_PCLK2) {
> +			/* as an precaution, don't change from
> +			 * PCLK2 => PCLK or vice-versa */
> +			new_ucon ^= S3C6400_UCON_PCLK2;
> +		}
> +
> +		S3C_PMDBG("ucon change %04x => %04x (save=%04x)\n",
> +			  ucon, new_ucon, save->ucon);
> +		save->ucon = new_ucon;
> +	}
> +}
> +#endif
> +
>  int __init s3c64xx_pm_init(void)
>  {
>  	int i;
> diff --git a/arch/arm/mach-s5pv210/pm.c b/arch/arm/mach-s5pv210/pm.c
> index b336df0c57f3..efdb5a27c060 100644
> --- a/arch/arm/mach-s5pv210/pm.c
> +++ b/arch/arm/mach-s5pv210/pm.c
> @@ -99,8 +99,6 @@ static int s5pv210_suspend_enter(suspend_state_t state)
>  	u32 eint_wakeup_mask = s5pv210_read_eint_wakeup_mask();
>  	int ret;
>  
> -	s3c_pm_debug_init();

Your patch is not equivalent here. If there is a reason behind removal
of UART init (e.g. not needed), I prefer to make it in separate patch.

Rest looks good.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
