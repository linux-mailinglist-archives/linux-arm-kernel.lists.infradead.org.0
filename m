Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BFE9523C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 02:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYyQ0tt6CJwNC2KlgRw1DnWxcAoa5oY+sOZAc5gxdNs=; b=fUfIv1VEbZKIks
	3/N77YfvzQe63UopdqfcsxrSiytuLo1aH+xxGHStY8dzeaqdPWix1U5WJlxmEFKQYSv12SCB8Dkh9
	56Gl7wqHuouJOONlOliSYJpVOjInMbaeZo45XVMQX5+DpNRpvYKbDzvHyQkIovIcmuwN+8vzvBCRS
	ymxiD6b8PHrM2D/AlwH65PYvvFv+zIqnPFsh/xQadmb9ppsJGTaV+RFaHFjejoahNB9M8WEbOtp8g
	gjNVSiGyNR4vIsbfRCf8OwfJ7drEdW9qMRKIyjEwERh6DL4cd3zt11ztmAsi0P8LxvsL7iaBP+BXN
	2U7ZEkqXgeJUv2ftelQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzril-0003CK-Pt; Tue, 20 Aug 2019 00:09:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzriX-0003Bx-Dj
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 00:09:42 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FDC02087E;
 Tue, 20 Aug 2019 00:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566259781;
 bh=3dePchIXUrHARNvoOUntsAh0qrfK9lM9QkGh3Z6XwXo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=asBsoarRoTvoLiVFt3+6TN9ttHcpCBbaKi0T2wz6/m7GAH1tqy4MWMmFLOhED4cK3
 qqtSRzJQSaez3m8UMAWsjKj54yK2lF4gBVmrDXmygSG1/UeQhQqf2x5QatOGhp9pgK
 hf+Sv8OU67xeW3NyS67PCYvJOf7nczxq91oNirvQ=
Date: Tue, 20 Aug 2019 09:09:35 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH 2/4] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Message-Id: <20190820090935.a8357e7f8531340c054275f2@kernel.org>
In-Reply-To: <20190819192543.32cec143@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
 <20190819192543.32cec143@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_170941_486896_25A9E180 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Steven Rostedt <rostedt@goodmis.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 11:36:48 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> This is to make the kprobe_ftrace_handler() common, so we can move it
> to common code in next patch.
> 

BTW, this patch looks good, without next patch. Could you update the
patch description and resend it with my Ack?

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you,

> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  arch/x86/kernel/kprobes/ftrace.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/x86/kernel/kprobes/ftrace.c b/arch/x86/kernel/kprobes/ftrace.c
> index 681a4b36e9bb..c2ad0b9259ca 100644
> --- a/arch/x86/kernel/kprobes/ftrace.c
> +++ b/arch/x86/kernel/kprobes/ftrace.c
> @@ -28,9 +28,9 @@ void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
>  	if (kprobe_running()) {
>  		kprobes_inc_nmissed_count(p);
>  	} else {
> -		unsigned long orig_ip = regs->ip;
> +		unsigned long orig_ip = instruction_pointer(regs);
>  		/* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> -		regs->ip = ip + sizeof(kprobe_opcode_t);
> +		instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
>  
>  		__this_cpu_write(current_kprobe, p);
>  		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> @@ -39,12 +39,13 @@ void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
>  			 * Emulate singlestep (and also recover regs->ip)
>  			 * as if there is a 5byte nop
>  			 */
> -			regs->ip = (unsigned long)p->addr + MCOUNT_INSN_SIZE;
> +			instruction_pointer_set(regs,
> +				(unsigned long)p->addr + MCOUNT_INSN_SIZE);
>  			if (unlikely(p->post_handler)) {
>  				kcb->kprobe_status = KPROBE_HIT_SSDONE;
>  				p->post_handler(p, regs, 0);
>  			}
> -			regs->ip = orig_ip;
> +			instruction_pointer_set(regs, orig_ip);
>  		}
>  		/*
>  		 * If pre_handler returns !0, it changes regs->ip. We have to
> -- 
> 2.23.0.rc1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
