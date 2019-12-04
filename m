Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53BB113086
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB4ma+vU3jUnUNmHoXccLpvqL0pnL9RtvI5/XOzY2KQ=; b=b8shpT6M4wiBIO
	CKjL156w0VRViMSfnsHZ8ZNvUAcXtYxi7YlGSv/GKc5Lf1XEcKSvaGHdTkLD530j0TlDOPWTT3clm
	KhB95oNXPT2ck74oRTK1igkI3oBSOcdpA9PAsEevz8aS7V2NOjyl/IXyzqX5BYfGyyvDOjhaSb3L8
	nwMpOLZ5d3/3y8Xb+8J+0FmLsiWj8v1Ouk885XIqoUNEhedE8kAEVdvaHV4ra565dzxH8ia08Dohp
	omkoZpkc+4+xYRicHeh2Jy3glXkMW1MhfLwMG/bM7uEphnu9qqdzNLZHSU4X05J1+nCL+TBI0i1J+
	2CPap3xi3sPwwkMH6T6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYD5-0001Zy-FC; Wed, 04 Dec 2019 17:13:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYCy-0001ZH-Ph
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 17:13:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FB7231B;
 Wed,  4 Dec 2019 09:12:58 -0800 (PST)
Received: from [10.37.12.197] (unknown [10.37.12.197])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B509D3F52E;
 Wed,  4 Dec 2019 09:12:54 -0800 (PST)
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
To: Guenter Roeck <linux@roeck-us.net>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
 <20191204135159.GA7210@roeck-us.net>
 <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
 <20191204161641.GA28130@roeck-us.net>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <e35a7f71-2477-fa52-01e4-301199e99c2e@arm.com>
Date: Wed, 4 Dec 2019 17:15:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204161641.GA28130@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_091300_920533_39CD4C7A 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi Guenter,

On 12/4/19 4:16 PM, Guenter Roeck wrote:
> On Wed, Dec 04, 2019 at 01:58:25PM +0000, Vincenzo Frascino wrote:
>> Hi Guenter,
>>
>> On 12/4/19 1:51 PM, Guenter Roeck wrote:
>>> On Fri, Jun 21, 2019 at 10:52:43AM +0100, Vincenzo Frascino wrote:
>>>> The arm vDSO library requires some adaptations to use to take advantage
>>>> of the newly introduced generic vDSO library.
>>>>
>>>> Introduce the following changes:
>>>>  - Modification vdso.c to be compliant with the common vdso datapage
>>>>  - Use of lib/vdso for gettimeofday
>>>>  - Implementation of elf note
>>>>
>>>> Cc: Russell King <linux@armlinux.org.uk>
>>>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>>>
>>> This patch causes a crash with qemu's mcimx6ul-evk emulation while running
>>> imx_v6_v7_defconfig.
>>>
>>
>> Thank you for reporting this. Could you please provide some details on how I can
>> reproduce the scenario you are describing?
>>
> - Build imx_v6_v7_defconfig
> - Get root file system or initrd, for example from
>   https://github.com/groeck/linux-build-test/tree/master/rootfs/arm
> - Run image. Example, with initrd:
> 	qemu-system-arm -M mcimx6ul-evk -kernel arch/arm/boot/zImage \
> 		-no-reboot -initrd rootfs-armv7a.cpio \
> 		-m 256 -display none -serial null \
> 		--append 'rdinit=/sbin/init earlycon=ec_imx6q,mmio,0x21e8000,115200n8 console=ttymxc1,115200'
> 		-dtb arch/arm/boot/dts/imx6ul-14x14-evk.dtb \
> 		-nographic -monitor null -serial stdio
> 
> qemu has to be v3.1 or later to support the machine.
> 

Thanks for this. Could you please try the patch below the scissors? Seems fixing
the issue for me.

> Hope this helps,
> Guenter
> 

-- 
Regards,
Vincenzo

--->8---

Author: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date:   Wed Dec 4 16:58:55 2019 +0000

    arm: Fix __arch_get_hw_counter() access to CNTVCT

    __arch_get_hw_counter() should check clock_mode to see if it can access
    CNTVCT. With the conversion to unified vDSO this check has been left out.

    This causes on imx v6 and v7 (imx_v6_v7_defconfig) and other platforms to
    hang at boot during the execution of the init process as per below:

    [   19.976852] Run /sbin/init as init process
    [   20.044931] Kernel panic - not syncing: Attempted to kill init!
    exitcode=0x00000004

    Fix the problem verifying that clock_mode is set coherently before
    accessing CNTVCT.

    Cc: Russell King <linux@armlinux.org.uk>
    Reported-by: Guenter Roeck <linux@roeck-us.net>
    Investigated-by: Arnd Bergmann <arnd@arndb.de>
    Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

diff --git a/arch/arm/include/asm/vdso/gettimeofday.h
b/arch/arm/include/asm/vdso/gettimeofday.h
index 5b879ae7afc1..0ad2429c324f 100644
--- a/arch/arm/include/asm/vdso/gettimeofday.h
+++ b/arch/arm/include/asm/vdso/gettimeofday.h
@@ -75,6 +75,9 @@ static __always_inline u64 __arch_get_hw_counter(int clock_mode)
 #ifdef CONFIG_ARM_ARCH_TIMER
        u64 cycle_now;

+       if (!clock_mode)
+               return -EINVAL;
+
        isb();
        cycle_now = read_sysreg(CNTVCT);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
