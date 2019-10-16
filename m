Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203E9D975C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVg2NuIuErvjysNxx++/b/dWeSMYw2ow3HlWNfNNaOk=; b=WGVCsol9gG7TZS
	o3ncznRHhKP13qaoVbhbnElpQUs+G2pe4wMAAV8J6Z1746Kaw1XnuLJK1DHWv9jGqb1TI47cEo2e+
	pGIk/ouQ0f9+bzlQXLuifqY22z1pIx+w5uWKKYDt+8eQFHVgJ0ocUmUEZHDb6xW0b7oF4DUhGNm3X
	6vNVr7qZzSTOtPG/5T2ocUxmHPG0PVau7yv1Peg/zl0nelf74zLPydRhRMS0fBwa+9vqWYI1EiFiy
	rpW42wBMd2Qjwq/2JYv25k/49oDGcTSLlTn3GBAROqAaf1IUP6c2ZbfjO8lJ5qHuZyIj3YLfHwBG0
	3Bkf7rOxYGss7OqHgpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmBC-0001X4-Jf; Wed, 16 Oct 2019 16:29:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmB1-0001Vh-T8
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:29:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB43728;
 Wed, 16 Oct 2019 09:29:29 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C79623F68E;
 Wed, 16 Oct 2019 09:29:28 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: fix inverted PAR_EL1.F check
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20191016110304.44932-1-mark.rutland@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <99261f9e-98ab-ca79-9514-b900306f49df@arm.com>
Date: Wed, 16 Oct 2019 17:29:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016110304.44932-1-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_092931_981303_7AB77A37 
X-CRM114-Status: GOOD (  14.48  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 16/10/2019 12:03, Mark Rutland wrote:
> When detecting a spurious EL1 translation fault, we have the CPU retry
> the translation using an AT S1E1R instruction, and inspect PAR_EL1 to
> determine if the fault was spurious.
> 
> When PAR_EL1.F == 0, the AT instruction successfully translated the
> address without a fault, which implies the original fault was spurious.
> However, in this case we return false and treat the original fault as if
> it was not spurious.
> 
> Invert the return value so that we treat such a case as spurious.

With d0b7a302d58a reverted I can use A57's #1387217[1] to hit this spurious case.
(it needs planetary alignment too).

With this this patch the 'spurious' message is printed, and the kernel keeps running [0].

If its useful:
Tested-by: James Morse <james.morse@arm.com>


Thanks,

James


[0] survivable spurious translation fault:
[ 2186.464077] ------------[ cut here ]------------
[ 2186.468687] Ignoring spurious kernel translation fault at virtual address fffffdfffe5fd020
[ 2186.476950] WARNING: CPU: 7 PID: 0 at ../arch/arm64/mm/fault.c:315
__do_kernel_fault+0xf0/0x120
[ 2186.485634] Modules linked in: crct10dif_ce ip_tables x_tables ipv6 nf_defrag_ipv6
[ 2186.493197] CPU: 7 PID: 0 Comm: swapper/7 Tainted: G        W
5.4.0-rc3-00002-g08245819bd8b #125
[ 2186.502663] Hardware name: AMD Seattle (Rev.B0) Development Board (Overdrive) (DT)
[ 2186.510219] pstate: 40000085 (nZcv daIf -PAN -UAO)
[ 2186.514998] pc : __do_kernel_fault+0xf0/0x120
[ 2186.519342] lr : __do_kernel_fault+0xf0/0x120

[ 2186.606470] Call trace:
[ 2186.608906]  __do_kernel_fault+0xf0/0x120
[ 2186.612904]  do_translation_fault+0x40/0x70
[ 2186.617075]  do_mem_abort+0x3c/0x98
[ 2186.620551]  el1_da+0x20/0x94
[ 2186.623507]  __memcpy_fromio+0x44/0x98
[ 2186.627245]  __ghes_peek_estatus.isra.13+0x54/0xc8
[ 2186.632023]  ghes_proc+0x40/0x158
[ 2186.635325]  ghes_poll_func+0x38/0x68
[ 2186.638977]  call_timer_fn.isra.31+0x20/0x78
[ 2186.643234]  run_timer_softirq+0x33c/0x398
[ 2186.647317]  __do_softirq+0x114/0x230
[ 2186.650968]  irq_exit+0xcc/0xd8
[ 2186.654097]  __handle_domain_irq+0x60/0xb8
[ 2186.658180]  gic_handle_irq+0x58/0xb0
[ 2186.661829]  el1_irq+0xb8/0x180
[ 2186.664958]  arch_cpu_idle+0x10/0x18
[ 2186.668521]  do_idle+0x1c4/0x290
[ 2186.671736]  cpu_startup_entry+0x20/0x40
[ 2186.675647]  secondary_start_kernel+0x1bc/0x218
[ 2186.680165] ---[ end trace b0c5d14deb160e8f ]---

[1]
https://static.docs.arm.com/epm049219/220/Arm_Cortex_A57_MPCore_Software_Developers_Errata_Notice_SDEN_v22.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
