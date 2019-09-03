Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46EA6CE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 17:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGmTksWfBTVXY7ri/V5UHbM5MuUNieQ5XKTjuhhXuAM=; b=LHTe6ywy9rPkzo
	VZpMk8XfsLiZVsVhSRjvLQ8DZ3f1ZRyI/6mmqHFy1n88hoy3jvekGwU3grow4L2oDjofqHddkbE5b
	uQjgAiJ3PEYD0h6W8/GIw2Nza8BMNeE2S6/Y2KE3zWnRL9cbCAUZC9IJSa1Z364nqaLlCB2uOKlPl
	j/U2T6YL5VxzCLDVO6ccd/2nJDnBK5SFyrJN0tIgU4Y3P2MQddwN3Svo4FuSMfayJ3OeiGKBhAqSe
	VsGoK+9PXXHhUfxmzIP6i2hzvJNeu+82kR/GbxGFSezSjZIqaavaDdsqqLAfmmhkd7DETn8aYJwHh
	LwlhPsZDqcyntQu8OECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AmO-0006tc-E1; Tue, 03 Sep 2019 15:31:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AmE-0006ss-MS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 15:31:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0604F344;
 Tue,  3 Sep 2019 08:31:23 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 77F533F246;
 Tue,  3 Sep 2019 08:31:22 -0700 (PDT)
Date: Tue, 3 Sep 2019 16:31:20 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
 <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_083126_827109_6E7A62C6 
