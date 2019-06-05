Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D870535F4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 16:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNkDLi7hmGVZ3snxnUJ5jvMPJa2+mMvk5qpiQfHM8uY=; b=iK62Uk3tC25pqM
	7gqi2jIBtGe3IA+8Ryy3vKPvRU1qpwjHjMXXA2e5cBi0rUsWID+bCvTDYbmvLzYJCIayWAeZMgSj6
	NyWXXNIKjNplgGBLjErqgfulaqRCTsDg+y6nUXxioZz3uvhkyqtT3I+GAkjwSbsx4IDXhfn3odFeP
	5U8osifMpYjnBizLdz0rDDh8pV1D+CE5MV5E4ivurbGmfpLkP+BS1+Z9x+zUm2yWdJ7EDGP1DJIO8
	v+oWlkobhvVKQwb97UVzmPzMPxMHcX2+Lr4Hf643SXb7YMYhes/Q8IkP5YbOvHmg5LT1XBoa3VTDx
	+m1KuwO/tPUhocpw+Cug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWxq-0006vv-6o; Wed, 05 Jun 2019 14:32:30 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWxj-0006uz-GZ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 14:32:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 054BC374;
 Wed,  5 Jun 2019 07:32:21 -0700 (PDT)
Received: from [10.37.12.195] (unknown [10.37.12.195])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C1F23F246;
 Wed,  5 Jun 2019 07:32:17 -0700 (PDT)
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
To: Arnd Bergmann <arnd@arndb.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <CAK8P3a11DE0sXteZoaP_N=mDhx3tXitGKddn1ogtFqJBYO-SCA@mail.gmail.com>
 <d96667d5-e43b-d33a-fbd0-5acfb4904316@arm.com>
 <CAK8P3a3nxd7F5zLyD1SVarKjjKC0qvMEN8wP6R7zHY9HKdoe0w@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <ea965b5e-9be8-02e9-5dc0-ebbb330bcc2c@arm.com>
Date: Wed, 5 Jun 2019 15:32:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3nxd7F5zLyD1SVarKjjKC0qvMEN8wP6R7zHY9HKdoe0w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_073223_562229_D31173C9 
X-CRM114-Status: GOOD (  26.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/4/19 1:12 PM, Arnd Bergmann wrote:
> On Tue, Jun 4, 2019 at 2:05 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>> On 31/05/2019 09:46, Arnd Bergmann wrote:
>>> On Thu, May 30, 2019 at 4:15 PM Vincenzo Frascino
>>> <vincenzo.frascino@arm.com> wrote:
>>> One open question I touched in my review is whether we want to
>>> have a vdso version of clock_getres() in all architectures or not.
>>> I'd prefer to leave it out because there is very little advantage to
>>> it over the system call (the results don't change at runtime and
>>> can easily be cached by libc if performance ever matters), and
>>> it takes up a small amount of memory for the implementation.
>>>
>>
>> I thought about it and I ended up with what proposed in this patchset mainly for
>> symmetry across all the architectures since in the end they use the same common
>> code.
>>
>> It seems also that there is some performance impact (i.e.):
>>
>> clock-getres-monotonic:    libc(system call): 296 nsec/call
>> clock-getres-monotonic:    libc(vdso): 5 nsec/call
>>
>>
>> I agree with you though when you say that caching it in the libc is a
>> possibility to overcome the performance impact.
> 
> It's clear that the vdso version is much faster, my point was that
> I could not think of any use case that cared about it being fast.
> 

I do not know of any use case that cares, my point was that since we need to
implement it in the generic library for some architectures, for symmetry we can
extend it to all the architectures that support the generic vdso library.

> If there is a good reason for it, I also don't mind adding a
> clock_getres_time64() vdso version everywhere.

Totally agree on this.

> 
>>> We shouldn't just need it for consistency because all callers
>>> would require implementing a fallback to the system call
>>> anyway, to deal with old kernels.
>>>
>>
>> A way to address this issue would be to use versioning, which seems supported in
>> the vdso library (i.e. arch/x86/entry/vdso/vdso32/vdso32.lds.S).
>>
>> For example for x86 (vdso32) we would have something like:
>>
>> VERSION
>> {
>>         LINUX_5.3 (being optimistic here :) ) {
>>         global:
>>                 __vdso_clock_getres;
>>                 __vdso_clock_gettime64;
>>         };
>>         LINUX_2.6 {
>>         global:
>>                 __vdso_clock_gettime;
>>                 __vdso_gettimeofday;
>>                 __vdso_time;
>>         };
>>
>>         LINUX_2.5 {
>>         global:
>>                 __kernel_vsyscall;
>>                 __kernel_sigreturn;
>>                 __kernel_rt_sigreturn;
>>         local: *;
>>         };
>> }
>>
>> What do you think? Would this be a viable solution?
> 
> I actually never understood the point of symbol versioning
> in the vdso. What does that gain us? Note that there are
> no conflicting symbol names between the versions, and
> that nothing enforces the kernel headers to match the
> symbol version used when linking.
>

My understanding, based on [1] and [2] is that the version defines the minimum
kernel version from when a specific symbols is exposed and whenever this symbol
is requested from the vDSO the correct version needs to be specified.
Every "new" library, dealing with an "old" kernel, compliant with the exposed
ABI should implement the vDSO calls in this way and provide a fallback if the
vDSO function is not present (i.e. [3]).

[1] Documentation/ABI/stable/vdso
[2] tools/testing/selftests/vDSO/parse_vdso.c
[3]
https://github.com/lattera/glibc/blob/master/sysdeps/unix/sysv/linux/aarch64/gettimeofday.c


>       Arnd
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
