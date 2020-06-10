Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7373B1F5BBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 21:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymQ0fq2FogNTY/OHmnfCdUtsTKBq8qikdZqY4eNyn+I=; b=lV4Ck4K+qvPXSf
	AoPIvzzEG9Tn6KTd9LB9s5B7+uTIX7sxQHdUNzEDNBY20bJe/xsAbGk+sppgpL5Y32giN0xop1RVu
	NavO4dOEIEGpptwrLfvwR2ixcpnMMOr55w3yRUcU2HeTpB9Pzjo0I+jUAhx2bz/3b1UkAODwR2A91
	bEIJsljwmgezRhQaTP6d9qCsbZFvHCaqVKJ8oaqlfjAoou/9/8FivP8soc5gmJjYWP83WPS53Gsxz
	HsC6che5T02hgxoGNdlK9qu59Gy2v71Nlu6PI98TgiyAq/2bfI6PScRC9HK1lQdwirh94/BIBChT0
	kHpUxUcDV8p0MpQpaiuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5zN-0003Kf-Rb; Wed, 10 Jun 2020 19:02:17 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5zC-0003Jt-Mp
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 19:02:08 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u17so1919798vsu.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 12:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XkZ55trzaUYm4ZN8iiWbYVBM5yaqKCA9LC0xYy1/Ppg=;
 b=j77jjoo7BrC8ciPGZh5G4XNFx0e/IBM+vJQKsFXGHoq2TXyMMOLL5IFSAOeVWYXIHX
 UUepAz4IhQ0AlzlRyIrLJDLHLN+OtKh3UbUcbB2FA8h2jPk0dBpfyHtdvHuw98gIMd/S
 XJqRGYa0RiMBLTj/KghRH1rEWrRVKCG5FkNT65MrWebia3qbZLyzgCVQzSovmX+pk/QO
 YLuGZoIPx1vpd9s1OPQZGxAui+c216eaaqJjwovF8i+u2NRGk6b5wFirQho+mZYNHiCo
 M4pT5y57eyroD64Cjkknjiy2l/c1llHRr6NKOVDCNXHHADTAr3hlsVP2nooHvKJ0+0Qv
 boAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XkZ55trzaUYm4ZN8iiWbYVBM5yaqKCA9LC0xYy1/Ppg=;
 b=HaZU8XJXNBpqZAtvhpubAEpXoJzfUW6aYc8NsyQGnBZDPG43dyELKqxWhNLTagjfHc
 8pUgYtF+uwnEX96jMoWi44dULFLjnq5g7RH6XV3lhXMfVVAr9wUodIiKmdgNmqBdTJAe
 hkE7pKm+36bXFyUjT6N0XB2autItRP+0cE2l6NSUu/3amTQ8F1SGIYKXmTu3alqGoag0
 mJhSvUFxqu9GiPwEapG4bX5E/HIDur3NC2PzaFSbdpK95e14RY4M3XrYZBr147TP1rKS
 cB7zAibGtP+64f4mr9Kccq7iRnm37/HJ/2K+tbmO3ir//iwWwb10IUPZ7ITvEMLBq0fI
 gCXg==
X-Gm-Message-State: AOAM530yjq9oaJXLATJheqD23pPNatEcqtqImJl5LUMNND29Bdp7d6bk
 n9mR+rWlMQwVP9v7e7zaLLG77IWWmA6eYZGspAB2+A==
X-Google-Smtp-Source: ABdhPJw1h1etsAjqik8ZjlfcXh6LoIcFUCUxEYjPHBc2XH6MGt7HC0fZP7/Ar9KFOlcDw0D5NiX7gZFNtlTQQHnm/A4=
X-Received: by 2002:a67:af10:: with SMTP id v16mr4200556vsl.235.1591815725256; 
 Wed, 10 Jun 2020 12:02:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-15-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-15-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 12:01:54 -0700
