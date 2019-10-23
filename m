Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F07E1AB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhnUIPL+sDs4sBsZvKuyR1vwEv67o0JgOkDR1gGWidY=; b=ZscLG7BlZeTjFs
	h3OjVQwEUgF8vPqpXuaOmbtbEx5wpg5D2wky5i94nXMp8lthhq/IPUKOAO2Uiam8uEHwrP91nrPJ7
	BxxK88oi2iZatksxCpl0bsC3dm14iVDM48Za0gBomB3hguNtW3doUyNf+wXQgIOnPuE6zQSJdiaf7
	5tORCHw8NC9N8daU711bfmcxX69ITgCqAS1Q2o1C9CSS+pqpXpFnA7Ood2TFaMTPWOGMCqUGGhTcE
	ccwyioNwJx2ouH5K7WsulfRb4Cq3X4UvBMd1GapdtbnoaVTN4G6agtRgCn5zmUAwHLPwHWqXeCdI/
	8VVpe6y+ddD8RiiIBD3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFs0-0000sQ-R1; Wed, 23 Oct 2019 12:36:08 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFo5-0005Dl-9g
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:32:06 +0000
Received: by mail-ed1-f66.google.com with SMTP id h2so15616908edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:32:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KQN2p3CqQqqGqvDm8RQZXLnReFZTauNKSF3Je5lv8Vs=;
 b=HT4cCWKR2rnRrNl8wtyqn2/7V38P7dfdDglV4BQ4WpHM3J9/XFnUVUSY9Z9iJhthbA
 RcnnBkgdnfmZynbGFkIcfqVsBIGjr/Acpzv7du756cyUrbsA8J2/tJLOHF9TFk87XpjC
 6HtS5tj2JgRnZS5VcjdvJ8w+X5sXGbpUXmRtXoCVTpXU+8j+ll2pJ3yIvzbhazaIkhkE
 ietIt/DIltEtpSTKKU2qFr6m/9H0ZzO1VTHcLjDxLig6MkxKTah6aIXSRWu0z21Mmdt8
 jrPiaksSAMf9DiaqPQEXKXcRdnzJTXBsGfeN4Z1TxcZI6IFcEV9UxlINTt7WMdFBspLI
 1Acg==
X-Gm-Message-State: APjAAAXyCXoXATkS0zL3CmiJzz13OIkyLgL9hwkPBMA3CCjv4/d2NeuI
 kRgS75Ps579bTJAiaB9fGv/rDOahQTk=
X-Google-Smtp-Source: APXvYqzAyy2/9uMMaEi+++Uil+JEuPxjvNWuDWfQdsPMkZduyAwEgeg60Y2iekGhRXEaJq6rYisoxg==
X-Received: by 2002:a17:906:d214:: with SMTP id
 w20mr32128690ejz.68.1571833923476; 
 Wed, 23 Oct 2019 05:32:03 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id k24sm163420edx.46.2019.10.23.05.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 05:32:02 -0700 (PDT)
