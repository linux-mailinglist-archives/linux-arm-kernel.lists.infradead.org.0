Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AB81F14CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByQ8oIJkmOQVya8nd6tEKMRcn1zGkbqSTLrQNgghQ7A=; b=reZyT7X6JmDONx
	O6WQV9OykYESM6uRoa4ZNdpiwYwbgGn//8lgms5U22dYIXSp24ULMPtarBmVcl+Sya3DQdNdQsDjm
	CHXLXNN3PeEEx/CEk7Ycbk5dQqXkmpffoJRWrCJ8/Ci0GT0iBsCFvaLIhKkELml5iTRuadpYSVpcB
	RwrXmudNP03IDGT19YI5/dann4TfKBgxFBjn2Joq25tutawaRTkkX7EQ6yV/1wtwXvhOB+DxR/c32
	HBBxIkhd9UELhJSgUNgCxX7qJB9l+AelGGwYutAuglMywdijiDSVzNAPLEhMvG+iGJ3nycJY6llZO
	sEi0+Ep/tQLnJ5EUOB5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDaQ-0005Kw-Cc; Mon, 08 Jun 2020 08:56:54 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDaI-0005KP-0t
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:56:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so11519554iol.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 01:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DxNt0eIwm9p9g/mQmVwYWK8COQJtmgwTgesczuWioPg=;
 b=UhoDqW1r+NKy9FmTgwkOvep3I+dcHP4n4QbazpDBw5ENhBd5iDewyg+kEYSpd//7qj
 GVeay4/TsadhtoRTPVrfnbOmd+BjIKzn5RPbIogb/LQ2BGY6OUJDouApGyodISusf/fw
 HWbbT9X5pFBE/YIu/EvTPI86t9yV/EBzxNwgyAzf6bzcWD4LMmP9HrFC6zeW8ETQSxj2
 sIbmHWf1MRilR55K95KR5ISOQoAS2PpIOLjHX+u0zcesqRUgPheyMLAOzC/FcO3E5hul
 zBSXRWDsnkp9IcSK37yk4s0sZAYsSWhF0/rXYQDtxSNdVsZ2RzaYi1pJPNWQzrItm4rV
 Xh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DxNt0eIwm9p9g/mQmVwYWK8COQJtmgwTgesczuWioPg=;
 b=nbiULTUxjfOLmY5mGa3Clf6rVIu6H9792HXqDV+Vi20/wChh3DkJ9NJIjiZHfZW8hG
 eEHpYi3AujN/4zQpHQM7ED4u54zHz4V1Rby2Rw059JjWQhZ1aflq50U2zDkrvo2BZmmO
 I7APXumJABl9neLNj9lDsHn1P2KqNZRDPx0hQwKvXH+r84xJGQ2mVY128H7P27bROMQR
 ljaq5WFoXhCTuEXgnDj0ymjns0GLzjRQ8MSdmv3HGH+9leyrKxbx4PEzwqp7Q8UmqYrF
 6Zl97R8kFJBY35CvaaL79KtTEWk02kf+FbrJo/Rtts5Fy3JsCSNuq0EUn7/gCmQzkiU5
 dYcg==
X-Gm-Message-State: AOAM531P77W6KGPRukCF8L8lnJnwkbFYIbwPZ6R9GhqSh2W2qrAlDZoS
 YqDnQqD20w3AY5Ym3aK02AO+/eDH/1sVeP09pd0=
X-Google-Smtp-Source: ABdhPJy33K/MZi/8fowNpbavwNCsNJmtMmm7LuXYb74EHZQGkej9w1i7LTwl8SZ8cZENnVTKt5AurBBwAssQbfegELw=
X-Received: by 2002:a05:6602:13c6:: with SMTP id
 o6mr20248830iov.84.1591606604459; 
 Mon, 08 Jun 2020 01:56:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-20-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-20-sean.j.christopherson@intel.com>
From: Huacai Chen <chenhuacai@gmail.com>
Date: Mon, 8 Jun 2020 16:56:32 +0800
Message-ID: <CAAhV-H6v+tO6PCqjfDcecxk-mUk8YEmSDUMjOXMj1hL5=XSpSw@mail.gmail.com>
Subject: Re: [PATCH 19/21] KVM: MIPS: Drop @max param from
 mmu_topup_memory_cache()
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_015646_093993_2A7FBF67 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chenhuacai[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Wanpeng Li <wanpengli@tencent.com>, kvm <kvm@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Huacai Chen <chenhc@lemote.com>

On Sat, Jun 6, 2020 at 5:44 AM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> Replace the @max param in mmu_topup_memory_cache() and instead use
> ARRAY_SIZE() to terminate the loop to fill the cache.  This removes a
> BUG_ON() and sets the stage for moving MIPS to the common memory cache
> implementation.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/mips/kvm/mmu.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/mips/kvm/mmu.c b/arch/mips/kvm/mmu.c
> index 7dad7a293eae..94562c54b930 100644
> --- a/arch/mips/kvm/mmu.c
> +++ b/arch/mips/kvm/mmu.c
> @@ -25,15 +25,13 @@
>  #define KVM_MMU_CACHE_MIN_PAGES 2
>  #endif
>
> -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache,
> -                                 int min, int max)
> +static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
>  {
>         void *page;
>
> -       BUG_ON(max > KVM_NR_MEM_OBJS);
>         if (cache->nobjs >= min)
>                 return 0;
> -       while (cache->nobjs < max) {
> +       while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
>                 page = (void *)__get_free_page(GFP_KERNEL);
>                 if (!page)
>                         return -ENOMEM;
> @@ -711,8 +709,7 @@ static int kvm_mips_map_page(struct kvm_vcpu *vcpu, unsigned long gpa,
>                 goto out;
>
>         /* We need a minimum of cached pages ready for page table creation */
> -       err = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES,
> -                                    KVM_NR_MEM_OBJS);
> +       err = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
>         if (err)
>                 goto out;
>
> @@ -796,8 +793,7 @@ static pte_t *kvm_trap_emul_pte_for_gva(struct kvm_vcpu *vcpu,
>         int ret;
>
>         /* We need a minimum of cached pages ready for page table creation */
> -       ret = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES,
> -                                    KVM_NR_MEM_OBJS);
> +       ret = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
>         if (ret)
>                 return NULL;
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
