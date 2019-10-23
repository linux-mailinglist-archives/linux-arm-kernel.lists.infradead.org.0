Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FDAE1605
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IExLBJ76keXxy97WZkptfSxHB0d4GlOP4QH5Pxk/+eM=; b=nYrLsQgTJQR/ni
	IRBCMBH9iRs3IKvufkyVAaiSOahnglgnWcjw1zMcLJZUvE5SXeZMhQsmPoscDRTSYH2eZ6SUF8X+J
	Cw+jR1yEria3b29Hnq75LSeScM1a7lZugY5V+yaGunY3rTgayxgBkO0zcGXduHazcwhDuVoObady/
	1cXuFBTJIk+3PK0vEyyUNI2mZ2LBxxjRij3LQL8ilzpwulao/sXrv64AB7ce09PcdVf7B3i1kYcqS
	pxo3oroFnBYW70lgasNoF3tseVZ6gRHlzuIWv922l8mD0z/Lc0xJAqDyxjRcy6YW5dORvuLZEsYaZ
	zLs73Al2am6pLARgsy2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCye-0001N7-5k; Wed, 23 Oct 2019 09:30:48 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCxH-0007u0-D8
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 09:29:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92F5932B;
 Wed, 23 Oct 2019 02:29:09 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1CDE23F718;
 Wed, 23 Oct 2019 02:29:08 -0700 (PDT)
Date: Wed, 23 Oct 2019 11:29:07 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 01/15] KVM: Reinstall old memslots if arch preparation
 fails
Message-ID: <20191023092907.GD2652@e113682-lin.lund.arm.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-2-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022003537.13013-2-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_022923_535027_288D879C 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 05:35:23PM -0700, Sean Christopherson wrote:
> Reinstall the old memslots if preparing the new memory region fails
> after invalidating a to-be-{re}moved memslot.
> 
> Remove the superfluous 'old_memslots' variable so that it's somewhat
> clear that the error handling path needs to free the unused memslots,
> not simply the 'old' memslots.
> 
> Fixes: bc6678a33d9b9 ("KVM: introduce kvm->srcu and convert kvm_set_memory_region to SRCU update")
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  virt/kvm/kvm_main.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index 67ef3f2e19e8..9afd706dc038 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -924,7 +924,7 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  	unsigned long npages;
>  	struct kvm_memory_slot *slot;
>  	struct kvm_memory_slot old, new;
> -	struct kvm_memslots *slots = NULL, *old_memslots;
> +	struct kvm_memslots *slots;
>  	int as_id, id;
>  	enum kvm_mr_change change;
>  
> @@ -1032,7 +1032,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  		slot = id_to_memslot(slots, id);
>  		slot->flags |= KVM_MEMSLOT_INVALID;
>  
> -		old_memslots = install_new_memslots(kvm, as_id, slots);
> +		/*
> +		 * We can re-use the old memslots, the only difference from the
> +		 * newly installed memslots is the invalid flag, which will get
> +		 * dropped by update_memslots anyway.  We'll also revert to the
> +		 * old memslots if preparing the new memory region fails.
> +		 */
> +		slots = install_new_memslots(kvm, as_id, slots);
>  
>  		/* From this point no new shadow pages pointing to a deleted,
>  		 * or moved, memslot will be created.
> @@ -1042,13 +1048,6 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  		 *	- kvm_is_visible_gfn (mmu_check_roots)
>  		 */
>  		kvm_arch_flush_shadow_memslot(kvm, slot);
> -
> -		/*
> -		 * We can re-use the old_memslots from above, the only difference
> -		 * from the currently installed memslots is the invalid flag.  This
> -		 * will get overwritten by update_memslots anyway.
> -		 */
> -		slots = old_memslots;
>  	}
>  
>  	r = kvm_arch_prepare_memory_region(kvm, &new, mem, change);
> @@ -1062,15 +1061,17 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  	}
>  
>  	update_memslots(slots, &new, change);
> -	old_memslots = install_new_memslots(kvm, as_id, slots);
> +	slots = install_new_memslots(kvm, as_id, slots);
>  
>  	kvm_arch_commit_memory_region(kvm, mem, &old, &new, change);
>  
>  	kvm_free_memslot(kvm, &old, &new);
> -	kvfree(old_memslots);
> +	kvfree(slots);
>  	return 0;
>  
>  out_slots:
> +	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE)
> +		slots = install_new_memslots(kvm, as_id, slots);
>  	kvfree(slots);
>  out_free:
>  	kvm_free_memslot(kvm, &new, &old);
> -- 
> 2.22.0

Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
