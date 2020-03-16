Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D56186F16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 16:50:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqrMTx8U30stoJBE6i2KBdby5gGVLFEDTmyDVCJ6O3c=; b=Mqm15MZmC/ybx8
	E1z8hbQtUEm52Dx/N/T3rdmjwFeN8bUxsuIiLQhMM9hBAFVaRWM0Q8cNJr7Dhki7r5tiYOqFjndzA
	cl7jipaxGKP+4+J6lP9/kCFuOWRvfNgnmtN2CSHveNNl3QeRTxWD8dJGlOtHhpQXOLkWg9jfa50Bx
	twENPMuePrpkagy1iIc9rhzVhobXKolc3FaukUIbjxWjaXGGJZ6q0ctIQzG+jHIkwJtFJJ8DoIkY/
	xFE0JBUehfyb5nHj4ab7Bcl4pzVtTT0ycRGLDPFWX22vNrGQb1CuiGS/NdihKuxPSrbAPHQl1lj5b
	fB/6lyCklRTRgPB5mpdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDs02-00037M-3x; Mon, 16 Mar 2020 15:49:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDrzt-00036u-Oc
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 15:49:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9B171FB;
 Mon, 16 Mar 2020 08:49:44 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C67CB3F534;
 Mon, 16 Mar 2020 08:49:41 -0700 (PDT)
Date: Mon, 16 Mar 2020 15:49:31 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316154930.GG3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp>
 <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
 <20200316112205.GE3005@mbp>
 <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
 <20200316144346.GF3005@mbp>
 <427064ee-45df-233c-0281-69e3d62ba784@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <427064ee-45df-233c-0281-69e3d62ba784@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_084945_885867_5175C832 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
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

On Mon, Mar 16, 2020 at 03:33:30PM +0000, Vincenzo Frascino wrote:
> On 3/16/20 2:43 PM, Catalin Marinas wrote[...]
> >> To me does not seem optimized out. Which version of the compiler are you using?
> > 
> > I misread the #ifdef'ery in asm/processor.h. So with 4K pages,
> > TASK_SIZE_32 is (1UL<<32)-PAGE_SIZE. However, with 64K pages _and_
> > CONFIG_KUSER_HELPERS, TASK_SIZE_32 is 1UL<<32 and the check is removed
> > by the compiler.
> > 
> > With the 4K build, __vdso_clock_gettime starts as:
> > 
> > 00000194 <__vdso_clock_gettime>:
> >  194:   f511 5f80       cmn.w   r1, #4096       ; 0x1000
> >  198:   d214            bcs.n   1c4 <__vdso_clock_gettime+0x30>
> >  19a:   b5b0            push    {r4, r5, r7, lr}
> >  ...
> >  1c4:   f06f 000d       mvn.w   r0, #13
> >  1c8:   4770            bx      lr
> > 
> > With 64K pages:
> > 
> > 00000194 <__vdso_clock_gettime>:
> >  194:   b5b0            push    {r4, r5, r7, lr}
> >  ...
> >  1be:   bdb0            pop     {r4, r5, r7, pc}
> > 
> > I haven't tried but it's likely that the vdsotest fails with 64K pages
> > and compat enabled (requires EXPERT).
> 
> This makes more sense. Thanks for the clarification.
> 
> I agree on the behavior of 64K pages and I think as well that the
> "compatibility" issue is still there. However as you correctly stated in your
> first email arm32 never supported 16K or 64K pages, hence I think we should not
> be concerned about compatibility in this cases.

My point is that even with 4K pages it's not really compatibility. The
test uses UINTPTR_MAX but on arm32 it would also fail with 0xc0000000.
On arm64 compat, however, this value would pass just fine.

> To make it more explicit we could make COMPAT_VDSO on arm64 depend on
> ARM64_4K_PAGES. What do you think?

No, I don't see why we should add this limitation.

> >> Please find below the list of errors for clock_gettime (similar for the other):
> >>
> >> passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
> >> clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered
> > 
> > Ah, so it uses UINTPTR_MAX in the test. Fair enough but I don't think
> > the arm64 check is entirely useful. On arm32, the check was meant to
> > return -EFAULT for addresses beyond TASK_SIZE that may enter into the
> > kernel or module space. On arm64 compat, the kernel space is well above
> > the reach of the 32-bit code.
> > 
> > If you want to preserve some compatibility for this specific test, what
> > about checking for wrapping around 0, I think it would make more sense.
> > Something like:
> > 
> > 	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> 
> Ok, sounds good to me. But it is something that this patch series inherited,
> hence I would prefer to send a separate patch that introduces what you are
> proposing and removes TASK_SIZE_32 from the headers. How does it sound?

I'd rather avoid moving TASK_SIZE_32 unnecessarily. Just add a
preparatory patch to your series for arm64 compat vdso and follow with
the rest without moving TASK_SIZE_32 around.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
