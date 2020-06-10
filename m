Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8FE1F5E0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 00:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCRZmryYATVVh021wLujeSfuUdXvzRwDyWKJQCwld3o=; b=TasrhEn6wBJIzP
	ZFRpQmK+jOfd1cbWalgy3bINk8+fCQXVtFUmW61TPP597ibyYMvgtHGSBuufmjhP1h8YAJjbAxXV2
	kcSXRyeIT3Yx/lYfjE+fIg6DXN8vsnvpJKDO7UM5NAPcGFGJ7qGSxnfuA2sMFeLAyXhOG/WEwiaUO
	QE0nlWqtduMdbY60RlJH77TUg60Ge9Y2EbiNaBacjQEIwaScEzGMl5pezcY/9ou5/GNYKl0x3U0qB
	xGyogtVjuT8L9MY2lm6GAnQW1DfclWBgBj3Nm00XWSz9hfeLA3fd1LIck5zrcryIES/XTPWNgeGxt
	EH+Yqk82J8fRwUMtXnSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj8mV-00025g-Ln; Wed, 10 Jun 2020 22:01:11 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj8mM-00025A-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 22:01:03 +0000
Received: by mail-ua1-x942.google.com with SMTP id g44so1410764uae.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 15:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nR4rRNMXeXdrkwRNt5QUkb3PmbbCiqg+ykW9gq1PQDY=;
 b=ssJPmRj0DZMvwcNEm4rDMS1iQrTWKQ/CbrV5wUy4HLikCgt2cbVC/HDDuHwX2SXS34
 /J8wRq6CwydELAPYvYcbwrDRsMkJH2cXrp9p8LbG2wwj5rLX6heicwHC01b/RDYnbI2z
 WKvDdthm3zSW/suBOb+OllMNyyy9hLg5GcCuRmXJk2MArnFxKrNjxDQXng6qwvE2OXW3
 M63vgoCWkMbWKpR90U8Uq4o21HJsc/3BYhChAHeC7UpWQYUMofIIBtqHHBbXocUFsmb9
 aq3zx5lovFe4LSrej8YaDa1SAAckaY56q16hkEW5W4g3RTHhk1/l+KXZQ5nSmR2y9Sm4
 Lnig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nR4rRNMXeXdrkwRNt5QUkb3PmbbCiqg+ykW9gq1PQDY=;
 b=eQLEt8ds4+50v2YHJT6fA50QcsyKi9UIhir9EesEKXNR5IwpYMLsSPCmrkbRie/IzT
 Js5aUhr+XjHdZUm6aqmnyMFOcu52ZR0gvgz54n23vSsXdAwUqSDcu5tGtDpSknNTlUHN
 wfT+f864hXh6L1rreE2drM8//Xj83VEYHN34WVcDmN2Cha78VdnglqXWxrDJl/MkiXPK
 CrZPWWqQfkR0jAGGkyfJndngAmQ18/IiZDkxOKu67PM5IkDtlwS0DP6CjdKrpDiiGVMF
 oHeNYMCOM5Oyicnyag91DgBXlOrRI2cWs7voWlON+0DXHXuV7jgZGm+HGIrYpJN058pw
 v+zQ==
X-Gm-Message-State: AOAM530OSIR6l4HtUmBSAq4i+biP7CgpBpzOeWdiQhitf0n1LKjlUHya
 lH8FSyh/fOzUfCM2pYEcsBStdPAz7PEJp5e1iGxMNA==
X-Google-Smtp-Source: ABdhPJz7I64SKS5NtEWHj0e9pQtJJ4M+FXlIhms8qP48sFrPid4B2AZwfLYjGcLpBA0gvUju57nQ5kEx5xqguip91SM=
X-Received: by 2002:ab0:70c9:: with SMTP id r9mr4204376ual.15.1591826460956;
 Wed, 10 Jun 2020 15:01:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-17-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-17-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 15:00:47 -0700
Message-ID: <CANgfPd-x=Af6Wdn9Wz=9r5CiHDCbxEgQhS2swALUMQd00oQ3jg@mail.gmail.com>
Subject: Re: [PATCH 16/21] KVM: arm64: Drop @max param from
 mmu_topup_memory_cache()
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_150102_492997_B8158641 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
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
> Replace the @max param in mmu_topup_memory_cache() and instead use
> ARRAY_SIZE() to terminate the loop to fill the cache.  This removes a
> BUG_ON() and sets the stage for moving arm64 to the common memory cache
> implementation.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/arm64/kvm/mmu.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
> index a1f6bc70c4e4..9398b66f8a87 100644
> --- a/arch/arm64/kvm/mmu.c
> +++ b/arch/arm64/kvm/mmu.c
> @@ -124,15 +124,13 @@ static void stage2_dissolve_pud(struct kvm *kvm, phys_addr_t addr, pud_t *pudp)
>         put_page(virt_to_page(pudp));
>  }
>
> -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache,
> -                                 int min, int max)
> +static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
>  {
>         void *page;
>
> -       BUG_ON(max > KVM_NR_MEM_OBJS);
KVM_NR_MEM_OBJS should be undefined as of patch 14 in this series. I'd
recommend changing this to use the new constant you defined in that
patch.
>         if (cache->nobjs >= min)
>                 return 0;
> -       while (cache->nobjs < max) {
> +       while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
>                 page = (void *)__get_free_page(GFP_PGTABLE_USER);
>                 if (!page)
>                         return -ENOMEM;
> @@ -1356,8 +1354,7 @@ int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
>                         pte = kvm_s2pte_mkwrite(pte);
>
>                 ret = mmu_topup_memory_cache(&cache,
> -                                            kvm_mmu_cache_min_pages(kvm),
> -                                            KVM_NR_MEM_OBJS);
See above, KVM_NR_MEM_OBJS is undefined as of patch 14.
> +                                            kvm_mmu_cache_min_pages(kvm));
>                 if (ret)
>                         goto out;
>                 spin_lock(&kvm->mmu_lock);
> @@ -1737,8 +1734,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>         up_read(&current->mm->mmap_sem);
>
>         /* We need minimum second+third level pages */
> -       ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm),
> -                                    KVM_NR_MEM_OBJS);
See above, KVM_NR_MEM_OBJS is undefined as of patch 14.
> +       ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm));
>         if (ret)
>                 return ret;
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
