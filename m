Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFC51135D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pPqSkt6W9KFYOIPWhf2tEaQDX9mBU4v5SG/NSGaEDk=; b=gxchRHlJecfubi
	f/hrU3V7tzXy0Olabu3GTQZq5xoxXd/+1IQ8CZPf3C3t3xN7N/Lltp1IUmJ+3NfFCdAVayD617G5r
	sXBHDL4he2FvycDzybUKSrrvHmA5N/R7eeCRoA/6vlbnKcRb6Inhl4xSV9yQ4K9vxTgghRjHTl8lS
	fjkDKRh0W2c2/egJEWO0voR4NKu1Q4ewXmYA5PwjW+jEzih3R/0+BOSuQ48dxhJ3KFRBqAY8E4sCL
	INdpqeQ/QivdVCyhg5KL9Db1Vg99+ADq9tucdOdNOh7oMi4omZTg6JilGyiNPCRgDf/+SbeNcpQDN
	huQG2WOeH9SL7dnXWtUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaUx-0001O1-To; Wed, 04 Dec 2019 19:39:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaUo-0001Ng-Fh
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:39:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id b1so331156pgq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fJWeLkLuqn4L5JEDRR7KjBHbe7AW4CyLEe/hVRYrZI4=;
 b=BLs9BMtpT9xJCfPWS4k/zMk0BzS1Hu5U5A1qoNQ6Rwu7MPivoVOHLX+Yrp98dWcMWL
 vjBL8r/v7FNUJAxd/NxyjrqsB8cp/7ytqpDIPXGMW2gQZJ6lU3auztlbE8Xmsx1tptDI
 8ybMxX9qhvGsGmgpfqX0688XkR5KDWtBdXKOSraV4yc8L0DtIBuZfKyrOXx9+0RdqKqe
 y7Jkq7s4PCQTo6b9Pr+wnf2zLz4LYS+Qlk6ROd4UPj5f2kqC4qV460HYiVzzgwq8OPKs
 2LxJdKo1q/d5ID7gKaaj7BuhT0H+S3TPwaAwcc1CMkO+DGTyKLbLLzw8TBkhd4PyV2Jb
 891A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=fJWeLkLuqn4L5JEDRR7KjBHbe7AW4CyLEe/hVRYrZI4=;
 b=jydtEJkUS2+6ru/TaIVXU8UbiG9xMizci+2WhnCNugUQB1E8b1MmVlLfEyL4H3hQ67
 jnRbbvbbxo/U2yZp2rFnLY1Ezp8LI6LUDr4Ae4AqQ/E8j8mI4N4XKXWDs6+HSfrPnf1G
 vXVURobeQNrM/Mx7NxYd+ZsQMnpSeyETiyCJupwDLImOiJ0vHAdUoeaUBOSDtEPekUOs
 eLM7qsfZjK8J0Q56JNniQEcJZUXXUe3SnX6uRmZa43UAandEqGdzh3agXuBtq57zpVmQ
 cZ7dZtp2C/V+sofFQoiYVI6ROQ4o1i/99y56MI+w/gngizWKOFGDuHfQzulp1OwCXLDB
 QtFQ==
X-Gm-Message-State: APjAAAUPjHCc+ubeHhxZGR7iPdmVdpio5tJDga4fwuJSuH3PkVpURaU6
 K5RoOApCdXvoM2eMdAuxJgc=
X-Google-Smtp-Source: APXvYqwd/ffPkow4NUdKx5Nq3OfOi5xz1CSYUUhtNrYnvK2aV6fHYyHDFSFKVGGN99BM3e/y76XrJA==
X-Received: by 2002:a63:115c:: with SMTP id 28mr5235205pgr.6.1575488373928;
 Wed, 04 Dec 2019 11:39:33 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id w12sm2527704pfd.58.2019.12.04.11.39.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Dec 2019 11:39:32 -0800 (PST)
Date: Wed, 4 Dec 2019 11:39:31 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
Message-ID: <20191204193931.GA16809@roeck-us.net>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
 <20191204135159.GA7210@roeck-us.net>
 <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
 <20191204161641.GA28130@roeck-us.net>
 <e35a7f71-2477-fa52-01e4-301199e99c2e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e35a7f71-2477-fa52-01e4-301199e99c2e@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_113934_548421_7F84B642 
