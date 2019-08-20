Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A402595213
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 02:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClBBUSNZ92iQ9RH1m87uOeWAbczENRXFs3yKKF+rGgA=; b=cmJY9tCb4d470O
	s7ZrT8bauamM0e2B5B5hcolxiNWveUIZx1fZ/7ju0QnQ+ZXn8jXi0YvRuzPDjXuTMmyHfUDxJeEl+
	vHFHeViWUHA/hf3n2j6U6SRJzhTDpLzaQQHR77ZKYHzPGAaV24ftdd/YlUMR32SvX/2sIGktjE0La
	atgyLa7emubE6ZtXLbE3qjU5X/Ye3Ksbm6BYCcEntmz8DAOdPfc+ZbkcYe5OP/hCPQuSXbmEbckzO
	TRYXVYE6XlqIFcrmHkdxqwSgFu+arVgJQWqf0Z9TjWxQUlzz+/HkB1+rjF9S+z14pHOdF4ssMP/bY
	8KTxcwUhXh1hUXLt6psg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrb6-000100-KB; Tue, 20 Aug 2019 00:02:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzraj-0000yv-Dj
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 00:01:40 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 472E82082F;
 Tue, 20 Aug 2019 00:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566259296;
 bh=Dygb+76S30NlTIz0E98ZuWWzV7OGS2DSaQKUzrhuObs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FRsrIwP79+XwJmcnEAvDLzIWZSmxMclwruPxmhgmjRCdJSaHwtKzRLl0WWC7CRXRK
 95gazBM+n2Es4NcakK9McZLYoxqKpcDYTUyQQMkQxKvFGo1IKgusw0QFJndCBU9jVE
 xJ1GsnFxBziE8PutDAeUpVaZDFWqfVrSYgkPKuHE=
Date: Tue, 20 Aug 2019 09:01:30 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH 1/4] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Message-Id: <20190820090130.844fc064030db67efb05ceb1@kernel.org>
In-Reply-To: <20190819192505.483c0bf0@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
 <20190819192505.483c0bf0@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_170137_564840_5004B4AB 
X-CRM114-Status: GOOD (  15.13  )
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

Hi Jisheng,

On Mon, 19 Aug 2019 11:36:09 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> For KPROBES_ON_FTRACE case, we need to adjust the kprobe's addr
> correspondingly.

No, I think you have misunderstood what the ftrace_call_adjust() does.
Ftrace's rec->ip is already adjusted when initializing it. Kprobes
checks the list after initialized (adjusted). So you don't need to
adjust it again.

BTW, this type of hidden adjustment should be avoided by design.
If you find user specifies wrong address, return error instead of
adjust it silently.

Thank you,

> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  kernel/kprobes.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 9873fc627d61..f8400753a8a9 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1560,6 +1560,9 @@ int register_kprobe(struct kprobe *p)
>  	addr = kprobe_addr(p);
>  	if (IS_ERR(addr))
>  		return PTR_ERR(addr);
> +#ifdef CONFIG_KPROBES_ON_FTRACE
> +	addr = (kprobe_opcode_t *)ftrace_call_adjust((unsigned long)addr);
> +#endif
>  	p->addr = addr;
>  
>  	ret = check_kprobe_rereg(p);
> -- 
> 2.23.0.rc1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
