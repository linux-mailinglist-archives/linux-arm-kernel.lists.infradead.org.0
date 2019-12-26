Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C8712AB3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:26:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjxefHXD+MjnvZrlPFjKjFkae0ah4iLuNuitKYVuQjo=; b=NTpPMNfl25xCzD
	1FPmLlIpcmxobk7VHcRCcz3aWI1ClxQsR1F+V3lWn6PByHbdbhk2H+dk9dIweXPvVct/fce/siVRp
	105yZ4oDKqXLMaSLjjOPnC1Y+q3sxWnVoKZmKuKCoAQ7nsAHkHy1+KoTKrbnx01TNqZrWpD8lGjw8
	MiBLhoLhNfokCdR4XOEG6j+lcaeq6zRadfrBbup0omLznOu+et0ITZXmnhOiKemD6F6fmdRAec8vW
	QOvTq1x3DeqPgJdEX1ZPKyCV2uKgaOg5tQTZIG4bL43FWXL+F9LTLivB3w7qSSS+iJcRV54L/KZZd
	/HIes8REGDiHTV8xrbhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPPT-0003cZ-1S; Thu, 26 Dec 2019 09:26:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPPJ-0003bu-3g
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:26:14 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA2AA20828;
 Thu, 26 Dec 2019 09:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577352372;
 bh=6asAChZGLqkA6kNuizNIWoIAN2lunfQ0xFCnSMNqwvU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GDEijHdH+fS2OpJ8NizE3hyQLJMY7yVxc6vR8dsGzeVCgPbbShA69taRiT00O2/Q/
 eYVHv071VAMVsV58S2RK4tfqDrqIX/ifiHfUexpBx69iQ9bIXU/r4CPiWQPpJNBLcZ
 6myeBCBMdGencmtdph9n1UWcRWDVcpHjmXCS8EvY=
Date: Thu, 26 Dec 2019 18:26:07 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v7 3/3] arm64: implement KPROBES_ON_FTRACE
Message-Id: <20191226182607.06770598a00507090a046951@kernel.org>
In-Reply-To: <20191226121108.0cd1b078@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
 <20191225173001.6c0e3fb2@xhacker.debian>
 <20191226115707.902545688aa90b34e2e550b3@kernel.org>
 <20191226110348.146bb80b@xhacker.debian>
 <20191226121108.0cd1b078@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_012613_192545_FFFAED0C 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Dec 2019 04:25:24 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> > > > +/*
> > > > + * In arm64 FTRACE_WITH_REGS implementation, we patch two nop instructions:
> > > > + * the lr saver and bl ftrace-entry. Both these instructions are claimed
> > > > + * by ftrace and we should allow probing on either instruction.  
> > >
> > > No, the 2nd bl ftrace-entry must not be probed.
> > > The pair of lr-saver and bl ftrace-entry is tightly coupled. You can not
> > > decouple it.  
> > 
> > This is the key. different viewing of this results in different implementation.
> > I'm just wondering why are the two instructions considered as coupled. I think
> > here we met similar situation as powerpc: https://lkml.org/lkml/2019/6/18/646
> > the "mflr r0" equals to lr-saver here, branch to _mcount equals to bl ftrace-entry
> > could you please kindly comment more?
> > 
> > Thanks in advance
> > 
> 
> hmm, I think I may get some part of your opinion. In v7 implementation:
> 
> if probe on func+4, that's bl ftrace-entry, similar as mcount call on
> other architectures, we allow this probe as normal.
> 
> if probe on func+0, the first param ip in kprobe_ftrace_handler() points
> to func+4(this is adjusted by ftrace), regs->ip points to func+8, so in
> kprobe_ftrace_handler() we modify regs->ip to func+0 to call kprobe
> pre handler, then modify regs->ip to func+8 to call kprobe post handler.
> As can be seen, the first two instructions are considered as a virtual
> mcount call. From this point of view, lr saver and the bl <ftrace-entry>
> is coupled.

Yes, this is good. But probing on func+4 is meaningless. Both func+0 and
func+4 call a handler with same pt_regs. And it should have the stack
pointer which is NOT modified by lr-saver and regs->lr must point original
call address. (ftrace regs caller must do this fixup for supporting live
patching correctly)

And in this case, func+4 has fake pt_regs because it skips lr-saver's
effects.

And even if you fixed up the pt_regs, there is another problem of what
user expects on the target instructions.

As you know, dynamic ftrace will fill the instruction with NOP (2 NOPs
in arm64), in this case, maybe pt_regs are same except pc on func+0 and
func+4. But if ftrace already enabled on the function, user will see
there are lr-saver and bl, oops. In this case we have to change pt_regs
between func+0 and func+4. So it depends on the current mode.

However, IMHO, it is not worth to pay such simulation cost. No one want
to probe such simulated intermediate address. It is easy to expect the
result from the code. Moreover, the func+4 will not appear on debuginfo
because those 2 special insturctions are just appended by the compiler,
not generated by the code.

So I don't think we need to support func+4. We only need func+0, or func+8
(this must be same as func+0 except regs->pc anyway)

Thank you,

> 
> If we split patch3 into two:
> one to support kprobes func+4
> the second to support kprobe on func+0
> it would be much clearer.
> 
> Then the key here is whether we could allow both kprobes on func+0 and func+4
> 
> Thanks


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
