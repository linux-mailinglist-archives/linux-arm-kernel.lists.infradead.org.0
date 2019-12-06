Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32266114F8A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 11:56:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fC8Pjcz69EikUrv8Atznqoc8zWy/pEJQL1UZbJTY2WM=; b=IEHXsCQCHI07oAmhc6mNbrHlG
	IustZKCds1PtO2ww/3vxaMM5lEmad+WWKoKGD5INB5mwDObQgts5MBBOubHQZaeaDRXLwQvRvw1vX
	p1HatTesBt0iSeetI5+1mPPpuGWh9H3mwlkN0hRcHbJOMYd0YCa+YOo9KL6/NRyWpMcpgSvS/NSEv
	m85bI8z+5CqLiAPftP1JKsLmsKLc8ACFEIZAapC3obH+YbsI7Nm84R7DhiHxB9CBNoXtGYJJLEQDJ
	IT00wk3jMTKxReC/Vyof2zIXoY2UNNR1gMY77vvChZXPWCNup7zuU/xEXcNwsEV2PO514/bBHP1W9
	klHBrdFAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idBHt-0004vQ-5C; Fri, 06 Dec 2019 10:56:41 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idBHm-0004us-Nw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 10:56:36 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1idBHd-0001CF-6Z; Fri, 06 Dec 2019 11:56:25 +0100
To: linmiaohe <linmiaohe@huawei.com>
Subject: Re: [PATCH] KVM: arm: fix missing =?UTF-8?Q?free=5Fpercpu=5Firq?=
 =?UTF-8?Q?=20in=20kvm=5Ftimer=5Fhyp=5Finit=28=29?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 10:56:24 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1574476229-15448-1-git-send-email-linmiaohe@huawei.com>
References: <1574476229-15448-1-git-send-email-linmiaohe@huawei.com>
Message-ID: <96f07f61e3356c942ce934f81efc4a94@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: linmiaohe@huawei.com, pbonzini@redhat.com,
 rkrcmar@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_025634_928336_4E16B55D 
X-CRM114-Status: GOOD (  14.07  )
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
Cc: kvm@vger.kernel.org, suzuki.poulose@arm.com, rkrcmar@redhat.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, pbonzini@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-23 02:30, linmiaohe wrote:
> From: Miaohe Lin <linmiaohe@huawei.com>
>
> When host_ptimer_irq request irq resource failed, we forget
> to release the host_vtimer_irq resource already requested.
> Fix this missing irq release and other similar scenario.

That's really not a big deal, as nothing but KVM can use the
timers anyway, but I guess it doesn't hurt to be correct.

>
> Fixes: 9e01dc76be6a ("KVM: arm/arm64: arch_timer: Assign the phys
> timer on VHE systems")
> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
> ---
>  virt/kvm/arm/arch_timer.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
> index f182b2380345..73867f97040c 100644
> --- a/virt/kvm/arm/arch_timer.c
> +++ b/virt/kvm/arm/arch_timer.c
> @@ -935,7 +935,7 @@ int kvm_timer_hyp_init(bool has_gic)
>  					    kvm_get_running_vcpus());
>  		if (err) {
>  			kvm_err("kvm_arch_timer: error setting vcpu affinity\n");
> -			goto out_free_irq;
> +			goto out_free_vtimer_irq;
>  		}
>
>  		static_branch_enable(&has_gic_active_state);
> @@ -960,7 +960,7 @@ int kvm_timer_hyp_init(bool has_gic)
>  		if (err) {
>  			kvm_err("kvm_arch_timer: can't request ptimer interrupt %d 
> (%d)\n",
>  				host_ptimer_irq, err);
> -			return err;
> +			goto out_disable_gic_state;
>  		}
>
>  		if (has_gic) {
> @@ -968,7 +968,7 @@ int kvm_timer_hyp_init(bool has_gic)
>  						    kvm_get_running_vcpus());
>  			if (err) {
>  				kvm_err("kvm_arch_timer: error setting vcpu affinity\n");
> -				goto out_free_irq;
> +				goto out_free_ptimer_irq;
>  			}
>  		}
>
> @@ -977,15 +977,22 @@ int kvm_timer_hyp_init(bool has_gic)
>  		kvm_err("kvm_arch_timer: invalid physical timer IRQ: %d\n",
>  			info->physical_irq);
>  		err = -ENODEV;
> -		goto out_free_irq;
> +		goto out_disable_gic_state;
>  	}
>
>  	cpuhp_setup_state(CPUHP_AP_KVM_ARM_TIMER_STARTING,
>  			  "kvm/arm/timer:starting", kvm_timer_starting_cpu,
>  			  kvm_timer_dying_cpu);
>  	return 0;
> -out_free_irq:
> +
> +out_free_ptimer_irq:
> +	free_percpu_irq(host_ptimer_irq, kvm_get_running_vcpus());
> +out_disable_gic_state:
> +	if (has_gic)
> +		static_branch_disable(&has_gic_active_state);

Given that we're failing the init of KVM, this is totally
superfluous. Also, this state is still valid, no matter
what happens (the GIC is not going away from under our feet).

> +out_free_vtimer_irq:
>  	free_percpu_irq(host_vtimer_irq, kvm_get_running_vcpus());
> +
>  	return err;
>  }

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
