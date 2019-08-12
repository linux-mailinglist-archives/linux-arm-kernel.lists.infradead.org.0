Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E1089EE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DKKE7lIHMKljByG7qm/C2GulhT9y77vuZaHeu5mwzQ=; b=cRU6XoriXMDAUk
	wqo8Y02lG/gFAIi7sc7Bg6p5KncBabQ8Oa4JKa7cdj9sASABLfVw2PO5dhGKOrn0Q6eRKECZYStqV
	RfTHxEkxu6u17z3weK9Uqicm0du3V6Ns3ky67qcpVWl/wqK0NqKDFfmLl831XIxBqxZaQzaa6Egzc
	bVNMydS4HgxlwNYGxa5wdCYZNUVdhOI6y8mlNPTK13EvNgUATGoXiNACIL7jrAoXUE2sUcbJB6FSy
	OXqpMm/83c1WjX+EvX6srdSV53MHYSQRbOopVfEdpGJrU+YVxR13RbEDIcr0oEF2JBjf0X4H0mNSb
	3QV3X8i/UDyGsBQk16VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9qM-000203-PO; Mon, 12 Aug 2019 12:54:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9q8-0001zQ-FQ
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:54:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E290B20679;
 Mon, 12 Aug 2019 12:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565614460;
 bh=nItKXCmcXxFT8ylXlYRK0+vg1b1JYXnGiCqBl82qnhI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=frrXzaLXfzCWGoGSH5DfbnzU7brKOJcEcB2su/QfJyhr/0hPiXosnfRlEL7/1VNsY
 /1tmZ5WrGQ94NsQNx7n2kNFB8iQEC/m1lcp6j2eBhXfc/u/6cAyzlFRSZGsrTEFoxp
 5zFM1qqneRW4tX+bcD7LQRcDJuaessh+G/qi4lUA=
Date: Mon, 12 Aug 2019 13:54:15 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#895
 (master - 2a3984b)
Message-ID: <20190812125414.3zeysojdycfuowyy@willie-the-truck>
References: <ClangBuiltLinux/continuous-integration+122566420+broken@travis-ci.com>
 <5d4d7164795c7_43f9afa8b58b0242711@29afa0b1-fa00-407e-a40e-a8edb471126a.mail>
 <CAKwvOd=2v0j5=-q9662xiv9ofrKfQm+04KUQAo1pEz+6MZXYMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=2v0j5=-q9662xiv9ofrKfQm+04KUQAo1pEz+6MZXYMg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_055420_556811_25C4D051 
X-CRM114-Status: GOOD (  12.23  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Stephen Rothwell <sfr@canb.auug.org.au>, pauld@redhat.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-next@vger.kernel.org, Mark Brown <mark.brown@linaro.org>,
 tglx@linutronix.de, dietmar.eggemann@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Fri, Aug 09, 2019 at 02:21:21PM -0700, Nick Desaulniers wrote:
> Did anyone report any issue with last night's -next for arm64?
> 
> Some kind of deadlock in online_fair_sched_group.
> 
> [   15.256790] ================================
> [   15.257025] WARNING: inconsistent lock state
> [   15.257243] 5.3.0-rc3-next-20190809 #1 Not tainted
> [   15.257393] --------------------------------
> [   15.257526] inconsistent {IN-HARDIRQ-W} -> {HARDIRQ-ON-W} usage.
> [   15.258096] init/1 [HC0[0]:SC0[0]:HE1:SE1] takes:
> [   15.258522] (____ptrval____) (&rq->lock){?.-.}, at:
> online_fair_sched_group+0x78/0xe4
> [   15.259170] {IN-HARDIRQ-W} state was registered at:
> [   15.259658]   lock_acquire+0x1dc/0x228
> [   15.259940]   _raw_spin_lock+0x40/0x54
> [   15.260251]   scheduler_tick+0x50/0xfc
> [   15.260491]   update_process_times+0x80/0x98
> [   15.260677]   tick_periodic+0xd8/0xf0
> [   15.260910]   tick_handle_periodic+0x30/0x94
> [   15.261126]   arch_timer_handler_virt+0x34/0x40
> [   15.261332]   handle_percpu_devid_irq+0x1a8/0x3c4
> [   15.261495]   __handle_domain_irq+0x7c/0xbc
> [   15.261689]   gic_handle_irq+0x48/0xac
> [   15.261881]   el1_irq+0xbc/0x180

Ok, so we take rq_lock() off the back of a timer interrupt in irq context...

> [   15.267928]  dump_backtrace+0x0/0x140
> [   15.268159]  show_stack+0x14/0x1c
> [   15.268341]  dump_stack+0xa8/0x104
> [   15.268482]  mark_lock+0xda0/0xda8
> [   15.268728]  __lock_acquire+0x300/0x858
> [   15.268869]  lock_acquire+0x1dc/0x228
> [   15.269057]  _raw_spin_lock+0x40/0x54

... but also with irqs enabled when handling a syscall. Boom.

> [   15.269201]  online_fair_sched_group+0x78/0xe4
> [   15.269392]  sched_online_group+0x88/0xac
> [   15.269591]  sched_autogroup_create_attach+0xcc/0x12c
> [   15.269765]  ksys_setsid+0xe8/0xec
> [   15.269990]  __arm64_sys_setsid+0xc/0x18
> [   15.270178]  el0_svc_common+0x9c/0x15c
> [   15.270317]  el0_svc_handler+0x5c/0x64
> [   15.270493]  el0_svc+0x8/0xc
> 
> https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/223856448
> 
> Guessing related to
> commit 6b8fd01b21f5 ("sched/fair: Use rq_lock/unlock in
> online_fair_sched_group")

Agreed. I think that patch should be using rq_lock_{irqsave,irqrestore}().

Looking at the list archive, it seems that this was already spotted last
week:

  https://lkml.kernel.org/r/dfc8f652-ca98-e30a-546f-e6a2df36e33a@arm.com

Although the proposal there disables irqs unconditionally, which matches
the old behaviour (prior to 6b8fd01b21f5) but feels a bit dodgy given that
the only caller (sched_online_group()) uses the save/restore variants.

Phil -- is there a fix queued for this somewhere?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
