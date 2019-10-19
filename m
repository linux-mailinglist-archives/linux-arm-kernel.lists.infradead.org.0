Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BBFDDB1C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 23:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoWksq1aX4YqbvHyrbnzHpKVtb19wfiJ9aYI7mwhnF0=; b=qyq/ls0LLhQcRs
	m84mi01pGIosK6/eNa8BVg75kIS3pQqayVpfBTeZsW3iWshD0c5REtGiRHGvpGCHmKzV5R4CGZWTQ
	EDXblJARnsNroIXuBJwXK3IHpWlb9wzWISo6ErdEZbKjm4TCnTBqkkxgQFibehn0/+yxGp5vSyF4Z
	gl1TQZ3UZR7NCrUhHDKyrY+tNjb3cGJLH1lVmr/YERMUGYn/oXFevjAMPKGQtgNk3DTqhV9gc5Hs9
	nKLuMYEeh2qng6GBkW0pLdKHq+kQM5qi7nK2zDtte5AaIOaYVZoTzj8WxWP2VSvRXdzasfseiroSn
	3lGYnfInV8zDr4q4W83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLw3S-0002go-Gp; Sat, 19 Oct 2019 21:14:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLw3J-0002gU-H1
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 21:14:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id 14so2521428wmu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 14:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pUTf/lOt6SS4SJtQXE4b6+Co3iYmTllN3b72HsB1Kl4=;
 b=gQWqVR22ihM1OPZAElhvcH/MAoFMeGOw713EL0oJ7abyZnihZfDR+bM1/4dBZwKQFr
 2jfU7xYuEbQCMNIduFcOhk2NFMuouznVoUNZ6wV+eYT0KwRAjhj8q/di1lvGuQ1YH96b
 fheaB23F5VgkQkpy2DZjhTYY+mj8Lc2MzQv6ZDq0MPsuwibot7xtbwq7JM2KAhtQFnp6
 o2Xy2hd1BV60NoMiK/6Gy2qA5wILBr/VQjRlrg7T7ewaJuzVkXBgCbJNtex4yDFZnTlB
 hxs0Cs8kAYS9sVcp/RhftzZRvcpJREk/ekMqsF9T4aMuhJsTYHEC2k30cJmC/IKqESZu
 nusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pUTf/lOt6SS4SJtQXE4b6+Co3iYmTllN3b72HsB1Kl4=;
 b=ubv8f7sUHHg9nc8WmY/R4vuzTLt1yhirJGfnR5/ZOhFfRlVp1ke8n9xyDsgbUwLGcB
 YJFK6QVLUEgX4yGkjBWm2GTkNzWHMRnUGflcj0jNR04YUfE83PClb6nJTkxMg17al7FD
 tABgbcD6YuEmaqeXe5nh45HUa9VPHDod8NuLlWzHnp4g2uWOFFKC3+mM9gOshCs7QCqO
 8Bx54/DGIJFQP3L1PVc8QPSUp772gC8hT9aRDrzB4+DMU84WLLj62qOx6LqzE9pGt3uT
 f/RabhKQAHxMGNZzmknmHH4XxU+eGvqxI67r5APmI0bDI9aqRzsoctfCMVIHiSLAyd+S
 PiGg==
X-Gm-Message-State: APjAAAXQjplE60+dOqtcPSFPjukWzhBAImQv8vPHva05KWG/LTf5WElU
 RLCP1MAxyd+5tqGxpoC+OU8=
X-Google-Smtp-Source: APXvYqxPwwVnYflF2Dls7DFWo16qVQv8tLeE1mI7nTEjmKMrF/znLWz2hPm10nQvrQQyfwnxldocGw==
X-Received: by 2002:a7b:cf28:: with SMTP id m8mr13164691wmg.63.1571519659895; 
 Sat, 19 Oct 2019 14:14:19 -0700 (PDT)
Received: from giga-mm ([62.68.26.146])
 by smtp.gmail.com with ESMTPSA id t8sm9719092wrx.76.2019.10.19.14.14.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 14:14:19 -0700 (PDT)
Date: Sat, 19 Oct 2019 23:14:18 +0200
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
Message-Id: <20191019231418.c17b05f73276539536b4732c@gmail.com>
In-Reply-To: <CAK8P3a3UztT5aqDTiBNDssHWcdYQNqbhiY_hxJ+AHuM54hgCWQ@mail.gmail.com>
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
 <20191019184234.4cdb37a735fe632528880d76@gmail.com>
 <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
 <20191019222413.52f7b79369d085c4ce29bc23@gmail.com>
 <CAK8P3a3UztT5aqDTiBNDssHWcdYQNqbhiY_hxJ+AHuM54hgCWQ@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_141421_590901_30309631 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Sat, 19 Oct 2019 22:44:18 +0200
