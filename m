Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310C31E4E21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oFuGGZf3MmwGA/I+Jpz/AwfYW94xmfxQ6ijz1pCClcY=; b=kdI6BgB4Jj9PAEGlwJMZwuh39
	4B1EWVcuCQzOdfL0OterNzkBp8kLymj6MxejOJlCciIhn7Zpj5u0IpBevALjM+WCsHCs6l9mhE13I
	RGUB58p7pAMqb2teBhkAUn0HZDUjPvKcI9nSLXCDQ0/yFBAKeQ3CBo4Yw10tUGkJ47oXl12PMulxN
	P8i6CIiedfowKehqPgfEIV6Onlk08gneSt/9lWiVr41WuR5RJ13h5xhhFYPwu6HdXvFPmnmEeN2JK
	l7UIhgH+sPrKnClrdh596ZoRSLUSgKu+7UlEYQr4k2zCKtjxbS3F0WKfkrECtiVB1ETy28sLahnB+
	lrJWqBMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1j3-0003xA-CJ; Wed, 27 May 2020 19:28:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1iq-0003wF-PF
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:28:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFC2830E;
 Wed, 27 May 2020 12:28:15 -0700 (PDT)
Received: from [10.57.2.168] (unknown [10.57.2.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4B843F305;
 Wed, 27 May 2020 12:28:13 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Nick Desaulniers <ndesaulniers@google.com>
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
Date: Wed, 27 May 2020 20:28:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_122817_081435_95C30A9F 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-27 18:55, Nick Desaulniers wrote:
> On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2020-05-26 18:31, Nick Desaulniers wrote:
>>> Custom toolchains that modify the default target to -mthumb cannot
>>> compile the arm64 compat vdso32, as
>>> arch/arm64/include/asm/vdso/compat_gettimeofday.h
>>> contains assembly that's invalid in -mthumb.  Force the use of -marm,
>>> always.
>>
>> FWIW, this seems suspicious - the only assembly instructions I see there
>> are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
>> -march=armv7a baseline that we set.
>>
>> On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
>> built a Thumb VDSO quite happily with Ubuntu 19.04's
>> gcc-arm-linux-gnueabihf. What was the actual failure you saw?
> 
>  From the link in the commit message: `write to reserved register 'R7'`
> https://godbolt.org/z/zwr7iZ
> IIUC r7 is reserved for the frame pointer in THUMB?

It can be, if you choose to build with frame pointers and the common 
frame pointer ABI for Thumb code that uses r7. However it can also be 
for other things like the syscall number in the Arm syscall ABI too. I 
take it Clang has decided that writing syscall wrappers with minimal 
inline asm is not a thing people deserve to do without arbitrary other 
restrictions?

> What is the implicit default of your gcc-arm-linux-gnueabihf at -O2?
> -mthumb, or -marm?

As Dave pointed out, like the probable majority of users it's Thumb:

$ arm-linux-gnueabihf-gcc -v
Using built-in specs.
COLLECT_GCC=arm-linux-gnueabihf-gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc-cross/arm-linux-gnueabihf/8/lto-wrapper
Target: arm-linux-gnueabihf
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro 
8.3.0-6ubuntu1' --with-bugurl=file:///usr/share/doc/gcc-8/README.Bugs 
--enable-languages=c,ada,c++,go,d,fortran,objc,obj-c++ --prefix=/usr 
--with-gcc-major-version-only --program-suffix=-8 --enable-shared 
--enable-linker-build-id --libexecdir=/usr/lib 
--without-included-gettext --enable-threads=posix --libdir=/usr/lib 
--enable-nls --with-sysroot=/ --enable-clocale=gnu 
--enable-libstdcxx-debug --enable-libstdcxx-time=yes 
--with-default-libstdcxx-abi=new --enable-gnu-unique-object 
--disable-libitm --disable-libquadmath --disable-libquadmath-support 
--enable-plugin --enable-default-pie --with-system-zlib 
--with-target-system-zlib --enable-multiarch --enable-multilib 
--disable-sjlj-exceptions --with-arch=armv7-a --with-fpu=vfpv3-d16 
--with-float=hard --with-mode=thumb --disable-werror --enable-multilib 
--enable-checking=release --build=aarch64-linux-gnu 
--host=aarch64-linux-gnu --target=arm-linux-gnueabihf 
--program-prefix=arm-linux-gnueabihf- 
--includedir=/usr/arm-linux-gnueabihf/include
Thread model: posix
gcc version 8.3.0 (Ubuntu/Linaro 8.3.0-6ubuntu1)

(yeah, I didn't actually need to hack my makefile at all)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
