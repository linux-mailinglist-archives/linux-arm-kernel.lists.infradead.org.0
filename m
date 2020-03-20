Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1F18D14D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45y2+FaY5xWnXXT8lJNehgVyFzwbNjl3vKfcchlMOQQ=; b=SXiD6+xuQHukTD
	vbmo4iLCu50UqIxWoiVsyQxHoDW/Tg28uRZxVZqDEh1mUWw4az7aRYX0/lKKqX4azA04n7Y5E4YLW
	tqAOukWBtZFgp0mJcMIEr9qxkezTmd8iQKJkfON4kauDNPljC8TeAGlM/voqnTRIh0/Jqj3502rEU
	wJ5ofGlnsAmeHrBAaO4moXiAcVIXagH9TU344vpcOGHepyv9ldCJ+Wy3yff0jIRlyW/elkvudQbJy
	BU4kpB1JzumTatZUW8ny/bbftV2cIRgM2IFeWErQwhIu/4CXW4IAXluzESQrOeqf4OY8e6e/Qw6YD
	oOVdlFycRqksKamB5RvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFIqC-0001IE-93; Fri, 20 Mar 2020 14:41:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFIq5-0001Hn-R1
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:41:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7D161FB;
 Fri, 20 Mar 2020 07:41:32 -0700 (PDT)
Received: from [10.37.12.155] (unknown [10.37.12.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2EFB3F792;
 Fri, 20 Mar 2020 07:41:27 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com> <20200319181004.GA29214@mbp>
 <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com> <20200320142208.GC29214@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <46add8e3-dd04-9194-4196-4d8e5cd4c70f@arm.com>
Date: Fri, 20 Mar 2020 14:41:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200320142208.GC29214@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_074133_963066_ADCF1897 
X-CRM114-Status: GOOD (  20.41  )
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

On 3/20/20 2:22 PM, Catalin Marinas wrote:
> On Fri, Mar 20, 2020 at 01:05:14PM +0000, Vincenzo Frascino wrote:
>> On 3/19/20 6:10 PM, Catalin Marinas wrote:
>>> On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
>>>> On 3/18/20 6:36 PM, Catalin Marinas wrote:
>>>>> On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
>>>>>> On 3/17/20 5:48 PM, Catalin Marinas wrote:
[...]

>>
>> Thank you for the long chat this morning. As we agreed I am going to repost the
>> patches removing the checks discussed in this thread
> 
> Great, thanks.
> 
>> and we will address the syscall ABI difference subsequently with a
>> different series.
> 
> Now I'm even less convinced we need any additional patches. The arm64
> compat syscall would still return -EFAULT for res >= TASK_SIZE_32
> because copy_to_user() will fail. So it would be entirely consistent
> with the arm32 syscall. In the vdso-only case, both arm32 and arm64
> compat would generate a signal.
> 
> As Will said, arguably, the syscall semantics may not be applicable to
> the vdso implementation. But if you do want to get down this route (tp =
> UINTPTR_MAX - sizeof(*tp) returning -EFAULT), please do it for all
> architectures, not just arm64 compat. However, I'm not sure anyone
> relies on this functionality, other than the vdsotest, so no real
> application broken.
> 

It is ok, we will discuss the topic once we cross that bridge. I am already
happy that I managed to explain finally my reasons ;)

Anyway, I think that if there is an application that relies on this behavior (or
similar) and uses compat we will discover it as soon as these patches will be
out in the wild. For this reason I am putting a link to this discussion in the
commit message of the relevant patch so that we can take it from there.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
