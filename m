Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED54137270
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:07:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4iVOnljYlAxrcxQC0pbFDElIAOnlsJyCAORDZy5OHI=; b=gigIFgtawdVsEv
	jtm20NBtM6DSBzgObWGFx37EPenLYKTyA1CdAYwva+CpBtIcBU8ZGLjwMBcitMjgesJbRIGgrTq5g
	PM6+yZ9FO6vUffoeGT+MOD3arsZnf/DicIDpv08S+5gBkqXXUxaGIbXioX22IHB4btu+3IJjzaAEd
	HfVpgV8k+R9KkLXE6r35oyQtSGBuwjsHbLqulTtW8AXwu4CB8uQrOuJxb6KOQ+f+s9PXEs9oIdjv8
	xW2yI9rco5UX4U2V6g68bmQZR9iXhbvUCOHdcCN0GpaGem5YxW2rGkPGRbMeEIr4PKGxpPUOCH36a
	pRe9TGdcmWdzF+9lIkSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwon-0007NR-8u; Fri, 10 Jan 2020 16:07:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwoe-0007MW-Pt
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:07:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0760530E;
 Fri, 10 Jan 2020 08:07:16 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7650F3F6C4;
 Fri, 10 Jan 2020 08:07:14 -0800 (PST)
Date: Fri, 10 Jan 2020 16:07:12 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 11/17] stackleak: allow C to call stackleak_erase()
Message-ID: <20200110160711.GG33536@lakrids.cambridge.arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-12-mark.rutland@arm.com>
 <b7c6d434-16a1-f270-b656-a1814ea6bab3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7c6d434-16a1-f270-b656-a1814ea6bab3@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_080716_882241_BA270384 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, robin.murphy@arm.com,
 broonie@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 catalin.marinas@arm.com, labbott@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 09:15:31AM +0530, Anshuman Khandual wrote:
> 
> 
> On 01/09/2020 12:26 AM, Mark Rutland wrote:
> > Currently, stackleak_erase() has no prototype in a header file, and has
> > to be called directly from low-level architecture entry assembly code.
> > This necessitates ifdeffery and complicates the entry assembly.
> > 
> > To ameliorate matters, let's provide a prototype so that architecture
> > can call stackleak_erase() from slightly higher level C code used as
> > part of the entry flow. This makes things easier to read and maintain.
> 
> Does this need to be a separate patch or should it be folded into
> "[PATCH 13/17] arm64: entry: move common el0 entry/return work to C"
> which actually adds the first C call site for this function.

This could be folded into patch 13, but I'd split it since it touched
architecture-independent code, and wanted to make the change obvious to
the relevant maintainers. We've done similar elsewhere (e.g. for the
kasan bits we have to call from assembly).

I'd prefer to leave this separate for now.

Thanks,
Mark.

> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Alexander Popov <alex.popov@linux.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: Laura Abbott <labbott@redhat.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> >  include/linux/stackleak.h | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/include/linux/stackleak.h b/include/linux/stackleak.h
> > index 3d5c3271a9a8..2b09d3759c76 100644
> > --- a/include/linux/stackleak.h
> > +++ b/include/linux/stackleak.h
> > @@ -15,6 +15,8 @@
> >  #ifdef CONFIG_GCC_PLUGIN_STACKLEAK
> >  #include <asm/stacktrace.h>
> >  
> > +asmlinkage void notrace stackleak_erase(void);
> > +
> >  static inline void stackleak_task_init(struct task_struct *t)
> >  {
> >  	t->lowest_stack = (unsigned long)end_of_stack(t) + sizeof(unsigned long);
> > @@ -30,6 +32,7 @@ int stack_erasing_sysctl(struct ctl_table *table, int write,
> >  
> >  #else /* !CONFIG_GCC_PLUGIN_STACKLEAK */
> >  static inline void stackleak_task_init(struct task_struct *t) { }
> > +static inline void stackleak_erase(void) { }
> >  #endif
> >  
> >  #endif
> > 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
