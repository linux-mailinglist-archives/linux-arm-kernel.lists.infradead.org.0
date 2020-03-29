Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D90196F1A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 20:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3V+iF8JO8OH25Xy2pfiKXBQSvzna5yGhDEPNWiDl+EI=; b=p7WvKoo3mXnYkT
	g4dJUDGHlp2rCMNe0KeZ9DfVFMFD365OvFRkcR5OQvKoGv7r5AZT1xwlfFiIhe9Z1NSHZeE4z73yT
	5A88zjOZoGMbmuGG+G6zBrkMZJDc0N9N556DeTb5ahxqGaNkKWciYx9piMnueDGaOeS7W9BT8eeWR
	HJseVme+n+HwLvCp956GrjV345Ac2wbfZHBF51MH4E7sWl5bj1Ys2f0H2KKJk+xpxJiGTdNRbbR6o
	mXb3OdA6O7NO/uysPCIag7ibgugshN7eV46xZFvO1ptAFTcMvpkws5+rbaUQTlMcuiGrEWOyffLAA
	Hki58+Dk3+x4+PjH9kww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIcGu-0000PI-Bo; Sun, 29 Mar 2020 18:02:56 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIcGk-0000OL-Ct
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 18:02:48 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 1322D5C4E62;
 Sun, 29 Mar 2020 20:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1585504960;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b9KjmaInreQ1tydeO4+d2Tu0zpyS1eiXjbaSxIllgiU=;
 b=C/RqPRCXjLhWk84XCkxEpAz6C6eU8DoWZh5HF/QbiE6W8nT6MBPglT9ScEq3JaK3lLMdmn
 OYd1TygqS5m+8smVmpFAHoHcE0Rsc6DLUzTyvL4vNAwFF1Q2oC8Mv3jUhHZN5ob+r/SlyJ
 ECL4k0WAP4ORh9Na8akRL7LN8oix/o0=
MIME-Version: 1.0
Date: Sun, 29 Mar 2020 20:02:40 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: warn if pre-UAL assembler syntax is used
In-Reply-To: <dc6a2492b5d7726ccda09ae69543f62f@agner.ch>
References: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
 <CAKwvOdneF5nXgx3Rh6=NhPK+q93VRhs7mDCcK2eGY0e2rOqqnQ@mail.gmail.com>
 <dc6a2492b5d7726ccda09ae69543f62f@agner.ch>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <b981bc51076bc1abe13ef85041677a78@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_110246_883906_A5ACBE7F 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Jian Cai <jiancai@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Manoj Gupta <manojgupta@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-17 08:55, Stefan Agner wrote:
> On 2020-03-17 01:00, Nick Desaulniers wrote:
>> Revert "ARM: 8846/1: warn if divided syntax assembler is used"On Thu,
>> Feb 27, 2020 at 4:19 PM Stefan Agner <stefan@agner.ch> wrote:
>>>
>>> Remove the -mno-warn-deprecated assembler flag for GCC versions newer
>>> than 5.1 to make sure the GNU assembler warns in case non-unified
>>> syntax is used.
>>
>> Hi Stefan, sorry for the late reply from me; digging out my backlog.
>> Do you happen to have a godbolt link perhaps that demonstrates this?
>> It sounds like GCC itself is emitting pre-UAL?
> 
> Yes, that is what Russell observed and caused the revert:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b752bb405a13
> 
> I do not have a godbolt link at hand, I just built the complete kernel
> using some GCC toolchains I had locally available and noticed that the
> problem persists up to and including GCC 5.0. I did not track down what
> exactly is causing GCC to emit pre-UAL.

Godbolt link:
https://godbolt.org/z/fxYq_s

However, the warning does not appear on godbolt.org, presumably because
the compiler is started such that it does not invoke the assembler (at
least that is what I understand when using -v). However, on my end this
leads to:

$ arm-linux-gnueabihf-gcc -marm -march=armv7-a -O2  -c  test.c -o test
--save-temps
test.s: Assembler messages:
test.s:33: Warning: conditional infixes are deprecated in unified syntax
$ arm-linux-gnueabihf-gcc --version
arm-linux-gnueabihf-gcc (Linaro GCC 4.9-2016.02) 4.9.4 20151028
(prerelease)

And line 33 contains a non-unified assembler mnemonic:
        strneb  r2, [r3]

Note: I do have to explicitly use .syntax unified. It seems that gcc is
not explicitly doing this, but if any inline assembly is changing the
assembler mode (e.g. what including arch/arm/include/asm/unified.h is
doing) then the assembler warnings start to appear.

--
Stefan


> 
>>
>>>
>>> This also prevents a warning when building with Clang and enabling
>>> its integrated assembler:
>>> clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'
>>>
>>> This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
>>> divided syntax assembler is used").
>>
>> Would it be helpful to also make note of
>> commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
>> assembler is used"")?
> 
> Sure, I can do that.
> 
>>
>>
>>>
>>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>>> ---
>>>  arch/arm/Makefile | 14 +++++++++-----
>>>  1 file changed, 9 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>>> index db857d07114f..a6c8c9f39185 100644
>>> --- a/arch/arm/Makefile
>>> +++ b/arch/arm/Makefile
>>> @@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
>>>  CFLAGS_ABI     += -meabi gnu
>>>  endif
>>>
>>> -# Accept old syntax despite ".syntax unified"
>>> -AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>>
>> This existing code is quite bad for Clang, which doesn't support
>> `-Wa,-mno-warn-deprecated`, so this falls back to `-Wa,-W`, which
>> disables all warnings from the assembler, which we definitely do not
>> want.  That alone is worth putting in the GCC guard.  But I would like
>> more info about GCC above before signing off.
> 
> FWIW, I submitted this to the patch tracker already, but I don't think
> it got merged already.
> 
> --
> Stefan
> 
>>
>>> -
>>>  ifeq ($(CONFIG_THUMB2_KERNEL),y)
>>> -CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
>>> +CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always
>>>  AFLAGS_ISA     :=$(CFLAGS_ISA) -Wa$(comma)-mthumb
>>>  # Work around buggy relocation from gas if requested:
>>>  ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
>>>  KBUILD_CFLAGS_MODULE   +=-fno-optimize-sibling-calls
>>>  endif
>>>  else
>>> -CFLAGS_ISA     :=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
>>> +CFLAGS_ISA     :=$(call cc-option,-marm,)
>>>  AFLAGS_ISA     :=$(CFLAGS_ISA)
>>>  endif
>>>
>>> +ifeq ($(CONFIG_CC_IS_GCC),y)
>>> +ifeq ($(call cc-ifversion, -lt, 0501, y), y)
>>> +# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
>>> +CFLAGS_ISA     +=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>>> +endif
>>> +endif
>>> +
>>>  # Need -Uarm for gcc < 3.x
>>>  KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
>>>  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
>>> --

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
