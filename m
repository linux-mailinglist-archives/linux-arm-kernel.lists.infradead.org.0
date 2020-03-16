Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC53186F9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 17:05:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ulxbo3Q8gQ8mj9gTS+bLeKxUaWOecmEYK/Ns+Y/YNI=; b=c6zKDCM7ZEBHk6
	Ca+zj2gfwggO92Amhte2FxuDMxliwl2Duyk04oI8UtgzHzS3uibKFfNrLPliAbuRC3jge/g48aaCj
	eFNXliU1Su4y3lQ6Rz8R5pJbIX7ZYo5nf7R7hhYYAqC8Ek/FYfnQpq9X8FmwfyAE5/rlFTqYyQfop
	PsgRS5y/oqDuQI05Jy3u92ixzB1rExI070Sbp4WNS7il9q3ucxqMW9B/M+b7yPRUyhYIGHU3tP2K3
	YImpX6tPf6I0ZzH81TBUqcoI09hnFyrXys4ARSrVmQbXW/gjS5PChCaaaR+A6amP10y6kTOH5w5JN
	N5lDxBpBpd/oEsXhwLbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsEo-0001lZ-F3; Mon, 16 Mar 2020 16:05:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsEa-0001l9-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 16:04:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE4C71FB;
 Mon, 16 Mar 2020 09:04:54 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D35C33F534;
 Mon, 16 Mar 2020 09:04:49 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp> <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
 <20200316112205.GE3005@mbp> <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
 <20200316144346.GF3005@mbp> <427064ee-45df-233c-0281-69e3d62ba784@arm.com>
 <20200316154930.GG3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <53eb7809-9da8-33e5-540f-7546de51b53d@arm.com>
Date: Mon, 16 Mar 2020 16:05:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316154930.GG3005@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_090456_150719_DED2C1AE 
X-CRM114-Status: GOOD (  18.46  )
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

On 3/16/20 3:49 PM, Catalin Marinas wrote:
> On Mon, Mar 16, 2020 at 03:33:30PM +0000, Vincenzo Frascino wrote:
>> On 3/16/20 2:43 PM, Catalin Marinas wrote[...]
[...]
> 
>> To make it more explicit we could make COMPAT_VDSO on arm64 depend on
>> ARM64_4K_PAGES. What do you think?
> 
> No, I don't see why we should add this limitation.
> 

Fine by me.

>>>> Please find below the list of errors for clock_gettime (similar for the other):
>>>>
>>>> passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
>>>> clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered
>>>
>>> Ah, so it uses UINTPTR_MAX in the test. Fair enough but I don't think
>>> the arm64 check is entirely useful. On arm32, the check was meant to
>>> return -EFAULT for addresses beyond TASK_SIZE that may enter into the
>>> kernel or module space. On arm64 compat, the kernel space is well above
>>> the reach of the 32-bit code.
>>>
>>> If you want to preserve some compatibility for this specific test, what
>>> about checking for wrapping around 0, I think it would make more sense.
>>> Something like:
>>>
>>> 	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>
>> Ok, sounds good to me. But it is something that this patch series inherited,
>> hence I would prefer to send a separate patch that introduces what you are
>> proposing and removes TASK_SIZE_32 from the headers. How does it sound?
> 
> I'd rather avoid moving TASK_SIZE_32 unnecessarily. Just add a
> preparatory patch to your series for arm64 compat vdso and follow with
> the rest without moving TASK_SIZE_32 around.
> 

Ok, sounds good. I will test it and repost.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
