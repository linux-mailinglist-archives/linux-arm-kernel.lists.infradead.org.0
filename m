Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB28114FFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UhOXv4PZxeTJIi5OaGD09M7b4HnEPkkdpAX+E/S1TA0=; b=RSi3Je7Pxnj9ngYpvi22/G3sE
	8c7Rpz4s5Qoig4+cFnkcXDCiehXSN0Tz1WQpm3UgTiKCsy7HE9Tak+mXrjT7zSTF9hru/UwmNxtNc
	PCDV4REQf45hrWvMFDGBWVo2Y2aLmK770bT2K0DF/omh/Mmz9zckPuVwY5F1KMl02o+ulqozDdahw
	jn+zui6HciJHNd3Sk6cKwjDu5ZpijQs2+e4yUAxgL41RslzRpRBX41yvFDJqJeB2iubLM+1ww3jAV
	U2NI8dIuvvaldDm4yJTlqMtV2XpFaRcziznZMRn8eibQ24nSOVokyZaLXdi8HIcA0W7R8yLq9qBoG
	SVHRYdaRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idC4b-0005Ad-9t; Fri, 06 Dec 2019 11:47:01 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idC4P-00059K-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:46:51 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1idC4H-0001wz-8n; Fri, 06 Dec 2019 12:46:41 +0100
To: linmiaohe <linmiaohe@huawei.com>
Subject: Re: [PATCH v3] KVM: vgic: Use wrapper function to lock/unlock all
 vcpus in =?UTF-8?Q?kvm=5Fvgic=5Fcreate=28=29?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 11:46:41 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1575081918-11401-1-git-send-email-linmiaohe@huawei.com>
References: <1575081918-11401-1-git-send-email-linmiaohe@huawei.com>
Message-ID: <0e466a9f072a6db275701cb80f59a311@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: linmiaohe@huawei.com, pbonzini@redhat.com,
 rkrcmar@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com, catalin.marinas@arm.com,
 eric.auger@redhat.com, gregkh@linuxfoundation.org, will@kernel.org,
 andre.przywara@arm.com, tglx@linutronix.de, steven.price@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_034650_123040_6AF07F3E 
X-CRM114-Status: GOOD (  15.10  )
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
Cc: linux-kernel@vger.kernel.org, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, rkrcmar@redhat.com, christoffer.dall@arm.com,
 steven.price@arm.com, eric.auger@redhat.com, andre.przywara@arm.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, pbonzini@redhat.com, tglx@linutronix.de,
 will@kernel.org, kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-30 02:45, linmiaohe wrote:
> From: Miaohe Lin <linmiaohe@huawei.com>
>
> Use wrapper function lock_all_vcpus()/unlock_all_vcpus()
> in kvm_vgic_create() to remove duplicated code dealing
> with locking and unlocking all vcpus in a vm.
>
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
> ---
> -v2:
> 	Fix some spelling mistake in patch title and commit log.
> -v3:
> 	Remove the comment that no longer makes sense.
> ---
>  virt/kvm/arm/vgic/vgic-init.c | 19 ++++---------------
>  1 file changed, 4 insertions(+), 15 deletions(-)
>
> diff --git a/virt/kvm/arm/vgic/vgic-init.c 
> b/virt/kvm/arm/vgic/vgic-init.c
> index b3c5de48064c..22ff73ecac80 100644
> --- a/virt/kvm/arm/vgic/vgic-init.c
> +++ b/virt/kvm/arm/vgic/vgic-init.c
> @@ -70,7 +70,7 @@ void kvm_vgic_early_init(struct kvm *kvm)
>   */
>  int kvm_vgic_create(struct kvm *kvm, u32 type)
>  {
> -	int i, vcpu_lock_idx = -1, ret;
> +	int i, ret;
>  	struct kvm_vcpu *vcpu;
>
>  	if (irqchip_in_kernel(kvm))
> @@ -86,17 +86,9 @@ int kvm_vgic_create(struct kvm *kvm, u32 type)
>  		!kvm_vgic_global_state.can_emulate_gicv2)
>  		return -ENODEV;
>
> -	/*
> -	 * Any time a vcpu is run, vcpu_load is called which tries to grab 
> the
> -	 * vcpu->mutex.  By grabbing the vcpu->mutex of all VCPUs we ensure
> -	 * that no other VCPUs are run while we create the vgic.
> -	 */
>  	ret = -EBUSY;
> -	kvm_for_each_vcpu(i, vcpu, kvm) {
> -		if (!mutex_trylock(&vcpu->mutex))
> -			goto out_unlock;
> -		vcpu_lock_idx = i;
> -	}
> +	if (!lock_all_vcpus(kvm))
> +		return ret;
>
>  	kvm_for_each_vcpu(i, vcpu, kvm) {
>  		if (vcpu->arch.has_run_once)
> @@ -125,10 +117,7 @@ int kvm_vgic_create(struct kvm *kvm, u32 type)
>  		INIT_LIST_HEAD(&kvm->arch.vgic.rd_regions);
>
>  out_unlock:
> -	for (; vcpu_lock_idx >= 0; vcpu_lock_idx--) {
> -		vcpu = kvm_get_vcpu(kvm, vcpu_lock_idx);
> -		mutex_unlock(&vcpu->mutex);
> -	}
> +	unlock_all_vcpus(kvm);
>  	return ret;
>  }

Applied, thanks.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
