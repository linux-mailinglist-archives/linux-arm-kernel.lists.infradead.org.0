Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D71E2101
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Qixd8ZfE2fhZBuEkVMfGZPTVpg1kw9MN7aq+BPghik=; b=i929lJPgYPTGOmN4vYMbQfZPq
	xOtL9ANaRwcaKrRcS9sArnclg+pLGqEEPJUBJWdIzSoZrMGV8ayazPS9W9uO/HralhKQQAtwtWL/r
	anM3N3961hQBOyI7d0g6/pKePdXobx/Rjdaf3AiB5YOhE1tC91ZV/iJ9ilCl0qV/Za26IdGlGrIpJ
	aqBK1ZSmUynPNZeckEhPVmh+9jrIU2DNWchKZaZihL74Q1eQDATPMpCdGFFtyO5obSYljnCrs8clR
	B26Zav9HhUK7wdvQtIsJzcB4ye4r26Ph0ODmmzqhJrUaWTurbufzNbU8Djb2a/PVJS9El9O7FZiYH
	lNz+WrAOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJrB-0007Bk-RC; Wed, 23 Oct 2019 16:51:33 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJr0-0007BR-7d
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:51:24 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNJqs-0006Um-Q5; Wed, 23 Oct 2019 18:51:14 +0200
To: Mao Wenan <maowenan@huawei.com>, <steven.price@arm.com>
Subject: Re: [PATCH] KVM: arm64: Select =?UTF-8?Q?SCHED=5FINFO=20before=20?=
 =?UTF-8?Q?SCHEDSTATS?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 23 Oct 2019 17:51:14 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191023032254.159510-1-maowenan@huawei.com>
References: <20191023032254.159510-1-maowenan@huawei.com>
Message-ID: <26ee413334937b9530bc8f033fe378ec@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: maowenan@huawei.com, steven.price@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095122_419278_801668D9 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: suzuki.poulose@arm.com, catalin.marinas@arm.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-23 04:22, Mao Wenan wrote:
> If KVM=y, it will select SCHEDSTATS, below erros can
> be seen:
> kernel/sched/stats.h: In function rq_sched_info_arrive:
> kernel/sched/stats.h:12:20: error: struct sched_info
> has no member named run_delay
>    rq->rq_sched_info.run_delay += delta;
>                     ^
> kernel/sched/stats.h:13:20: error: struct sched_info
> has no member named pcount
>    rq->rq_sched_info.pcount++;
>                     ^
> kernel/sched/stats.h: In function rq_sched_info_dequeued:
> kernel/sched/stats.h:31:20: error: struct sched_info has
> no member named run_delay
>    rq->rq_sched_info.run_delay += delta;
>
> These are because CONFIG_SCHED_INFO is not set, This patch
> is to select SCHED_INFO before SCHEDSTATS.
>
> Fixes: 8564d6372a7d ("KVM: arm64: Support stolen time reporting via
> shared structure")
> Signed-off-by: Mao Wenan <maowenan@huawei.com>
> ---
>  arch/arm64/kvm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
> index d8b88e4..3c46eac 100644
> --- a/arch/arm64/kvm/Kconfig
> +++ b/arch/arm64/kvm/Kconfig
> @@ -39,6 +39,7 @@ config KVM
>  	select IRQ_BYPASS_MANAGER
>  	select HAVE_KVM_IRQ_BYPASS
>  	select HAVE_KVM_VCPU_RUN_PID_CHANGE
> +	select SCHED_INFO
>  	select SCHEDSTATS
>  	---help---
>  	  Support hosting virtualized guest machines.

SCHEDSTATS is really an odd choice. Here's what I get after disabling
DEBUG_KERNEL (from defconfig):

WARNING: unmet direct dependencies detected for SCHEDSTATS
   Depends on [n]: DEBUG_KERNEL [=n] && PROC_FS [=y]
   Selected by [y]:
   - KVM [=y] && VIRTUALIZATION [=y] && OF [=y]

WARNING: unmet direct dependencies detected for SCHEDSTATS
   Depends on [n]: DEBUG_KERNEL [=n] && PROC_FS [=y]
   Selected by [y]:
   - KVM [=y] && VIRTUALIZATION [=y] && OF [=y]

WARNING: unmet direct dependencies detected for SCHEDSTATS
   Depends on [n]: DEBUG_KERNEL [=n] && PROC_FS [=y]
   Selected by [y]:
   - KVM [=y] && VIRTUALIZATION [=y] && OF [=y]

So clearly SCHEDSTATS isn't meant to be selected on its own.

We can either just select SCHED_INFO (which *nobody else does*), or go
the full x86 way which selects TASK_DELAY_ACCT (and thus depends on
NET && MULTIUSER). My gut feeling is that we shouldn't deviate too much
from x86...

Thoughts?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