X-CRM114-Status: GOOD (  25.03  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com,
 Nathan Chancellor <natechancellor@gmail.com>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 04:15:44PM +0100, Andrew Murray wrote:
> On Tue, Sep 03, 2019 at 03:45:34PM +0100, Will Deacon wrote:
> > On Tue, Sep 03, 2019 at 03:31:19PM +0100, Andrew Murray wrote:
> > > On Mon, Sep 02, 2019 at 11:00:11PM -0700, Nathan Chancellor wrote:
> > > > On Thu, Aug 29, 2019 at 04:48:27PM +0100, Will Deacon wrote:
> > > > > From: Andrew Murray <andrew.murray@arm.com>
> > > > > 
> > > > > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > > > > or toolchain doesn't support it the existing code will fallback to ll/sc
> > > > > atomics. It achieves this by branching from inline assembly to a function
> > > > > that is built with special compile flags. Further this results in the
> > > > > clobbering of registers even when the fallback isn't used increasing
> > > > > register pressure.
> > > > > 
> > > > > Improve this by providing inline implementations of both LSE and
> > > > > ll/sc and use a static key to select between them, which allows for the
> > > > > compiler to generate better atomics code. Put the LL/SC fallback atomics
> > > > > in their own subsection to improve icache performance.
> > > > > 
> > > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > > > Signed-off-by: Will Deacon <will@kernel.org>
> > > > 
> > > > For some reason, this causes a clang built kernel to fail to boot in
> > > > QEMU. There are no logs, it just never starts. I am off for the next two
> > > > days so I am going to try to look into this but you might have some
> > > > immediate ideas.
> > > > 
> > > > https://github.com/ClangBuiltLinux/linux/issues/649
> > > 
> > > I've been able to reproduce this - with clang 9.0.6 and qemu (without KVM)
> > > and only when ARM64_LSE_ATOMICS is enabled.
> > > 
> > > This is slightly concerning...
> > > 
> > > (gdb) b __lse__cmpxchg_case_acq_32
> > > Breakpoint 1 at 0xffff80001012b3cc: __lse__cmpxchg_case_acq_32. (19 locations)
> > > (gdb) continue
> > > Continuing.
> > 
> > [...]
> > 
> > > Any ideas?
> > 
> > Does it work if the only thing you change is the toolchain, and use GCC
> > instead? 
> 
> Yup.

Also this is Clang generation:

ffff8000100f2700 <__ptrace_link>:
ffff8000100f2700:       f9426009        ldr     x9, [x0, #1216]
ffff8000100f2704:       91130008        add     x8, x0, #0x4c0
ffff8000100f2708:       eb09011f        cmp     x8, x9
ffff8000100f270c:       540002a1        b.ne    ffff8000100f2760 <__ptrace_link+0x60>  // b.any
ffff8000100f2710:       f9425829        ldr     x9, [x1, #1200]
ffff8000100f2714:       9112c02a        add     x10, x1, #0x4b0
ffff8000100f2718:       f9000528        str     x8, [x9, #8]
ffff8000100f271c:       f9026009        str     x9, [x0, #1216]
ffff8000100f2720:       f902640a        str     x10, [x0, #1224]
ffff8000100f2724:       f9025828        str     x8, [x1, #1200]
ffff8000100f2728:       f9024001        str     x1, [x0, #1152]
ffff8000100f272c:       b4000162        cbz     x2, ffff8000100f2758 <__ptrace_link+0x58>
ffff8000100f2730:       b900985f        str     wzr, [x2, #152]
ffff8000100f2734:       14000004        b       ffff8000100f2744 <__ptrace_link+0x44>
ffff8000100f2738:       14000001        b       ffff8000100f273c <__ptrace_link+0x3c>
ffff8000100f273c:       14000006        b       ffff8000100f2754 <__ptrace_link+0x54>
ffff8000100f2740:       14000001        b       ffff8000100f2744 <__ptrace_link+0x44>
ffff8000100f2744:       52800028        mov     w8, #0x1                        // #1
ffff8000100f2748:       b828005f        stadd   w8, [x2]
ffff8000100f274c:       f9030002        str     x2, [x0, #1536]
ffff8000100f2750:       d65f03c0        ret
ffff8000100f2754:       140007fd        b       ffff8000100f4748 <ptrace_check_attach+0xf8>
...

This looks like the default path (before we write over it) will take you to
the LSE code (e.g. ffff8000100f2734). I'm pretty sure this is wrong, or at
least not what we expected to see. Also why 4 branches?



And GCC:

ffff8000100ebc98 <__ptrace_link>:
ffff8000100ebc98:       f9426003        ldr     x3, [x0, #1216]
ffff8000100ebc9c:       91130004        add     x4, x0, #0x4c0
ffff8000100ebca0:       eb03009f        cmp     x4, x3
ffff8000100ebca4:       54000261        b.ne    ffff8000100ebcf0 <__ptrace_link+0x58>  // b.any
ffff8000100ebca8:       f9425825        ldr     x5, [x1, #1200]
ffff8000100ebcac:       9112c026        add     x6, x1, #0x4b0
ffff8000100ebcb0:       f90004a4        str     x4, [x5, #8]
ffff8000100ebcb4:       f9026005        str     x5, [x0, #1216]
ffff8000100ebcb8:       f9026406        str     x6, [x0, #1224]
ffff8000100ebcbc:       f9025824        str     x4, [x1, #1200]
ffff8000100ebcc0:       f9024001        str     x1, [x0, #1152]
ffff8000100ebcc4:       b4000122        cbz     x2, ffff8000100ebce8 <__ptrace_link+0x50>
ffff8000100ebcc8:       b900985f        str     wzr, [x2, #152]
ffff8000100ebccc:       14000006        b       ffff8000100ebce4 <__ptrace_link+0x4c>
ffff8000100ebcd0:       14000005        b       ffff8000100ebce4 <__ptrace_link+0x4c>
ffff8000100ebcd4:       52800021        mov     w1, #0x1                        // #1
ffff8000100ebcd8:       b821005f        stadd   w1, [x2]
ffff8000100ebcdc:       f9030002        str     x2, [x0, #1536]
ffff8000100ebce0:       d65f03c0        ret
ffff8000100ebce4:       14000599        b       ffff8000100ed348 <__arm64_compat_sys_ptrace+0x180>
...


Thanks,

Andrew Murray

> 
> 
> > Could be some teething issues in the 'asm goto' support for clang?
> 
> Thanks,
> 
> Andrew Murray
> 
> > 
> > Will
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