Message-ID: <CANgfPd_v31zC5-mKsT14hd7W=X2Pvg3RBPjn2d4tFSChdbsr3A@mail.gmail.com>
Subject: Re: [PATCH 14/21] KVM: Move x86's version of struct
 kvm_mmu_memory_cache to common code
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_120206_762579_86C99331 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 2:39 PM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> Move x86's 'struct kvm_mmu_memory_cache' to common code in anticipation
> of moving the entire x86 implementation code to common KVM and reusing
> it for arm64 and MIPS.  Add a new architecture specific asm/kvm_types.h
> to control the existence and parameters of the struct.  The new header
> is needed to avoid a chicken-and-egg problem with asm/kvm_host.h as all
> architectures define instances of the struct in their vCPU structs.
>
> Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/arm64/include/asm/kvm_types.h   |  6 ++++++
>  arch/mips/include/asm/kvm_types.h    |  5 +++++
>  arch/powerpc/include/asm/kvm_types.h |  5 +++++
>  arch/s390/include/asm/kvm_types.h    |  5 +++++
>  arch/x86/include/asm/kvm_host.h      | 13 -------------
>  arch/x86/include/asm/kvm_types.h     |  7 +++++++
>  include/linux/kvm_types.h            | 19 +++++++++++++++++++
>  7 files changed, 47 insertions(+), 13 deletions(-)
>  create mode 100644 arch/arm64/include/asm/kvm_types.h
>  create mode 100644 arch/mips/include/asm/kvm_types.h
>  create mode 100644 arch/powerpc/include/asm/kvm_types.h
>  create mode 100644 arch/s390/include/asm/kvm_types.h
>  create mode 100644 arch/x86/include/asm/kvm_types.h
>
> diff --git a/arch/arm64/include/asm/kvm_types.h b/arch/arm64/include/asm/kvm_types.h
> new file mode 100644
> index 000000000000..d0987007d581
> --- /dev/null
> +++ b/arch/arm64/include/asm/kvm_types.h
> @@ -0,0 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_ARM64_KVM_TYPES_H
> +#define _ASM_ARM64_KVM_TYPES_H
> +
> +#endif /* _ASM_ARM64_KVM_TYPES_H */
> +
> diff --git a/arch/mips/include/asm/kvm_types.h b/arch/mips/include/asm/kvm_types.h
> new file mode 100644
> index 000000000000..5efeb32a5926
> --- /dev/null
> +++ b/arch/mips/include/asm/kvm_types.h
> @@ -0,0 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_MIPS_KVM_TYPES_H
> +#define _ASM_MIPS_KVM_TYPES_H
> +
> +#endif /* _ASM_MIPS_KVM_TYPES_H */
> diff --git a/arch/powerpc/include/asm/kvm_types.h b/arch/powerpc/include/asm/kvm_types.h
> new file mode 100644
> index 000000000000..f627eceaa314
> --- /dev/null
> +++ b/arch/powerpc/include/asm/kvm_types.h
> @@ -0,0 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_POWERPC_KVM_TYPES_H
> +#define _ASM_POWERPC_KVM_TYPES_H
> +
> +#endif /* _ASM_POWERPC_KVM_TYPES_H */
> diff --git a/arch/s390/include/asm/kvm_types.h b/arch/s390/include/asm/kvm_types.h
> new file mode 100644
> index 000000000000..b66a81f8a354
> --- /dev/null
> +++ b/arch/s390/include/asm/kvm_types.h
> @@ -0,0 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_S390_KVM_TYPES_H
> +#define _ASM_S390_KVM_TYPES_H
> +
> +#endif /* _ASM_S390_KVM_TYPES_H */
> diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> index fb99e6776e27..8e8fea13b6c7 100644
> --- a/arch/x86/include/asm/kvm_host.h
> +++ b/arch/x86/include/asm/kvm_host.h
> @@ -193,8 +193,6 @@ struct x86_exception;
>  enum x86_intercept;
>  enum x86_intercept_stage;
>
> -#define KVM_NR_MEM_OBJS 40
> -
>  #define KVM_NR_DB_REGS 4
>
>  #define DR6_BD         (1 << 13)
> @@ -245,17 +243,6 @@ enum x86_intercept_stage;
>
>  struct kvm_kernel_irq_routing_entry;
>
> -/*
> - * We don't want allocation failures within the mmu code, so we preallocate
> - * enough memory for a single page fault in a cache.
> - */
> -struct kvm_mmu_memory_cache {
> -       int nobjs;
> -       gfp_t gfp_zero;
> -       struct kmem_cache *kmem_cache;
> -       void *objects[KVM_NR_MEM_OBJS];
> -};
> -
>  /*
>   * the pages used as guest page table on soft mmu are tracked by
>   * kvm_memory_slot.arch.gfn_track which is 16 bits, so the role bits used
> diff --git a/arch/x86/include/asm/kvm_types.h b/arch/x86/include/asm/kvm_types.h
> new file mode 100644
> index 000000000000..08f1b57d3b62
> --- /dev/null
> +++ b/arch/x86/include/asm/kvm_types.h
> @@ -0,0 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_X86_KVM_TYPES_H
> +#define _ASM_X86_KVM_TYPES_H
> +
> +#define KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE 40
> +
> +#endif /* _ASM_X86_KVM_TYPES_H */
> diff --git a/include/linux/kvm_types.h b/include/linux/kvm_types.h
> index 68e84cf42a3f..a7580f69dda0 100644
> --- a/include/linux/kvm_types.h
> +++ b/include/linux/kvm_types.h
> @@ -20,6 +20,8 @@ enum kvm_mr_change;
>
>  #include <linux/types.h>
>
> +#include <asm/kvm_types.h>
> +
>  /*
>   * Address types:
>   *
> @@ -58,4 +60,21 @@ struct gfn_to_pfn_cache {
>         bool dirty;
>  };
>
> +#ifdef KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE
> +/*
> + * Memory caches are used to preallocate memory ahead of various MMU flows,
> + * e.g. page fault handlers.  Gracefully handling allocation failures deep in
> + * MMU flows is problematic, as is triggering reclaim, I/O, etc... while
> + * holding MMU locks.  Note, these caches act more like prefetch buffers than
> + * classical caches, i.e. objects are not returned to the cache on being freed.
> + */
> +struct kvm_mmu_memory_cache {
> +       int nobjs;
> +       gfp_t gfp_zero;
> +       struct kmem_cache *kmem_cache;
> +       void *objects[KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE];
> +};
> +#endif
> +
> +
>  #endif /* __KVM_TYPES_H__ */
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
