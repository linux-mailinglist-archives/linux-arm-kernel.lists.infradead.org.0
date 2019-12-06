Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB204114DA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 09:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laXCPhGprkaKGmOMnU6IGw/e6aIg77fzlKx+wWCk34Q=; b=T45D+ICpCsugyY
	zXG7dJ255aY03cMC/QyC9rBCLPjSqE3PsiO7sgTP0dbDHriFdFvoAfWpZnE0qkYtljQZojEUbN7po
	DouF0aXeGHG3bcifxm2JxLwa1RMtOBjukmIrXvhQ7w61gsFRc6BukkCreZpB2tCnzn6NqT38/Uvtf
	PRLOmfIANBU18d/elYQJvDtfksvEtrV1Uz7kH8C588w+DnNsv5yzvn4OpdWJFrB+7mPXf2AA9rR6S
	j+s20F6Y40P3vZQoYRUFZopzJZDozRl0pjufLJF9horGL4QhznRKqy7FMJYc2w7itdP3oguzE4LfT
	ntZflIgnaydhB7bUjncw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id8zM-0003ud-0W; Fri, 06 Dec 2019 08:29:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id8zA-0003tu-BT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 08:29:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94BCC31B;
 Fri,  6 Dec 2019 00:29:08 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76F653F718;
 Fri,  6 Dec 2019 00:32:18 -0800 (PST)
Date: Fri, 6 Dec 2019 09:29:06 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH] KVM: arm: remove excessive permission check in
 kvm_arch_prepare_memory_region
Message-ID: <20191206082906.GA2749@e113682-lin.lund.arm.com>
References: <20191206020802.196108-1-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206020802.196108-1-justin.he@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_002912_438942_18760EAD 
X-CRM114-Status: GOOD (  18.64  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 10:08:02AM +0800, Jia He wrote:
> In kvm_arch_prepare_memory_region, arm kvm regards the memory region as
> writable if the flag has no KVM_MEM_READONLY, and the vm is readonly if
> !VM_WRITE.
> 
> But there is common usage for setting kvm memory region as follows:
> e.g. qemu side (see the PROT_NONE flag)
> 1. mmap(NULL, size, PROT_NONE, MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
>    memory_region_init_ram_ptr()
> 2. re mmap the above area with read/write authority.
> 
> Such example is used in virtio-fs qemu codes which hasn't been upstreamed
> [1]. But seems we can't forbid this example.
> 
> Without this patch, it will cause an EPERM during kvm_set_memory_region()
> and cause qemu boot crash.
> 
> As told by Ard, "the underlying assumption is incorrect, i.e., that the
> value of vm_flags at this point in time defines how the VMA is used
> during its lifetime. There may be other cases where a VMA is created
> with VM_READ vm_flags that are changed to VM_READ|VM_WRITE later, and
> we are currently rejecting this use case as well."
> 
> [1] https://gitlab.com/virtio-fs/qemu/blob/5a356e/hw/virtio/vhost-user-fs.c#L488

Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>

> 
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Suggested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Jia He <justin.he@arm.com>
> ---
>  virt/kvm/arm/mmu.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 38b4c910b6c3..a48994af70b8 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -2301,15 +2301,6 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
>  		if (!vma || vma->vm_start >= reg_end)
>  			break;
>  
> -		/*
> -		 * Mapping a read-only VMA is only allowed if the
> -		 * memory region is configured as read-only.
> -		 */
> -		if (writable && !(vma->vm_flags & VM_WRITE)) {
> -			ret = -EPERM;
> -			break;
> -		}
> -
>  		/*
>  		 * Take the intersection of this VMA with the memory region
>  		 */
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