Arnd Bergmann <arnd@arndb.de> wrote:

> > > > # cat /proc/interrupts
> > > >            CPU0
> > > >  39:        146       VIC   7 Edge      eth0
> > > >  51:     162161       VIC  19 Edge      ep93xx timer
> > > >  52:        139       VIC  20 Edge      uart-pl010
> > > >  53:          4       VIC  21 Edge      ep93xx-spi
> > > >  60:          0       VIC  28 Edge      ep93xx-i2s
> > > > Err:          0
> > >
> > > I guess that is partial success: some irqs do work ;-)
> >
> > Yep, VIC1 is working, while VIC0 is not.
> >
> > > The two interrupts that did not get registered are for the
> > > dmaengine driver, and that makes sense given the error
> > > message about the DMA not working. No idea how
> > > that would be a result of the irq changes though.
> >
> > Seems, that it has exposed some incompatibilities of
> > starting IRQ 0 in EP93xx platform fir VIC0 and VIC code
> > itself, which assumes 0 means "auto assignment" (refer
> > to vic_init()).
> 
> Ah, that makes sense. so all interrupt numbers need to
> be shifted by a fixed number (e.g. 1) like we did for
> other platforms (see attachment).

Yes, the below patch resolved both GPIO and DMA issues.
Previous patch (selecting IRQ_DOMAIN_HIERARCHY) is not
required.

If you re-spin all 3 ep93xx-relevant patches together, you can put my
Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
on them.

