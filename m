Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D6C3462C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alJbmN1CtHEgRfAr/PmCUji/ZY2ZXWIpDj1gHhHPt0Q=; b=Y5haEoV505hdvb
	v9G1bZBt4sx0xkw2lRhHrQhN+AdBC79mHMqJPbLyEjGWIYi6joJuKsXv0LD/trlicc65UA1t6v0qv
	5g1X4NAVeONEpUubVUqj8nFAsHi87rUGOFf6VyzRQinRTqJ3jewPW4PTknIQn2+CeICNpeAMHwnBB
	Xvkp1TefYkkbWgHawRWfnme72zhmNtdYRa8ImUEzVcZpaSBsWMgpzoZU6h8YTFTJEEbnkmFWD3pi5
	hdQ6+tcp5jVz0zUAXlziyC92UlULDF8knTX5Rzi89CNkR8KtZzhv0KwRp/Fqes0GQMa/zr42L9shq
	3HeCpDiVf6bwUE/DB/yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8Bq-0000UG-Mt; Tue, 04 Jun 2019 12:05:18 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8Be-0007oc-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:05:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2AF3280D;
 Tue,  4 Jun 2019 05:05:03 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 348353F690;
 Tue,  4 Jun 2019 05:05:00 -0700 (PDT)
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
To: Arnd Bergmann <arnd@arndb.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <CAK8P3a11DE0sXteZoaP_N=mDhx3tXitGKddn1ogtFqJBYO-SCA@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <d96667d5-e43b-d33a-fbd0-5acfb4904316@arm.com>
Date: Tue, 4 Jun 2019 13:04:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a11DE0sXteZoaP_N=mDhx3tXitGKddn1ogtFqJBYO-SCA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_050506_920187_65BDEB2B 
X-CRM114-Status: GOOD (  24.12  )
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

Hi Arnd,

thank you for your review.

On 31/05/2019 09:46, Arnd Bergmann wrote:
> On Thu, May 30, 2019 at 4:15 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> vDSO (virtual dynamic shared object) is a mechanism that the Linux
>> kernel provides as an alternative to system calls to reduce where
>> possible the costs in terms of cycles.
>> This is possible because certain syscalls like gettimeofday() do
>> not write any data and return one or more values that are stored
>> in the kernel, which makes relatively safe calling them directly
>> as a library function.
> 
> Hi Vincento,
> 
> I've very happy with how this turned out overall, and as far as I can
> tell you have addressed all my previous comments. I had another
> look through the series and only noticed a few very minor issues.
> 

Thanks! I agree with what you pointed out in the single patches, I will wait for
Thomas to review them as well and then will address all the comments in v7.

...

> 
> One open question I touched in my review is whether we want to
> have a vdso version of clock_getres() in all architectures or not.
> I'd prefer to leave it out because there is very little advantage to
> it over the system call (the results don't change at runtime and
> can easily be cached by libc if performance ever matters), and
> it takes up a small amount of memory for the implementation.
> 

I thought about it and I ended up with what proposed in this patchset mainly for
symmetry across all the architectures since in the end they use the same common
code.

It seems also that there is some performance impact (i.e.):

clock-getres-monotonic:    libc(system call): 296 nsec/call
clock-getres-monotonic:    libc(vdso): 5 nsec/call


I agree with you though when you say that caching it in the libc is a
possibility to overcome the performance impact.

> We shouldn't just need it for consistency because all callers
> would require implementing a fallback to the system call
> anyway, to deal with old kernels.
> 

A way to address this issue would be to use versioning, which seems supported in
the vdso library (i.e. arch/x86/entry/vdso/vdso32/vdso32.lds.S).

For example for x86 (vdso32) we would have something like:

VERSION
{
	LINUX_5.3 (being optimistic here :) ) {
	global:
                __vdso_clock_getres;
                __vdso_clock_gettime64;
        };
        LINUX_2.6 {
        global:
                __vdso_clock_gettime;
                __vdso_gettimeofday;
                __vdso_time;
        };

        LINUX_2.5 {
        global:
                __kernel_vsyscall;
                __kernel_sigreturn;
                __kernel_rt_sigreturn;
        local: *;
        };
}

What do you think? Would this be a viable solution?

> If anyone comes up with a good reason why it should be added
> after all, let me know and I'll stop mentioning it.
> 
>       Arnd
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
