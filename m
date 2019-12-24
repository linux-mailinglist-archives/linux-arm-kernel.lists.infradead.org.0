Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A81129FFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 11:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5BFgOOECgHcemw8aTLfzuDlLKkjvdaCoSk4OftYZ1s=; b=iL6UXOV1fPY7Sg
	zNPEiYbzeH4J1fUIRJ7irsNU5santCkrubUspVwhG3Yt69z69A9Bqa3OmiwtV60Gt6jA2OinCZxOq
	GjS/fq86nSFgA5mkd72fJ5AlnV1TOs0IgVXV36TGHlWJdHMA00EFhpbTR/SNemMeZGpqEiT6OqS94
	qT+Se9DYGSnapL4ocS4nfuqILB2ZK2FHYfezhZ7U9JuhxwbDZLuwMfa83KEaiUI6hKwQlRel9cYI3
	zB3peqIPrQa4MiuAJyfjFoRO1tgw3dohgeTo3iXy5zMAVud5SVpo4SD0mFijxIW5oiiN6GvC87Zpp
	vF70DRN1Bt0kOF8xyu/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijh8A-0008Vw-E9; Tue, 24 Dec 2019 10:09:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijh7y-0008VY-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 10:09:23 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EAF72071A;
 Tue, 24 Dec 2019 10:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577182161;
 bh=OcYvU6R9hPJgmJg3UwAfVCin1mEXqh7FP8N9hsHQNeU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X8ogjSxmBHca5nsL5BInqifxvj7nOhyh902O2b0NIdrXPscb+r1ItHnf9hJoLzZAv
 L9q7c04rXqWTvPYBsAVWDiyIXedtoYN+67rSjcq52yqNI50HL88+uCnLSaNFE3+I5Y
 ztzJ8syVplerh7dv0AfnWbgdi+rci75L2/USw358=
Date: Tue, 24 Dec 2019 19:09:16 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v6] arm64: implement KPROBES_ON_FTRACE
Message-Id: <20191224190916.2e47478445fb179e88f60cc3@kernel.org>
In-Reply-To: <20191223153300.30281a93@xhacker.debian>
References: <20191218140622.57bbaca5@xhacker.debian>
 <20191218222550.51f0b681de7bbab7e49b09a9@kernel.org>
 <20191223153300.30281a93@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_020922_572994_65C9FDFA 
X-CRM114-Status: GOOD (  28.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "naveen.n.rao@linux.vnet.ibm.com" <naveen.n.rao@linux.vnet.ibm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jisheng,

On Mon, 23 Dec 2019 07:47:24 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> Hi Masami,
> 
> On Wed, 18 Dec 2019 22:25:50 +0900 Masami Hiramatsu wrote:
> 
> 
> > 
> > 
> > On Wed, 18 Dec 2019 06:21:35 +0000
> > Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:
> > 
> > > KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> > > eliminates the need for a trap, as well as the need to emulate or
> > > single-step instructions.
> > >
> > > Tested on berlin arm64 platform.
> > >
> > > ~ # mount -t debugfs debugfs /sys/kernel/debug/
> > > ~ # cd /sys/kernel/debug/
> > > /sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events
> > >
> > > before the patch:
> > >
> > > /sys/kernel/debug # cat kprobes/list
> > > ffffff801009fe28  k  _do_fork+0x0    [DISABLED]
> > >
> > > after the patch:
> > >
> > > /sys/kernel/debug # cat kprobes/list
> > > ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]  
> > 
> > BTW, it seems this automatically changes the offset without
> > user's intention or any warnings. How would you manage if the user
> > pass a new probe on _do_fork+0x4?
> 
> In current implementation, two probes at the same address _do_fork+0x4

OK, that is my point.

> > IOW, it is still the question who really wants to probe on
> > the _do_fork+"0", if kprobes modifies it automatically,
> > no one can do that anymore.
> > This can be happen if the user want to record LR or SP value
> > at the function call for debug. If kprobe always modifies it,
> > we will lose the way to do it.
> 
> arm64's DYNAMIC_FTRACE_WITH_REGS implementation makes use of GCC
> -fpatchable-function-entry=2 option to insert two nops. When the function
> is traced, the first nop will be modified to the LR saver, then the
> second nop to "bl <ftrace-entry>", commit 3b23e4991fb6("
> arm64: implement ftrace with regs") explains the mechanism.

So both of the instruction at func+0 and func+4 are replaced.

> So on arm64(in fact any arch makes use of -fpatchable-function-entry will
> behave similarly), when DYNAMIC_FTRACE_WITH_REGS is enabled, the ftrace location
> is always on the first 4 bytes offset.
> 
> I think when users want to register a kprobe on _do_fork+0, what he really want
> is to kprobe on the patched(by -fpatchable-function-entry)_do_fork+4

OK, in this case, kprobe should treat the first 2 instructions as a
single virtual instruction. This means,

 - kprobes can probe func+0, but not func+4 if the function is ftraced.
    (-EILSEQ must be returned)
 - both debugfs/kprobes/list and tracefs/kprobe_events should show the
   probed address as func+0. Not func+4.

Then, user can use kprobes as if there is one big (8-byte) instruction
at the entry of the function. Since probing on func+4 is rejected and
the call-site LR/SP is restored in ftrace, there should be no
contradiction. It should work as if we put a breakpoint on the func + 0.

> 
> PS: per my understanding, powerpc's kprobes_on_ftrace also introduces an
> extra automatic offset due to its implementation.

Uh, that is also ugly.... must be fixed.


> > 
> > Could you remove below function at this moment?
> > 
> > > +kprobe_opcode_t *kprobe_lookup_name(const char *name, unsigned int offset)
> > > +{
> > > +     unsigned long addr = kallsyms_lookup_name(name);
> > > +
> > > +     if (addr && !offset) {
> > > +             unsigned long faddr;
> > > +             /*
> > > +              * with -fpatchable-function-entry=2, the first 4 bytes is the
> > > +              * LR saver, then the actual call insn. So ftrace location is
> > > +              * always on the first 4 bytes offset.
> > > +              */
> > > +             faddr = ftrace_location_range(addr,
> > > +                                           addr + AARCH64_INSN_SIZE);
> > > +             if (faddr)
> > > +                     return (kprobe_opcode_t *)faddr;
> > > +     }
> > > +     return (kprobe_opcode_t *)addr;
> > > +}
> > > +
> > > +bool arch_kprobe_on_func_entry(unsigned long offset)
> > > +{
> > > +     return offset <= AARCH64_INSN_SIZE;
> > > +}  
> > 
> > 
> > Without this automatic change, we still can change the offset
> > in upper layer.
> 
> If remove the two functions, kprobe on  _do_fork can't ride on
> ftrace infrastructure, but kprobe on _do_fork+4 can. I'm not sure
> whether this is reasonable. Every kprobe users on arm64 will need to
> remember to pass an extra offset +4 to make use of kprobe_on_ftrace, could
> we hide the "+4"?

Yes, OK, as I said above, please hide +4. We will see the virtual
"call" instruction (= "mov x9, lr; br <addr>") at the entry of ftraced
function. :)

Thank you,


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
