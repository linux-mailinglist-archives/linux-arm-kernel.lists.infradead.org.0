Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0961C50BD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueVrjaH/e/nJHlIiG80K1gLoh/guzkEKFVhwLyqwDo0=; b=HL2F9n8uAZW5sf
	VcCbk6kj49vBpD6o1KfUBRzH4OqlUkEhCNQLLp3v+Cu1WoJ4ftzqVJmmBE12BvTVKCOs8oSJtnwr/
	toWDAkIe3mfUIQqf3ot3Vw/Qdz0TwIv2PNqsPScUu8J+B6VGa1yemJf+FXzK5mZTly5+0noZHDVkz
	rzoLJwI0CEWcUVFaREHwHfvQY5ipvefOzRTuc/UjGYe+nFW6efBo0lKgVYYrk2Ytjgywp26nWO+sC
	Xwt4+NVt9Y3lgQLjHEoYaYLBSxAZhGxzqWyHd6JtDVXDSFPlGoR5odQYiVaRpQyMF3xqOovywcDqu
	Dx46aF40j3b962OJaQdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOvJ-0006WV-Ux; Mon, 24 Jun 2019 13:22:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOuE-0005ub-Kj
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:21:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9B08344;
 Mon, 24 Jun 2019 06:21:07 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B5F773F71E;
 Mon, 24 Jun 2019 06:21:04 -0700 (PDT)
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <fdded1ed-9404-c80e-c74e-a61716277bda@arm.com>
Date: Mon, 24 Jun 2019 14:21:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_062110_788439_17422A49 
X-CRM114-Status: GOOD (  27.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Andy Lutomirski <luto@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 Dmitry Safonov <dima@arista.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Sasha Levin <sashal@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Andre Przywara <andre.przywara@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Michael Kelley <mikelley@microsoft.com>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On 24/06/2019 01:34, Thomas Gleixner wrote:
> Vincenzo,
> 
> On Fri, 21 Jun 2019, Vincenzo Frascino wrote:
>> vDSO (virtual dynamic shared object) is a mechanism that the Linux
>> kernel provides as an alternative to system calls to reduce where
>> possible the costs in terms of cycles.
>> This is possible because certain syscalls like gettimeofday() do
>> not write any data and return one or more values that are stored
>> in the kernel, which makes relatively safe calling them directly
>> as a library function.
>>
>> Even if the mechanism is pretty much standard, every architecture
>> in the last few years ended up implementing their own vDSO library
>> in the architectural code.
> 
> ....
>  
>> This implementation contains the portings to the common library for: arm64,
>> compat mode for arm64, arm, mips, x86_64, x32, compat mode for x86_64 and
>> i386.
> 
> I picked up the core implementation and the ARM64 and x86 conversion. I did
> some refinements in several places, coding style, naming conventions,
> comments and changelogs including subject prefixes. Please double check!
>

I tested your changes and they seem OK
(git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/vdso).

...
> As you can see from the commit dates, this has soaked for some time in a
> WIP branch and I did extensive regression testing. So far so good.
> 
> Thanks a lot for going through several iterations. It's a very much
> appreciated effort!
> 

It has been a lot of fun and I learned many many things about the vDSOs and the
kernel that I did not know before. Thanks to you for your patience and guidance.

> Especially with the upcoming time namespaces this will avoid a lot of
> duplicated and pointlessly different horrors all over the architecture
> space. Any architecture which wants to gain that support needs to convert
> to the generic VDSO first.
> 
> As you have become the dude who knows almost everything about VDSO
> including all the nasty pitfalls, I propose the patch below.
>

Thanks for this, it means a lot to me.

> Thanks,
> 
> 	tglx
> 
> 8<------------
> Subject: MAINTAINERS: Add entry for the generic VDSO library
> From: Thomas Gleixner <tglx@linutronix.de>
> Date: Mon, 24 Jun 2019 02:03:50 +0200
> 
> Asign the following folks in alphabetic order:
> 
>  - Andy for being the VDSO wizard of x86 and in general. He's also the
>    performance monitor of choice and the code in the generic library is
>    heavily influenced by his previous x86 VDSO work.
> 
>  - Thomas for being the dude who has to deal with any form of time(r)
>    nonsense anyway
> 
>  - Vincenzo for being the poor sod who went through all the different
>    architecture implementations in order to unify them. A lot of knowledge
>    gained from VDSO implementation details to the intricacies of taming the
>    build system.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  MAINTAINERS |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6665,6 +6665,18 @@ L:	kvm@vger.kernel.org
>  S:	Supported
>  F:	drivers/uio/uio_pci_generic.c
>  
> +GENERIC VDSO LIBRARY:
> +M:	Andy Lutomirksy <luto@kernel.org>
> +M:	Thomas Gleixner <tglx@linutronix.de>
> +M:	Vincenzo Frascino <vincenzo.frascino@arm.com>
> +L:	linux-kernel@vger.kernel.org
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/vdso
> +S:	Maintained
> +F:	lib/vdso
> +F:	kernel/time/vsyscall.c
> +F:	include/vdso
> +F:	include/asm-generic/vdso/vsyscall.h
> +
>  GENWQE (IBM Generic Workqueue Card)
>  M:	Frank Haverkamp <haver@linux.ibm.com>
>  S:	Supported
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
