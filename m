Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E4E154C95
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Chq/9NHTlswfO1mDEIEDMQQtKUtBm7EeH/ggPwtZA9o=; b=bo4XfN6ZMc2Ry4
	ckqwC9YV6Qnj3IDg4aaX8yCyvh5EVrErtj7k+MbPqufyMUwsfjHbxHV5M22KI7H2KDEen/jlBcHmT
	GAQ2p78qkbIdpM+e2RWh1/4lFoR1ZbSH4YfA2Z5j4OcNQQaSPq/fqgr7RP51G2xGQx7Bj89/yiJKM
	46kOfTif4EHhed7e4T8+hqkw2cVmC5aGDaJcbITcXRLKhqkX3q8QfUE34RkDqzqPBF3ol7kwNE8z5
	NoFs/FVv7xClEZemAIzxwAnljzZhi3MYChFUJQO2yCGI6yfImJQPJcdeanDHtpxugsYD4YQII/lsr
	K41ajvPJv3xOXqNUsWXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iznM3-0007rh-E1; Thu, 06 Feb 2020 20:02:27 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iznLu-0007rA-1W
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581019336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9XkBxwvCFKcvnGkMekt7sgnZTCs1povbWkxbmREBl2Q=;
 b=dh6sxOMkiVfvuWzEvtpK5Ib+eN/ZVrYepEAGU0GHitpcGh62YDb2UEez6TzU8v1OWsdi1i
 gfDTVffhLksRKG1UHjnLoX8Jx5PabXIsWt6s/XF1efKJC3csL4uDewr6/8CElvr45Mmga4
 wDz6B6+hC+rt4ZjmGD8QYRY9quwhRVc=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-V7hHmULSMFyWCa_r5UkijQ-1; Thu, 06 Feb 2020 15:02:05 -0500
Received: by mail-qk1-f200.google.com with SMTP id i11so4354862qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:02:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/yqizwNchM67CZ4udbXR6GdfQrlh05oiSzFTK/80D3I=;
 b=kf23SIM5ufzgYqhfm9I/vJT0ld8aEzNLERwidh6GmbUImK/CnkerlI6nL/ESx1C3g5
 OI6nI44M3xkdwHu0IbJG+vk3KANWTNtHoZRmsGRBe6Fo6cC2njXn8xR5ym2O7U+2t1pJ
 5FZNKchPXLu6tFIa6uom+RuEJZFSspLMnGSDiCiYGNPdj6+DpHRuivNtE1msgGWovTSS
 K06Ap37AtsXhbc2iMI91Einj7JBz3WoRkSRjuprnBv8YXqBea+UUsUNN6FDjRmcciBEx
 hFlSsyZfis2c8Uq6WFNSbfk6gLYzVXdm/Cb+/OYK4wNBF67272wGPjzBtZEx4uPRouPe
 MFXw==
X-Gm-Message-State: APjAAAVsJs0+2D5+K5q/prNLPAbPQx8/lwNx91050eJkFDxdv//8U9li
 E5Agyh/WlXgSvu4SOvAm1IQNq0lOLZRr3LFdU+J/Ov/UdGsTjiWB9p1nTc/PP1wiYTkCnUR8RE4
 38wThd5/M8G9BUkR2cmQa2MFhjbir+Y3HMu8=
X-Received: by 2002:ac8:19b6:: with SMTP id u51mr4287198qtj.319.1581019324640; 
 Thu, 06 Feb 2020 12:02:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzOujc3lNLMWX/FRlR8tea+183dvvLwpGv6w6oIURj933aU7qyXuyTi9CIJeDyrMsTLUQvKYA==
X-Received: by 2002:ac8:19b6:: with SMTP id u51mr4287163qtj.319.1581019324320; 
 Thu, 06 Feb 2020 12:02:04 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id k50sm163595qtc.90.2020.02.06.12.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:02:03 -0800 (PST)
Date: Thu, 6 Feb 2020 15:02:00 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200206200200.GC700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-16-sean.j.christopherson@intel.com>
X-MC-Unique: V7hHmULSMFyWCa_r5UkijQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_120218_159140_C60104B7 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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

On Tue, Jan 21, 2020 at 02:31:53PM -0800, Sean Christopherson wrote:

[...]

> -int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
> +void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm,
> +				  struct kvm_memory_slot *memslot)

If it's to flush TLB for a memslot, shall we remove the "dirty_log" in
the name of the function, because it has nothing to do with dirty
logging any more?  And...

>  {
> -	struct kvm_memslots *slots;
> -	struct kvm_memory_slot *memslot;
> -	bool flush = false;
> -	int r;
> -
> -	mutex_lock(&kvm->slots_lock);
> -
> -	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
> -
> -	if (flush) {
> -		slots = kvm_memslots(kvm);
> -		memslot = id_to_memslot(slots, log->slot);
> -
> -		/* Let implementation handle TLB/GVA invalidation */
> -		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
> -	}
> -
> -	mutex_unlock(&kvm->slots_lock);
> -	return r;
> +	/* Let implementation handle TLB/GVA invalidation */
> +	kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);

... This may not directly related to the current patch, but I'm
confused on why MIPS cannot use kvm_flush_remote_tlbs() to flush TLBs.
I know nothing about MIPS code, but IIUC here flush_shadow_memslot()
is a heavier operation that will also invalidate the shadow pages.
Seems to be an overkill here when we only changed write permission of
the PTEs?  I tried to check the first occurance (2a31b9db15353) but I
didn't find out any clue of it so far.

But that matters to this patch because if MIPS can use
kvm_flush_remote_tlbs(), then we probably don't need this
arch-specific hook any more and we can directly call
kvm_flush_remote_tlbs() after sync dirty log when flush==true.

>  }
>  
>  long kvm_arch_vm_ioctl(struct file *filp, unsigned int ioctl, unsigned long arg)
> diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
> index 97ce6c4f7b48..0adaf4791a6d 100644
> --- a/arch/powerpc/kvm/book3s.c
> +++ b/arch/powerpc/kvm/book3s.c
> @@ -799,6 +799,11 @@ int kvmppc_core_check_requests(struct kvm_vcpu *vcpu)
>  	return vcpu->kvm->arch.kvm_ops->check_requests(vcpu);
>  }
>  
> +void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)

Since at it, maybe we can start to use __weak attribute for new hooks
especially when it's empty for most archs?

E.g., define:

void __weak kvm_arch_sync_dirty_log(...) {}

In the common code, then only define it again in arch that has
non-empty implementation of this method?

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