X-CRM114-Status: GOOD (  27.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 05:15:26PM +0000, Vincenzo Frascino wrote:
> Hi Guenter,
> 
> On 12/4/19 4:16 PM, Guenter Roeck wrote:
> > On Wed, Dec 04, 2019 at 01:58:25PM +0000, Vincenzo Frascino wrote:
> >> Hi Guenter,
> >>
> >> On 12/4/19 1:51 PM, Guenter Roeck wrote:
> >>> On Fri, Jun 21, 2019 at 10:52:43AM +0100, Vincenzo Frascino wrote:
> >>>> The arm vDSO library requires some adaptations to use to take advantage
> >>>> of the newly introduced generic vDSO library.
> >>>>
> >>>> Introduce the following changes:
> >>>>  - Modification vdso.c to be compliant with the common vdso datapage
> >>>>  - Use of lib/vdso for gettimeofday
> >>>>  - Implementation of elf note
> >>>>
> >>>> Cc: Russell King <linux@armlinux.org.uk>
> >>>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >>>
> >>> This patch causes a crash with qemu's mcimx6ul-evk emulation while running
> >>> imx_v6_v7_defconfig.
> >>>
> >>
> >> Thank you for reporting this. Could you please provide some details on how I can
> >> reproduce the scenario you are describing?
> >>
> > - Build imx_v6_v7_defconfig
> > - Get root file system or initrd, for example from
> >   https://github.com/groeck/linux-build-test/tree/master/rootfs/arm
> > - Run image. Example, with initrd:
> > 	qemu-system-arm -M mcimx6ul-evk -kernel arch/arm/boot/zImage \
> > 		-no-reboot -initrd rootfs-armv7a.cpio \
> > 		-m 256 -display none -serial null \
> > 		--append 'rdinit=/sbin/init earlycon=ec_imx6q,mmio,0x21e8000,115200n8 console=ttymxc1,115200'
> > 		-dtb arch/arm/boot/dts/imx6ul-14x14-evk.dtb \
> > 		-nographic -monitor null -serial stdio
> > 
> > qemu has to be v3.1 or later to support the machine.
> > 
> 
> Thanks for this. Could you please try the patch below the scissors? Seems fixing
> the issue for me.
> 
> > Hope this helps,
> > Guenter
> > 
> 
> -- 
> Regards,
> Vincenzo
> 
> --->8---
> 
> Author: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Date:   Wed Dec 4 16:58:55 2019 +0000
> 
>     arm: Fix __arch_get_hw_counter() access to CNTVCT
> 
>     __arch_get_hw_counter() should check clock_mode to see if it can access
>     CNTVCT. With the conversion to unified vDSO this check has been left out.
> 
>     This causes on imx v6 and v7 (imx_v6_v7_defconfig) and other platforms to
>     hang at boot during the execution of the init process as per below:
> 
>     [   19.976852] Run /sbin/init as init process
>     [   20.044931] Kernel panic - not syncing: Attempted to kill init!
>     exitcode=0x00000004
> 
>     Fix the problem verifying that clock_mode is set coherently before
>     accessing CNTVCT.
> 
>     Cc: Russell King <linux@armlinux.org.uk>
>     Reported-by: Guenter Roeck <linux@roeck-us.net>
>     Investigated-by: Arnd Bergmann <arnd@arndb.de>
>     Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
WFM.

Tested-by: Guenter Roeck <linux@roeck-us.net>

Guenter

> diff --git a/arch/arm/include/asm/vdso/gettimeofday.h
> b/arch/arm/include/asm/vdso/gettimeofday.h
> index 5b879ae7afc1..0ad2429c324f 100644
> --- a/arch/arm/include/asm/vdso/gettimeofday.h
> +++ b/arch/arm/include/asm/vdso/gettimeofday.h
> @@ -75,6 +75,9 @@ static __always_inline u64 __arch_get_hw_counter(int clock_mode)
>  #ifdef CONFIG_ARM_ARCH_TIMER
>         u64 cycle_now;
> 
> +       if (!clock_mode)
> +               return -EINVAL;
> +
>         isb();
>         cycle_now = read_sysreg(CNTVCT);
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
