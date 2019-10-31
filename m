Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2A0EAC14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 10:02:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgaJPORx9lFDkXOPZmNPDPliq1gbxTG0d/YrgsVoWus=; b=NXlld0Bwxrdd2+
	J3Koa6DKnjXbwYNc8Mstcu8dibN5T52IUsg7UBeMm1qC9ZX/k9FT9dl7xifoDoipgRH5gwM8kwFLC
	XZr+rexCD6VKw4EBycuYjGhc7AnP+xm78NWlSW0EHslqDCPofCu3OT7/I16lWD9/V9aHgIghmTgVf
	5w40r1YMX5IeDQYNyGFx5WC+HMtrzd0FCSdJ+o5gna0iJYHF1oI02B1nXHfcdr39bUtOek7WIwp5W
	Hty9V24U7SxtuOtGi2hWtXmpZV81SMWvUZH/IsujfVkULJ5iHROlb8VpPcxuokqSuTbuKbnf3MTJr
	Ni0JLBf194r82sw0u7OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6M0-0000W5-4k; Thu, 31 Oct 2019 09:02:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6Lr-0000Us-G4
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 09:02:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE80531F;
 Thu, 31 Oct 2019 02:02:41 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 627483F71E;
 Thu, 31 Oct 2019 02:02:37 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:02:32 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Torsten Duwe <duwe@suse.de>
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
Message-ID: <20191031090231.GA3340@blommer>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
 <20191030150302.GA965@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030150302.GA965@suse.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_020243_625102_2AF3D50A 
X-CRM114-Status: GOOD (  22.15  )
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, Helge Deller <deller@gmx.de>, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, Jessica Yu <jeyu@kernel.org>, amit.kachhap@arm.com,
 svens@stackframe.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 04:03:02PM +0100, Torsten Duwe wrote:
> On Tue, Oct 29, 2019 at 04:58:26PM +0000, Mark Rutland wrote:
> > When using patchable-function-entry, the compiler will record the
> > callsites into a section named "__patchable_function_entries" rather
> > than "__mcount_loc". Let's abstract this difference behind a new
> > FTRACE_CALLSITE_SECTION, so that architectures don't have to handle this
> > explicitly (e.g. with custom module linker scripts).
> > 
> > As parisc currently handles this explicitly, it is fixed up accordingly,
> > with its custom linker script removed. Since FTRACE_CALLSITE_SECTION is
> > only defined when DYNAMIC_FTRACE is selected, the parisc module loading
> > code is updated to only use the definition in that case. When
> > DYNAMIC_FTRACE is not selected, modules shouldn't have this section, so
> > this removes some redundant work in that case.
> > 
> > I built parisc generic-{32,64}bit_defconfig with DYNAMIC_FTRACE enabled,
> > and verified that the section made it into the .ko files for modules.
> 
> This is because of remaining #ifdeffery in include/asm-generic/vmlinux.lds.h:
> 
> #ifdef CC_USING_PATCHABLE_FUNCTION_ENTRY
> #define MCOUNT_REC()    . = ALIGN(8);                           \
>                         __start_mcount_loc = .;                 \
>                         KEEP(*(__patchable_function_entries))   \
>                         __stop_mcount_loc = .;
> #else
> #define MCOUNT_REC()    . = ALIGN(8);                           \
>                         __start_mcount_loc = .;                 \
>                         KEEP(*(__mcount_loc))                   \
>                         __stop_mcount_loc = .;
> #endif

For modules we use a combination of scripts/module-common.lds and an
architecture's own module.lds, not vmlinux.lds.h. So I don't think the above is
relevant for modules.

For modules the kernel's ELF loader looks for the ELF ection, not the
__{start,stop}_mcount_loc symbols that we use for the main kernel image.

FWIW, when building a module, I see the following linker operations:

| [mark@blommer:~/src/linux]% toolchain korg gcc-8.1.0-nolibc make V=1 ARCH=arm64 CROSS_COMPILE=aarch64-linux- arch/arm64/crypto/sha512-ce.ko | grep aarch64-linux-ld
|   aarch64-linux-ld  -EL  -maarch64elf    -r -o arch/arm64/crypto/sha512-ce.o arch/arm64/crypto/sha512-ce-glue.o arch/arm64/crypto/sha512-ce-core.o
|   aarch64-linux-ld -r  -EL  -maarch64elf  --build-id  -T ./scripts/module-common.lds -T ./arch/arm64/kernel/module.lds -o arch/arm64/crypto/sha512-ce.ko arch/arm64/crypto/sha512-ce.o arch/arm64/crypto/sha512-ce.mod.o;  true

> Maybe you want to tackle that as well? I suggest to have at least one
> FTRACE_CALLSITE_SECTION definition without double quotes. Alternatively, my
> earlier solution just kept both sections, in case either one or both are
> present.
> 
>                         KEEP(*(__patchable_function_entries))   \
>                         KEEP(*(__mcount_loc))                   \

I agree that the CC_USING_PATCHABLE_FUNCTION_ENTRY ifdeffery could be
simplified, and that it would be nice to consistently use
FTRACE_CALLSITE_SECTION if we can. However, the generic linker script doesn't
include anything, and I don't see a good location for that to live.

What I could do is add an explicit comment:

/*
 * The ftrace call sites are logged to a section whose name depends on the
 * compiler option used. A given kernel image will only use one, AKA
 * FTRACE_CALLSITE_SECTION. We capture all of them here to avoid header
 * dependencies.
 */
#define MCOUNT_REC()						\
			. = ALIGN(8);				\
			__start_mcount_loc = .;			\
			KEEP(*(__patchable_function_entries))   \
			KEEP(*(__mcount_loc))                   \
			__stop_mcount_loc = .;			

... which should make the dependency clear. Does that sound good to you?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
