Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA9210C7BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 12:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mpO8hddktEN/imWRyOz9sICsQ0pAYwn+djL1IS4OJ+c=; b=GlYbpsYDQSKfECY9Jj17ObHbB
	+t/jRglcNtUHd/xsWEwyFKMqGdhKldgg8TnOiAISYU32WfjaKOm+ktLyz75GQKOq6vICBgFJaiSfq
	YtGledLD9mui2aU1NXsuDM1TipJIrYvnpWobFn9pqFDbBR4BTIc/5NzGzIZ85p12FevGjbvCvv7Eb
	1B62Nz9l0ZbPheejt0G2eeKytHvRpPBRByV2EKZrjkG+j1n6ATJKysfrZoyOMFSVnwq6Y3QQZFS2r
	wlPCfsZwDs56KEod67Q/ok1vd1BNG3UbJN3ceCWr7CCibDsxfDjEKXbNIFrYgLCfkMope9RiyPj/g
	Ex16oNS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaHcO-00078A-F6; Thu, 28 Nov 2019 11:05:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaHbG-0006Ef-Dk
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 11:04:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2F411FB;
 Thu, 28 Nov 2019 03:04:39 -0800 (PST)
Received: from [10.37.9.137] (unknown [10.37.9.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB81F3F6C4;
 Thu, 28 Nov 2019 03:04:35 -0800 (PST)
Subject: Re: [PATCH v2] KVM: vgic: Use wrapper function to lock/unlock all
 vcpus in kvm_vgic_create()
To: linmiaohe <linmiaohe@huawei.com>, maz@kernel.org, pbonzini@redhat.com,
 rkrcmar@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com, catalin.marinas@arm.com,
 eric.auger@redhat.com, gregkh@linuxfoundation.org, will@kernel.org,
 andre.przywara@arm.com, tglx@linutronix.de
References: <1574933208-24911-1-git-send-email-linmiaohe@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <ea23652a-8a1a-7bfe-96d6-838038f3a93b@arm.com>
Date: Thu, 28 Nov 2019 11:04:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574933208-24911-1-git-send-email-linmiaohe@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_030442_519824_0ABC29D7 
X-CRM114-Status: GOOD (  17.67  )
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
Cc: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 09:26, linmiaohe wrote:
> From: Miaohe Lin <linmiaohe@huawei.com>
> 
> Use wrapper function lock_all_vcpus()/unlock_all_vcpus()
> in kvm_vgic_create() to remove duplicated code dealing
> with locking and unlocking all vcpus in a vm.
> 
> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
> ---
> -v2:
> 	Fix some spelling mistake in patch title and commit log.
> ---
>   virt/kvm/arm/vgic/vgic-init.c | 14 ++++----------
>   1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
> index b3c5de48064c..53e3969dfb52 100644
> --- a/virt/kvm/arm/vgic/vgic-init.c
> +++ b/virt/kvm/arm/vgic/vgic-init.c
> @@ -70,7 +70,7 @@ void kvm_vgic_early_init(struct kvm *kvm)
>    */
>   int kvm_vgic_create(struct kvm *kvm, u32 type)
>   {
> -	int i, vcpu_lock_idx = -1, ret;
> +	int i, ret;
>   	struct kvm_vcpu *vcpu;
>   
>   	if (irqchip_in_kernel(kvm))
> @@ -92,11 +92,8 @@ int kvm_vgic_create(struct kvm *kvm, u32 type)
Extra context:

	/*
	 * Any time a vcpu is run, vcpu_load is called which tries to grab the
	 * vcpu->mutex.  By grabbing the vcpu->mutex of all VCPUs we ensure
>   	 * that no other VCPUs are run while we create the vgic.
>   	 */

That comment no longer makes sense here - there's a very similar one already
in lock_all_vcpus(). With that removed:

Reviewed-by: Steven Price <steven.price@arm.com>

>   	ret = -EBUSY;
> -	kvm_for_each_vcpu(i, vcpu, kvm) {
> -		if (!mutex_trylock(&vcpu->mutex))
> -			goto out_unlock;
> -		vcpu_lock_idx = i;
> -	}
> +	if (!lock_all_vcpus(kvm))
> +		return ret;
>   
>   	kvm_for_each_vcpu(i, vcpu, kvm) {
>   		if (vcpu->arch.has_run_once)
> @@ -125,10 +122,7 @@ int kvm_vgic_create(struct kvm *kvm, u32 type)
>   		INIT_LIST_HEAD(&kvm->arch.vgic.rd_regions);
>   
>   out_unlock:
> -	for (; vcpu_lock_idx >= 0; vcpu_lock_idx--) {
> -		vcpu = kvm_get_vcpu(kvm, vcpu_lock_idx);
> -		mutex_unlock(&vcpu->mutex);
> -	}
> +	unlock_all_vcpus(kvm);
>   	return ret;
>   }
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
