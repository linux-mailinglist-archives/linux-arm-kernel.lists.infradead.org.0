Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5A01071F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 12:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ognhsa15zIRyVgCF6DbolGJfVqTrscnLX/xIstdUhN4=; b=pup05TcRZboyKy
	jPsXr4P05p11AnnSlhgUFsI9iR441VMwmQtjejBxesm2KXgoJmCSW0PJpSiuBwkZcRMiSsmNLOzwk
	bRedtfqGQXklvZ3P7x7rtOZsOLvBGLoUfvOgGQcfKvjBiArcdKNEh+lX42F444r1QJLon6eTY4AKP
	6T5Cbk88YCaxJp4effvGBJ+HJYog7J0ZyPLNHLStL87YQqZskJDJunZ6CIEQLEix7lfpN7XZ9XzWp
	65wNEJiucVKiuLUtZgyBYkKAie59gwmaAwVoPsHJDqeyJuGrFrVWs4HL6/ymZTYHXmtbjdjGQAK1K
	t8WAokwzJNDihh4VvkOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLmmC-0008Qg-3F; Wed, 01 May 2019 10:47:48 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLmm5-0008PX-HU
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 10:47:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BBBA80D;
 Wed,  1 May 2019 03:47:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 769603F719;
 Wed,  1 May 2019 03:47:36 -0700 (PDT)
Date: Wed, 1 May 2019 11:47:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] arm64: Demote boot and shutdown messages to pr_debug
Message-ID: <20190501104733.GB11740@lakrids.cambridge.arm.com>
References: <20190430223835.23513-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430223835.23513-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_034741_874959_E0AB5CFC 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, rmk+kernel@armlinux.org.uk,
 Sudeep Holla <sudeep.holla@arm.com>, Suzuki K Poulose <Suzuki.Poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 03:38:31PM -0700, Florian Fainelli wrote:
> Similar to commits c68b0274fb3cf ("ARM: reduce "Booted secondary
> processor" message to debug level") and 035e787543de7 ("ARM: 8644/1: Reduce "CPU:
> shutdown" message to debug level"), demote the secondary_start_kernel()
> and __cpu_die() messages from info, respectively notice to debug. While
> we are at it, also do this for cpu_psci_cpu_kill() which is redundant
> with __cpu_die().
> 
> This helps improve the amount of possible hotplug cycles by around +50%
> on ARCH_BRCMSTB.

Could you elaborate on why that matters? 

e.g. is this just for testing, or does this matter in some shutdown or
hibernate scenario?

> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  arch/arm64/kernel/psci.c | 2 +-
>  arch/arm64/kernel/smp.c  | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> index 8cdaf25e99cd..a78581046c80 100644
> --- a/arch/arm64/kernel/psci.c
> +++ b/arch/arm64/kernel/psci.c
> @@ -96,7 +96,7 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>  	for (i = 0; i < 10; i++) {
>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
> -			pr_info("CPU%d killed.\n", cpu);
> +			pr_debug("CPU%d killed.\n", cpu);
>  			return 0;
>  		}
>  
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 824de7038967..71fd2b5a3f0e 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -259,7 +259,7 @@ asmlinkage notrace void secondary_start_kernel(void)
>  	 * the CPU migration code to notice that the CPU is online
>  	 * before we continue.
>  	 */
> -	pr_info("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
> +	pr_debug("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
>  					 cpu, (unsigned long)mpidr,
>  					 read_cpuid_id());

I generally agree that we don't need to be verbose, and demoting these
to debug is fine, but it's a shame that these won't be accessible in
defconfig.

I wonder if we should enable DYNAMIC_DEBUG so that we can turn these on
from the kernel command line, or if we should have something like a
verbose_hotplug option specifically for these messages.

Thanks,
Mark.

>  	update_cpu_boot_status(CPU_BOOT_SUCCESS);
> @@ -348,7 +348,7 @@ void __cpu_die(unsigned int cpu)
>  		pr_crit("CPU%u: cpu didn't die\n", cpu);
>  		return;
>  	}
> -	pr_notice("CPU%u: shutdown\n", cpu);
> +	pr_debug("CPU%u: shutdown\n", cpu);
>  
>  	/*
>  	 * Now that the dying CPU is beyond the point of no return w.r.t.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
