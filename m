Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77C8E05AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thHHC75osI8MDeak3HmwlBS0NyXpDy8gaTqaiwv1d5s=; b=f53D/tW+0d6WD/
	9w7K+RvhbqggebeKNadL/e3t4A2VjefR4yjx8Ctei0FYiSLCxvrkodE4uYOtc8qzFcy9KqHCdtPAF
	w61v+T+3NaCc1fEhAEeONv+iEg9B78Q9EetsEZ1gqpOcWo4Uo4yvX3K3kM096HpN7vB6oeV/zvHw5
	v8HdI3mEO4MCPy3r7i9hIsw291lWVijyXLBQy/CHno5/zyWT7OeJwchPnHXjffG3k7XTcvNd9mdlY
	Jh5xOoAnpDcheySukpkjYxi98w2fHlu22L+eV0QHrBFvkxArZzUauH5DtozvasfruSfFo9y3+PsTI
	mvobSD/Y5yO4pbFx5q8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuhG-00047Y-Lg; Tue, 22 Oct 2019 13:59:38 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuh7-00046g-BN
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:59:30 +0000
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 33F308553D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 13:59:27 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id l4so6549739wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 06:59:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dlx0qR6qGoizUuI3jCS47jEOZVwYOv8dJ62/TjyH9Xs=;
 b=HBQUOfYGPV8yMhExGKVK17BbbeDya9ZTGhrijGPekq+LlvqXjzF4NCR4nga3N32mXe
 YIXv4JcvwnWCG7i0NOyl12tJhDMlfkHJN19qipmZ/gkHW5lgM5xXagU9xcb0Guakpnll
 /OyiqVOolqGkIzggFMLPKd11TLMn/6RlucsyhGy0hPSNtEYjNkqD3NJBsQehSkfofNIi
 N8ccgOHeEisDGy/l4kwxotNVzGTMyuF2fE5zIqSSTxE/7tBsSVxbUGXNJc62PdutDE16
 fVpbhFwsEJeZyQbabjn6Mg4YWOxgqDXR0IEAxukbsSIVFQXqodnIxKVgOUlGsfcyEzCq
 ntOg==
X-Gm-Message-State: APjAAAU4YuEfgAw3vQPryFYb0LL+EXH+DvQH/H6zixDBuMBtt7jMVRA/
 khsWeNsnUswvieyXPVpxdnJdl13jND1Hluyh9FOtemzru1axY6GoagXsQIE+iqW2DANZccZ1acO
 0doTaFKJNspNFXTpXBmZgntDp6mtjfqf+eR0=
X-Received: by 2002:adf:9ec7:: with SMTP id b7mr3690726wrf.221.1571752765668; 
 Tue, 22 Oct 2019 06:59:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzdoYw58nkYxoG/VDS1/LYhdqcebVxQ/IRP7wL/K4uxfwmYmVxn6Yd5KXoTPuPOxmY6ROAMw==
X-Received: by 2002:adf:9ec7:: with SMTP id b7mr3690694wrf.221.1571752765319; 
 Tue, 22 Oct 2019 06:59:25 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c0e4:dcf4:b543:ce19?
 ([2001:b07:6468:f312:c0e4:dcf4:b543:ce19])
 by smtp.gmail.com with ESMTPSA id l14sm2833445wrr.37.2019.10.22.06.59.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 06:59:24 -0700 (PDT)
Subject: Re: [PATCH v2 00/15] KVM: Dynamically size memslot arrays
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>, Marc Zyngier <maz@kernel.org>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <15624ac3-6a43-29c8-8d07-23779454f9e6@redhat.com>
Date: Tue, 22 Oct 2019 15:59:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191022003537.13013-1-sean.j.christopherson@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_065929_429098_F20BD41D 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Marc Zyngier <Marc.Zyngier@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/10/19 02:35, Sean Christopherson wrote:
> The end goal of this series is to dynamically size the memslot array so
> that KVM allocates memory based on the number of memslots in use, as
> opposed to unconditionally allocating memory for the maximum number of
> memslots.  On x86, each memslot consumes 88 bytes, and so with 2 address
> spaces of 512 memslots, each VM consumes ~90k bytes for the memslots.
> E.g. given a VM that uses a total of 30 memslots, dynamic sizing reduces
> the memory footprint from 90k to ~2.6k bytes.
> 
> The changes required to support dynamic sizing are relatively small,
> e.g. are essentially contained in patches 12/13 and 13/13.  Patches 1-11
> clean up the memslot code, which has gotten quite crusy, especially
> __kvm_set_memory_region().  The clean up is likely not strictly necessary
> to switch to dynamic sizing, but I didn't have a remotely reasonable
> level of confidence in the correctness of the dynamic sizing without first
> doing the clean up.
> 
> Testing, especially non-x86 platforms, would be greatly appreciated.  The
> non-x86 changes are for all intents and purposes untested, e.g. I compile
> tested pieces of the code by copying them into x86, but that's it.  In
> theory, the vast majority of the functional changes are arch agnostic, in
> theory...
> 
> v2:
>   - Split "Drop kvm_arch_create_memslot()" into three patches to move
>     minor functional changes to standalone patches [Janosch].
>   - Rebase to latest kvm/queue (f0574a1cea5b, "KVM: x86: fix ...")
>   - Collect an Acked-by and a Reviewed-by
> 
> Sean Christopherson (15):
>   KVM: Reinstall old memslots if arch preparation fails
>   KVM: Don't free new memslot if allocation of said memslot fails
>   KVM: PPC: Move memslot memory allocation into prepare_memory_region()
>   KVM: x86: Allocate memslot resources during prepare_memory_region()
>   KVM: Drop kvm_arch_create_memslot()
>   KVM: Explicitly free allocated-but-unused dirty bitmap
>   KVM: Refactor error handling for setting memory region
>   KVM: Move setting of memslot into helper routine
>   KVM: Move memslot deletion to helper function
>   KVM: Simplify kvm_free_memslot() and all its descendents
>   KVM: Clean up local variable usage in __kvm_set_memory_region()
>   KVM: Provide common implementation for generic dirty log functions
>   KVM: Ensure validity of memslot with respect to kvm_get_dirty_log()
>   KVM: Terminate memslot walks via used_slots
>   KVM: Dynamically size memslot array based on number of used slots
> 
>  arch/mips/include/asm/kvm_host.h      |   2 +-
>  arch/mips/kvm/mips.c                  |  68 +---
>  arch/powerpc/include/asm/kvm_ppc.h    |  14 +-
>  arch/powerpc/kvm/book3s.c             |  22 +-
>  arch/powerpc/kvm/book3s_hv.c          |  36 +-
>  arch/powerpc/kvm/book3s_pr.c          |  20 +-
>  arch/powerpc/kvm/booke.c              |  17 +-
>  arch/powerpc/kvm/powerpc.c            |  13 +-
>  arch/s390/include/asm/kvm_host.h      |   2 +-
>  arch/s390/kvm/kvm-s390.c              |  21 +-
>  arch/x86/include/asm/kvm_page_track.h |   3 +-
>  arch/x86/kvm/page_track.c             |  15 +-
>  arch/x86/kvm/x86.c                    | 100 ++---
>  include/linux/kvm_host.h              |  48 +--
>  virt/kvm/arm/arm.c                    |  47 +--
>  virt/kvm/arm/mmu.c                    |  18 +-
>  virt/kvm/kvm_main.c                   | 546 ++++++++++++++++----------
>  17 files changed, 467 insertions(+), 525 deletions(-)
> 

Christian, Marc, Paul, can you help testing patches 1-13?

Thanks,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
