Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8151019F5CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FF3CpUedjsV4LuGEOwt76cqcbA2U68KHspIJFQRbAxg=; b=lQN7mZKoq+R2Rf
	n31A9f7nYphVW031P/uMKpDo8koOMk4HfRb1LQLBs1zjKSY4Vqczb8umol9F3BwxYD++wKxS0PDWi
	njOZXOV7dmve82xVGuaD4wJFZCYk9T6JO0eQA9Qht6tde6dj9GimDikm77pYHIJBSPWT5vdR8EUix
	FjXTp6tTlAoFYHiC7Kjc0Y2zDX5bcXuABfHletBJHwFJ62OG9+pet1jqaeTvKgPeJwAa7ez1nDlyL
	zi1djrgWwYGXSiNby67BEftnfQ6K9q7dmanpQyBSQN2T2vZqVOz81fklP+DLzYT3LmKzAOHieH8xL
	5rOjWQuSrtsMUaFduZVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQsA-0006Ag-Fq; Mon, 06 Apr 2020 12:29:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQs1-0005z3-1r
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:28:56 +0000
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A43621974
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 12:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586176132;
 bh=qdQc4jm6vlFbaonGSwzWhehix7nt8PkXCpQdHV57GG0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IDcKiuNR8fZUCVROYqjQUH95XxmMFoQ5MVvamfPNxuE6R6rtEqs1Y8EVsE/u6PLA0
 /CYH5/wIkuvJwvRffLxwB9fadS2peEC8x+Cbt+VcQb8DW3mp44XuxY7nwdC76hrLjR
 zZNIGWTGVJ7PKdDm1SElM/YbZttJ/sGPVdVcsn+0=
Received: by mail-io1-f43.google.com with SMTP id y14so15488668iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 05:28:52 -0700 (PDT)
X-Gm-Message-State: AGi0PubNFKKnnkYca3jVzK+jJ0tESqoMbATV/ikFf1gZ8sCv92ektMXa
 69RJOvcXVuzJ5HbqfaebGsvxjV+e2YMd0poCPeY=
X-Google-Smtp-Source: APiQypJjnZcvIJ/YDc44KzQ6/22rvd26OY3TBhy3ykjb+yQYtt42A/wZZFdcjpihPuepidSC82tUy1pckL533Sf2NQ0=
X-Received: by 2002:a02:7785:: with SMTP id g127mr3372412jac.134.1586176131459; 
 Mon, 06 Apr 2020 05:28:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200402153845.30985-1-kursad.oney@broadcom.com>
In-Reply-To: <20200402153845.30985-1-kursad.oney@broadcom.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 6 Apr 2020 14:28:40 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF9Oa6xsG6HsZG=buB8x5=wxSBR_qxhOd__hkn1pBj6jg@mail.gmail.com>
Message-ID: <CAMj1kXF9Oa6xsG6HsZG=buB8x5=wxSBR_qxhOd__hkn1pBj6jg@mail.gmail.com>
Subject: Re: 32-bit arm unwind info for PLTs
To: Kursad Oney <kursad.oney@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_052854_869798_2AC0456E 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: florian.fainelli@broadcom.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Apr 2020 at 17:45, Kursad Oney <kursad.oney@broadcom.com> wrote:
>
> Hi,
>
> I have a large kernel module that gets loaded to vmalloc via
> ARM_MODULE_PLTS. When I either use perf, or enable (yet unmerged)
> KASAN-arm changes, I see occasional warnings like this:
>
> unwind: Index not found pc:f3aa8d6c
>
> The address f3aa8d6c is in the .plt section. I printed the backtrace
> in unwind_frame where the warning is printed, and the backtrace looks
> like this:
>
> NMI backtrace for cpu 0
> CPU: 0 PID: 7193 Comm: hostapd Tainted: P                  4.19.100 #7
> Hardware name: Generic DT based system
> [<c02144b8>] (unwind_backtrace) from [<c020dac8>] (show_stack+0x10/0x14)
> [<c020dac8>] (show_stack) from [<c083b238>] (dump_stack+0x9c/0xb0)
> [<c083b238>] (dump_stack) from [<c0842dfc>] (nmi_cpu_backtrace+0xb4/0xe8)
> [<c0842dfc>] (nmi_cpu_backtrace) from [<c0842fb0>] (nmi_trigger_cpumask_backtrace+0x180/0x1d4)
> [<c0842fb0>] (nmi_trigger_cpumask_backtrace) from [<c0214428>] (unwind_frame+0x650/0x6e0)
> [<c0214428>] (unwind_frame) from [<c020d53c>] (walk_stackframe+0x30/0x3c)
> [<c020d53c>] (walk_stackframe) from [<c020d778>] (__save_stack_trace+0x100/0x108)
> [<c020d778>] (__save_stack_trace) from [<c03369ec>] (__kasan_slab_free+0x124/0x1f8)
> [<c03369ec>] (__kasan_slab_free) from [<c033396c>] (kmem_cache_free+0x5c/0x19c)
> [<c033396c>] (kmem_cache_free) from [<c029138c>] (rcu_process_callbacks+0x360/0x604)
> [<c029138c>] (rcu_process_callbacks) from [<c020295c>] (__do_softirq+0x174/0x374)
> [<c020295c>] (__do_softirq) from [<c022b07c>] (irq_exit+0xd0/0xf8)
> [<c022b07c>] (irq_exit) from [<c027ce3c>] (__handle_domain_irq+0x7c/0xd4)
> [<c027ce3c>] (__handle_domain_irq) from [<c04dfc00>] (gic_handle_irq+0x4c/0x90)
> [<c04dfc00>] (gic_handle_irq) from [<c02020cc>] (__irq_svc+0x6c/0xac)
> Exception stack(0xe4c3b400 to 0xe4c3b448)
> b400: dca01404 f3d63a80 bd7ac750 00000000 f3d63a84 f0b6c164 f3bb6434 dca0126c
> b420: f3d665d0 dca01408 dca01404 0c002c24 00000000 e4c3b450 f37ed5a4 f3aa8d6c
> b440: 600b0013 ffffffff
> [<c02020cc>] (__irq_svc) from [<f3aa8d6c>] (wl_module_exit+0xf64/0x21f8 [wl])
>
> To me it looks like while the CPU is executing an instruction in the
> PLT, it gets an interrupt. If we call save_stack_trace() or any
> function that eventually gets to unwind_frame() from that context,
> then the unwinder doesn't know how to unwind the PLT. Does this sound
> right? Any idea how the unwinder code should deal with this situation?
>

It is going to be infeasible to emit CFI directives on the fly, and
expose them via a separate .eh_frame section in the module. So what we
should probably be doing is teaching the unwinder about these entries,
and simply ignore them, which is reasonable, given that they only set
PC using a PC+immediate LDR, and so they don't affect the state of the
stack or the register file. That means we'll need to use the value of
LR to locate the next stack frame.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
