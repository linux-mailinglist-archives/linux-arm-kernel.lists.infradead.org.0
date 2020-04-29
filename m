Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203771BDBFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbhcPTvyv7kNdn8C5NgrJLvqX/y664pKiKtsmvn631U=; b=mmGI254srR+Hm1
	pEzuJs38LbyjRBTL2gT5RnUj1JN56f6hoeMtke3vv1hVUF5/+EMASyKj4gAz9mLNPV9AB9FOOMBS6
	8B7jEByFynF/VOy3rPkWIXYx08AXxJb4RM1UwQTnBVKX+1Kvjhw7EWfde9gJqPZgXU9NOehBfDIXs
	uaYtVYJeVowDGIXMXZ8FUojDmHpPQwdzKyDSW3o8MDWWqwdtvn/wp1bJXZcqgsH3MNN+4PrcIQ9x8
	w75eDKXISmG6e2/90BN/iy4N9wUwKdNKHuGizOnXLSCipXHPfg/H75bCkjbJaGg4wlVqo4uu2+ogR
	biR1FIBaEpog0CV4CD7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlkw-0000Gc-C1; Wed, 29 Apr 2020 12:24:02 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlkm-0000Ff-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588163030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f73XFclQGMI95HoTU649yPccrfl6BgMf60JAuz7AmbU=;
 b=fuujgmR5ob2u7VwkF5yr0BeWbm3SaQ0BmMHX5j/5WckyPOlC9NNPqbN4aBnX+mrtycYc2U
 U1IKI3cU/nrTDSMfmuj2L9dNLpk7qMeOgptZTTGAMDu4qw83r83zI8Wdk1kwIXfed2xnH2
 b0EP/J/O8yEBVgs67VMD590UYzJEmYs=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-vhHPHKIDMFiU5Gnluu976w-1; Wed, 29 Apr 2020 08:23:47 -0400
X-MC-Unique: vhHPHKIDMFiU5Gnluu976w-1
Received: by mail-wm1-f70.google.com with SMTP id f128so1116381wmf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 05:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=P8pgV6uMHzNDOfpWIiJdoKMsBBSJGFZq++Qsl0KZjhI=;
 b=Plq0CK14PfCqGjnn4F8JBVzhws8M0V1XdOGEpUkraG6MGWE5DY7d6qINc4ZhHxjQEX
 44ZGO4rOHE1CdzoqBd8MfGlktd93lYmfcSrSmn1pPekji9eFdDUO6kwhuyxthx27i6Fb
 Hnyn+tDS07HrEOUsuaZKd1E/tHzdw2wDUx6knqswjsLWKjbmWc03uo0xJr9KkOnMcNtK
 PrxPHC51sEqsI6ND+h4g5oDUeBjaGk1D53kZZIsdtfyMQ6PXDRtzHhLj6sBMMUwzj520
 eA87B33OKhPvQ5sVMQQY6wqTmb7WrhsvM4LoS+YnqK7OU4j6AO7CNbopqjo5VL9VIIF9
 8xXw==
X-Gm-Message-State: AGi0PuaQGQcFwH5WqVfH/YA1pu0Xiic+w1ZW2aVeNe4H+M9QPBEZ+qLM
 GyvejLCAklV3lBHTk1PcfpHEn2BHIE3C4C5glPCTNu9H9F+pmZ00ZMAQGMc3ToFSR7brc+b5FZW
 8mS42Gh1aqKfw80H9RuCIsGPd34mlObwdHuw=
X-Received: by 2002:a1c:8106:: with SMTP id c6mr2999783wmd.88.1588163026213;
 Wed, 29 Apr 2020 05:23:46 -0700 (PDT)
X-Google-Smtp-Source: APiQypLEQN/fKbOj2PpKvd2yk8qFu2uTYg65caL+qOuUZqYZNmiqKNZUNV+CX/Wun7VWjygdbXHKLA==
X-Received: by 2002:a1c:8106:: with SMTP id c6mr2999734wmd.88.1588163025929;
 Wed, 29 Apr 2020 05:23:45 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id n6sm32160645wrs.81.2020.04.29.05.23.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 05:23:45 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v4 3/7] KVM: PPC: Remove redundant kvm_run from vcpu_arch
In-Reply-To: <20200427043514.16144-4-tianjia.zhang@linux.alibaba.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-4-tianjia.zhang@linux.alibaba.com>
Date: Wed, 29 Apr 2020 14:23:42 +0200
Message-ID: <87lfmeh44x.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_052352_566551_3F8B3E48 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: christoffer.dall@arm.com, wanpengli@tencent.com, kvm@vger.kernel.org,
 david@redhat.com, benh@kernel.crashing.org, heiko.carstens@de.ibm.com,
 peterx@redhat.com, linux-kernel@vger.kernel.org, paulus@ozlabs.org,
 hpa@zytor.com, kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, chenhuacai@gmail.com, mpe@ellerman.id.au,
 joro@8bytes.org, x86@kernel.org, borntraeger@de.ibm.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, thuth@redhat.com, gor@linux.ibm.com,
 suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, tianjia.zhang@linux.alibaba.com, cohuck@redhat.com,
 linux-mips@vger.kernel.org, sean.j.christopherson@intel.com,
 james.morse@arm.com, maz@kernel.org, pbonzini@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tianjia Zhang <tianjia.zhang@linux.alibaba.com> writes:

