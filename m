Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F4B159DC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G//SH/hsM2Z3Uz6PEEum1FQuP1Ehaeg+278ZZYrf1wk=; b=U4OI5BJ1VnPyrm6ej8slOqseJ
	0jO8JbNVoXGjrwCNjUKXg+q4Nqy/JEKSylV22bZa+PStKSzDzqLvYMhU5ChKcHAffEwAguih8ywGG
	lS4tAcTJAbzWMvi3VRlHIbWyjr8yg1DfjRo7p8I1KThFJT5EewXL/QOhYSKnCQnajUP3EOjqL35PT
	IVpC1PQULMY8qfBCrBiH9wbkD+A/ML2irhgRN6/a7pRGr1Xx0kQE7uajvYZDHOFcT0rFi3ydgwt5X
	m2hXDBuWSRjqX0rPTJjzKspXRF4GlNSHN1qCnWCFBGqbLTNZpVjSU9JsNDDuuW1fY4qo2f1cHU4tR
	xhrBFR1cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1fUE-0002t1-7D; Wed, 12 Feb 2020 00:02:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1fU7-0002rx-23
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 00:02:32 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93D0C20724;
 Wed, 12 Feb 2020 00:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581465749;
 bh=VXj1a+npI+7ydAyG+Owt//6Nop6TGqj0xGSkiZ+iHYA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=peRaHaSjJBWu0RxNWsbg2RkLC4l6xVY/UNgyg4oYdntqHFeDLMDpCQq3ZzzKuUrOA
 zeKtNvUu0+uN19gu6qqY1w2j4lz2W0GQnIGL18vKQttilbW3vUx2lHkkkV77SlzbVT
 RktuuaFjkVVQ6c/0oY+eZo3VzmOB0u5pYTbjNi84=
Subject: Re: [PATCH v3 7/7] selftests/exec: Add READ_IMPLIES_EXEC tests
To: Kees Cook <keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
 <20200210193049.64362-8-keescook@chromium.org>
 <4f8a5036-dc2a-90ad-5fc8-69560a5dd78e@kernel.org>
 <202002111124.0A334167@keescook>
 <c09c345a-786f-25d2-1ee5-65f9cb23db6d@kernel.org>
 <202002111549.CF18B7B3B@keescook>
From: shuah <shuah@kernel.org>
Message-ID: <36e45314-b672-b211-72c5-eef1d48984c0@kernel.org>
Date: Tue, 11 Feb 2020 17:02:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <202002111549.CF18B7B3B@keescook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_160231_145477_9E3E41C4 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Hector Marco-Gisbert <hecmargi@upv.es>,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@mellanox.com>,
 linux-kselftest@vger.kernel.org, kernel-hardening@lists.openwall.com,
 shuah <shuah@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/11/20 4:54 PM, Kees Cook wrote:
> On Tue, Feb 11, 2020 at 02:06:53PM -0700, shuah wrote:
>> On 2/11/20 12:25 PM, Kees Cook wrote:
>>> On Tue, Feb 11, 2020 at 11:11:21AM -0700, shuah wrote:
>>>> On 2/10/20 12:30 PM, Kees Cook wrote:
>>>>> In order to check the matrix of possible states for handling
>>>>> READ_IMPLIES_EXEC across native, compat, and the state of PT_GNU_STACK,
>>>>> add tests for these execution conditions.
>>>>>
>>>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>>>
>>>> No issues for this to go through tip.
>>>>
>>>> A few problems to fix first. This fails to compile when 32-bit libraries
>>>> aren't installed. It should fail the 32-bit part and run other checks.
>>>
>>> Do you mean the Makefile should detect the missing compat build deps and
>>> avoid building them? Testing compat is pretty important to this test, so
>>> it seems like missing the build deps causing the build to fail is the
>>> correct action here. This is likely true for the x86/ selftests too.
>>>
>>> What would you like this to do?
>>>
>>
>> selftests/x86 does this already and runs the dependency check in
>> x86/Makefile.
>>
>>
>> check_cc.sh:# check_cc.sh - Helper to test userspace compilation support
>> Makefile:CAN_BUILD_I386 := $(shell ./check_cc.sh $(CC)
>> trivial_32bit_program.c -m32)
>> Makefile:CAN_BUILD_X86_64 := $(shell ./check_cc.sh $(CC)
>> trivial_64bit_program.c)
>> Makefile:CAN_BUILD_WITH_NOPIE := $(shell ./check_cc.sh $(CC)
>> trivial_program.c -no-pie)
>>
>> Take a look and see if you can leverage this.
> 
> I did before, and it can certainly be done, but their stuff is somewhat
> specific to x86_64/ia32. I'm looking at supporting _all_ compat for any
> 64-bit architecture. I can certainly write some similar build tooling,
> but the question I have for you is one of coverage:
> 
> If a builder is 64-bit, it needs to be able to produce 32-bit compat
> binaries for testing, otherwise the test is incomplete. (i.e. the tests
> will only be able to test native behavior and not compat). This doesn't
> seem like an "XFAIL" situation to me, and it doesn't seem right to
> silently pass. It seems like the build should explicitly fail because
> the needed prerequisites are missing. Do you instead want me to just
> have it skip building the compat binaries if it can't build them?
> 

Can we do the following:


Build and run tests thatc an be built.
Skip build and warn that test coverage is incomplete for compat
with a strong recommendation on installing 32-bit libraries with
some instructions on how to if applicable.

thanks,
-- Shuah

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