Date: Wed, 23 Oct 2019 14:32:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 13/36] ARM: s3c: move regs-spi.h into spi driver
Message-ID: <20191023123200.GC11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-13-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-13-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053205_345394_469DC3D2 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Andi Shyti <andi@etezian.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:57PM +0200, Arnd Bergmann wrote:
> The file is mostly specific to the driver, the few bits that
> are actually used by the platform code get moved to mach/map.h
> instead.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c24xx/include/mach/map.h                      | 2 ++
>  arch/arm/mach-s3c24xx/s3c2412.c                               | 1 -
>  arch/arm/plat-samsung/devs.c                                  | 1 -
>  drivers/spi/spi-s3c24xx-fiq.S                                 | 4 +++-
>  .../include/plat/regs-spi.h => drivers/spi/spi-s3c24xx-regs.h | 3 ---
>  drivers/spi/spi-s3c24xx.c                                     | 3 +--
>  6 files changed, 6 insertions(+), 8 deletions(-)
>  rename arch/arm/plat-samsung/include/plat/regs-spi.h => drivers/spi/spi-s3c24xx-regs.h (95%)
> 
> diff --git a/arch/arm/mach-s3c24xx/include/mach/map.h b/arch/arm/mach-s3c24xx/include/mach/map.h
> index bca93112f57d..a20c9fd0d855 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/map.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/map.h
> @@ -86,6 +86,8 @@
>  #define S3C2410_PA_SPI	   (0x59000000)
>  #define S3C2443_PA_SPI0		(0x52000000)
>  #define S3C2443_PA_SPI1		S3C2410_PA_SPI
> +#define S3C2410_SPI1		(0x20)
> +#define S3C2412_SPI1		(0x100)
>  
>  /* SDI */
>  #define S3C2410_PA_SDI	   (0x5A000000)
> diff --git a/arch/arm/mach-s3c24xx/s3c2412.c b/arch/arm/mach-s3c24xx/s3c2412.c
> index 8fe4d4670dcb..c3fb3e6c0dd8 100644
> --- a/arch/arm/mach-s3c24xx/s3c2412.c
> +++ b/arch/arm/mach-s3c24xx/s3c2412.c
> @@ -37,7 +37,6 @@
>  #include <plat/cpu-freq.h>
>  #include <plat/devs.h>
>  #include <plat/pm.h>
> -#include <plat/regs-spi.h>
>  
>  #include "common.h"
>  #include "nand-core.h"
> diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
> index 6e4c1cb07104..fd94a35e22f8 100644
> --- a/arch/arm/plat-samsung/devs.c
> +++ b/arch/arm/plat-samsung/devs.c
> @@ -59,7 +59,6 @@
>  #include <linux/platform_data/usb-s3c2410_udc.h>
>  #include <linux/platform_data/usb-ohci-s3c2410.h>
>  #include <plat/usb-phy.h>
> -#include <plat/regs-spi.h>
>  #include <linux/platform_data/asoc-s3c.h>
>  #include <linux/platform_data/spi-s3c64xx.h>
>  
> diff --git a/drivers/spi/spi-s3c24xx-fiq.S b/drivers/spi/spi-s3c24xx-fiq.S
> index e95d6282109e..9d5f8f1e5e81 100644
> --- a/drivers/spi/spi-s3c24xx-fiq.S
> +++ b/drivers/spi/spi-s3c24xx-fiq.S
> @@ -12,10 +12,12 @@
>  
>  #include <mach/map.h>
>  #include <mach/regs-irq.h>
> -#include <plat/regs-spi.h>
>  
>  #include "spi-s3c24xx-fiq.h"
>  
> +#define S3C2410_SPTDAT           (0x10)
> +#define S3C2410_SPRDAT           (0x14)
> +
>  	.text
>  
>  	@ entry to these routines is as follows, with the register names
> diff --git a/arch/arm/plat-samsung/include/plat/regs-spi.h b/drivers/spi/spi-s3c24xx-regs.h
> similarity index 95%
> rename from arch/arm/plat-samsung/include/plat/regs-spi.h
> rename to drivers/spi/spi-s3c24xx-regs.h
> index 607844311566..37b93ff7c7fe 100644
> --- a/arch/arm/plat-samsung/include/plat/regs-spi.h
> +++ b/drivers/spi/spi-s3c24xx-regs.h
> @@ -8,9 +8,6 @@
>  #ifndef __ASM_ARCH_REGS_SPI_H
>  #define __ASM_ARCH_REGS_SPI_H

Can you also update the guard name?

Best regards,
Krzysztof

>  
> -#define S3C2410_SPI1		(0x20)
> -#define S3C2412_SPI1		(0x100)
> -
>  #define S3C2410_SPCON		(0x00)
>  
>  #define S3C2410_SPCON_SMOD_DMA	(2 << 5)	/* DMA mode */
> diff --git a/drivers/spi/spi-s3c24xx.c b/drivers/spi/spi-s3c24xx.c
> index 2d6e37f25e2d..2f395e4861f6 100644
> --- a/drivers/spi/spi-s3c24xx.c
> +++ b/drivers/spi/spi-s3c24xx.c
> @@ -21,10 +21,9 @@
>  #include <linux/spi/s3c24xx.h>
>  #include <linux/module.h>
>  
> -#include <plat/regs-spi.h>
> -
>  #include <asm/fiq.h>
>  
> +#include "spi-s3c24xx-regs.h"
>  #include "spi-s3c24xx-fiq.h"
>  
>  /**
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
