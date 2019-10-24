Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3275EE33D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=626WpLi0oaIMVWZ9tH54NadB/cOnoqRF7s99TJ8W/gE=; b=D+PNOU2bbVhtTNG2GPBUeTVpK
	fAq6tYmwHzgWDC3ACEVXTrAeEeJCu8IL/wCtbKzwIkIALJjw+3b1DLEULqI5/KPTNh8QuNx+t8C62
	R4aj/tYqQEB1BtMB3F71euWRjj0x4SAbExOPJa9Kux2lQE3b90alu3VR4F3XGytibxKB5Uv61OjI0
	ErFikrdME+Rw7GMOHtiSpl3cEroyU9ymdCxf973c1zDs3rdgqXWmD5N1uiZ3OxV1kPc1OlzCAQp6L
	dCTCwDl9uOVlePLdMHwXAVg9ck0JcJGrM0zgT+FUpPP9aj6eczDRYPJY53bQDv1506mabsd8lnYnE
	QQJBhvI4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNd1U-0006zC-V5; Thu, 24 Oct 2019 13:19:28 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd1K-0006yJ-E0
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:19:19 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNd1A-0000Sw-Ge; Thu, 24 Oct 2019 15:19:08 +0200
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] KVM: arm64: Select =?UTF-8?Q?SCHED=5FINFO=20before=20?=
 =?UTF-8?Q?SCHEDSTATS?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 24 Oct 2019 14:19:08 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <6d037fa1-5e8b-38cd-e947-7547c1e8dd15@arm.com>
References: <20191023032254.159510-1-maowenan@huawei.com>
 <26ee413334937b9530bc8f033fe378ec@www.loen.fr>
 <6d037fa1-5e8b-38cd-e947-7547c1e8dd15@arm.com>
Message-ID: <3abfc893613caf529b0f6a933e74068d@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: steven.price@arm.com, maowenan@huawei.com,
 catalin.marinas@arm.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_061918_623454_F57A282E 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: catalin.marinas@arm.com, kernel-janitors@vger.kernel.org,
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-24 12:22, Steven Price wrote:

[...]

> From 915893f5c57241cc29d90769b3f720a6135277d7 Mon Sep 17 00:00:00 
> 2001
> From: Steven Price <steven.price@arm.com>
> Date: Thu, 24 Oct 2019 12:14:36 +0100
> Subject: [PATCH] KVM: arm64: Select TASK_DELAY_ACCT rather than 
> SCHEDSTATS
>
> SCHEDSTATS requires DEBUG_KERNEL (and PROC_FS) and therefore isn't a
> good choice for enabling the scheduling statistics required for 
> stolen
> time.
>
> Instead match the x86 configuration and select TASK_DELAY_ACCT. This
> adds the dependencies of NET && MULTIUSER for arm64 KVM.
>
> Suggested-by: Marc Zyngier <maz@kernel.org>
> Fixes: 8564d6372a7d ("KVM: arm64: Support stolen time reporting via
> shared structure")
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  arch/arm64/kvm/Kconfig | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
> index d8b88e40d223..1ffb300e2d92 100644
> --- a/arch/arm64/kvm/Kconfig
> +++ b/arch/arm64/kvm/Kconfig
> @@ -21,6 +21,8 @@ if VIRTUALIZATION
>  config KVM
>  	bool "Kernel-based Virtual Machine (KVM) support"
>  	depends on OF
> +	# for TASKSTATS/TASK_DELAY_ACCT:
> +	depends on NET && MULTIUSER
>  	select MMU_NOTIFIER
>  	select PREEMPT_NOTIFIERS
>  	select HAVE_KVM_CPU_RELAX_INTERCEPT
> @@ -39,7 +41,7 @@ config KVM
>  	select IRQ_BYPASS_MANAGER
>  	select HAVE_KVM_IRQ_BYPASS
>  	select HAVE_KVM_VCPU_RUN_PID_CHANGE
> -	select SCHEDSTATS
> +	select TASK_DELAY_ACCT
>  	---help---
>  	  Support hosting virtualized guest machines.
>  	  We don't support KVM with 16K page tables yet, due to the 
> multiple

Same issue as before: you have an implicit config symbol selection.
TASK_DELAY_ACCT depends on TASKSTATS (which is why you have this NET &&
MULTIUSER constraint).

You need to select both TASK_DELAY_ACCT and TASKSTATS, as the comment 
you
add suggests.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
