Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D6CE1970
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 13:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toGqAsTEYbQGWCtN1Cz/LSqCCITSedBuNyGFy1VxQS0=; b=gIWv92325YbMYa
	HQC+SGIW4Vqu+HXxi9vveRMTL3ob3xGTgwRyOZvpoqQCLku/2+TJs0fUhmT9SHViGr0TAmO7EcBPq
	Xel3YH9MaO0Xnwjc7e1t5X4GoJuhqJQ5RJ+RdDe3t4yhKiZDBNsTU7GMKRA9IsAfFDNKNmagrwhhe
	P3nOPEVRAAlvqn/F63NtiUOkh3c+VvhVdD4hty2iRD1tizLoC/6jOoblSfN90lxxu/4AkXrXST+Cj
	BxqPeE7K5XCcQDnK7aKP1ydvRyYq5yNPMQZ8SryZloIJglRnEl6v35J7TQKR8dNSdGWPiTdFN4kMI
	8GICtQZ+KdfzaDZ1ZNIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFFD-0006tB-2S; Wed, 23 Oct 2019 11:56:03 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFEy-0006sl-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 11:55:50 +0000
Received: by mail-ed1-f65.google.com with SMTP id p59so7108037edp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 04:55:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=t9yscY3cldReUeJnGTW1RuCGAW8E5UxWLhXTLgxX2Pg=;
 b=R99J5kQtuVUCLmUpq2ieSm42oSNkrJyw4um+mOYk3fms3CFpcFqz6owjtVYEogsnwO
 s10avDgIQIoemg1KrcHjc+Bd+iQp6vYLTnXZWjRF7oW4RgZkLRjXzj+KBZgnkcDX3okR
 cH3YbKedCcfuhY6I5yMl0CC/zj1oq3LA4XT1ch3hWYlWPIOmQywEcfgydWFSgX9qQO8e
 bLFBqNJn8UhKoayGPU5dcZg7NNJruz8QMZAmmnCX5S1ubxc6wYM3DJ9q/nRWOXh2TACc
 VQuScEyJLkNs6UUbINrrTV3YzIVmHFmjITCYW0e9fy6j1w8sisbIMyQVj3UI8LkyBpTM
 voeQ==
X-Gm-Message-State: APjAAAVljubLMx17wRvVkDl2ymzzYBMsXay1/b7+X2deI1y3naTHSjZp
 SiSZx0k4Nq5qkz0Fkx44UcI=
X-Google-Smtp-Source: APXvYqzi1/P+yOkEAwDoVvDt7dUkhBcKlph4r7Zctm4hUQ1hmtjEFKeIxqu34Clpk7LZPVIlV8IEnQ==
X-Received: by 2002:a50:91f6:: with SMTP id h51mr8123336eda.99.1571831746966; 
 Wed, 23 Oct 2019 04:55:46 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id i5sm739109edv.29.2019.10.23.04.55.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 04:55:46 -0700 (PDT)
Date: Wed, 23 Oct 2019 13:55:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 10/36] ARM: s5pv210: use private pm save/restore
Message-ID: <20191023115544.GA11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-10-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-10-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_045548_940966_F3C4A956 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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

