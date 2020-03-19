Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E2618BD2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvFSnnYGtUIKzNHOYKg914Ld+X7yL0OuUJ/Dn4A4Uas=; b=UvPF4XlHS29sVk
	I6GVDHUx0L/OmMlPYBtbRVP/3PyLl0HFniCJOV/FW658rbEz4jdqgB7XkhQFnc+Nj03n21gWsCxiX
	TnD36vv8b1cgLtFgg3yNn3bHY25YvZwaLBskGO/BniptZLE9cjkwz7Ldql/lhQQUWQTlrktY9WnJL
	wYx2AQXADXlfpS1+GP8BSbSfTgJI+t95+YxZktlQ7Jdkqoh+GGIMCMI7QXHMJ5Aum54T3/NIzF/Rb
	AsnYQ6ai9LqkoUCLkisFIGmLXaDPEJqLftRwDg9TbkDmPv+49KQQ7gmLvMoVHByOehMfSX3y7R8C4
	9NzPKhbxW9TgUJ5sE/yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyUL-0004sV-NQ; Thu, 19 Mar 2020 16:57:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyUE-0004rX-CA
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:57:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 052B930E;
 Thu, 19 Mar 2020 09:57:36 -0700 (PDT)
Received: from [10.37.12.142] (unknown [10.37.12.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3018C3F305;
 Thu, 19 Mar 2020 09:57:31 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Andy Lutomirski <luto@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <78109f4e-c9c7-57b6-079b-c911b6090aa0@arm.com>
Date: Thu, 19 Mar 2020 16:58:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_095738_508159_C2803729 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>, Will Deacon <will@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
 X86 ML <x86@kernel.org>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Andrei Vagin <avagin@openvz.org>, Stephen Boyd <sboyd@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On 3/19/20 3:49 PM, Andy Lutomirski wrote:
> On Tue, Mar 17, 2020 at 7:38 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>>
>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
>>> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
>>> index 54fc1c2ce93f..91138077b073 100644
>>> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
>>> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
>>> @@ -8,11 +8,14 @@
>>>  #include <linux/time.h>
>>>  #include <linux/types.h>
>>>
>>> +#define VALID_CLOCK_ID(x) \
>>> +     ((x >= 0) && (x < VDSO_BASES))
>>> +
>>>  int __vdso_clock_gettime(clockid_t clock,
>>>                        struct old_timespec32 *ts)
>>>  {
>>>       /* The checks below are required for ABI consistency with arm */
>>> -     if ((u32)ts >= TASK_SIZE_32)
>>> +     if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>>               return -EFAULT;
>>>
>>>       return __cvdso_clock_gettime32(clock, ts);
>>
>> I probably miss something but I can't find the TASK_SIZE check in the
>> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
>>
> 
> Can you not just remove the TASK_SIZE_32 check entirely?  If you pass
> a garbage address to the vDSO, you are quite likely to get SIGSEGV.
> Why does this particular type of error need special handling?
> 

In this particular case the system call and the vDSO library as it stands
returns -EFAULT on all the architectures that support the vdso library except on
arm64 compat. The reason why it does not return the correct error code, as I was
discussing with Catalin, it is because arm64 uses USER_DS (addr_limit set
happens in arch/arm64/kernel/entry.S), which is defined as (1 << VA_BITS), as
access_ok() validation even on compat tasks and since arm64 supports up to 52bit
VA, this does not detect the end of the user address space for a 32 bit task.
Hence when we fall back on the system call we get the wrong error code out of it.

According to me to have ABI consistency we need this check, but if we say that
we can make an ABI exception in this case, I am fine with that either if it has
enough consensus.

Please let me know your thoughts.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
