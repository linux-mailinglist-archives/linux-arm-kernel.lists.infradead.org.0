Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411DF11FF55
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/80OBxwBVePme4duLM+Hdf8xF39o3kWfLWheFruj7ls=; b=MdGhhS9gJSRBdP
	ug04zwypITKFDa7DM84fQS9m8sYE5WcMvUK3GmVUllAPpNnN6LD4gY3bCeHs6ExOe6AiBaec8YDdu
	n4Mb29NRi71vsvS2y4cYYnRmLrxddGFPRhzIBJhLmXBTbsLQUQ4v0z06mjpJD27/dwe4E/tOcjjLo
	PykdLhBcw32yx104D4FF3OTKdBOeH7F9//sCzJsROtw/mJrgWisd5hLr16xXtcpw/XVYQLyN3Rpc0
	KSigCfWkDUDfZ6IceXuzVRM528cpBVNApa+YtRbp4I8Idc3V3MXwTY8Drwt5W2HOOw2p2AAAmwp3I
	JR0xzQqJpGFG4ydJ96tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglMu-0003QP-Eq; Mon, 16 Dec 2019 08:04:40 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglMk-0003Pk-MU
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:04:32 +0000
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBG81TL3135784
 for <linux-arm-kernel@lists.infradead.org>; Mon, 16 Dec 2019 03:04:27 -0500
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2wvv8w7htq-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 16 Dec 2019 03:04:27 -0500
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <borntraeger@de.ibm.com>;
 Mon, 16 Dec 2019 08:04:24 -0000
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 16 Dec 2019 08:04:18 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id xBG83ZAN50594110
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Dec 2019 08:03:35 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E0676A4066;
 Mon, 16 Dec 2019 08:04:17 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0E28DA4064;
 Mon, 16 Dec 2019 08:04:17 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.152.224.212])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 16 Dec 2019 08:04:16 +0000 (GMT)
Subject: Re: [PATCH v3 05/15] KVM: Drop kvm_arch_create_memslot()
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>
References: <20191024230744.14543-1-sean.j.christopherson@intel.com>
 <20191024230744.14543-6-sean.j.christopherson@intel.com>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Autocrypt: addr=borntraeger@de.ibm.com; prefer-encrypt=mutual; keydata=
 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
 nS4h0HDFPrrp1C2EMVYIQrMokWvlFZbCpsdYbBI=
Date: Mon, 16 Dec 2019 09:04:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191024230744.14543-6-sean.j.christopherson@intel.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19121608-0016-0000-0000-000002D54584
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19121608-0017-0000-0000-0000333777A7
Message-Id: <5a09195e-68a5-0f33-4c69-b7d1d249037f@de.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-16_01:2019-12-16,2019-12-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=2
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=798 impostorscore=0
 clxscore=1011 mlxscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912160072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_000430_740461_904CF612 
