Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F8618465D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZJC7QicHwzhyExC/s3nFxjIh67kNR1Sk3ohrtzImys=; b=THkirksoN/g52d
	LfZJlrBYYNOQeykslpcC06SbwBe73ieJQ5ILzau2kCFnDiMm9DdDzzLVIpkP++SiZoZaTnKB7k0Tw
	ndANaDs7IuHSxWY+5NMPXpYovOd1dg9TQB2/27BBZ2/Swir7c74nqwsNw8s0+hC+3AxfEiXt6570v
	oaPdp15bwdSVK+ekhbYWzmY3rZkfNjY8p8iUiwYTU/Cn5VDbselNY7SyXCypBomD0iwkgoH7NjCM3
	ksYP66zemwiD9q3d7EnmAaUQeX253xAxi2/pgFS+xWBmDM8l6/p0WlhjCJvOBvdGSXN3B7I9ug7Ha
	ER+iEcC1cWGsD0bOYySA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCj0g-0000tv-KH; Fri, 13 Mar 2020 12:01:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCj0V-0000t9-Fi
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:01:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6AEFFEC;
 Fri, 13 Mar 2020 05:01:35 -0700 (PDT)
Received: from [10.37.12.218] (unknown [10.37.12.218])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9F7A3F534;
 Fri, 13 Mar 2020 05:01:31 -0700 (PDT)
Subject: Re: [PATCH v2 20/20] arm64: vdso32: Enable Clang Compilation
To: Nathan Chancellor <natechancellor@gmail.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <20200306133242.26279-21-vincenzo.frascino@arm.com>
 <20200310014039.GA12211@ubuntu-m2-xlarge-x86>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <ce62f238-eea9-a0eb-6f72-a3ef5c4a275a@arm.com>
Date: Fri, 13 Mar 2020 12:01:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200310014039.GA12211@ubuntu-m2-xlarge-x86>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_050139_613384_71FFB50F 
X-CRM114-Status: GOOD (  19.13  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-mips@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org, x86@kernel.org,
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

On 3/10/20 1:40 AM, Nathan Chancellor wrote:
> On Fri, Mar 06, 2020 at 01:32:42PM +0000, Vincenzo Frascino wrote:
>> Enable Clang Compilation for the vdso32 library.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/kernel/vdso32/Makefile | 13 ++++++++++++-
>>  1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
>> index 04df57b43cb1..650cfc5757eb 100644
>> --- a/arch/arm64/kernel/vdso32/Makefile
>> +++ b/arch/arm64/kernel/vdso32/Makefile
>> @@ -10,7 +10,18 @@ include $(srctree)/lib/vdso/Makefile
>>  
>>  # Same as cc-*option, but using CC_COMPAT instead of CC
>>  ifeq ($(CONFIG_CC_IS_CLANG), y)
>> -CC_COMPAT ?= $(CC)
>> +COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
>> +COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
>> +
>> +CLANG_CC_COMPAT := $(CC)
>> +CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
>> +CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
>> +CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
>> +ifneq ($(COMPAT_GCC_TOOLCHAIN),)
>> +CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
>> +endif
>> +
>> +CC_COMPAT ?= $(CLANG_CC_COMPAT)
>>  else
>>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
>>  endif
>> -- 
>> 2.25.1
>>
> If CC_COMPAT is ever specified on the command line as clang (maybe by
> some unsuspecting user), we'd loose all of the above flags. Maybe it
> would be better to build a set of COMPAT_CLANG_FLAGS and append them to
> CC_COMPAT, maybe like below?
>

Fine by me.

> Regardless, the current approach works in my testing with clang 9.0.1
> and master (clang 11.0.0). This patch specifically is:
> 

Good to hear. I will add your tags to the patch.

> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
> 
> ==================================================================================
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 650cfc5757eb..df5145fab287 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -13,15 +13,16 @@ ifeq ($(CONFIG_CC_IS_CLANG), y)
>  COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
>  COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
>  
> -CLANG_CC_COMPAT := $(CC)
> -CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> -CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> -CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
> +COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> +COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> +COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
>  ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> -CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> +COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
>  endif
>  
> -CC_COMPAT ?= $(CLANG_CC_COMPAT)
> +CC_COMPAT ?= $(CC)
> +CC_COMPAT += $(COMPAT_CLANG_FLAGS)
> +
>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
>  endif
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
