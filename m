Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160DA1D7C85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+rEnDxrK4ZzGfyAghV2ar0Xq1q0P+M/pYF72Kvbzuc=; b=A1RvyEMHwf0PzU
	VDi7OzqTSDV2T3sGjsbh8qauQaoUtg2pjhC2/T21fvirVYmvEMo4gpQAqOkSG4hfhYRncL0t+IChD
	XqWwIepBBM37eVTmxX9Rlh7oJmPwTEheGHv5ZZBoQcPImTZqTti553UAGcA2/zbPKZnPFkFtx97lz
	YNOWKI0LBMh0aYKn05M3KqO8Szi/eyC3wr32SBICBNdkFA2BldAxg0iG34iVnIm/1GEO5b9lufkbT
	vPtuAm4Cyp2arWVi0mF3OtALlLTxcKMnm5/PhhftbC3nzo7fKMGQbh4FTiq4oDc+ehjVMUpUmFfp4
	rN0f1ihjEi2ZcS8dHzpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahTv-0004VP-R7; Mon, 18 May 2020 15:15:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahTd-0004UX-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:14:50 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EA1F20671;
 Mon, 18 May 2020 15:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589814889;
 bh=JoM91Et6EiXBZzmbk7OOu4mjYY2QCV5w5R56UhHxUw0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lb9iaIhklsRErpaFfMUhPUpl08X8tH3mCEAf1CEh1g5KABUupNGHfRDvfb7xkhVLC
 +E9vSBCeQSXDozQBF61RNVDFrR6WlJr+vgZfvONf4nDI24lpboyGpCrLfnP8EnKLMF
 og2/RXV5tgRWr2Q8ipRcW2O/BIVBDvxj4NqxSFnE=
Date: Tue, 19 May 2020 00:14:43 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/4] arm64: Extract kprobes_save_local_irqflag() and
 kprobes_restore_local_irqflag()
Message-Id: <20200519001443.a1d1843e7809a7a68530fda5@kernel.org>
In-Reply-To: <CAD=FV=XMSsMFpPzBckkWhP6iDR4WM+qdV7J=aQCBbbBit_rDwg@mail.gmail.com>
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-3-liwei391@huawei.com>
 <CAD=FV=VVz4QnQ6AWAsCMxw6Zne6es0omvJ--Gnag=PXkMPt42g@mail.gmail.com>
 <d5bb9ccf-6047-13d9-45b3-18421629e83f@huawei.com>
 <CAD=FV=XMSsMFpPzBckkWhP6iDR4WM+qdV7J=aQCBbbBit_rDwg@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_081449_541058_E42FE7D6 
X-CRM114-Status: GOOD (  26.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 liwei1412@163.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 "liwei \(GF\)" <liwei391@huawei.com>, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 16 May 2020 09:17:21 -0700
Doug Anderson <dianders@chromium.org> wrote:

> Hi,
> 
> On Sat, May 16, 2020 at 1:47 AM liwei (GF) <liwei391@huawei.com> wrote:
> >
> > >> -               kprobes_save_local_irqflag(kcb, regs);
> > >> +               kernel_prepare_single_step(&kcb->saved_irqflag, regs);
> > >
> > > Is there some reason to have two functions?  It seems like every time
> > > you call kernel_enable_single_step() you'd want to call
> > > kernel_prepare_single_step().  ...and every time you call
> > > kernel_disable_single_step() you'd want to call
> > > kernel_cleanup_single_step().
> > >
> > > Maybe you can just add the flags parameter to
> > > kernel_enable_single_step() / kernel_disable_single_step() and put the
> > > code in there?
> > >
> >
> > As kernel_enable_single_step() / kernel_disable_single_step() are also called in
> > breakpoint_handler() and watchpoint_handler(), i am not sure it's a right thing
> > to put the daif flag prepare/cleanup into them, especially we don't have a context
> > to save the flags.
> 
> I think you misunderstood what I was suggesting.  Maybe better with
> examples?  I was suggesting doing this:
> 
> kcb->saved_irqflag = kernel_enable_single_step(regs);
> ...
> kernel_disable_single_step(kcb->saved_irqflag, regs);
> 
> To me that seems better than what you have now:
> 
> kcb->saved_irqflag = kernel_prepare_single_step(regs);
> kernel_enable_single_step(regs);
> ...
> kernel_cleanup_single_step(kcb->saved_irqflag, regs);
> kernel_disable_single_step();
> 
> ...or am I confused?

+1, this sounds good to me. Currently arch/arm64/kernel/probes/kprobes.c
has a code which sololy use kernel_disable_single_step() without regs
restoring, but it looks like a bug there. So maybe you need following patch.

Thank you,

-----
From: Masami Hiramatsu <mhiramat@kernel.org>
Date: Mon, 18 May 2020 23:08:28 +0900
Subject: [PATCH] arm64: kprobes: Restore saved interrupt flag before disabling
 single step

Restore the saved interrupt flag in kprobe_ctlblk to regs->pstate
when a page fault happens on single-stepping instruction.
Without this fix, we will lose the flag if it happens because
kcb->saved_irqflag only knows the previous flag.

Fixes: 2dd0e8d2d2a1 ("arm64: Kprobes with single stepping support")
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Cc: stable@vger.kernel.org
---
 arch/arm64/kernel/probes/kprobes.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index d1c95dcf1d78..73fb99770f69 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -308,6 +308,7 @@ int __kprobes kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr)
 		if (!instruction_pointer(regs))
 			BUG();
 
+		kprobes_restore_local_irqflag(kcb, regs);
 		kernel_disable_single_step();
 
 		if (kcb->kprobe_status == KPROBE_REENTER)
-- 
2.25.1




-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
