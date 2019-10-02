Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB3FC939E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 23:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5IulPKnOZ+K+wIXx3UMUnZW+kRgqxFUSREtxfOZvKjI=; b=ClQY3Bav+mRaej
	E4xmRal9TxSp5YvCCfchOzFIUvF6ob+A1qWcF5TMibkImwr+1i4cdcwc/YXpGYK3qQ/nenA5rmwaB
	nyorbft8gx25PudyY7wUdh3B1gvjvV+9r0ke37sPsM3Y+1wDPQgpYYrNUABdef0SgalKUvkOewgsL
	j1SEHf8rG8sQkigjcIri0rNLqNlGjlAWohI0P9AuP8yA3KRod4fT2MFb8qxs1yVMt032iD6CMa4Ub
	QX5fKxndYSAXjpMO1N9u7ISE3w8joAobnliNOS77KJLtAeoQlFP4WXvABhiMEHsV49b/ChP6LG9yR
	MQaV6nBdS+Bc2oDbbk3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFmRn-0000nP-9p; Wed, 02 Oct 2019 21:46:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFmRf-0000mU-Dh
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 21:46:04 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D25B7217D7;
 Wed,  2 Oct 2019 21:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570052759;
 bh=O7NvbZugYvMLZ/+OzzjuvSo6dEQ9WQ3OuCN4ONY0600=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IoJhq4Pv0UhAVg1ket7V7IvKUNoWBUnQpaVqvxZCay/k28RCXEZQxTzXpCbrPbPME
 cgkeE7CWmXA8qmksbohVGhqJPnTg7I3v9HBgfbHffqP5+Ygdrbzc8YDtX+LZlPMol+
 KmZyg78A51sNcAs9ORccMZAsCuWoBGBtM3/Z25FY=
Date: Wed, 2 Oct 2019 14:45:58 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-Id: <20191002144558.87531ea9f68b535453fedd3e@linux-foundation.org>
In-Reply-To: <20191002123538.22609-1-will@kernel.org>
References: <20191002123538.22609-1-will@kernel.org>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_144603_482519_90BAE7A4 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 13:35:38 +0100 Will Deacon <will@kernel.org> wrote:

> Calling 'panic()' on a kernel with CONFIG_PREEMPT=y can leave the
> calling CPU in an infinite loop, but with interrupts and preemption
> enabled. From this state, userspace can continue to be scheduled,
> despite the system being "dead" as far as the kernel is concerned. This
> is easily reproducible on arm64 when booting with "nosmp" on the command
> line; a couple of shell scripts print out a periodic "Ping" message
> whilst another triggers a crash by writing to /proc/sysrq-trigger:
> 
>   | sysrq: Trigger a crash
>   | Kernel panic - not syncing: sysrq triggered crash
>   | CPU: 0 PID: 1 Comm: init Not tainted 5.2.15 #1
>   | Hardware name: linux,dummy-virt (DT)
>   | Call trace:
>   |  dump_backtrace+0x0/0x148
>   |  show_stack+0x14/0x20
>   |  dump_stack+0xa0/0xc4
>   |  panic+0x140/0x32c
>   |  sysrq_handle_reboot+0x0/0x20
>   |  __handle_sysrq+0x124/0x190
>   |  write_sysrq_trigger+0x64/0x88
>   |  proc_reg_write+0x60/0xa8
>   |  __vfs_write+0x18/0x40
>   |  vfs_write+0xa4/0x1b8
>   |  ksys_write+0x64/0xf0
>   |  __arm64_sys_write+0x14/0x20
>   |  el0_svc_common.constprop.0+0xb0/0x168
>   |  el0_svc_handler+0x28/0x78
>   |  el0_svc+0x8/0xc
>   | Kernel Offset: disabled
>   | CPU features: 0x0002,24002004
>   | Memory Limit: none
>   | ---[ end Kernel panic - not syncing: sysrq triggered crash ]---
>   |  Ping 2!
>   |  Ping 1!
>   |  Ping 1!
>   |  Ping 2!
> 
> The issue can also be triggered on x86 kernels if CONFIG_SMP=n, otherwise
> local interrupts are disabled in 'smp_send_stop()'.
> 
> Disable preemption in 'panic()' before re-enabling interrupts.
> 
> ...
>
> --- a/kernel/panic.c
> +++ b/kernel/panic.c
> @@ -180,6 +180,7 @@ void panic(const char *fmt, ...)
>  	 * after setting panic_cpu) from invoking panic() again.
>  	 */
>  	local_irq_disable();
> +	preempt_disable_notrace();
>  
>  	/*
>  	 * It's possible to come here directly from a panic-assertion and

We still do a lot of stuff (kexec, kgdb, etc) after this
preempt_disable() and I worry that something in there will now trigger
a might_sleep() warning as a result?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
