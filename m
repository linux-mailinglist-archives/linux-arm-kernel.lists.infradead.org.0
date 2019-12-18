Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2D312485A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AO+txXzg8y88ft38PjedY4rwAP7S0e4vRWy4dT/KpQk=; b=kif+u55JkX6iiL
	gkf7k6ZpufTWI+YI1fmfHfk5PyxT4L9LQ3TdN9oVyKSQARWzv0lc/w1HJLWKQnyTAkI5TEgvOsFv1
	2lWYqSMRNU307lYzgZb6T8PKHH0MaO0x4+hvkdPO7vlqC9AJxLRs81T/UdzWLrDAyGtD12a8b8i3c
	uLe6kirz3RsCsOGjUmNaGFe+yu8dGlO+mPFg0FC7O6V/W5vdUpoKuUWMJJBpowsRmwM2maJ1kDqBF
	xsHGOJk6zhGj8CL7slYNFX8hexKUHqrB3zAhmCm5mkXITaeL5idhLuWltsC1L2uu2mC1BSj0Mu+CL
	i15xlgSqXKzH3Ox8qtUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZLD-0002Rj-GM; Wed, 18 Dec 2019 13:26:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZKu-0002Qt-8Q
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:25:57 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F10DE2146E;
 Wed, 18 Dec 2019 13:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576675555;
 bh=9dtjGIQ5Qoox81UNGfLHKGGtqfpxNpzDQimQEyCVQH0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pnHpjtfQ2mKvo1sD/uItIJF3vGLuPYLsazzOQ+tHdrl6ElZgP5qIhWrS0TLf7PIP+
 lhjWsLgcVV9oOpqgjPkPZccioJhFq5yZHOqwlRaz0tUN+miH11WjT2n5e7AmPy8SHd
 gwgVQsy4ulBglwDaRYrEyQFX8KkwYEnIAC4E2ISU=
Date: Wed, 18 Dec 2019 22:25:50 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v6] arm64: implement KPROBES_ON_FTRACE
Message-Id: <20191218222550.51f0b681de7bbab7e49b09a9@kernel.org>
In-Reply-To: <20191218140622.57bbaca5@xhacker.debian>
References: <20191218140622.57bbaca5@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_052556_315834_FF79D761 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, 18 Dec 2019 06:21:35 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> eliminates the need for a trap, as well as the need to emulate or
> single-step instructions.
> 
> Tested on berlin arm64 platform.
> 
> ~ # mount -t debugfs debugfs /sys/kernel/debug/
> ~ # cd /sys/kernel/debug/
> /sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events
> 
> before the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009fe28  k  _do_fork+0x0    [DISABLED]
> 
> after the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]

BTW, it seems this automatically changes the offset without
user's intention or any warnings. How would you manage if the user
pass a new probe on _do_fork+0x4?

IOW, it is still the question who really wants to probe on
the _do_fork+"0", if kprobes modifies it automatically,
no one can do that anymore.
This can be happen if the user want to record LR or SP value
at the function call for debug. If kprobe always modifies it,
we will lose the way to do it.

Could you remove below function at this moment?

> +kprobe_opcode_t *kprobe_lookup_name(const char *name, unsigned int offset)
> +{
> +	unsigned long addr = kallsyms_lookup_name(name);
> +
> +	if (addr && !offset) {
> +		unsigned long faddr;
> +		/*
> +		 * with -fpatchable-function-entry=2, the first 4 bytes is the
> +		 * LR saver, then the actual call insn. So ftrace location is
> +		 * always on the first 4 bytes offset.
> +		 */
> +		faddr = ftrace_location_range(addr,
> +					      addr + AARCH64_INSN_SIZE);
> +		if (faddr)
> +			return (kprobe_opcode_t *)faddr;
> +	}
> +	return (kprobe_opcode_t *)addr;
> +}
> +
> +bool arch_kprobe_on_func_entry(unsigned long offset)
> +{
> +	return offset <= AARCH64_INSN_SIZE;
> +}


Without this automatic change, we still can change the offset
in upper layer.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
