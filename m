Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC63154EC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 23:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltYy9ZL4h1xoJ3DPKswx0SzOZLiMDfBJFkqZEDFnrIc=; b=pCWemoEMQ/4OhA
	DboU6eDF7OKUaQy8eRtMcboYxMQYGc9Uf3FO2UC6r5wQ+6F8soV7EBumEJo1kafPc0b/gubKicW51
	f5JcatPGRhGEHzEmYJ5r72NFPhOaPE7NzTsip6skJgEu8MVokjgw00hFVINP1cKexRDaz6X6Jc9II
	jIwhHe/wuzg4g/Mudwj+KUS/vcz9I+f1NyBUmBvgfkwXNBzt9IyfQAtlx7h61VsXnOjdVjEzTBxrW
	OeRn3M73l2XGof/NJ4ZtTMLV5Z9X/b8InZeczQCTXQR9uhWOLYbIqHjHgeFmLqKfqBNhYe/TM4Tcn
	mzSa09Er/2OV9+zPB54Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpNx-0004jM-FR; Thu, 06 Feb 2020 22:12:33 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpNp-0004iH-8w
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 22:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581027141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T0SUNgpYtoHVF7GzbI2ilrdt5y3ZW30rTkougLKR8CM=;
 b=ZnVHUXvdST5tXte+AF1umeozHou+LTZlZTETMitBF5IPPIu4REDQbH5BzvuTYyphKxALig
 Ye+xjRjHiTK92TcOaesDk35FoexvwAKc8Nvijn1ygRydlxPyQbzvU0/kYsmwvg09gXDAXz
 P1yZRHOU39Vo+AbMn+94pl+nHLQb+og=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-kP_TPwFoMNCIKN9fTXi60g-1; Thu, 06 Feb 2020 17:12:15 -0500
Received: by mail-qk1-f200.google.com with SMTP id s9so4586557qkg.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 14:12:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xnxqE/nCX2EzFDbA9kwFrPUv5TZytfq4VJeA0RRzpMU=;
 b=XIi4I3EkMmNyNvnKdjgluQVU7Le2SHWCl8AiWSTTh7hAe8qP2yraB3T3VH1ukzVwG6
 jLoh9QK+EI2UyiwdnE6LOpPig8Ap/aBr2eXIccW/Nfxzn7cPSLAUA5sUA1Fno3Hz/Ry+
 Hkp9Fw0Xc8hoBzWoWd56IJiNWb2JnZubdXIad0cQ52mTpiVjMkzMWJ81zwvdHGjuI4eQ
 BjOQoEuhkCi9M46XGYjN95/dupDBCXGwqL6wfQX5t87YeZYapMP51l7dhE6SQg8efqHq
 hVhsZvrV0TOXGDLkRhSUzUtnONn7qRxN5jJkEs782kI3FwHRW7vMXiTI96t9mmJ3O2ZV
 l4qQ==
X-Gm-Message-State: APjAAAX5h4kgn25h6mcdbOmBA4bIHTDktuH5ZiuWaezlZWUdLh9AX+df
 +8N4eINmwcZavrKdtLUZJuprRT1u+yCzEqK7H+XEdE50ferPrc1GDAf9c9tB9mfVqgVI5B8+OsZ
 dNJ9O44dZcmVr+OSb0BvDvtZyCh2p1BpXFl4=
X-Received: by 2002:ac8:1c1d:: with SMTP id a29mr4676769qtk.183.1581027135108; 
 Thu, 06 Feb 2020 14:12:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqw/2cyK6F4lh5rp4dz7WvwTupqk8fbtvVzQEcyTi4bd7WqahSqSpQi7XlP32hR4RTgKgW30Yg==
X-Received: by 2002:ac8:1c1d:: with SMTP id a29mr4676750qtk.183.1581027134836; 
 Thu, 06 Feb 2020 14:12:14 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id w1sm357608qtk.31.2020.02.06.14.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 14:12:14 -0800 (PST)
Date: Thu, 6 Feb 2020 17:12:08 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 18/19] KVM: Dynamically size memslot array based on
 number of used slots
