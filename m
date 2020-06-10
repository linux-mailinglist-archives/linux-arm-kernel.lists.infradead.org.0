Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D721F5E45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 00:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vglvHunub8HpoZElFwBoJDUzvo7lFIOuIhACoX+ivk=; b=fvQ03VgEuACJdQ
	WfkYs4VtarGD8kNdCL7VGtVevfzs9W4bI2xajrPHVarvnMbYfLf76lMBVkeOdZ5v/yedccZHd2p/N
	H5AA8aVISiegxZ1WBKikb+XLt1e8XFDD8xKmUVvEDRLvfi473Nb8RFRunywh+r+J1CcIksQWsSpkE
	MGY7ynJrVUtEObVN4GtPEgZn+XWj1rOzBr/itOa3WA7Oj/n2wpNcQXn/WMzZSa6pmYjQPsW3cOZQl
	CJDcMgTIQepqLqCXTBJMw6FisjmfGjHF/uDdBzI5dZg6TqdYsknuOz2rO8ZPRAibOt9Z2LBgKKyUA
	u3ZYJ4VBlTW1Pz2exy9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj95P-0006cU-Hd; Wed, 10 Jun 2020 22:20:43 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj95G-0006bx-UJ
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 22:20:36 +0000
Received: by mail-vs1-xe42.google.com with SMTP id u17so2268465vsu.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 15:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gbYrwjkRNzZs52wtNe5b9ymrBledc5fgJdW/7CYMczg=;
 b=QyyXrmeKJSKKc54VOXRhBA48lstvw0q3ctLwmRUmYvuniF6MaKqprw76G6WKeXgKXB
 r/jbdUg8yJ7iw34oE1OWz0dWyMIlim7iHYcQtD67/ivBRy+I7B838Bxvx4JWOVUAxYN3
 POzPLtPUSvRylefwwyiJnNCwZ28r+eFHCfQTlfjzukPMl52cDhRE0H8vA3A5R5qZ//vK
 hyVJruxV9jjEt3XKZbDLdCyH9tLqObhgWfqQJpRCLqqkFBHz8EB0eQ7avKhqHHK0zYzj
 RESHvTrXTKtZufFfvsuK5nk/vVANKcnKj1isrCHWI7ENKEYpAZgFY60ZfqvyNfgEDVAL
 29Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gbYrwjkRNzZs52wtNe5b9ymrBledc5fgJdW/7CYMczg=;
 b=Sy2VeozSFGeU23eyHhFdses7iMM/URf3UlJJxUCBGRA5bUR6bwo4mLaKyLbmHO5L8l
 uOlGfwkWFXx94z5GdGcj3ZbCw3G8AdpbakxqGpmB+xpXWRwCmkFvB/sUnnlff++pjbnZ
 L/79qCd1DOKfYmCoXymctadAzo4iJOCJA+mUPQ00me3FL8w9kDai6vAoweUv2q1cJbXf
 Xr2wqunlkAZoOvpgMekVQh/dBwWtiFxiOyMyYLWnhRclHY1kr0aiqxAzEEJjS/QaV2dK
 /xUqe5G0QxGB1eu65wd4SHGFG9LkAzoM5ajdUfzKhctMTiu+zkVce7oUyqMjmI89ju4q
 EHBg==
X-Gm-Message-State: AOAM532W6/iuDtAkHNUgYKadIRi0VAfTZV209OpOuUGT0JZshV8vcnXg
 sAlUpKDGP1fqV8x4oC5zMZ6fAjTFRBOChz9t5ebFNw==
X-Google-Smtp-Source: ABdhPJzOjvq/kbEr1iPy17gDm6Y5SxC/Oi9n4y5NbS27Re14ZbRVe9raYSH+GiU0z+vIPd8N4LFp9am07TBNHW7Kx80=
X-Received: by 2002:a67:d287:: with SMTP id z7mr4666597vsi.2.1591827633895;
 Wed, 10 Jun 2020 15:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-9-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-9-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 15:20:19 -0700
Message-ID: <CANgfPd-19pam9sujfsk1pdrp8YhVft1+JAmSS=xgUULqXRyUDg@mail.gmail.com>
Subject: Re: [PATCH 08/21] KVM: x86/mmu: Clean up the gorilla math in
 mmu_topup_memory_caches()
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_152034_994383_3D2C727B 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
> Clean up the minimums in mmu_topup_memory_caches() to document the
> driving mechanisms behind the minimums.  Now that encountering an empty
> cache is unlikely to trigger BUG_ON(), it is less dangerous to be more
> precise when defining the minimums.
>
> For rmaps, the logic is 1 parent PTE per level, plus a single rmap, and
> prefetched rmaps.  The extra objects in the current '8 + PREFETCH'
> minimum came about due to an abundance of paranoia in commit
> c41ef344de212 ("KVM: MMU: increase per-vcpu rmap cache alloc size"),
> i.e. it could have increased the minimum to 2 rmaps.  Furthermore, the
> unexpected extra rmap case was killed off entirely by commits
> f759e2b4c728c ("KVM: MMU: avoid pte_list_desc running out in
> kvm_mmu_pte_write") and f5a1e9f89504f ("KVM: MMU: remove call to
> kvm_mmu_pte_write from walk_addr").
>
> For the so called page cache, replace '8' with 2*PT64_ROOT_MAX_LEVEL.
> The 2x multiplier is needed because the cache is used for both shadow
> pages and gfn arrays for indirect MMUs.
>
> And finally, for page headers, replace '4' with PT64_ROOT_MAX_LEVEL.
>
> Note, KVM now supports 5-level paging, i.e. the old minimums that used a
> baseline derived from 4-level paging were technically wrong.  But, KVM
> always allocates roots in a separate flow, e.g. it's impossible in the
> current implementation to actually need 5 new shadow pages in a single
> flow.  Use PT64_ROOT_MAX_LEVEL unmodified instead of subtracting 1, as
> the direct usage is likely more intuitive to uninformed readers, and the
> inflated minimum is unlikely to affect functionality in practice.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 4b4c3234d623..451e0365e5dd 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1103,14 +1103,17 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
>  {
>         int r;
>
> +       /* 1 rmap, 1 parent PTE per level, and the prefetched rmaps. */
>         r = mmu_topup_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache,
> -                                  8 + PTE_PREFETCH_NUM);
> +                                  1 + PT64_ROOT_MAX_LEVEL + PTE_PREFETCH_NUM);
>         if (r)
>                 return r;
> -       r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_cache, 8);
> +       r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_cache,
> +                                  2 * PT64_ROOT_MAX_LEVEL);
>         if (r)
>                 return r;
> -       return mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache, 4);
> +       return mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
> +                                     PT64_ROOT_MAX_LEVEL);
>  }
>
>  static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