> The 'kvm_run' field already exists in the 'vcpu' structure, which
> is the same structure as the 'kvm_run' in the 'vcpu_arch' and
> should be deleted.
>
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> ---
>  arch/powerpc/include/asm/kvm_host.h | 1 -
>  arch/powerpc/kvm/book3s_hv.c        | 6 ++----
>  arch/powerpc/kvm/book3s_hv_nested.c | 3 +--
>  3 files changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/arch/powerpc/include/asm/kvm_host.h b/arch/powerpc/include/asm/kvm_host.h
> index 1dc63101ffe1..2745ff8faa01 100644
> --- a/arch/powerpc/include/asm/kvm_host.h
> +++ b/arch/powerpc/include/asm/kvm_host.h
> @@ -795,7 +795,6 @@ struct kvm_vcpu_arch {
>  	struct mmio_hpte_cache_entry *pgfault_cache;
>  
>  	struct task_struct *run_task;
> -	struct kvm_run *kvm_run;
>  
>  	spinlock_t vpa_update_lock;
>  	struct kvmppc_vpa vpa;
> diff --git a/arch/powerpc/kvm/book3s_hv.c b/arch/powerpc/kvm/book3s_hv.c
> index 93493f0cbfe8..413ea2dcb10c 100644
> --- a/arch/powerpc/kvm/book3s_hv.c
> +++ b/arch/powerpc/kvm/book3s_hv.c
> @@ -2934,7 +2934,7 @@ static void post_guest_process(struct kvmppc_vcore *vc, bool is_master)
>  
>  		ret = RESUME_GUEST;
>  		if (vcpu->arch.trap)
> -			ret = kvmppc_handle_exit_hv(vcpu->arch.kvm_run, vcpu,
> +			ret = kvmppc_handle_exit_hv(vcpu->run, vcpu,
>  						    vcpu->arch.run_task);
>  
>  		vcpu->arch.ret = ret;
> @@ -3920,7 +3920,6 @@ static int kvmppc_run_vcpu(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
>  	spin_lock(&vc->lock);
>  	vcpu->arch.ceded = 0;
>  	vcpu->arch.run_task = current;
> -	vcpu->arch.kvm_run = kvm_run;
>  	vcpu->arch.stolen_logged = vcore_stolen_time(vc, mftb());
>  	vcpu->arch.state = KVMPPC_VCPU_RUNNABLE;
>  	vcpu->arch.busy_preempt = TB_NIL;
> @@ -3973,7 +3972,7 @@ static int kvmppc_run_vcpu(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
>  			if (signal_pending(v->arch.run_task)) {
>  				kvmppc_remove_runnable(vc, v);
>  				v->stat.signal_exits++;
> -				v->arch.kvm_run->exit_reason = KVM_EXIT_INTR;
> +				v->run->exit_reason = KVM_EXIT_INTR;
>  				v->arch.ret = -EINTR;
>  				wake_up(&v->arch.cpu_run);
>  			}
> @@ -4049,7 +4048,6 @@ int kvmhv_run_single_vcpu(struct kvm_run *kvm_run,
>  	vc = vcpu->arch.vcore;
>  	vcpu->arch.ceded = 0;
>  	vcpu->arch.run_task = current;
> -	vcpu->arch.kvm_run = kvm_run;
>  	vcpu->arch.stolen_logged = vcore_stolen_time(vc, mftb());
>  	vcpu->arch.state = KVMPPC_VCPU_RUNNABLE;
>  	vcpu->arch.busy_preempt = TB_NIL;
> diff --git a/arch/powerpc/kvm/book3s_hv_nested.c b/arch/powerpc/kvm/book3s_hv_nested.c
> index dc97e5be76f6..5a3987f3ebf3 100644
> --- a/arch/powerpc/kvm/book3s_hv_nested.c
> +++ b/arch/powerpc/kvm/book3s_hv_nested.c
> @@ -290,8 +290,7 @@ long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>  			r = RESUME_HOST;
>  			break;
>  		}
> -		r = kvmhv_run_single_vcpu(vcpu->arch.kvm_run, vcpu, hdec_exp,
> -					  lpcr);
> +		r = kvmhv_run_single_vcpu(vcpu->run, vcpu, hdec_exp, lpcr);
>  	} while (is_kvmppc_resume_guest(r));
>  
>  	/* save L2 state for return */

FWIW,

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