Message-ID: <20200206221208.GI700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-19-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-19-sean.j.christopherson@intel.com>
X-MC-Unique: kP_TPwFoMNCIKN9fTXi60g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_141225_394215_D6BE51AA 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 02:31:56PM -0800, Sean Christopherson wrote:
> Now that the memslot logic doesn't assume memslots are always non-NULL,
> dynamically size the array of memslots instead of unconditionally
> allocating memory for the maximum number of memslots.
> 
> Note, because a to-be-deleted memslot must first be invalidated, the
> array size cannot be immediately reduced when deleting a memslot.
> However, consecutive deletions will realize the memory savings, i.e.
> a second deletion will trim the entry.
> 
> Tested-by: Christoffer Dall <christoffer.dall@arm.com>
> Tested-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  include/linux/kvm_host.h |  2 +-
>  virt/kvm/kvm_main.c      | 31 ++++++++++++++++++++++++++++---
>  2 files changed, 29 insertions(+), 4 deletions(-)
> 
> diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> index 60ddfdb69378..8bb6fb127387 100644
> --- a/include/linux/kvm_host.h
> +++ b/include/linux/kvm_host.h
> @@ -431,11 +431,11 @@ static inline int kvm_arch_vcpu_memslots_id(struct kvm_vcpu *vcpu)
>   */
>  struct kvm_memslots {
>  	u64 generation;
> -	struct kvm_memory_slot memslots[KVM_MEM_SLOTS_NUM];
>  	/* The mapping table from slot id to the index in memslots[]. */
>  	short id_to_index[KVM_MEM_SLOTS_NUM];
>  	atomic_t lru_slot;
>  	int used_slots;
> +	struct kvm_memory_slot memslots[];

This patch is tested so I believe this works, however normally I need
to do similar thing with [0] otherwise gcc might complaint.  Is there
any trick behind to make this work?  Or is that because of different
gcc versions?

>  };
>  
>  struct kvm {
> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index 9b614cf2ca20..ed392ce64e59 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -565,7 +565,7 @@ static struct kvm_memslots *kvm_alloc_memslots(void)
>  		return NULL;
>  
>  	for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
> -		slots->id_to_index[i] = slots->memslots[i].id = -1;
> +		slots->id_to_index[i] = -1;
>  
>  	return slots;
>  }
> @@ -1077,6 +1077,32 @@ static struct kvm_memslots *install_new_memslots(struct kvm *kvm,
>  	return old_memslots;
>  }
>  
> +/*
> + * Note, at a minimum, the current number of used slots must be allocated, even
> + * when deleting a memslot, as we need a complete duplicate of the memslots for
> + * use when invalidating a memslot prior to deleting/moving the memslot.
> + */
> +static struct kvm_memslots *kvm_dup_memslots(struct kvm_memslots *old,
> +					     enum kvm_mr_change change)
> +{
> +	struct kvm_memslots *slots;
> +	size_t old_size, new_size;
> +
> +	old_size = sizeof(struct kvm_memslots) +
> +		   (sizeof(struct kvm_memory_slot) * old->used_slots);
> +
> +	if (change == KVM_MR_CREATE)
> +		new_size = old_size + sizeof(struct kvm_memory_slot);
> +	else
> +		new_size = old_size;
> +
> +	slots = kvzalloc(new_size, GFP_KERNEL_ACCOUNT);
> +	if (likely(slots))
> +		memcpy(slots, old, old_size);

(Maybe directly copy into it?)

> +
> +	return slots;
> +}
> +
>  static int kvm_set_memslot(struct kvm *kvm,
>  			   const struct kvm_userspace_memory_region *mem,
>  			   struct kvm_memory_slot *old,
> @@ -1087,10 +1113,9 @@ static int kvm_set_memslot(struct kvm *kvm,
>  	struct kvm_memslots *slots;
>  	int r;
>  
> -	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
> +	slots = kvm_dup_memslots(__kvm_memslots(kvm, as_id), change);
>  	if (!slots)
>  		return -ENOMEM;
> -	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
>  
>  	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE) {
>  		/*
> -- 
> 2.24.1
> 

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
