Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ED5B56AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqYGlpBPwaxmExCIDt0kjYLvEPX5MGWs3EwH5fr9Rt0=; b=IcMM+XWnLXLdn7
	QBDdRWUfysbVgSQMPvHvK1WOtCzTM9NtiAPPmP5DwicJJxEh+90Lb6/F2EM/TZN09gPhP2w3w407w
	1EgSVJbhNJ5myDcebXspc3NLMwQABMKV8Le2KaNnwVTNgkazLS5muMOHyxTyNRlbXwSuAu6A0+OeW
	Um6uM18fUkqhh3dlnJu4V1IAbA+pnkTA6kbClYMwaJP2HKMzf8xhhnRpL+W39BBgs4W6Y5d8xGyY/
	y4Q+k7Y9Xkf0XM1bU7nKrHeVkoldDniCKXqCKYHHRj0tFw9HrQLtJJ1kGX+SQmhzHbuG+ABKbmOZq
	n4Q/9HwZ8e03b6vc7iPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJlk-0002do-QL; Tue, 17 Sep 2019 20:08:13 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJlC-0002cu-PK
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 20:07:40 +0000
Received: by mail-io1-xd41.google.com with SMTP id k5so10700005iol.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 13:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ce6TIk2yBsCUQjQPMJ8ki5Nu2SBqoNexDUHdpPLZySE=;
 b=IXoQ3vxuaz+/4yYyVZDcNRx1kyPbDpgLdKm9H8fFva0zYnZbhoFmyYyC8gngZ58zyF
 6NxP+qTT+//nALDqAjKoS3MOCtXEssE+jNU/o5MfABd/0QfY3+RqJjY3fM9a5qI/F/4T
 I6epQYin6F+jNcw6aZJIhbXjbp5bKLq+/DjI7wrNkEHGGgqFaC3H0YN1XY/adk4zydhW
 Xf95qYQNNXA2wAxAS+n54QcFh281JuuxKEOq/L8CTTqsOx4H9/SagURbie47k2iYcAhF
 B0/AzQQkBqYdmNMEweXoFU7lM61o6RZS8L7cktMGGlkEuw/V+Kp2pD+o1/oJYGlsiLZg
 WK1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ce6TIk2yBsCUQjQPMJ8ki5Nu2SBqoNexDUHdpPLZySE=;
 b=F4bKFf7gHz7RxKAKgdtJ+1fesgkkFW1NSwcEDyyczy6w38mOIpW5Kr/Y2NVfjGT1OU
 fq0nYqAB38Tn1J2QgbQluFq75Jdc8+4fDy1owb+WIUeXL5pzXS5k6+WYYvfoPdJZ5kos
 Ro17R0G5FsmK21B7WMNdTseL6YJQHozzhtTrKX7d+ji3qsG5zC7IExCR+bJ7saz/PXiM
 reOP2dlUaKuRfq74Uk02b8mB+goI4GhAyVLxvzukZ0U0B8UzXs/r7Js3neqbz7RiCL6m
 H3AVelsNAsMAe75auxB4GxA0W9yrkqY/YNQ30BnNWJwIhd5qZSpGSJdI+O0DR3SGelPo
 KP3g==
X-Gm-Message-State: APjAAAUHtqZS2AtYtDbyLBCAvU6X1g/c8K2gUdbBno0TEVtUmNFqhNOt
 6gFjv/MZzP2/YnmfRY54r0ISKZMPeSpx9Pe4fRs=
X-Google-Smtp-Source: APXvYqx/bywcsKyBZocnzcRUqWxcRIiNYzZKZ+MK31UwJG5x0ScDRR8hwq1bhsfxSgwub9YjCSWmX4ykNdQvx8Skj7k=
X-Received: by 2002:a5d:8b47:: with SMTP id c7mr733291iot.42.1568750857640;
 Tue, 17 Sep 2019 13:07:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172545.10910.88045.stgit@localhost.localdomain>
 <20190917174853.5csycb5pb5zalsxd@willie-the-truck>
In-Reply-To: <20190917174853.5csycb5pb5zalsxd@willie-the-truck>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 17 Sep 2019 13:07:26 -0700
Message-ID: <CAKgT0Ufoq5BsOwW11SYHDBcy8-U91FgFCxK9XFf5twPWXzpO7g@mail.gmail.com>
Subject: Re: [PATCH v9 5/8] arm64: Move hugetlb related definitions out of
 pgtable.h to page-defs.h
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_130738_843907_CA1CBF3B 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Rik van Riel <riel@surriel.com>, Dan Williams <dan.j.williams@intel.com>,
 lcapitulino@redhat.com, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Nitesh Narayan Lal <nitesh@redhat.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 10:49 AM Will Deacon <will@kernel.org> wrote:
>
> On Sat, Sep 07, 2019 at 10:25:45AM -0700, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> >
> > Move the static definition for things such as HUGETLB_PAGE_ORDER out of
> > asm/pgtable.h and place it in page-defs.h. By doing this the includes
> > become much easier to deal with as currently arm64 is the only architecture
> > that didn't include this definition in the asm/page.h file or a file
> > included by it.
> >
> > It also makes logical sense as PAGE_SHIFT was already defined in
> > page-defs.h so now we also have HPAGE_SHIFT defined there as well.
> >
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > ---
> >  arch/arm64/include/asm/page-def.h |    9 +++++++++
> >  arch/arm64/include/asm/pgtable.h  |    9 ---------
> >  2 files changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/page-def.h b/arch/arm64/include/asm/page-def.h
> > index f99d48ecbeef..1c5b079e2482 100644
> > --- a/arch/arm64/include/asm/page-def.h
> > +++ b/arch/arm64/include/asm/page-def.h
> > @@ -20,4 +20,13 @@
> >  #define CONT_SIZE            (_AC(1, UL) << (CONT_SHIFT + PAGE_SHIFT))
> >  #define CONT_MASK            (~(CONT_SIZE-1))
> >
> > +/*
> > + * Hugetlb definitions.
> > + */
> > +#define HUGE_MAX_HSTATE              4
> > +#define HPAGE_SHIFT          PMD_SHIFT
> > +#define HPAGE_SIZE           (_AC(1, UL) << HPAGE_SHIFT)
> > +#define HPAGE_MASK           (~(HPAGE_SIZE - 1))
> > +#define HUGETLB_PAGE_ORDER   (HPAGE_SHIFT - PAGE_SHIFT)
> > +
> >  #endif /* __ASM_PAGE_DEF_H */
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index 7576df00eb50..06a376de9bd6 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -305,15 +305,6 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
> >   */
> >  #define pte_mkhuge(pte)              (__pte(pte_val(pte) & ~PTE_TABLE_BIT))
> >
> > -/*
> > - * Hugetlb definitions.
> > - */
> > -#define HUGE_MAX_HSTATE              4
> > -#define HPAGE_SHIFT          PMD_SHIFT
> > -#define HPAGE_SIZE           (_AC(1, UL) << HPAGE_SHIFT)
> > -#define HPAGE_MASK           (~(HPAGE_SIZE - 1))
> > -#define HUGETLB_PAGE_ORDER   (HPAGE_SHIFT - PAGE_SHIFT)
> > -
>
> Acked-by: Will Deacon <will@kernel.org>
>
> I'm assuming you're taking this along with the other patches, but please
> shout if you'd rather it went via the arm64 tree.
>
> Will

As it turns out I am close to submitting a v10 that doesn't need this
patch. I basically just needed to move the list manipulators out of
mmzone.h and then moved my header file out of there so I no longer
needed the code.

Thanks.

- Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
