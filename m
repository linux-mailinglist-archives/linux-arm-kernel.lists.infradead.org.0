Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89177B7FFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 19:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QH2ge0YW5q/PANEmUOx8lBX67IKxjZYn1DfDU3OV7e4=; b=hyGPAZRTiR1z7g
	rG7CzJHoEBmKQ/Fr7Vj8IJgrlZLczNMgNwVVwmXfAaB7LsoHFHqXeIRqzyVSN1Bs62InKkt0IYp4Y
	x8627CR9pX7h/WhEG4TMu31VwFsdrcml3Z0gNJM8LmBy+wIIHHoskUUzD9X+ytdjgVpt2vqo4LOmu
	865NjHonxhfEebuU96EkAi7ME+sVs0OmrtBki4NUSkVbymZFeV+GhEg63YVJ4LTq0GO31WAEra8+P
	bKEksV9AtkyJ4dHxTjVvNrT5xL6poIT3PTX0o+zVrQfFnhD0wy8meo6qU/TTt9Z74DzyhwcUStYlz
	YJx7ZEaURmJj9U0zG+Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB0Bd-0008F6-KP; Thu, 19 Sep 2019 17:25:46 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB0Aw-0007LX-OG
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 17:25:04 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 8870BC0003;
 Thu, 19 Sep 2019 17:24:55 +0000 (UTC)
Date: Thu, 19 Sep 2019 19:24:53 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] spi: atmel: Remove AVR32 leftover
Message-ID: <20190919172453.GA21254@piout.net>
References: <20190919154034.7489-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919154034.7489-1-gregory.clement@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_102502_990373_2F45586B 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/09/2019 17:40:34+0200, Gregory CLEMENT wrote:
> AV32 support has been from the kernel a few release ago, but there was
AVR32 and  missing word^

> still some specific macro for this architecture in this driver. Lets
> remove it.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  drivers/spi/spi-atmel.c | 24 ------------------------
>  1 file changed, 24 deletions(-)
> 
> diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
> index bb94f5927819..de1e1861a70c 100644
> --- a/drivers/spi/spi-atmel.c
> +++ b/drivers/spi/spi-atmel.c
> @@ -222,37 +222,13 @@
>  	  | SPI_BF(name, value))
>  
>  /* Register access macros */
> -#ifdef CONFIG_AVR32
> -#define spi_readl(port, reg) \
> -	__raw_readl((port)->regs + SPI_##reg)
> -#define spi_writel(port, reg, value) \
> -	__raw_writel((value), (port)->regs + SPI_##reg)
> -
> -#define spi_readw(port, reg) \
> -	__raw_readw((port)->regs + SPI_##reg)
> -#define spi_writew(port, reg, value) \
> -	__raw_writew((value), (port)->regs + SPI_##reg)
> -
> -#define spi_readb(port, reg) \
> -	__raw_readb((port)->regs + SPI_##reg)
> -#define spi_writeb(port, reg, value) \
> -	__raw_writeb((value), (port)->regs + SPI_##reg)
> -#else
>  #define spi_readl(port, reg) \
>  	readl_relaxed((port)->regs + SPI_##reg)
>  #define spi_writel(port, reg, value) \
>  	writel_relaxed((value), (port)->regs + SPI_##reg)
> -
> -#define spi_readw(port, reg) \
> -	readw_relaxed((port)->regs + SPI_##reg)
>  #define spi_writew(port, reg, value) \
>  	writew_relaxed((value), (port)->regs + SPI_##reg)
>  
> -#define spi_readb(port, reg) \
> -	readb_relaxed((port)->regs + SPI_##reg)
> -#define spi_writeb(port, reg, value) \
> -	writeb_relaxed((value), (port)->regs + SPI_##reg)
> -#endif
>  /* use PIO for small transfers, avoiding DMA setup/teardown overhead and
>   * cache operations; better heuristics consider wordsize and bitrate.
>   */
> -- 
> 2.23.0
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
