Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A4771C67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts46eTfpFpL+ZdSxPhFJBlkGX4X3ACdaMTHCikxpUhQ=; b=HqY89q5EhqAnHM
	upGBPNPYNzGSoD/YmTHyShbGAP198E1HzIGPnqm9azfNvWbHmSStxFssVobNaVVsL3Wt4FER/V8OE
	1v3YEq9bQq68e3gNXVyigxK/BUPmCF1vEl8O5aL/84mFduWwHkHyO/Oi5vkNQLgyE2U3T+AJqVqAY
	vbQf/mZAmgppwTal+p7Puhp8im0TKO279dUxQwn3L8dZkZD3JF7lWs8wG7YNEg9fmsAdetTyCNnVQ
	vy/q7O9LySLcT7g4hREmhIPn3fmDUY+uJ3Z1crIIdCe9LfWfuYGJnJ2Tu516SyI09x7WjqAYvI/qT
	qRMeRp2lQN62nhUtIjMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxGv-0003tk-8w; Tue, 23 Jul 2019 16:04:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxGe-0003sj-6D
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:03:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7AEC28;
 Tue, 23 Jul 2019 09:03:53 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76CC83F71A;
 Tue, 23 Jul 2019 09:03:52 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] arm64: kprobes: Recover pstate.D in single-step
 exception handler
To: Masami Hiramatsu <mhiramat@kernel.org>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
 <156378171555.12011.2511666394591527888.stgit@devnote2>
From: James Morse <james.morse@arm.com>
Message-ID: <9bb27cda-dac9-eaca-f028-e1c82b9f7a3f@arm.com>
Date: Tue, 23 Jul 2019 17:03:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156378171555.12011.2511666394591527888.stgit@devnote2>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_090356_325245_6C36FF6E 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On 22/07/2019 08:48, Masami Hiramatsu wrote:
> On arm64, if a nested kprobes hit, it can crash the kernel with below
> error message.
> 
> [  152.118921] Unexpected kernel single-step exception at EL1
> 
> This is because commit 7419333fa15e ("arm64: kprobe: Always clear
> pstate.D in breakpoint exception handler") unmask pstate.D for
> doing single step but does not recover it after single step in
> the nested kprobes.

> That is correct *unless* any nested kprobes
> (single-stepping) runs inside other kprobes user handler.

(I don't think this is correct, its just usually invisible as PSTATE.D is normally clear)


> When the 1st kprobe hits, do_debug_exception() will be called. At this
> point, debug exception (= pstate.D) must be masked (=1). When the 2nd
>  (nested) kprobe is hit before single-step of the first kprobe, it
> unmask debug exception (pstate.D = 0) and return.
> Then, when the 1st kprobe setting up single-step, it saves current
> DAIF, mask DAIF, enable single-step, and restore DAIF.
> However, since "D" flag in DAIF is cleared by the 2nd kprobe, the
> single-step exception happens soon after restoring DAIF.

This is pretty complicated. Just to check I've understood this properly:
Stepping on a kprobe in a kprobe-user's pre_handler will cause the remainder of the
handler (the first one) to run with PSTATE.D clear. Once we enable single-step, we start
stepping the debug handler, and will never step the original kprobe'd instruction.

This is describing the most complicated way that this problem shows up! (I agree its also
the worst)

I can get this to show up with just one kprobe. (function/file names here are meaningless):

| static int wibble(struct seq_file *m, void *discard)
| {
|        unsigned long d, flags;
|
|        flags = local_daif_save();
|
|        kprobe_me();
|        d = read_sysreg(daif);
|        local_daif_restore(flags);
|
|        seq_printf(m, "%lx\n", d);
|
|        return 0;
| }

plumbed into debugfs, then kicked using the kprobe_example module:
| root@adam:/sys/kernel/debug# cat wibble
| 3c0

| root@adam:/sys/kernel/debug# insmod ~morse/kprobe_example.ko symbol=kprobe_me
| [   69.478098] Planted kprobe at [..]
| root@adam:/sys/kernel/debug# cat wibble
| [   71.478935] <kprobe_me> pre_handler: p->addr = [..], pc = [..], pstate = 0x600003c5
| [   71.488942] <kprobe_me> post_handler: p->addr = [..], pstate = 0x600001c5
| 1c0

| root@adam:/sys/kernel/debug#

This is problem for any code that had debug masked, not just kprobes.

Can we start the commit-message with the simplest description of the problem: kprobes
manipulates the interrupted PSTATE for single step, and doesn't restore it.

(trying to understand this bug through kprobe's interaction with itself is hard!)


> To solve this issue, this stores all DAIF bits and restore it
> after single stepping.


> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index bd5dfffca272..348e02b799a2 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -29,6 +29,8 @@
>  
>  #include "decode-insn.h"
>  
> +#define PSR_DAIF_MASK	(PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT)

We should probably move this to daifflags.h. Its going to be useful to other series too.


Patch looks good!
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>

(I haven't tried to test the nested kprobes case...)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
