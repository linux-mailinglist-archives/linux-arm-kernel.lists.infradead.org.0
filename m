Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F08018CE6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 14:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCrbXHEWnHRJt5lJl1RZYLXcViZ8R+JnU/wCJFe82Zk=; b=ap65yrW2L+7Om2
	r+sY0ugN67E5YrWIqX4V2rI6daEnFVZ54g8jK1TkIaz3SN0sNu8cIxNRl+EiDrBUtv1GpVuDfSs7L
	XumJRBbMTxXX8ql7CP5LLITOVU9JZHA1AY9y6Y0xmFAtaxgAE2a/Lyx4f0/Mo/3AnajHQWm64FG2r
	8CVls7LsI7o7LqieuTfvtovyfjpJcy6PGjEqNKA8Tro8xevlTYGJ3G0kdWPa05ppl6wkNpNYFL8dG
	svu2Oj17Hb88AnXS1LMPZokZuBXC27h5RnN4T+MtW6Vfw4REVXuPbm2VEe658rcvY5QwBrmwMWn0v
	jRdpXA8+PP6fVwno+P6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHKc-00029C-SA; Fri, 20 Mar 2020 13:04:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHKU-00028i-Ab
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 13:04:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9AB21FB;
 Fri, 20 Mar 2020 06:04:48 -0700 (PDT)
Received: from [10.37.12.155] (unknown [10.37.12.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1B3F3F85E;
 Fri, 20 Mar 2020 06:04:44 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com> <20200319181004.GA29214@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com>
Date: Fri, 20 Mar 2020 13:05:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319181004.GA29214@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_060450_455407_07D6B8DF 
X-CRM114-Status: GOOD (  18.19  )
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

Hi Catalin,

On 3/19/20 6:10 PM, Catalin Marinas wrote:
> Hi Vincenzo,
> 
> On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
>> On 3/18/20 6:36 PM, Catalin Marinas wrote:
>>> On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
>>>> On 3/17/20 5:48 PM, Catalin Marinas wrote:
>>>>> So clock_gettime() on arm32 always falls back to the syscall?
>>>>
>>>> This seems not what you asked, and I think I answered accordingly. Anyway, in
>>>> the case of arm32 the error code path is handled via syscall fallback.
>>>>
>>>> Look at the code below as an example (I am using getres because I know this
>>>> email will be already too long, and I do not want to add pointless code, but the
>>>> concept is the same for gettime and the others):
>>>>
>>>> static __maybe_unused
>>>> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
>>>> {
>>>> 	int ret = __cvdso_clock_getres_common(clock, res);
>>>>
>>>> 	if (unlikely(ret))
>>>> 		return clock_getres_fallback(clock, res);
>>>> 	return 0;
>>>> }
>>>>
>>>> When the return code of the "vdso" internal function returns an error the system
>>>> call is triggered.
>>>
>>> But when __cvdso_clock_getres_common() does *not* return an error, it
>>> means that it handled the clock_getres() call without a fallback to the
>>> syscall. I assume this is possible on arm32. When the clock_getres() is
>>> handled directly (not as a syscall), why doesn't arm32 need the same
>>> (res >= TASK_SIZE) check?
>>
>> Ok, I see what you mean.
> 
> I'm not sure.
> 
Thank you for the long chat this morning. As we agreed I am going to repost the
patches removing the checks discussed in this thread and we will address the
syscall ABI difference subsequently with a different series.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
