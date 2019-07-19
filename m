Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F187D6E2B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 10:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PAeotJ7TIl6824c/83yh0vUEkA46TdA7RqnEGfVvUdA=; b=Xu73C0FCs1AJM2+nNaUYPInDP
	VPpUbNZ7Ha/+KuCdqeu1FnCzW53U5M+LyHVoaqZpnzc8f/0ti4zJylQyU0adE661Xm3g1YhEWfbfW
	brvzPMVtaqntbBCjwKDGpax7PIxU7QEex59gggvUh69Jkt3r2lyQQsdqMUE4O5YKS+HR2/tUZOiPn
	3zVktQ6GzWA0txOzggHX5LEHxvjUXuu6vHLMW8IkW7ByxTXru84OO2YqUEI8kK4N9LW2URKEB8Fdt
	VXz1P4syHClKiJemXyxMSlg2x3+pdt6Fq4b4noKe/FkPWT8udtsHQKKBM4sSBmhjMdjWZoZXKnTNo
	dZLyia4bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOTP-0006g1-LN; Fri, 19 Jul 2019 08:42:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOT8-0006c8-3L
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 08:42:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCF95337;
 Fri, 19 Jul 2019 01:42:18 -0700 (PDT)
Received: from [10.1.36.145] (c02yf087jhd5.cambridge.arm.com [10.1.36.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E19E3F71A;
 Fri, 19 Jul 2019 01:42:16 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: debug: Remove rcu_read_lock from debug
 exception
To: Masami Hiramatsu <mhiramat@kernel.org>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
 <156342863822.8565.7624877983728871995.stgit@devnote2>
 <20190718062215.GG14271@linux.ibm.com> <20190718092022.GA3625@blommer>
 <20190718233133.146065f668da6297e57e52ef@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <536ba068-50de-963e-c3a7-0440da56943a@arm.com>
Date: Fri, 19 Jul 2019 09:42:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190718233133.146065f668da6297e57e52ef@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_014222_190243_7459CE41 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dan Rue <dan.rue@linaro.org>,
 Daniel Diaz <daniel.diaz@linaro.org>, Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 7/18/19 3:31 PM, Masami Hiramatsu wrote:
> On Thu, 18 Jul 2019 10:20:23 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
>> On Wed, Jul 17, 2019 at 11:22:15PM -0700, Paul E. McKenney wrote:
>>> On Thu, Jul 18, 2019 at 02:43:58PM +0900, Masami Hiramatsu wrote:
>>>> Remove rcu_read_lock()/rcu_read_unlock() from debug exception
>>>> handlers since the software breakpoint can be hit on idle task.
>>
>> Why precisely do we need to elide these? Are we seeing warnings today?
> 
> Yes, unfortunately, or fortunately. Naresh reported that warns when
> ftracetest ran. I confirmed that happens if I probe on default_idle_call too.
> 
> /sys/kernel/debug/tracing # echo p default_idle_call >> kprobe_events
> /sys/kernel/debug/tracing # echo 1 > events/kprobes/enable
> /sys/kernel/debug/tracing # [  135.122237]
> [  135.125035] =============================
> [  135.125310] WARNING: suspicious RCU usage

> [  135.132224] Call trace:
> [  135.132491]  dump_backtrace+0x0/0x140
> [  135.132806]  show_stack+0x24/0x30
> [  135.133133]  dump_stack+0xc4/0x10c
> [  135.133726]  lockdep_rcu_suspicious+0xf8/0x108
> [  135.134171]  call_break_hook+0x170/0x178
> [  135.134486]  brk_handler+0x28/0x68
> [  135.134792]  do_debug_exception+0x90/0x150
> [  135.135051]  el1_dbg+0x18/0x8c
> [  135.135260]  default_idle_call+0x0/0x44
> [  135.135516]  cpu_startup_entry+0x2c/0x30
> [  135.135815]  rest_init+0x1b0/0x280
> [  135.136044]  arch_call_rest_init+0x14/0x1c
> [  135.136305]  start_kernel+0x4d4/0x500

>>> The exception entry and exit use irq_enter() and irq_exit(), in this
>>> case, correct?  Otherwise RCU will be ignoring this CPU.
>>
>> This is missing today, which sounds like the underlying bug.
> 
> Agreed. I'm not so familier with how debug exception is handled on arm64,
> would it be a kind of NMI or IRQ?

Debug exceptions can interrupt both SError (think: machine check) and 
pseudo-NMI, which both in turn interrupt interrupt-masked code. So they 
are a kind of NMI. But, be careful not to call 'nmi_enter()' twice, see 
do_serror() for how we work around this...


> Anyway, it seems that normal irqs are also not calling irq_enter/exit
> except for arch/arm64/kernel/smp.c
drivers/irqchip/irq-gic.c:gic_handle_irq() either calls 
handle_domain_irq() or handle_IPI(). The enter/exit calls live in those 
functions.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
