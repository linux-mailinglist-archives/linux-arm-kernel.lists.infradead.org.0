Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92931DE78F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKPxk44b/eGaWVWw5uhZln8OnSo7+SBiWnmhYMdF0Ro=; b=UvRWmSQGLi+Cyn
	G3BLmtxkPFI7To9i0jN5Kfe9tQwcxHRQrHel+UIX03rxqywwXLkmxB7Yawb8dlKGS2BMumS9jzx4T
	7klbq66xQV7D5/Py/NnwMIzliJK2Aw04q/meAZW2+8z9XCif68MAj+8n/HqCkI4C5meaoGNYx6g77
	VR0nmyuRmN6XyWgg6+o/pHN1TrMZI1HMR/URVQsOBuhxXisKCwDoxiTzpStieTwtp8vr28Lvnj1ze
	FEuaSN0XGcnAL/MJAVq7U5aJHqzO+j8cz61I1aIbTbcdA4xUrNzJVeuwXrtH27dHeFNPh33Ambg+T
	no9IsbtHbWPHNWC3ch1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTlG-0008RA-VM; Mon, 21 Oct 2019 09:13:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTl2-0008QU-N7
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:13:46 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEF1320873;
 Mon, 21 Oct 2019 09:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571649223;
 bh=yqmr6bE4HTCk/kWaRLnlRHb3aZ8M5nE1t+SHzsWkT0c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dILlMHxsapCwB/RkiKFBJRcDoTVeP8uZtjnYn4j8HijxhFuviJQGK9RLJptUZVwle
 rvnrlg/U39zZmz9e7H77HIsAXzMEN5hihlW58hLy52HHm+Ms7Lddmy2Cs/TeA0Xfw2
 af0VNH2gjKVSuPOS00xFIi5Vol9q+2hboQvET6FM=
Date: Mon, 21 Oct 2019 18:13:37 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 10/18] kprobes: fix compilation without CONFIG_KRETPROBES
Message-Id: <20191021181337.a1f886fa62b400023c576be0@kernel.org>
In-Reply-To: <20191018130257.3376e397@gandalf.local.home>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-11-samitolvanen@google.com>
 <20191018130257.3376e397@gandalf.local.home>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021344_798156_C2A0C65E 
X-CRM114-Status: GOOD (  17.62  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 13:02:57 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> 
> Added Masami who's the maintainer of kprobes.
> 
> -- Steve
> 
> 
> On Fri, 18 Oct 2019 09:10:25 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
> 
> > kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
> > even if CONFIG_KRETPROBES is not selected.

Good catch! Since nowadays all arch supports kretprobes, I've missed to
test it.

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you,

> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  kernel/kprobes.c | 38 +++++++++++++++++++-------------------
> >  1 file changed, 19 insertions(+), 19 deletions(-)
> > 
> > diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> > index 53534aa258a6..b5e20a4669b8 100644
> > --- a/kernel/kprobes.c
> > +++ b/kernel/kprobes.c
> > @@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
> >  	return (unsigned long)entry;
> >  }
> >  
> > +bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> > +{
> > +	return !offset;
> > +}
> > +
> > +bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> > +{
> > +	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> > +
> > +	if (IS_ERR(kp_addr))
> > +		return false;
> > +
> > +	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> > +						!arch_kprobe_on_func_entry(offset))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >  #ifdef CONFIG_KRETPROBES
> >  /*
> >   * This kprobe pre_handler is registered with every kretprobe. When probe
> > @@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
> >  }
> >  NOKPROBE_SYMBOL(pre_handler_kretprobe);
> >  
> > -bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> > -{
> > -	return !offset;
> > -}
> > -
> > -bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> > -{
> > -	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> > -
> > -	if (IS_ERR(kp_addr))
> > -		return false;
> > -
> > -	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> > -						!arch_kprobe_on_func_entry(offset))
> > -		return false;
> > -
> > -	return true;
> > -}
> > -
> >  int register_kretprobe(struct kretprobe *rp)
> >  {
> >  	int ret = 0;
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
