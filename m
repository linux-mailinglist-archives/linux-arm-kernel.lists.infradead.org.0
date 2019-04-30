Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C5FFB5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 16:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mLXwFk13SgQcFHruzAQAJtUbWrrJXEiQSWa/6f+oP0=; b=kgZ+Mj6oJkGPls
	Q163yCrgSfNnfSa8Z+GTEI6v9qAxzjBH/jEsJEjhZ6on8g6VrDP+eJMPWkOFGUfKHzBusoVprUMT4
	+jobPMd2562sqlZRcYnECLRXBRntwGcfC1m0ppxSz2t+hA82Qw7rBA6tFZuLIRKoa9nTsAwO3fKtZ
	hgbKsSuD4sxRVsKW4U1XTmnLaEH+hZtYe1jzlMpW+mAPvbBmvM1gxECaOPYcuXH065rCjs1ibkCIb
	sdwUAKKYAdd6/N4ulMubFY2/YkhSXbdGSdcluNI0Ai3koniZs9FBf++2pD35NgRshJPtaxirWIkOM
	weZnMFWxIjHmq49/h4Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTfz-000674-9r; Tue, 30 Apr 2019 14:24:07 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTft-00066f-9D
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 14:24:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AC2280D;
 Tue, 30 Apr 2019 07:23:59 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB2183F719;
 Tue, 30 Apr 2019 07:23:57 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:23:55 +0100
From: Will Deacon <will.deacon@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>, linux@armlinux.org.uk
Subject: Re: [PATCH 1/7] ARM: vdso: Remove dependency with the arch_timer
 driver internals
Message-ID: <20190430142355.GF17870@fuggles.cambridge.arm.com>
References: <20190408154907.223536-1-marc.zyngier@arm.com>
 <20190408154907.223536-2-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190408154907.223536-2-marc.zyngier@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_072401_325825_FAEF5922 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Mon, Apr 08, 2019 at 04:49:01PM +0100, Marc Zyngier wrote:
> THe VDSO code uses the kernel helper that was originally designed
> to abstract the access between 32 and 64bit systems. It worked so
> far because this function is declared as 'inline'.
> 
> As we're about to revamp that part of the code, the VDSO would
> break. Let's fix it by doing what should have been done from
> the start, a proper system register access.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm/include/asm/cp15.h   | 2 ++
>  arch/arm/vdso/vgettimeofday.c | 5 +++--
>  2 files changed, 5 insertions(+), 2 deletions(-)

This looks ok to me and I'd like to take the series via arm64, but I
could do with an Ack from Russell on these 32-bit ARM parts first.

Will

> diff --git a/arch/arm/include/asm/cp15.h b/arch/arm/include/asm/cp15.h
> index 07e27f212dc7..d2453e2d3f1f 100644
> --- a/arch/arm/include/asm/cp15.h
> +++ b/arch/arm/include/asm/cp15.h
> @@ -68,6 +68,8 @@
>  #define BPIALL				__ACCESS_CP15(c7, 0, c5, 6)
>  #define ICIALLU				__ACCESS_CP15(c7, 0, c5, 0)
>  
> +#define CNTVCT				__ACCESS_CP15_64(1, c14)
> +
>  extern unsigned long cr_alignment;	/* defined in entry-armv.S */
>  
>  static inline unsigned long get_cr(void)
> diff --git a/arch/arm/vdso/vgettimeofday.c b/arch/arm/vdso/vgettimeofday.c
> index a9dd619c6c29..7bdbf5d5c47d 100644
> --- a/arch/arm/vdso/vgettimeofday.c
> +++ b/arch/arm/vdso/vgettimeofday.c
> @@ -18,9 +18,9 @@
>  #include <linux/compiler.h>
>  #include <linux/hrtimer.h>
>  #include <linux/time.h>
> -#include <asm/arch_timer.h>
>  #include <asm/barrier.h>
>  #include <asm/bug.h>
> +#include <asm/cp15.h>
>  #include <asm/page.h>
>  #include <asm/unistd.h>
>  #include <asm/vdso_datapage.h>
> @@ -123,7 +123,8 @@ static notrace u64 get_ns(struct vdso_data *vdata)
>  	u64 cycle_now;
>  	u64 nsec;
>  
> -	cycle_now = arch_counter_get_cntvct();
> +	isb();
> +	cycle_now = read_sysreg(CNTVCT);
>  
>  	cycle_delta = (cycle_now - vdata->cs_cycle_last) & vdata->cs_mask;
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
