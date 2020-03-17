Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6501188A93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ofow3Kjk+O+c8RQyGd+d8G8buJj9r24sREjTKUOL7Nc=; b=hCmOyuh3Q8PCIy
	jGHqpsSuRV3HcMykA4dqRHK0P98rHmX1DkT2Nc2SaSUTGoHAj79N28DhD/M16ndxqbivuRqthc1/Q
	KMtsohiH5WjD/7k7eN9RJNdK0vb3R+zKdxeEt6L01zueNggMZbOFMbDNEbc2fSsvweGas3cuNEO5X
	mKiFU6xy/IjvXipm7Dn6K+jG6A0X7YnFe74vDMRYUG4ojRSCflhEIQXVZJQCWnz06LnFYCLlM92g2
	5nbPzS+yEy84dWIZhwQM20zN4P5X7MIFq+5MuetZtwyAAjgJZ77dOiSPSk74calnCBF1X2irCDpto
	829+OwTXQ0BGyNhlI9PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFGe-0005nR-Cw; Tue, 17 Mar 2020 16:40:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFGT-0005mO-1P
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 16:40:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63A6630E;
 Tue, 17 Mar 2020 09:40:24 -0700 (PDT)
Received: from [10.37.12.228] (unknown [10.37.12.228])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 400063F52E;
 Tue, 17 Mar 2020 09:40:20 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
Date: Tue, 17 Mar 2020 16:40:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200317155031.GD632169@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_094025_165302_A47094F6 
X-CRM114-Status: GOOD (  28.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 3/17/20 3:50 PM, Catalin Marinas wrote:
> On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
>> On 3/17/20 2:38 PM, Catalin Marinas wrote:
>>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:

[...]

>>
>> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
> 
> TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
> arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
> -EFAULT on arm32? Which code path causes this in the user vdso code?
>

Sorry I got confused because you referred to arch/arm/vdso/vgettimeofday.c which
is the arm64 implementation, not the compat one :)

In the case of arm32 everything is handled via syscall fallback.

> My guess is that on arm32 it only fails with -EFAULT in the syscall
> fallback path since a copy_to_user() would fail the access_ok() check.
> Does it always take the fallback path if ts > TASK_SIZE?
> 

Correct, it goes via fallback. The return codes for these syscalls are specified
by the ABI [1]. Then I agree with you the way on which arm32 achieves it should
be via access_ok() check.

> On arm64, while we have a similar access_ok() check, USER_DS is (1 <<
> VA_BITS) even for compat tasks (52-bit maximum), so it doesn't detect
> the end of the user address space for 32-bit tasks.
> 

I agree on this as well, if you remember we discussed it in past.

> Is this an issue for other syscalls expecting EFAULT at UINTPTR_MAX and
> instead getting a signal? The vdsotest seems to be the only one assuming
> this. I don't have a simple solution here since USER_DS currently needs
> to be a constant (used in entry.S).
> 
> I could as well argue that this is not a valid ABI test, no real-world
> program relying on this behaviour ;).
> 

Ok, but I could argue that unless you manage to prove to me that there is no
software out there relying on this behavior, I guess that the safest way to go
is to have a check here ;)

More than that, being a simple check, it has no performance impact.

[...]

>>>
>>> This last check needs an explanation. If the clock_id is invalid but res
>>> is not NULL, we allow it. I don't see where the compatibility issue is,
>>> arm32 doesn't have such check.
>>
>> The case that you are describing has to return -EPERM per ABI spec. This case
>> has to return -EINVAL.
>>
>> The first case is taken care from the generic code. But if we don't do this
>> check before on arm64 compat we end up returning the wrong error code.
> 
> I guess I have the same question as above. Where does the arm32 code
> return -EINVAL for that case? Did it work correctly before you removed
> the TASK_SIZE_32 check?
>

I repeated the test and seems that it was failing even before I removed
TASK_SIZE_32. For reasons I can't explain I did not catch it before.

The getres syscall should return -EINVAL in the cases specified in [1].


> Sorry, just trying to figure out where the compatibility aspect is and
> that we don't add some artificial checks only to satisfy a vdsotest case
> that may or may not have relevance to any other user program.
> 

No issue Catalin. I understand the implications of the change that I am
proposing with this series and I am the first one who wants to get it right.

Said that vdsotest follows "pedantically" the ABI spec and I chose it at the
beginning of this journey to have as less surprises as I could in the long run.

[1] http://man7.org/linux/man-pages/man2/clock_getres.2.html

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