> diff --git a/arch/arm/mach-ep93xx/core.c b/arch/arm/mach-ep93xx/core.c
> index 6fb19a393fd2..f0a71d4e076f 100644
> --- a/arch/arm/mach-ep93xx/core.c
> +++ b/arch/arm/mach-ep93xx/core.c
> @@ -47,6 +47,7 @@
>  #include <asm/mach/map.h>
>  
>  #include "soc.h"
> +#include "irqs.h"
>  
>  /*************************************************************************
>   * Static I/O mappings that are needed for all EP93xx platforms
> @@ -75,8 +76,8 @@ void __init ep93xx_map_io(void)
>   *************************************************************************/
>  void __init ep93xx_init_irq(void)
>  {
> -	vic_init(EP93XX_VIC1_BASE, 0, EP93XX_VIC1_VALID_IRQ_MASK, 0);
> -	vic_init(EP93XX_VIC2_BASE, 32, EP93XX_VIC2_VALID_IRQ_MASK, 0);
> +	vic_init(EP93XX_VIC1_BASE, IRQ_EP93XX_VIC0, EP93XX_VIC1_VALID_IRQ_MASK, 0);
> +	vic_init(EP93XX_VIC2_BASE, IRQ_EP93XX_VIC1, EP93XX_VIC2_VALID_IRQ_MASK, 0);
>  }
>  
>  
> diff --git a/arch/arm/mach-ep93xx/irqs.h b/arch/arm/mach-ep93xx/irqs.h
> index 3ffdb3a2f3e4..353201b90c66 100644
> --- a/arch/arm/mach-ep93xx/irqs.h
> +++ b/arch/arm/mach-ep93xx/irqs.h
> @@ -2,69 +2,73 @@
>  #ifndef __ASM_ARCH_IRQS_H
>  #define __ASM_ARCH_IRQS_H
>  
> -#define IRQ_EP93XX_COMMRX		2
> -#define IRQ_EP93XX_COMMTX		3
> -#define IRQ_EP93XX_TIMER1		4
> -#define IRQ_EP93XX_TIMER2		5
> -#define IRQ_EP93XX_AACINTR		6
> -#define IRQ_EP93XX_DMAM2P0		7
> -#define IRQ_EP93XX_DMAM2P1		8
> -#define IRQ_EP93XX_DMAM2P2		9
> -#define IRQ_EP93XX_DMAM2P3		10
> -#define IRQ_EP93XX_DMAM2P4		11
> -#define IRQ_EP93XX_DMAM2P5		12
> -#define IRQ_EP93XX_DMAM2P6		13
> -#define IRQ_EP93XX_DMAM2P7		14
> -#define IRQ_EP93XX_DMAM2P8		15
> -#define IRQ_EP93XX_DMAM2P9		16
> -#define IRQ_EP93XX_DMAM2M0		17
> -#define IRQ_EP93XX_DMAM2M1		18
> -#define IRQ_EP93XX_GPIO0MUX		19
> -#define IRQ_EP93XX_GPIO1MUX		20
> -#define IRQ_EP93XX_GPIO2MUX		21
> -#define IRQ_EP93XX_GPIO3MUX		22
> -#define IRQ_EP93XX_UART1RX		23
> -#define IRQ_EP93XX_UART1TX		24
> -#define IRQ_EP93XX_UART2RX		25
> -#define IRQ_EP93XX_UART2TX		26
> -#define IRQ_EP93XX_UART3RX		27
> -#define IRQ_EP93XX_UART3TX		28
> -#define IRQ_EP93XX_KEY			29
> -#define IRQ_EP93XX_TOUCH		30
> +#define IRQ_EP93XX_VIC0			1
> +
> +#define IRQ_EP93XX_COMMRX		(IRQ_EP93XX_VIC0 + 2)
> +#define IRQ_EP93XX_COMMTX		(IRQ_EP93XX_VIC0 + 3)
> +#define IRQ_EP93XX_TIMER1		(IRQ_EP93XX_VIC0 + 4)
> +#define IRQ_EP93XX_TIMER2		(IRQ_EP93XX_VIC0 + 5)
> +#define IRQ_EP93XX_AACINTR		(IRQ_EP93XX_VIC0 + 6)
> +#define IRQ_EP93XX_DMAM2P0		(IRQ_EP93XX_VIC0 + 7)
> +#define IRQ_EP93XX_DMAM2P1		(IRQ_EP93XX_VIC0 + 8)
> +#define IRQ_EP93XX_DMAM2P2		(IRQ_EP93XX_VIC0 + 9)
> +#define IRQ_EP93XX_DMAM2P3		(IRQ_EP93XX_VIC0 + 10)
> +#define IRQ_EP93XX_DMAM2P4		(IRQ_EP93XX_VIC0 + 11)
> +#define IRQ_EP93XX_DMAM2P5		(IRQ_EP93XX_VIC0 + 12)
> +#define IRQ_EP93XX_DMAM2P6		(IRQ_EP93XX_VIC0 + 13)
> +#define IRQ_EP93XX_DMAM2P7		(IRQ_EP93XX_VIC0 + 14)
> +#define IRQ_EP93XX_DMAM2P8		(IRQ_EP93XX_VIC0 + 15)
> +#define IRQ_EP93XX_DMAM2P9		(IRQ_EP93XX_VIC0 + 16)
> +#define IRQ_EP93XX_DMAM2M0		(IRQ_EP93XX_VIC0 + 17)
> +#define IRQ_EP93XX_DMAM2M1		(IRQ_EP93XX_VIC0 + 18)
> +#define IRQ_EP93XX_GPIO0MUX		(IRQ_EP93XX_VIC0 + 19)
> +#define IRQ_EP93XX_GPIO1MUX		(IRQ_EP93XX_VIC0 + 20)
> +#define IRQ_EP93XX_GPIO2MUX		(IRQ_EP93XX_VIC0 + 21)
> +#define IRQ_EP93XX_GPIO3MUX		(IRQ_EP93XX_VIC0 + 22)
> +#define IRQ_EP93XX_UART1RX		(IRQ_EP93XX_VIC0 + 23)
> +#define IRQ_EP93XX_UART1TX		(IRQ_EP93XX_VIC0 + 24)
> +#define IRQ_EP93XX_UART2RX		(IRQ_EP93XX_VIC0 + 25)
> +#define IRQ_EP93XX_UART2TX		(IRQ_EP93XX_VIC0 + 26)
> +#define IRQ_EP93XX_UART3RX		(IRQ_EP93XX_VIC0 + 27)
> +#define IRQ_EP93XX_UART3TX		(IRQ_EP93XX_VIC0 + 28)
> +#define IRQ_EP93XX_KEY			(IRQ_EP93XX_VIC0 + 29)
> +#define IRQ_EP93XX_TOUCH		(IRQ_EP93XX_VIC0 + 30)
>  #define EP93XX_VIC1_VALID_IRQ_MASK	0x7ffffffc
>  
> -#define IRQ_EP93XX_EXT0			32
> -#define IRQ_EP93XX_EXT1			33
> -#define IRQ_EP93XX_EXT2			34
> -#define IRQ_EP93XX_64HZ			35
> -#define IRQ_EP93XX_WATCHDOG		36
> -#define IRQ_EP93XX_RTC			37
> -#define IRQ_EP93XX_IRDA			38
> -#define IRQ_EP93XX_ETHERNET		39
> -#define IRQ_EP93XX_EXT3			40
> -#define IRQ_EP93XX_PROG			41
> -#define IRQ_EP93XX_1HZ			42
> -#define IRQ_EP93XX_VSYNC		43
> -#define IRQ_EP93XX_VIDEO_FIFO		44
> -#define IRQ_EP93XX_SSP1RX		45
> -#define IRQ_EP93XX_SSP1TX		46
> -#define IRQ_EP93XX_GPIO4MUX		47
> -#define IRQ_EP93XX_GPIO5MUX		48
> -#define IRQ_EP93XX_GPIO6MUX		49
> -#define IRQ_EP93XX_GPIO7MUX		50
> -#define IRQ_EP93XX_TIMER3		51
> -#define IRQ_EP93XX_UART1		52
> -#define IRQ_EP93XX_SSP			53
> -#define IRQ_EP93XX_UART2		54
> -#define IRQ_EP93XX_UART3		55
> -#define IRQ_EP93XX_USB			56
> -#define IRQ_EP93XX_ETHERNET_PME		57
> -#define IRQ_EP93XX_DSP			58
> -#define IRQ_EP93XX_GPIO_AB		59
> -#define IRQ_EP93XX_SAI			60
> +#define IRQ_EP93XX_VIC1			(IRQ_EP93XX_VIC0 + 32)
> +
> +#define IRQ_EP93XX_EXT0			(IRQ_EP93XX_VIC1 + 0)
> +#define IRQ_EP93XX_EXT1			(IRQ_EP93XX_VIC1 + 1)
> +#define IRQ_EP93XX_EXT2			(IRQ_EP93XX_VIC1 + 2)
> +#define IRQ_EP93XX_64HZ			(IRQ_EP93XX_VIC1 + 3)
> +#define IRQ_EP93XX_WATCHDOG		(IRQ_EP93XX_VIC1 + 4)
> +#define IRQ_EP93XX_RTC			(IRQ_EP93XX_VIC1 + 5)
> +#define IRQ_EP93XX_IRDA			(IRQ_EP93XX_VIC1 + 6)
> +#define IRQ_EP93XX_ETHERNET		(IRQ_EP93XX_VIC1 + 7)
> +#define IRQ_EP93XX_EXT3			(IRQ_EP93XX_VIC1 + 8)
> +#define IRQ_EP93XX_PROG			(IRQ_EP93XX_VIC1 + 9)
> +#define IRQ_EP93XX_1HZ			(IRQ_EP93XX_VIC1 + 10)
> +#define IRQ_EP93XX_VSYNC		(IRQ_EP93XX_VIC1 + 11)
> +#define IRQ_EP93XX_VIDEO_FIFO		(IRQ_EP93XX_VIC1 + 12)
> +#define IRQ_EP93XX_SSP1RX		(IRQ_EP93XX_VIC1 + 13)
> +#define IRQ_EP93XX_SSP1TX		(IRQ_EP93XX_VIC1 + 14)
> +#define IRQ_EP93XX_GPIO4MUX		(IRQ_EP93XX_VIC1 + 15)
> +#define IRQ_EP93XX_GPIO5MUX		(IRQ_EP93XX_VIC1 + 16)
> +#define IRQ_EP93XX_GPIO6MUX		(IRQ_EP93XX_VIC1 + 17)
> +#define IRQ_EP93XX_GPIO7MUX		(IRQ_EP93XX_VIC1 + 18)
> +#define IRQ_EP93XX_TIMER3		(IRQ_EP93XX_VIC1 + 19)
> +#define IRQ_EP93XX_UART1		(IRQ_EP93XX_VIC1 + 20)
> +#define IRQ_EP93XX_SSP			(IRQ_EP93XX_VIC1 + 21)
> +#define IRQ_EP93XX_UART2		(IRQ_EP93XX_VIC1 + 22)
> +#define IRQ_EP93XX_UART3		(IRQ_EP93XX_VIC1 + 23)
> +#define IRQ_EP93XX_USB			(IRQ_EP93XX_VIC1 + 24)
> +#define IRQ_EP93XX_ETHERNET_PME		(IRQ_EP93XX_VIC1 + 25)
> +#define IRQ_EP93XX_DSP			(IRQ_EP93XX_VIC1 + 26)
> +#define IRQ_EP93XX_GPIO_AB		(IRQ_EP93XX_VIC1 + 27)
> +#define IRQ_EP93XX_SAI			(IRQ_EP93XX_VIC1 + 28)
>  #define EP93XX_VIC2_VALID_IRQ_MASK	0x1fffffff
>  
> -#define NR_EP93XX_IRQS			(64 + 24)
> +#define NR_EP93XX_IRQS			(IRQ_EP93XX_VIC1 + 32 + 24)
>  
>  #define EP93XX_BOARD_IRQ(x)		(NR_EP93XX_IRQS + (x))
>  #define EP93XX_BOARD_IRQS		32

-- 
Alexander Sverdlin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
