Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9147C1DAF70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:54:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz29sin252MaIiJyY9Ufs9HbGCnOO400TMoD9wxxUAY=; b=CS39WtYlNhhKNA
	yrVbhZSBZkmxefdK9hZOyLvDmYGBp//Y4ImJhwDlr8+YrY+b/jtxj3gHDl1kWl6/Ve/JMnn1VHcL5
	OkAn82i69QFsaneMY4N+C1xzo9OhVYFbJMgvsp+YviFkLSg0cv978J7OetXgVsBcb1pwsLhGwQ28w
	34g0UsQZTTBKs2pxMBCJDxOlHI5Hb+7eJMsOu+mjdhlXUFk+hUteAR6dhn9HoPwjqZUWX3NzuDTXc
	IEJ2NcipAyfXin5Tdrd4/fVqKDMYk/DOfvHJnZKNE3IqNFpJ0ixpn9iRqDumV+WSMjfHcKaKyAJUj
	Hy6XRBMkA6621bL7OmyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLQP-0008Vd-IE; Wed, 20 May 2020 09:54:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLQF-0008U9-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:54:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B23D32070A;
 Wed, 20 May 2020 09:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589968438;
 bh=EPruGUnhkwjs9U+ZrfN19PMt1A4JYOvCchb0OZfkwAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MJN+I3byBBxVyHjG4JKyYB+K9j77Uu6qIbf4WPpJ+PJtV3ThA21eeyCYTmyoFctKI
 VBUtkHUvwHoMzA9gGEBZi+9ARWwdGelYnM7s4Xlu/AHnIAEeglZHkSVmEgGRT/kPI+
 6nR1a76Qsu4lUcnP4ed84YlPb0jCnsiipKIZpc9c=
Date: Wed, 20 May 2020 10:53:54 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 1/2] arm64: vdso: Don't prefix sigreturn trampoline
 with a BTI C instruction
Message-ID: <20200520095354.GF24293@willie-the-truck>
References: <20200519162821.16857-1-will@kernel.org>
 <20200519162821.16857-2-will@kernel.org>
 <20200520093354.GJ5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520093354.GJ5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_025359_208335_2A9B40C4 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 10:33:55AM +0100, Dave Martin wrote:
> On Tue, May 19, 2020 at 05:28:20PM +0100, Will Deacon wrote:
> > For better or worse, GDB relies on the exact instruction sequence in the
> > VDSO sigreturn trampoline in order to unwind from signals correctly.
> > Commit c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
> > unfortunately added a BTI C instruction to the start of __kernel_rt_sigreturn,
> > which breaks this check. Thankfully, it's also not required, since the
> > trampoline is called from a RET instruction when returning from the signal
> > handler
> > 
> > Remove the unnecessary BTI C instruction from __kernel_rt_sigreturn,
> > and do the same for the 32-bit VDSO as well for good measure.
> > 
> > Cc: Dave Martin <dave.martin@arm.com>
> > Cc: Mark Brown <broonie@kernel.org>
> > Cc: Daniel Kiss <daniel.kiss@arm.com>
> > Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
> > Fixes: c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
> > Signed-off-by: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/kernel/vdso/sigreturn.S   | 11 +++++++++--
> >  arch/arm64/kernel/vdso32/sigreturn.S | 16 ++++++++--------
> >  2 files changed, 17 insertions(+), 10 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
> > index 3fb13b81f780..0c921130002a 100644
> > --- a/arch/arm64/kernel/vdso/sigreturn.S
> > +++ b/arch/arm64/kernel/vdso/sigreturn.S
> > @@ -15,7 +15,14 @@
> >  	.text
> >  
> >  	nop
> > -SYM_FUNC_START(__kernel_rt_sigreturn)
> > +/*
> > + * GDB relies on being able to identify the sigreturn instruction sequence to
> > + * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
> > + * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
> > + * this function is only ever called from a RET and so omitting the landing pad
> > + * is perfectly fine.
> > + */
> 
> Can we cross-reference or duplicate (perhaps abridged) this comment for
> vdso32?

Yes, that's not a bad idea. I'll add a comment to the top of that file.

> Can we also fix the comment by the definition of SYM_FUNC_START()?

I'll tweak it slightly for v3.

> > diff --git a/arch/arm64/kernel/vdso32/sigreturn.S b/arch/arm64/kernel/vdso32/sigreturn.S
> > index 620524969696..b36d4e2267a3 100644
> > --- a/arch/arm64/kernel/vdso32/sigreturn.S
> > +++ b/arch/arm64/kernel/vdso32/sigreturn.S
> > @@ -17,39 +17,39 @@
> >  	.save {r0-r15}
> >  	.pad #COMPAT_SIGFRAME_REGS_OFFSET
> >  	nop
> > -SYM_FUNC_START(__kernel_sigreturn_arm)
> > +SYM_CODE_START(__kernel_sigreturn_arm)
> 
> ...although do we actually need this?  32-bit doesn't have BTI.
> 
> But for the reasons given above, this is not a "function" and so
> SYM_FUNC_START() is trap for future maintenance even if it makes no
> difference now.

Right, it's just done for consistency on the 32-bit side.

> Either way,
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Thanks!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
