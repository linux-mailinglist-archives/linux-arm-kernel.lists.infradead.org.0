Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B769065676
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIcJMHecLGg5RbKlav1BKjmoC8BpmsNMzPfW2b6PA9E=; b=Wv+8PmMghXehDN
	0kpiLXDNhCKvz8uu13Up26ARv+r3Cny+SSt/xtdE6ydnfpr3tFwN+KvRLHSl+n636ZkzhL4C3PO4h
	WjyL+oPqSY5nlbALK/gb9y11dwY9E+rGAt5mnFVMqkCdmwGEH+nSakxzy9are083sR7qLgGEpsZCE
	vwV2A5AWHyn+PYoEbAZtxOt0SpfiwWX8mv1CkQ0EtqOsY6aYEU+Tgsk4yHHflJ1iX1xyf3OVuUrg4
	UGSePZVl12ai/zPxPqkevlffNW3sfIUnnjcJf9744bTzVD2C+sujoqQazJRk8DBtYsNWu9vskBhou
	12ftIDl86qSy2sirJFgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXyU-00062R-Rv; Thu, 11 Jul 2019 12:14:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXyM-0005y1-SL
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:14:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E72F92B;
 Thu, 11 Jul 2019 05:14:42 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A80C3F59C;
 Thu, 11 Jul 2019 05:14:40 -0700 (PDT)
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
To: Arnd Bergmann <arnd@arndb.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <20190710130206.1670830-1-arnd@arndb.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <33511b0e-6d7b-c156-c415-7a609b049567@arm.com>
Date: Thu, 11 Jul 2019 13:14:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710130206.1670830-1-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_051451_014633_4FE19E74 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 10/07/2019 14:01, Arnd Bergmann wrote:
> On 32-bit x86 when building with clang-9, the loop gets turned back into
> an inefficient division that causes a link error:
> 
> kernel/time/vsyscall.o: In function `update_vsyscall':
> vsyscall.c:(.text+0xe3): undefined reference to `__udivdi3'
> 
> Use the provided __iter_div_u64_rem() function that is meant to address
> the same case in other files.
> 
> Fixes: 44f57d788e7d ("timekeeping: Provide a generic update_vsyscall() implementation")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  kernel/time/vsyscall.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/kernel/time/vsyscall.c b/kernel/time/vsyscall.c
> index a80893180826..8cf3596a4ce6 100644
> --- a/kernel/time/vsyscall.c
> +++ b/kernel/time/vsyscall.c
> @@ -104,11 +104,7 @@ void update_vsyscall(struct timekeeper *tk)
>  	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
>  	nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
>  	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
> -	while (nsec >= NSEC_PER_SEC) {
> -		nsec = nsec - NSEC_PER_SEC;
> -		vdso_ts->sec++;
> -	}
> -	vdso_ts->nsec	= nsec;
> +	vdso_ts->sec	+= __iter_div_u64_rem(nsec, NSEC_PER_SEC, &vdso_ts->nsec);
>  
>  	if (__arch_use_vsyscall(vdata))
>  		update_vdso_data(vdata, tk);
> 

I am trying to test this patch using clang-9 tip:

# clang -v
clang version 9.0.0 (git@github.com:llvm-mirror/clang.git
6ed0749151866894a67a3e7eefdc1f3a547daa0e) (git@github.com:llvm-mirror/llvm.git
a10a70238ace1093cad3adeb94814b422bd1b5c1)

but I get a lot of errors similar to the one below:

In file included from ~/linux/arch/x86/events/amd/core.c:11:
~/linux/arch/x86/events/amd/../perf_event.h:824:21: error: invalid output size
for constraint '=q'
        u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
                           ^
~/linux/include/linux/percpu-defs.h:447:2: note: expanded from macro
'__this_cpu_read'
        raw_cpu_read(pcp);                                              \
        ^
~/linux/include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
#define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
                                        ^
~/linux/include/linux/percpu-defs.h:322:23: note: expanded from macro
'__pcpu_size_call_return'
        case 1: pscr_ret__ = stem##1(variable); break;                  \
                             ^
<scratch space>:110:1: note: expanded from here
raw_cpu_read_1
^
~/linux/arch/x86/include/asm/percpu.h:394:30: note: expanded from macro
'raw_cpu_read_1'
#define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
                                        ^
~/linux/arch/x86/include/asm/percpu.h:189:15: note: expanded from macro
'percpu_from_op'
                    : "=q" (pfo_ret__)                  \

Could you please tell me which version of the compiler did you use?

My building command is:

# make mrproper && make CC=clang HOSTCC=clang i386_defconfig && make ARCH=i386
CC=clang HOSTCC=clang -j56

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
