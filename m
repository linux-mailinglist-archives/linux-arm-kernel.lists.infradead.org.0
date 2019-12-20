Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F6712783B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1dDE1PZrCXj5/vR6m27UQNF0n6YkqsKV+rK4aaTwvE=; b=VziVZJkOThO9Gd
	0HR14yS1R7HcTCPj6DZZ4/yCgnBzTpaMi83s+t+kWIq/jOdPFLEEf87iMRRkwogmE96qIA8kOEzST
	az6ERdDWoJMdtu+33Kbz4758MdQNCY1bTodLFD5lqEcA2VRNIEi0infizLLcxhYDMp5yOurWeBFsg
	4n4A6cWFXBnqjXZJOIV50+sy7GdCsiiZbuTNZDB5cmS3JyCATdT95xvRCTxvxJ4yR4K31RCzxHmpQ
	zKSRwTQj60OIOdDW4saMlR4xXIc/X3wxJdhaVr0QEG9lHS57yjRy5FwuBtZsU5+c9zIjpEjhUugMj
	BgNkQasElHm+j7lOmjXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEfT-0000jB-KM; Fri, 20 Dec 2019 09:33:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEfJ-0000i6-1B
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:33:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576834423;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kARvpg6EeSn47uf+HJvOWWm63eTYV3jwqH0aHeRURHY=;
 b=dmfoYz46vqGDwzCGWVXsIk7DJL75u101QNyfXVFnhsbvnkRG/jGbI60XZR8UYR2B82cquP
 vC2qZ3Too5AMHq+B+fcpMd3z/xA3GrR75oI0IkdzPhG3xjYotEymY1oTgQEfwsvAEUwL/o
 d++1lYbeESfG61eRHrfEca3zcIeCeLg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-euuv6RBAMwGCsT-Q338LuQ-1; Fri, 20 Dec 2019 04:33:41 -0500
X-MC-Unique: euuv6RBAMwGCsT-Q338LuQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 444D1911EB;
 Fri, 20 Dec 2019 09:33:38 +0000 (UTC)
Received: from gondolin (dhcp-192-245.str.redhat.com [10.33.192.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 82CC560BF3;
 Fri, 20 Dec 2019 09:33:27 +0000 (UTC)
Date: Fri, 20 Dec 2019 10:33:25 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 30/45] KVM: Move vcpu alloc and init invocation to
 common code
Message-ID: <20191220103325.34fc2bf0.cohuck@redhat.com>
In-Reply-To: <20191218215530.2280-31-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-31-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_013345_161503_C07E3DF6 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 James Hogan <jhogan@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 13:55:15 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Now that all architectures tightly couple vcpu allocation/free with the
> mandatory calls to kvm_{un}init_vcpu(), move the sequences verbatim to
> common KVM code.
> 
> Move both allocation and initialization in a single patch to eliminate
> thrash in arch specific code.  The bisection benefits of moving the two
> pieces in separate patches is marginal at best, whereas the odds of
> introducing a transient arch specific bug are non-zero.
> 
> Acked-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/mips/kvm/mips.c       | 33 ++++++---------------------------
>  arch/powerpc/kvm/powerpc.c | 27 ++++-----------------------
>  arch/s390/kvm/kvm-s390.c   | 31 +++++--------------------------
>  arch/x86/kvm/x86.c         | 28 ++--------------------------
>  include/linux/kvm_host.h   |  2 +-
>  virt/kvm/arm/arm.c         | 29 ++---------------------------
>  virt/kvm/kvm_main.c        | 21 ++++++++++++++++++---
>  7 files changed, 38 insertions(+), 133 deletions(-)

(...)

> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
> index 8543d338a06a..2ed76584ebd9 100644
> --- a/arch/s390/kvm/kvm-s390.c
> +++ b/arch/s390/kvm/kvm-s390.c
> @@ -2530,9 +2530,6 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
>  	if (vcpu->kvm->arch.use_cmma)
>  		kvm_s390_vcpu_unsetup_cmma(vcpu);
>  	free_page((unsigned long)(vcpu->arch.sie_block));
> -
> -	kvm_vcpu_uninit(vcpu);
> -	kmem_cache_free(kvm_vcpu_cache, vcpu);
>  }
>  
>  static void kvm_free_vcpus(struct kvm *kvm)
> @@ -3014,29 +3011,15 @@ int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
>  	return 0;
>  }
>  
> -struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
> -				      unsigned int id)
> +int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
>  {
> -	struct kvm_vcpu *vcpu;
>  	struct sie_page *sie_page;
>  	int rc;
>  
> -	rc = -ENOMEM;
> -
> -	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
> -	if (!vcpu)
> -		goto out;
> -
> -	rc = kvm_vcpu_init(vcpu, kvm, id);
> -	if (rc)
> -		goto out_free_cpu;
> -
> -	rc = -ENOMEM;
> -
>  	BUILD_BUG_ON(sizeof(struct sie_page) != 4096);
>  	sie_page = (struct sie_page *) get_zeroed_page(GFP_KERNEL);
>  	if (!sie_page)
> -		goto out_uninit_vcpu;
> +		return -ENOMEM;
>  
>  	vcpu->arch.sie_block = &sie_page->sie_block;
>  	vcpu->arch.sie_block->itdba = (unsigned long) &sie_page->itdb;
> @@ -3087,15 +3070,11 @@ struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
>  		 vcpu->arch.sie_block);
>  	trace_kvm_s390_create_vcpu(id, vcpu, vcpu->arch.sie_block);
>  
> -	return vcpu;
> +	return 0;
> +
>  out_free_sie_block:
>  	free_page((unsigned long)(vcpu->arch.sie_block));
> -out_uninit_vcpu:
> -	kvm_vcpu_uninit(vcpu);
> -out_free_cpu:
> -	kmem_cache_free(kvm_vcpu_cache, vcpu);
> -out:
> -	return ERR_PTR(rc);
> +	return rc;

This is getting a bit hard to follow across the patches, but I think rc
is now only set for ucontrol guests. So this looks correct right now,
but feels a bit brittle... should we maybe init rc to 0 and always
return rc instead?

>  }
>  
>  int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)

Otherwise, looks good.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
