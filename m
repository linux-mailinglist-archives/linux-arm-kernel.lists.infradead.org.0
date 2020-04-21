Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C021B2395
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 12:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FTOdQRbdDO8yr6kx3oHd8BpMPRHhj+XgsCeE2jD8L5o=; b=nwa57GDOTuCwmz
	RX9T1zeYRMt+n46RVdL4J/CyRKF0TOgODcjUNSzOVDcatyrbJumGoQeBcKVv8LiLfMpdkln7COOFD
	yGaH8JZ0TKNg9juQl/tRBf0Ai3+r23UswMNT9kKHtGiBci3qW4/AZhx+Mw+2+ZXmOtN38F1N5q2hQ
	Bq8rKo8GKRSQ3A9SJAq34+QqEt4jXevMMDj/xIbhUPMco2GbBGcY/VdrA/YvdJe0MKDVmcUgEiPSv
	iq3nNvOi+w61Cwv5BeDCU1eJrfuY464uH8TrflWWOoG2VY1uej/tLR2u/Ur7/6ePNrwTD+mwWBHph
	/Ti4oYobEPbhO12VoFhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpmJ-0004aC-TQ; Tue, 21 Apr 2020 10:05:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpm0-0004LD-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 10:05:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D821A2076C;
 Tue, 21 Apr 2020 10:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587463499;
 bh=F2RZ2+TqrQDFVSY7gi6xDPqd9ona5XX3Ic/K9c934lM=;
 h=Date:From:To:Cc:Subject:From;
 b=idFXR2IBRfVPMHPYpICj6yvwd0vODi1R3mlLRpiKwKRSUg3HOMU3z61b/U5lAJEXg
 q6KjCjUMCnSxkXPLgkjCqradLPAvF0JcUnbYNOJyMeM2TVivhz+uYGsZWPIICPEkUw
 0O9/Ml9V0lJkeQBpCzFeKn88tRY0oJUf3g1iSWmM=
Date: Tue, 21 Apr 2020 11:04:55 +0100
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: 5.7-rcX fails to boot on foundation model
Message-ID: <20200421100455.GB17256@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_030500_413640_61BED3DD 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: amit.kachhap@arm.com, mark.rutland@arm.com, catalin.marinas@arm.com,
 maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Using the latest boot-wrapper and the Foundation Model (build 11.10.22),
mainline fails to boot with defconfig due to what appears to be a pointer
authentication failure in the kernel. Disabling CONFIG_ARM64_PTR_AUTH makes
the problem disappear.

I'm passing "--arm-v8.4 --no-sve --cores=2" to the model.

I'll try to look into this today, but thought it was worth posting in
case anybody else gets the chance as well.

Cheers,

Will

--->8

[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 224 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, no direct LPI support, no RVPEID support
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x000000002f100000
[    0.000000] random: get_random_bytes called from start_kernel+0x2b0/0x478 with crng_init=0
[    0.000000] Unable to handle kernel paging request at virtual address bfff800010ba5438
[    0.000000] Mem abort info:
[    0.000000]   ESR = 0x86000004
[    0.000000]   EC = 0x21: IABT (current EL), IL = 32 bits
[    0.000000]   SET = 0, FnV = 0
[    0.000000]   EA = 0, S1PTW = 0
[    0.000000] [bfff800010ba5438] address between user and kernel address ranges
[    0.000000] Internal error: Oops: 86000004 [#1] PREEMPT SMP
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.7.0-rc1-00009-g760395b1d716 #1
[    0.000000] Hardware name: Foundation-v8A (DT)
[    0.000000] pstate: 60000089 (nZCv daIf -PAN -UAO)
[    0.000000] pc : 0xbfff800010ba5438
[    0.000000] lr : arch_timer_starting_cpu+0x110/0x340
[    0.000000] sp : ffff800011a13d40
[    0.000000] x29: ffff800011a13d40 x28: 0000000000000000 
[    0.000000] x27: 0000000000000000 x26: ffff800011a2ac90 
[    0.000000] x25: ffff800011a2aeb0 x24: 0000000000000000 
[    0.000000] x23: ffff8000116223c0 x22: ffff800011bf0b90 
[    0.000000] x21: ffff800011617018 x20: ffff800011c89430 
[    0.000000] x19: ffff00087b7a0c00 x18: 0000000000000014 
[    0.000000] x17: 00000000820ad228 x16: 0000000010f332f8 
[    0.000000] x15: 00000000fd586fff x14: 0000000000000000 
[    0.000000] x13: 0000000000000300 x12: ffff800011a19948 
[    0.000000] x11: ffff00087b7f1854 x10: 0000000000000040 
[    0.000000] x9 : ffff800011a31d28 x8 : ffff800011a31d20 
[    0.000000] x7 : ffff80086a17a000 x6 : 000000000000023f 
[    0.000000] x5 : 0000000000000005 x4 : ffff800011a13d40 
[    0.000000] x3 : 0000000000000020 x2 : ffff80086a17a000 
[    0.000000] x1 : ffff800010ba4aa0 x0 : 0000000000000000 
[    0.000000] Call trace:
[    0.000000]  0xbfff800010ba5438
[    0.000000]  cpuhp_invoke_callback+0x88/0x220
[    0.000000]  cpuhp_issue_call+0xec/0x148
[    0.000000]  __cpuhp_setup_state_cpuslocked+0x120/0x2c0
[    0.000000]  __cpuhp_setup_state+0x94/0x150
[    0.000000]  arch_timer_register+0x164/0x1d4
[    0.000000]  arch_timer_of_init+0x100/0x134
[    0.000000]  timer_probe+0x74/0x114
[    0.000000]  time_init+0x18/0x50
[    0.000000]  start_kernel+0x30c/0x478
[    0.000000] Code: bad PC value
[    0.000000] ---[ end trace 03aa545a01baf5ad ]---
[    0.000000] Kernel panic - not syncing: Attempted to kill the idle task!
[    0.000000] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
