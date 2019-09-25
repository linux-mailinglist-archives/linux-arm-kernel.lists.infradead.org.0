Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C269BBE8F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 01:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt1nfmT6h8wmMLf9pXwTDasjIJqlGc4FXpLClUK/ZTQ=; b=R5yYm7OacTG5lM
	DXAoLtXE5oggDAs3tF3Wnme//AWmNhl37q2PPKBPb0gF1D2+L2Rqv2l6VBuZHcaP15ISe0ehH7D1g
	6RTKL8zaJCErDa6Ig0ieXvgEqhpQbFUtwUKBv7ialPF8SWnWtg3Ee2Aj2saFvITteLoZn5k6W3I9x
	jasZLKAwx457fhc0eiyrFWcWcBJYiWtWYoX2JhKmsEoHpePmqXhgrszNcvVtOAkdC5hLbpak5L2gB
	nW0Jj94UVBV/hVWhbsZ26+Uzzw/0rtkrfez9fHOAtNKtYbOmr74v0x6Qc5b7PxPv+iqMDikhDNU8n
	jV0qcHOmvHrJLRMGm37g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGn2-00061Z-LJ; Wed, 25 Sep 2019 23:33:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGmo-00060Z-Jy
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 23:33:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 338911000;
 Wed, 25 Sep 2019 16:33:27 -0700 (PDT)
Received: from [172.23.27.158] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 792373F67D;
 Wed, 25 Sep 2019 16:33:25 -0700 (PDT)
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
To: Nick Desaulniers <ndesaulniers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20190925130926.50674-1-catalin.marinas@arm.com>
 <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
 <20190925170838.GK7042@arrakis.emea.arm.com>
 <CAKwvOd=GcF0Tv2-h0LNMvCzx+tm5skKW1J7P=NTf8xYbmPiOPw@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <868f7611-4f66-7273-a7fd-65a8a6d9216d@arm.com>
Date: Thu, 26 Sep 2019 00:35:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=GcF0Tv2-h0LNMvCzx+tm5skKW1J7P=NTf8xYbmPiOPw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_163330_746676_013ADF00 
X-CRM114-Status: GOOD (  25.14  )
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/25/19 6:31 PM, Nick Desaulniers wrote:
> On Wed, Sep 25, 2019 at 10:08 AM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
>>
>> This is just a temporary hiding of the issue, not a complete fix.
> 
> Yep.
> 
>> Vincenzo will do the fix later on.
> 
> Appreciated, I'm happy to help discuss, review, and test.
> 
>>>> - check whether COMPATCC is clang or not rather than CC_IS_CLANG, which
>>>>   only checks the native compiler
>>>
>>> When cross compiling, IIUC CC_IS_CLANG is referring to CC which is the
>>> cross compiler, which is different than HOSTCC which is the host
>>> compiler.  HOSTCC is used mostly for things in scripts/ while CC is
>>> used to compile a majority of the kernel in a cross compile.
>>
>> We need the third compiler here for the compat vDSO (at least with gcc),
>> COMPATCC. I'm tempted to just drop the CONFIG_CROSS_COMPILE_COMPAT_VDSO
>> altogether and only rely on a COMPATCC. This way we can add
>> COMPATCC_IS_CLANG etc. in the Kconfig checks directly.
> 
> Oh, man, yeah 3 compilers in that case:
> 1. HOSTCC
> 2. CC
> 3. COMPATCC
>

The easier way I found to encapsulate the three compilers is using
CONFIG_CROSS_COMPILE_COMPAT_VDSO, hence I would prefer to not drop it.

In the case of gcc:
-------------------

CROSS_COMPILE_COMPAT ?= $(CONFIG_CROSS_COMPILE_COMPAT_VDSO:"%"=%)

$(CROSS_COMPILE_COMPAT)gcc ...

In the case of clang:
---------------------

CLANG_TRIPLE ?= $(CONFIG_CROSS_COMPILE_COMPAT_VDSO:"%-"=%)

clang --target=$(notdir $CLANG_TRIPLE)

This will prevent the vdso32 library generation to depend from a fixed
configuration that might change in future.

Based on this work we will be able to add COMPAT_CC_IS_CLANG, COMPAT_CC_IS_GCC
and COMPAT_CC_GCC_VERSION, COMPAT_CC_CLANG_VERSION which will help us in a more
fine grain control of the compiler versions.

The clang support will be added shortly after the header problems have been
addressed, because without that and the possibility to have 32bit headers in
arm64 would result in a broken target.

>>
>> If clang can build both 32 and 64-bit with the same binary (just
>> different options), we could maybe have COMPATCC default to CC and add a
>> check on whether COMPATCC generates 32-bit binaries.
> 
> Cross compilation work differently between GCC and Clang from a
> developers perspective. In GCC, at ./configure time you select which
> architecture you'd like to cross compile for, and you get one binary
> that targets one architecture.  You get a nice compiler that can do
> mostly static dispatch at the cost of needing multiple binaries in
> admittedly rare scenarios like the one we have here.  Clang defaults
> to all backends enabled when invoking cmake (though there are options
> to enable certain backends; Sony for instance enables only x86_64 for
> their PS4 SDK (and thus I break their build frequently with my arm64
> unit tests)).
> 
> Clang can do all of the above with one binary.  The codebase makes
> heavy use of OOP+virtual dispatch to run ISA specific and general code
> transformations (virtual dispatch is slower than static dispatch, but
> relative to what the compiler is actually doing, I suspect the effects
> are minimal. Folks are also heavily invested in researching
> "devirtualization").  With one clang binary, I can do:
> 
> # implicitly uses the host's ISA, for me that's x86_64-linux-gnu
> $ clang foo.c
> $ clang -target aarch64-linux-gnu foo.c
> $ clang -target arm-linux-gnueabi foo.c
> 
> Admittedly, it's not as simple for the kernel's case; the top level
> Makefile sets some flags to support invoking Clang from a non-standard
> location, and telling it where to find binutils because we can't
> assemble the kernel with LLVM's substitute for GAS).
> 

Thank you for the explanation, if I understand it correctly the strategy
proposed above should cover all the cased proposed. Please, let me know if i
need to tweak something.

The plan is to use binutils to build the vdso libraries with both the compilers.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