On Thu, Oct 10, 2019 at 10:29:54PM +0200, Arnd Bergmann wrote:
> The pm save/restore code is fairly small, so in order to
> separate the s3c and s5p platforms, adding an s5p specific
> copy instead of sharing it is actually easier.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s5pv210/Makefile     |  7 -----
>  arch/arm/mach-s5pv210/pm.c         | 45 ++++++++++++++++++++++++++++--
>  arch/arm/mach-s5pv210/regs-clock.h |  2 +-
>  arch/arm/mach-s5pv210/s5pv210.c    |  2 --
>  arch/arm/plat-samsung/Makefile     |  4 +--
>  5 files changed, 45 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/mach-s5pv210/Makefile b/arch/arm/mach-s5pv210/Makefile
> index e7b551e18e5c..aa0a1f091daf 100644
> --- a/arch/arm/mach-s5pv210/Makefile
> +++ b/arch/arm/mach-s5pv210/Makefile
> @@ -3,12 +3,5 @@
>  # Copyright (c) 2010 Samsung Electronics Co., Ltd.
>  # 		http://www.samsung.com/
>  
> -ccflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/arch/arm/plat-samsung/include
> -
> -# Core
> -
>  obj-$(CONFIG_PM_SLEEP)		+= pm.o sleep.o
> -
> -# machine support
> -
>  obj-y				+= s5pv210.o
> diff --git a/arch/arm/mach-s5pv210/pm.c b/arch/arm/mach-s5pv210/pm.c
> index efdb5a27c060..d59c094cdea8 100644
> --- a/arch/arm/mach-s5pv210/pm.c
> +++ b/arch/arm/mach-s5pv210/pm.c
> @@ -13,15 +13,56 @@
>  #include <linux/suspend.h>
>  #include <linux/syscore_ops.h>
>  #include <linux/io.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  #include <asm/cacheflush.h>
>  #include <asm/suspend.h>
>  
> -#include <plat/pm-common.h>
> -
>  #include "common.h"
>  #include "regs-clock.h"
>  
> +/* helper functions to save and restore register state */
> +struct sleep_save {
> +	void __iomem	*reg;
> +	unsigned long	val;
> +};
> +
> +#define SAVE_ITEM(x) \
> +	{ .reg = (x) }
> +
> +/**
> + * s3c_pm_do_save() - save a set of registers for restoration on resume.
> + * @ptr: Pointer to an array of registers.
> + * @count: Size of the ptr array.
> + *
> + * Run through the list of registers given, saving their contents in the
> + * array for later restoration when we wakeup.
> + */
> +static void s3c_pm_do_save(struct sleep_save *ptr, int count)
> +{
> +	for (; count > 0; count--, ptr++) {
> +		ptr->val = readl_relaxed(ptr->reg);
> +		S3C_PMDBG("saved %p value %08lx\n", ptr->reg, ptr->val);
> +	}
> +}
> +
> +/**
> + * s3c_pm_do_restore() - restore register values from the save list.
> + * @ptr: Pointer to an array of registers.
> + * @count: Size of the ptr array.
> + *
> + * Restore the register values saved from s3c_pm_do_save().
> + *
> + * WARNING: Do not put any debug in here that may effect memory or use
> + * peripherals, as things may be changing!
> +*/
> +
> +static void s3c_pm_do_restore_core(const struct sleep_save *ptr, int count)
> +{
> +	for (; count > 0; count--, ptr++)
> +		writel_relaxed(ptr->val, ptr->reg);
> +}
> +
>  static struct sleep_save s5pv210_core_save[] = {
>  	/* Clock ETC */
>  	SAVE_ITEM(S5P_MDNIE_SEL),
> diff --git a/arch/arm/mach-s5pv210/regs-clock.h b/arch/arm/mach-s5pv210/regs-clock.h
> index 2a35c831a9b0..8c7530614e37 100644
> --- a/arch/arm/mach-s5pv210/regs-clock.h
> +++ b/arch/arm/mach-s5pv210/regs-clock.h
> @@ -9,7 +9,7 @@
>  #ifndef __ASM_ARCH_REGS_CLOCK_H
>  #define __ASM_ARCH_REGS_CLOCK_H __FILE__
>  
> -#include <plat/map-base.h>
> +#define S3C_VA_SYS		((void __iomem __force *)0xF6100000)

The same as for one of earlier patches - I prefer to keep the S3C_ADDR()
macro for consistency.

>  
>  #define S5P_CLKREG(x)		(S3C_VA_SYS + (x))
>  
> diff --git a/arch/arm/mach-s5pv210/s5pv210.c b/arch/arm/mach-s5pv210/s5pv210.c
> index 868f9c20419d..a21ed3bb992a 100644
> --- a/arch/arm/mach-s5pv210/s5pv210.c
> +++ b/arch/arm/mach-s5pv210/s5pv210.c
> @@ -13,8 +13,6 @@
>  #include <asm/mach/map.h>
>  #include <asm/system_misc.h>
>  
> -#include <plat/map-base.h>
> -
>  #include "common.h"
>  #include "regs-clock.h"
>  
> diff --git a/arch/arm/plat-samsung/Makefile b/arch/arm/plat-samsung/Makefile
> index d88b9b84f3a9..025ce22876c1 100644
> --- a/arch/arm/plat-samsung/Makefile
> +++ b/arch/arm/plat-samsung/Makefile
> @@ -24,9 +24,7 @@ obj-$(CONFIG_GPIO_SAMSUNG)     += gpio-samsung.o
>  
>  # PM support
>  
> -obj-$(CONFIG_PM_SLEEP)		+= pm-common.o
> -obj-$(CONFIG_EXYNOS_CPU_SUSPEND) += pm-common.o

CONFIG_EXYNOS_CPU_SUSPEND looks unrelated and seems to be not needed at
all. Can you remove it in separate patch?

Best regards,
Krzysztof


> -obj-$(CONFIG_SAMSUNG_PM)	+= pm.o
> +obj-$(CONFIG_SAMSUNG_PM)	+= pm.o pm-common.o
>  obj-$(CONFIG_SAMSUNG_PM_GPIO)	+= pm-gpio.o
>  
>  obj-$(CONFIG_SAMSUNG_WAKEMASK)	+= wakeup-mask.o
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
