Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75F54268C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WX2jdV5IIskzFosmkirD10rKM69l+MTtQ/mKLHebQE=; b=qqs1H87zHkjhju
	yE85S82lDWDiqDxt31yCq7xgV+53uEhoyKrL00WJ5ZijqSkKSbwyHhBoVyEO2LgJCghZTyk/o0bDv
	ydtZFoPKsfJatrXjteinKDMWf7WT2yNV0xoDd91vRqTGPghSFIh6qDUZRQfgUiAhQUt0LY/sKX9sc
	Yb2JSBN0PMayMqZwLVLD2EWkwwSl10mOGMJc5UaDq39gCpNif6fD5A574do1Y3FLS28/1j+knaBAW
	aG08sV0azldFrNnYdgjzt31sA4DlMW0JD8uByAq3XkpYu9sQkM6oY6f+2XEp2fQEdZZv1zJVzdJdm
	qa7o8rFBfk3W+exrJ7AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2hL-00045i-MQ; Wed, 12 Jun 2019 12:49:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2go-0003qA-P0
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:49:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 761CF28;
 Wed, 12 Jun 2019 05:49:18 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D64ED3F246;
 Wed, 12 Jun 2019 05:49:15 -0700 (PDT)
Subject: Re: [PATCH v1 2/5] KVM: arm/arm64: Adjust entry/exit and trap related
 tracepoints
To: Zenghui Yu <yuzenghui@huawei.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
 <1560330526-15468-3-git-send-email-yuzenghui@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <977f8f8c-72b4-0287-4b1c-47a0d6f1fd6e@arm.com>
Date: Wed, 12 Jun 2019 13:49:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560330526-15468-3-git-send-email-yuzenghui@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054918_945340_5DA670ED 
X-CRM114-Status: GOOD (  18.49  )
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
Cc: mark.rutland@arm.com, acme@redhat.com, kvm@vger.kernel.org,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, christoffer.dall@arm.com,
 linux-perf-users@vger.kernel.org, peterz@infradead.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, linuxarm@huawei.com,
 wanghaibin.wang@huawei.com, ganapatrao.kulkarni@cavium.com,
 namhyung@kernel.org, jolsa@redhat.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/06/2019 10:08, Zenghui Yu wrote:
> Currently, we use trace_kvm_exit() to report exception type (e.g.,
> "IRQ", "TRAP") and exception class (ESR_ELx's bit[31:26]) together.

(They both caused an exit!)


> But hardware only saves the exit class to ESR_ELx on synchronous

EC is the 'Exception Class'. Exit is KVM/Linux's terminology.


> exceptions, not on asynchronous exceptions. When the guest exits
> due to external interrupts, we will get tracing output like:
> 
> 	"kvm_exit: IRQ: HSR_EC: 0x0000 (UNKNOWN), PC: 0xffff87259e30"
> 
> Obviously, "HSR_EC" here is meaningless.

I assume we do it this way so there is only one guest-exit tracepoint that catches all exits.
I don't think its a problem if user-space has to know the EC isn't set for asynchronous
exceptions, this is a property of the architecture and anything using these trace-points
is already arch specific.


> This patch splits "exit" and "trap" events by adding two tracepoints
> explicitly in handle_trap_exceptions(). Let trace_kvm_exit() report VM
> exit events, and trace_kvm_trap_exit() report VM trap events.
> 
> These tracepoints are adjusted also in preparation for supporting
> 'perf kvm stat' on arm64.

Because the existing tracepoints are ABI, I don't think we can change them.

We can add new ones if there is something that a user reasonably needs to trace, and can't
be done any other way.

What can't 'perf kvm stat' do with the existing trace points?


> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index 516aead..af3c732 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -264,7 +264,10 @@ static int handle_trap_exceptions(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  		exit_handle_fn exit_handler;
>  
>  		exit_handler = kvm_get_exit_handler(vcpu);
> +		trace_kvm_trap_enter(vcpu->vcpu_id,
> +				     kvm_vcpu_trap_get_class(vcpu));
>  		handled = exit_handler(vcpu, run);
> +		trace_kvm_trap_exit(vcpu->vcpu_id);
>  	}

Why are there two? Are you using this to benchmark the exit_handler()?

As we can't remove the EC from the exit event, I don't think this tells us anything new.


> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 90cedeb..9f63fd9 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -758,7 +758,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  		/**************************************************************
>  		 * Enter the guest
>  		 */
> -		trace_kvm_entry(*vcpu_pc(vcpu));
> +		trace_kvm_entry(vcpu->vcpu_id, *vcpu_pc(vcpu));

Why do you need the PC? It was exported on exit.
(its mostly junk for user-space anyway, you can't infer anything from it)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
