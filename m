Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B16C565D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iE7P9MQ5w/ySmWTPGo//mNXX/KVLW0nSiY2N4slefXg=; b=Y1/r3H2fjwnpdd
	n+qU4sPuEhOF5QkzuwlTj3BYm+N0S0b/EFYz0barmh3nyiA/CY/S0bOQw8S7ApvnAahwdRethNUUu
	TJpqPEWBB7cTt+ueaY39WnNsMBJMPbOBMgIncRuMOs03xgAXEq1IgS0otLHqrzcMr2ezHC+wqrEkf
	0V+Ubcyo5bRPLOFuDRnUJlpGGW/0jekWXyvtr+YBYuqyXOxAyWtp6JxcZFJ1qhqmqYv5kRXRjLG/p
	haf/hA9hPmYObZ3se2y6C9chQ1rqgj3eXCLY6IAK7g53bArF6P7Ta5ebS3Qk2NMBznUngAS+EFRj3
	FjZl7wWodn9a3PqbsCQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4V3-000691-DZ; Wed, 26 Jun 2019 09:45:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4Ur-00068g-6s
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:45:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6D372B;
 Wed, 26 Jun 2019 02:45:43 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B57BF3F718;
 Wed, 26 Jun 2019 02:45:42 -0700 (PDT)
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Will Deacon <will@kernel.org>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
 <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
 <CAKwvOdmCFjunXRbninTdqoDGPNJ6b7npgXLAPYGqFZas5ofNjw@mail.gmail.com>
 <193c179e-16ca-4b4e-2584-75e8f6c1819f@arm.com>
 <20190626093836.y2lofo54rhxw3xsm@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <897bf622-0f89-14f2-d278-b22f640b78f4@arm.com>
Date: Wed, 26 Jun 2019 10:45:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190626093836.y2lofo54rhxw3xsm@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_024545_299437_664A138A 
X-CRM114-Status: GOOD (  16.08  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, Qian Cai <cai@lca.pw>,
 Thomas Gleixner <tglx@linutronix.de>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 26/06/2019 10:38, Will Deacon wrote:
> On Tue, Jun 25, 2019 at 06:00:27PM +0100, Vincenzo Frascino wrote:
>> On 25/06/2019 17:26, Nick Desaulniers wrote:
>>> On Tue, Jun 25, 2019 at 7:54 AM Vincenzo Frascino
>>> <vincenzo.frascino@arm.com> wrote:
>>>>> but clang 7.0 is still use in many distros by default, so maybe this commit can
>>>>> be fixed by adding a conditional check to use "small" if clang version < 8.0.
>>>>>
>>>>
>>>> Could you please verify that the patch below works for you?
>>>
>>> Should it be checking against CONFIG_CLANG_VERSION, or better yet be
>>> using cc-option macro?
>>>
>>
>> This is what I did in my proposed patch, but I was surprised that clang-7
>> generates relocations that clang-8 does not.
>>
>>   LD      arch/arm64/kernel/vdso/vdso.so.dbg
>>   VDSOCHK arch/arm64/kernel/vdso/vdso.so.dbg
>> 00000000000009d0 R_AARCH64_JUMP_SLOT  _mcount
> 
> Hmm. It would be nice to understand where the reference to _mcount is coming
> from, since that sounds like ftrace is getting involved where it shouldn't
> be.
> 

That's very true, it was a mistake in the Makefile change that I provided with
the original iteration of this patch, that had as a side effect of having ftrace
involved (_mcount is defined in entry-ftrace.c).

I was overriding:

CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os

with:

CFLAGS_REMOVE_vgettimeofday.o = -mcmodel=tiny (selected if clang is < 8)

that's why I said that I missed a "+" in my previous patch.

Having:

CFLAGS_REMOVE_vgettimeofday.o += -mcmodel=tiny

restores the wanted behavior.

Sorry for not being clear in my explanation.

> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
