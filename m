Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F0E45B57
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJR8kPfHi1uB0LQ/a42WBGANHke/SgS9UTO1Wn7lLSY=; b=WswRavlM4ip8rz
	Hxxcv+FjCugYMFl4lgf+D2PW7Ji+bllpwLGk/bhRC1MjRlYwdrjFOmh0QtUuuSnPTBtYhpCqaroAL
	e5BJudNxyQ71q1DIVSfbpDJBB4zzkB/Rwks7wgKwnmMrq2Agm3lprFRRBxhkKeyFv7690jAtYVk5X
	Gv1tXR3Hi1zuV+0QFhstETqiFlGmbxCQPzDbddwgs/SI8wU2huMHazAiUgfTwAW5r4ddCmGj0MG3D
	hH7Rt7n4MzLSiLtJflC5znuEbwQSPIvvaJ58dNLPVskGnAff9HH/h145OnKYliNzShYhXyOKoqpsR
	WO8ySIPl6cBV8cGrBuTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkIO-0005tC-1k; Fri, 14 Jun 2019 11:23:00 +0000
Received: from smtp3-g21.free.fr ([212.27.42.3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkID-0005sX-RR
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:22:51 +0000
Received: from anisse-station (unknown [213.36.7.13])
 by smtp3-g21.free.fr (Postfix) with ESMTPS id 517A013F84C;
 Fri, 14 Jun 2019 13:22:23 +0200 (CEST)
Date: Fri, 14 Jun 2019 13:22:22 +0200
From: Anisse Astier <aastier@freebox.fr>
To: Dave Martin <Dave.Martin@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] arm64/sve: <uapi/asm/ptrace.h> should not depend on
 <uapi/linux/prctl.h>
Message-ID: <20190614112222.GA47082@anisse-station>
References: <20190613163801.21949-1-aastier@freebox.fr>
 <20190613171432.GA2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613171432.GA2790@e103592.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_042250_184651_229226A0 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.3 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, "Dmitry V . Levin" <ldv@altlinux.org>,
 Ricardo Salveti <ricardo@foundries.io>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Rich Felker <dalias@aerifal.cx>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

Thanks for taking the time to review this patch,

On Thu, Jun 13, 2019 at 06:14:44PM +0100, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 06:38:01PM +0200, Anisse Astier wrote:
> > Otherwise this will create userspace build issues for any program
> > (strace, qemu) that includes both <sys/prctl.h> (with musl libc) and
> > <linux/ptrace.h> (which then includes <asm/ptrace.h>), like this:
> > 
> > 	error: redefinition of 'struct prctl_mm_map'
> > 	 struct prctl_mm_map {
> > 
> > See https://github.com/foundriesio/meta-lmp/commit/6d4a106e191b5d79c41b9ac78fd321316d3013c0
> > for a public example of people working around this issue.
> > 
> > This fixes an UAPI regression introduced in commit 43d4da2c45b2
> > ("arm64/sve: ptrace and ELF coredump support").
> > 
> > Cc: stable@vger.kernel.org
> 
> Consider adding a Fixes: tag.

Will do in v2.

> 
> > Signed-off-by: Anisse Astier <aastier@freebox.fr>
> > ---
> >  arch/arm64/include/uapi/asm/ptrace.h | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
> > index d78623acb649..03b6d6f029fc 100644
> > --- a/arch/arm64/include/uapi/asm/ptrace.h
> > +++ b/arch/arm64/include/uapi/asm/ptrace.h
> > @@ -65,8 +65,6 @@
> >  
> >  #ifndef __ASSEMBLY__
> >  
> > -#include <linux/prctl.h>
> > -
> >  /*
> >   * User structures for general purpose, floating point and debug registers.
> >   */
> > @@ -113,10 +111,10 @@ struct user_sve_header {
> >  
> >  /*
> >   * Common SVE_PT_* flags:
> > - * These must be kept in sync with prctl interface in <linux/ptrace.h>
> > + * These must be kept in sync with prctl interface in <linux/prctl.h>
> 
> Ack
> 
> >   */
> > -#define SVE_PT_VL_INHERIT		(PR_SVE_VL_INHERIT >> 16)
> > -#define SVE_PT_VL_ONEXEC		(PR_SVE_SET_VL_ONEXEC >> 16)
> > +#define SVE_PT_VL_INHERIT		(1 << 1) /* PR_SVE_VL_INHERIT */
> > +#define SVE_PT_VL_ONEXEC		(1 << 2) /* PR_SVE_SET_VL_ONEXEC */
> 
> Makes sense, but...
> 
> Since sve_context.h was already introduced to solve a closely related
> problem, I wonder whether we can provide shadow definitions there,
> similarly to way the arm64/include/uapi/asm/ptrace.h definitions are
> derived.  Although it's a slight abuse of that header, I think that
> would be my preferred approach.


Yes I saw this, and I considered doing something similar. But, those
defines are in uapi/linux/prctl.h, which does not include any asm/*.h
header. This would have then required adding a full infrastructure for
asm/prctl.h (that could then include sve_context.h for example), which
does not exist yet, instead of copying these two values.

Since this is part of the kernel-userspace ABI, I don't see this values
changing anytime soon, which is why I thought copying them shouldn't be
a big issue.

A simple solution would be to to include sve_context.h or a third
header, maybe linux/prctl_arm64_sve.h (with only these two/five
defines), in linux/prctl.h, and reuse it in uapi/asm/ptrace.h; but this
would break the self-contained nature of linux/prctl.h.

> 
> Otherwise, at least make the required relationship between ptrace.h and
> prctl.h constants a bit more obvious, say,
> 
> 	#define SVE_PT_VL_INHERIT ((1 << 17) /* PR_SVE_SET_VL_INHERIT */ >> 16)

This one is much simpler and closer to what I had in mind with this
patch.

Will, what do you think of this second approach Dave proposed ?

Regards,

Anisse

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