X-CRM114-Status: GOOD (  28.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25.10.19 01:07, Sean Christopherson wrote:
> Remove kvm_arch_create_memslot() now that all arch implementations are
> effectively nops.  Removing kvm_arch_create_memslot() eliminates the
> possibility for arch specific code to allocate memory prior to setting
> a memslot, which sets the stage for simplifying kvm_free_memslot().
> 
> Cc: Janosch Frank <frankja@linux.ibm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Acked-by: Christian Borntraeger <borntraeger@de.ibm.com>


> ---
>  arch/mips/kvm/mips.c       |  6 ------
>  arch/powerpc/kvm/powerpc.c |  6 ------
>  arch/s390/kvm/kvm-s390.c   |  6 ------
>  arch/x86/kvm/x86.c         |  6 ------
>  include/linux/kvm_host.h   |  2 --
>  virt/kvm/arm/mmu.c         |  6 ------
>  virt/kvm/kvm_main.c        | 21 +++++++--------------
>  7 files changed, 7 insertions(+), 46 deletions(-)
> 
> diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
> index 1109924560d8..713e5465edb0 100644
> --- a/arch/mips/kvm/mips.c
> +++ b/arch/mips/kvm/mips.c
> @@ -188,12 +188,6 @@ long kvm_arch_dev_ioctl(struct file *filp, unsigned int ioctl,
>  	return -ENOIOCTLCMD;
>  }
>  
> -int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> -			    unsigned long npages)
> -{
> -	return 0;
> -}
> -
>  void kvm_arch_flush_shadow_all(struct kvm *kvm)
>  {
>  	/* Flush whole GPA */
> diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
> index 95b4a766b6cb..bb427543f8a3 100644
> --- a/arch/powerpc/kvm/powerpc.c
> +++ b/arch/powerpc/kvm/powerpc.c
> @@ -687,12 +687,6 @@ void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
>  	kvmppc_core_free_memslot(kvm, free, dont);
>  }
>  
> -int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> -			    unsigned long npages)
> -{
> -	return 0;
> -}
> -
>  int kvm_arch_prepare_memory_region(struct kvm *kvm,
>  				   struct kvm_memory_slot *memslot,
>  				   const struct kvm_userspace_memory_region *mem,
> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
> index d047e846e1b9..21f61dae7db1 100644
> --- a/arch/s390/kvm/kvm-s390.c
> +++ b/arch/s390/kvm/kvm-s390.c
> @@ -4494,12 +4494,6 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
>  	return VM_FAULT_SIGBUS;
>  }
>  
> -int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> -			    unsigned long npages)
> -{
> -	return 0;
> -}
> -
>  /* Section: memory related */
>  int kvm_arch_prepare_memory_region(struct kvm *kvm,
>  				   struct kvm_memory_slot *memslot,
> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> index fc63b1f07ba9..aed1a4c5c999 100644
> --- a/arch/x86/kvm/x86.c
> +++ b/arch/x86/kvm/x86.c
> @@ -9626,12 +9626,6 @@ void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
>  	kvm_page_track_free_memslot(free, dont);
>  }
>  
> -int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> -			    unsigned long npages)
> -{
> -	return 0;
> -}
> -
>  static int kvm_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
>  			      unsigned long npages)
>  {
> diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> index a817e446c9aa..273fa081ae91 100644
> --- a/include/linux/kvm_host.h
> +++ b/include/linux/kvm_host.h
> @@ -679,8 +679,6 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  			    const struct kvm_userspace_memory_region *mem);
>  void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
>  			   struct kvm_memory_slot *dont);
> -int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> -			    unsigned long npages);
>  void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen);
>  int kvm_arch_prepare_memory_region(struct kvm *kvm,
>  				struct kvm_memory_slot *memslot,
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 38b4c910b6c3..f264de85f648 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -2358,12 +2358,6 @@ void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
>  {
>  }
>  
> -int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> -			    unsigned long npages)
> -{
> -	return 0;
> -}
> -
>  void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen)
>  {
>  }
> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index 2d354fa11934..9d6af9044304 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -977,12 +977,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  	new.base_gfn = base_gfn;
>  	new.npages = npages;
>  	new.flags = mem->flags;
> +	new.userspace_addr = mem->userspace_addr;
>  
>  	if (npages) {
>  		if (!old.npages)
>  			change = KVM_MR_CREATE;
>  		else { /* Modify an existing slot. */
> -			if ((mem->userspace_addr != old.userspace_addr) ||
> +			if ((new.userspace_addr != old.userspace_addr) ||
>  			    (npages != old.npages) ||
>  			    ((new.flags ^ old.flags) & KVM_MEM_READONLY))
>  				goto out;
> @@ -1017,22 +1018,14 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  		}
>  	}
>  
> -	/* Free page dirty bitmap if unneeded */
> +	r = -ENOMEM;
> +
> +	/* Allocate/free page dirty bitmap as needed */
>  	if (!(new.flags & KVM_MEM_LOG_DIRTY_PAGES))
>  		new.dirty_bitmap = NULL;
> -
> -	r = -ENOMEM;
> -	if (change == KVM_MR_CREATE) {
> -		new.userspace_addr = mem->userspace_addr;
> -
> -		if (kvm_arch_create_memslot(kvm, &new, npages))
> -			goto out;
> -	}
> -
> -	/* Allocate page dirty bitmap if needed */
> -	if ((new.flags & KVM_MEM_LOG_DIRTY_PAGES) && !new.dirty_bitmap) {
> +	else if (!new.dirty_bitmap) {
>  		if (kvm_create_dirty_bitmap(&new) < 0)
> -			goto out_free;
> +			goto out;
>  	}
>  
>  	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
