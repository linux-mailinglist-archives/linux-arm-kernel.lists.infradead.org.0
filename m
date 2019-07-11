Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACB9657A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 15:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTzmPvCO9cY4OEkHG3iwiaa0+qKq5KbZa6kkPs8dhfU=; b=H9IVjhoYmgIfek
	Xqa4IXYGNQlCj+OPKDGZleNl4z1N9YqGwV39CbLOkf4UlZ+8YJvSVPA0d8vNCs8OvgBQ71N1ChySg
	zmVw3B76YjJhvMDBobHkkkpdr/ohNR4s0FsmMK7YjA9aORsJOyk+ggz4fl7Ty/ZnqPof4bjwRrSdL
	XcQow8tFhfXfFZ75ji+IRZkZ6QLhX8nM03aUenpZqJyLW9TzekEVtw6aa98C+DxY85q7Vv4UbHPTK
	wPnWapsJo5p8zIs7mKfQzEzNxx3/9C5CFXDBYiakK/Q7tJ04hKL4e97igmN5Iystxrhr+xc3M51kY
	PUXUFpcLN/n2bpb5d5HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYoR-0004k9-5u; Thu, 11 Jul 2019 13:08:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYoH-0004iy-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 13:08:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B73762B;
 Thu, 11 Jul 2019 06:08:28 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4435C3F59C;
 Thu, 11 Jul 2019 06:08:26 -0700 (PDT)
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
To: Arnd Bergmann <arnd@arndb.de>
References: <20190710130206.1670830-1-arnd@arndb.de>
 <33511b0e-6d7b-c156-c415-7a609b049567@arm.com>
 <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <049c3a69-e2da-4169-da4a-8e46cbcd323c@arm.com>
Date: Thu, 11 Jul 2019 14:08:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_060830_043110_A37EBCB6 
X-CRM114-Status: GOOD (  22.85  )
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>, Mark Salyzyn <salyzyn@android.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 11/07/2019 13:28, Arnd Bergmann wrote:
> On Thu, Jul 11, 2019 at 2:14 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>>
>> Could you please tell me which version of the compiler did you use?
>>
>> My building command is:
>>
>> # make mrproper && make CC=clang HOSTCC=clang i386_defconfig && make ARCH=i386
>> CC=clang HOSTCC=clang -j56
>>
> 
> See below for the patch I am using locally to work around this.
> That patch is probably wrong, so I have not submitted it yet, but it
> gives you a clean build ;-)
> 
>      Arnd
> 

Thank you, I will give it a go :-)

> 8<---
> Subject: [PATCH] x86: percpu: fix clang 32-bit build
> 
> clang does not like an inline assembly with a "=q" contraint for
> a 64-bit output:
> 
> arch/x86/events/perf_event.h:824:21: error: invalid output size for
> constraint '=q'
>         u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
>                            ^
> include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^
> include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
>  #define raw_cpu_read(pcp)
> __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> include/linux/percpu-defs.h:322:23: note: expanded from macro
> '__pcpu_size_call_return'
>         case 1: pscr_ret__ = stem##1(variable); break;                  \
>                              ^
> <scratch space>:357:1: note: expanded from here
> raw_cpu_read_1
> ^
> arch/x86/include/asm/percpu.h:394:30: note: expanded from macro 'raw_cpu_read_1'
>  #define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
> 
> According to the commit that introduced the "q" constraint, this was
> needed to fix miscompilation, but it gives no further detail.
> 
> Using the normal "=r" constraint seems to work so far.
> 
> Fixes: 3c598766a2ba ("x86: fix percpu_{to,from}_op()")
> Cc: Jan Beulich <jbeulich@suse.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
> index 2278797c769d..e791fbf4018f 100644
> --- a/arch/x86/include/asm/percpu.h
> +++ b/arch/x86/include/asm/percpu.h
> @@ -99,7 +99,7 @@ do {                                                  \
>         case 1:                                         \
>                 asm qual (op "b %1,"__percpu_arg(0)     \
>                     : "+m" (var)                        \
> -                   : "qi" ((pto_T__)(val)));           \
> +                   : "ri" ((pto_T__)(val)));           \
>                 break;                                  \
>         case 2:                                         \
>                 asm qual (op "w %1,"__percpu_arg(0)     \
> @@ -144,7 +144,7 @@ do {
>                          \
>                 else                                                    \
>                         asm qual ("addb %1, "__percpu_arg(0)            \
>                             : "+m" (var)                                \
> -                           : "qi" ((pao_T__)(val)));                   \
> +                           : "ri" ((pao_T__)(val)));                   \
>                 break;                                                  \
>         case 2:                                                         \
>                 if (pao_ID__ == 1)                                      \
> @@ -186,7 +186,7 @@ do {
>                          \
>         switch (sizeof(var)) {                          \
>         case 1:                                         \
>                 asm qual (op "b "__percpu_arg(1)",%0"   \
> -                   : "=q" (pfo_ret__)                  \
> +                   : "=r" (pfo_ret__)                  \
>                     : "m" (var));                       \
>                 break;                                  \
>         case 2:                                         \
> @@ -215,7 +215,7 @@ do {
>                          \
>         switch (sizeof(var)) {                          \
>         case 1:                                         \
>                 asm(op "b "__percpu_arg(P1)",%0"        \
> -                   : "=q" (pfo_ret__)                  \
> +                   : "=r" (pfo_ret__)                  \
>                     : "p" (&(var)));                    \
>                 break;                                  \
>         case 2:                                         \
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
