Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ED9A27DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luoTooSE1rKD4Ivb7b1JuPKTewS3054FC2I5ITtziaI=; b=Bx6Rtvs6ZDrJLA
	3Zvnw+qg1vXbyz41LTU3idmrhaE6WVLAqFnrh9XmxwAlO6AlZymixea1M1WiKPPRH8mklxbdM1V2g
	d+Bfc/DGoIEcWmc5adLfHw2dTMSXIN06GKDZISSKREYLFaVO75eQ1fVFEZxVi8a4Zsdj5VriElb+8
	n2QzMPyyiBlvIU3dJQnFNO2iZa1t4/XfffOVo1++nR+SeeHDOhezq8JrcAgNrOTUYEvV7vIT524Mb
	QeDaLYoQTVXQF91xlYXCctPrWaGVO3iFII1jAXE7GxQK+0/nYYz2+7LMHcwddp+0kHNvKUmsoU4Je
	hhZ03VGoQlTL6+O0uKlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3QvS-0001ZN-Ap; Thu, 29 Aug 2019 20:21:46 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3QvD-0001Yi-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:21:33 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 233B95C1F7F;
 Thu, 29 Aug 2019 22:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1567110085;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fg2GaVUio75ldsR6EagWHhcxkRR/eMtIgg94UgACpuA=;
 b=HtB7SUmGK/K5TFjhNhc+4bTcQoRjeLOroIk030NC86YCFXQ+4vB4qO4OrPZwIpszip7xEx
 xumoIuQ4y9uB7RjeyOzU+rjc9EQWwJSy7myjs5QK6ZewmBa5CZHZT/GTpmlAiT1DT29zK7
 HMINqyQgaRR1pOJr4p5WFGfDwegd8x8=
MIME-Version: 1.0
Date: Thu, 29 Aug 2019 22:21:25 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
In-Reply-To: <20190829193432.GA10138@archlinux-threadripper>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper>
Message-ID: <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132132_246386_053937FF 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-29 21:34, Nathan Chancellor wrote:
> On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
>> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
>> <natechancellor@gmail.com> wrote:
>> >
>> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
>> > with clang:
>> >
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
>> > softirq.c:(.text+0x504): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
>> > softirq.c:(.text+0x58c): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
>> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
>> > softirq.c:(.text+0x75c): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
>> > softirq.c:(.text+0x840): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
>> >
>> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
>> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
>> > broken and caused the kernel not to boot because the calling
>> > convention was not correct. Now that it is fixed, add this to
>> > the command line when clang is 10.0.0 or newer so everything
>> > works properly.
>> >
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
>> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
>> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
>> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> > ---
>> >  arch/arm/Makefile | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> >
>> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>> > index c3624ca6c0bc..7b5a26a866fc 100644
>> > --- a/arch/arm/Makefile
>> > +++ b/arch/arm/Makefile
>> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>> >  CFLAGS_ABI     +=-funwind-tables
>> >  endif
>> >
>> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
>> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
>> > +CFLAGS_ABI     +=-meabi gnu
>> > +endif
>> > +endif
>> > +
>>
>> Thanks for the patch!  I think this is one of the final issues w/ 32b
>> ARM configs when building w/ Clang.
>>
>> I'm not super enthused about the version check.  The flag is indeed
>> not recognized by GCC, but I think it would actually be more concise
>> with $(cc-option) and no compiler or version check.
>>
>> Further, I think that the working __gnu_mcount_nc in Clang would
>> better be represented as marking the arch/arm/KConfig option for
>> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
>> than or equal to Clang 10, not conditionally adding this flag. (We
>> should always add the flag when supported, IMO.  __gnu_mcount_nc's
>> calling convention being broken is orthogonal to the choice of
>> __gnu_mcount_nc vs mcount, and it's the former's that should be
>> checked, not the latter as in this patch.
> 
> I will test with or without CONFIG_AEABI like Matthias asked and I will
> implement your Kconfig suggestion if it passes all of my tests. The
> reason that I did it this way is because I didn't want a user to end up
> with a non-booting kernel since -meabi gnu works with older versions of
> clang at build time, the issue happens at boot time but the Kconfig
> suggestion + cc-option should fix that.

I agree with Nathan here, I'd rather prefer the build system to fail
building rather than runtime error.

If we decide we want to have it building despite it not building a
functional kernel, we should at least add a #warning...

--
Stefan

> 
> I should have a v2 out this evening.
> 
> Cheers,
> Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
