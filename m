Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A251DAF55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=he31H2380U8hML3GtgEhVqnGhBjzVrOnq6oMVx8TigM=; b=D7MCf24vJ5g1AsXuZ7NdPg6Xl
	y3Y8oeZ/alvnNnHs9o4TMoXSj7v5ZjjURCr4tV7wzoMwN5tj9U8Fv3dbg2VsSHkwbhY3SPcqdnCsr
	e8K1de1eqhb7kq112xso9QauEr+pe/1W47iLzf1VQHe8RxZ7WOCZtefVuUuzTzxomkrCsX1CM6N+e
	IqDAUTLhWstaZHomhHbPK1+9Q8hUh8qvz8zOnY7r5rxJBLhwBFMcDbsZV0euPuesu8NaDKRN0otlU
	zrrjP3oX4HyPSymHqEPyPDT6ewNt/lxyH82Qloh6CJAZEsilwfY3iAOVPQi0Y5aSF4xWfttoXQifn
	MPln7YzlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLNk-0006sr-Rl; Wed, 20 May 2020 09:51:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLNc-0006s6-BP
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:51:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E245E2070A;
 Wed, 20 May 2020 09:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589968276;
 bh=I05Xto4txiriKlSQmPh36CUF6ZigsJtHe1MV6gwtr0U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S5Vh1MMq9WJW18SFE3kUQ8DtR8pbNSiT3Ru/nq0BUk3EydRVMxyVGi4Qgna5ySx1x
 GqWO0lWjvCDXqz0/JOtjLr8fGgRQJKeGER+jFvbKxfLyua4Uyh8kSV3ZN27k6hI1BW
 CNsiSQ8J4Ykr6uK6QILOCF6bf650ZaRATlvwSDhY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jbLNa-00Dshk-89; Wed, 20 May 2020 10:51:14 +0100
MIME-Version: 1.0
Date: Wed, 20 May 2020 10:51:14 +0100
From: Marc Zyngier <maz@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: BUG: sleeping function called from atomic due to "Balance initial
 LPI affinity across CPUs"
In-Reply-To: <81796a6e-718a-aa93-d183-6747e0654c8c@huawei.com>
References: <CAG=TAF6hJL-wfGLq3oa-ZGk3-YGEtuMyO2V9ePFUcbv99NWVSw@mail.gmail.com>
 <81796a6e-718a-aa93-d183-6747e0654c8c@huawei.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <e07d73938a7534c6c2cd0517de378fcd@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: john.garry@huawei.com, cai@lca.pw, sfr@canb.auug.org.au,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-next@vger.kernel.org, tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_025116_426950_665F9583 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>, Qian Cai <cai@lca.pw>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 2020-05-20 09:43, John Garry wrote:
> On 19/05/2020 23:09, Qian Cai wrote:
>> Reverted the linux-next commit f068a62c548c ("irqchip/gic-v3-its:
>> Balance initial LPI affinity across CPUs") fixed these warnings during
>> boot,
> 
> Thanks for the notice. So we need the following set to see this:
> CONFIG_CPUMASK_OFFSTACK=y
> CONFIG_DEBUG_ATOMIC_SLEEP=y
> CONFIG_DEBUG_PER_CPU_MAPS=y

Ah, thanks for pointing this out.

>> its_select_cpu at drivers/irqchip/irq-gic-v3-its.c:1572
>> 
>> [  332.819381][ T3359] BUG: sleeping function called from invalid
>> context at mm/slab.h:568
>> [  332.827405][ T3359] in_atomic(): 1, irqs_disabled(): 128,
>> non_block: 0, pid: 3359, name: irqbalance
>> [  332.836455][ T3359] INFO: lockdep is turned off.
>> [  332.841076][ T3359] irq event stamp: 0
>> [  332.844836][ T3359] hardirqs last  enabled at (0): 
>> [<0000000000000000>] 0x0
>> [  332.851828][ T3359] hardirqs last disabled at (0):
>> [<ffff9000101ea65c>] copy_process+0x98c/0x1f34
>> [  332.860710][ T3359] softirqs last  enabled at (0):
>> [<ffff9000101ea690>] copy_process+0x9c0/0x1f34
>> [  332.869586][ T3359] softirqs last disabled at (0): 
>> [<0000000000000000>] 0x0
>> [  332.876560][ T3359] CPU: 155 PID: 3359 Comm: irqbalance Tainted: G
>>        W    L    5.7.0-rc6-next-20200519 #1
>> [  332.886563][ T3359] Hardware name: HPE Apollo 70
>> /C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
>> [  332.897000][ T3359] Call trace:
>> [  332.900151][ T3359]  dump_backtrace+0x0/0x22c
>> [  332.904514][ T3359]  show_stack+0x28/0x34
>> [  332.908543][ T3359]  dump_stack+0x104/0x194
>> [  332.912738][ T3359]  ___might_sleep+0x314/0x328
>> [  332.917274][ T3359]  __might_sleep+0x7c/0xe0
>> [  332.921563][ T3359]  slab_pre_alloc_hook+0x44/0x8c
>> [  332.926360][ T3359]  __kmalloc_node+0xb0/0x618
>> [  332.930811][ T3359]  alloc_cpumask_var_node+0x48/0x94
> 
> We could use GFP_ATOMIC flag at the callsite here, but maybe there is
> a better solution.

I don't see one, and I doubt it is worth the hassle to have anything
but GFP_ATOMIC. The default arm64 config is to have on-stack cpumasks,
and only DEBUG_PER_CPU_MAPS allows this to be changed.

I'll stash a patch on top.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
