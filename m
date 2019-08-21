Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8405796F34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLKwwGg5kgPra8s8KeBTpXAvbul5ybD+UwIZZ/EVSSY=; b=cv1a5YCY53yjXe
	ByXvZzz5hJKbuiXxvbIgUhUN4H87HN88UiDlHNXcb9g9CNOwQRao8LAlCpm4EmBka5IpeMXmLMmUV
	kgjhQKwTgPkvcarfOtHI8xqjJQPScrIYlneVV9dcpCCSzmY57thlDDw4p4K5Qi+PJkNIskAt8Xha6
	XeFL9G5/Si2pLanRNcx9nABXIygiNYZYbju8FHAs0Ae+niOB5aTrSw3S74zru/9rrWG/QnrYqkkJy
	7T/JQNfU3eJxoVHpgohTDxvphbQay7ujfmwD2NM9pO6HNAhsiVKNmTN1EQcbIh71i5dQ4h6vCh/B1
	J75hZzZmdHW1N8ROKzXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0G2U-0002Ur-Mf; Wed, 21 Aug 2019 02:07:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0G2M-0002Tr-38
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:07:47 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E84E422DA7;
 Wed, 21 Aug 2019 02:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566353265;
 bh=Zqudwk65vUNNG7cwLAF4ZWtWBzan/Kk8MUshf8f8kpk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ahk39hs1grZsNJL1+z7+Stu7VoJZ6O9TIOL6aijYhsOVJd9K6tq6DKj/KQriJd21r
 svftHv/8MJx99tArPBUKMT+U7s4YdKHNLSSKQpMISNCjo/gzLMrZLMkqHq+Ug/srgk
 ncfFglDJPhJxDZGJ/AK4fNUdUy2nxumdQ2pKTRsQ=
Date: Wed, 21 Aug 2019 11:07:39 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>, Steven Rostedt
 <rostedt@goodmis.org>
Subject: Re: [PATCH v2 2/3] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Message-Id: <20190821110739.fb3ab6b69423dff64a3b4a29@kernel.org>
In-Reply-To: <20190820114224.0c8963c4@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114224.0c8963c4@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_190746_158577_1379E2EF 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jisheng,

On Tue, 20 Aug 2019 03:53:31 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> For KPROBES_ON_FTRACE case, we need to adjust the kprobe's addr
> correspondingly.

Either KPROBES_ON_FTRACE=y or not, ftrace_location() check must be
done correctly. If it failed, kprobes can modify the instruction
which can be modified by ftrace.

> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  kernel/kprobes.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 9873fc627d61..3fd2f68644da 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1484,15 +1484,19 @@ static inline int check_kprobe_rereg(struct kprobe *p)
>  
>  int __weak arch_check_ftrace_location(struct kprobe *p)
>  {
> -	unsigned long ftrace_addr;
> +	unsigned long ftrace_addr, addr = (unsigned long)p->addr;
>  
> -	ftrace_addr = ftrace_location((unsigned long)p->addr);
> +#ifdef CONFIG_KPROBES_ON_FTRACE
> +	addr = ftrace_call_adjust(addr);
> +#endif
> +	ftrace_addr = ftrace_location(addr);

No, this is not right way to do. If we always need to adjust address
before calling ftrace_location(), something wrong with ftrace_location()
interface.
ftrace_location(addr) must check the address is within the range which
can be changed by ftrace. (dyn->ip <= addr <= dyn->ip+MCOUNT_INSN_SIZE)


>  	if (ftrace_addr) {
>  #ifdef CONFIG_KPROBES_ON_FTRACE
>  		/* Given address is not on the instruction boundary */
> -		if ((unsigned long)p->addr != ftrace_addr)
> +		if (addr != ftrace_addr)
>  			return -EILSEQ;
>  		p->flags |= KPROBE_FLAG_FTRACE;
> +		p->addr = (kprobe_opcode_t *)addr;

And again, please don't change the p->addr silently.

Thank you,

>  #else	/* !CONFIG_KPROBES_ON_FTRACE */
>  		return -EINVAL;
>  #endif
> -- 
> 2.23.0.rc1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
