Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472202CD47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVNFkI5SJVjGGVeE1zOYjrX/qSmA3E+rQieIUQ2k9hk=; b=kspEkCrCy78+I1
	piB2QeqE/TePKQ+pWPwBAXk7RpbAuyAlnhiEE6nPBk30YMtxGHiNREzC2VWVIpspLJHZ6keSpazPV
	CJtaQ9jJJQ06jGtdcn9jQcimpTLvkmA7yX6OPi1s6jid0qPJ8xKnSGFHACTq6qwPuhhaduE4poKKx
	iRN+bbZcbMYX7wtf+CeukTiq7lA2NYMz3XgzZ9fbIVetitasANxQbLKo7BeSnPw5IuIzRtHvH5J4d
	J4m0XSpC/Dc5UCisKmd6t1EN5E6hsmI3Djo/ZSAWbwdsnBQqL9vZFsYxfz3AoR9nySZY3yi6NhQG4
	an3RLFT10Ob6Zc71/iPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfdV-0004F3-KO; Tue, 28 May 2019 17:11:41 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfdP-0004EP-3O
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:11:36 +0000
Received: by mail-io1-xd43.google.com with SMTP id e3so4860172ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 10:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aYEu2gBBZy04O+xhxwKyZyCSWk8uRdbPLjUSDeOQcQw=;
 b=wh+CA3kwLmGX1O5gBJM8BLIOrEmznWwk+rwVpJ4oi4oto/cp7i6PpukIy+OJnklfKB
 RF6FAs4BN9HwwslhemzrXpnvsYSkaP3EJX80Cfw2BvPlPXlEYIGsYgIx7nkYGiPdGWJW
 AyEHaFMNKk99yy0XVJVsEoZpKsgFSbN9+znEZRb13cA5t7BVhnGn9zCXTH6PM6xFFqkx
 VmeGlbCWED6JupK1GRI5yZM/Pivby8bmscOJ5o58VfGT2/7CE2H2qGs5kQziX3aKGCLm
 TOqKeq6zZnMXE2aeuSxhCizlwTDIZV27fctt9xykQ0fmea3O58F9uu4/IIxjQ5SJROL4
 GqeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aYEu2gBBZy04O+xhxwKyZyCSWk8uRdbPLjUSDeOQcQw=;
 b=M3YTmwAmnTeGV1/Y4nE15GkLG/s1bW76735AR/Ui+9X4GbROH3m2xY2BFK/DJJ5OuA
 9lIp5g9xNM0vyeqbf783Omgbg2Rf4NHxUSxC+oSDNpDgUng67/mEzdMgtg3WtB79SxIp
 +mLlKHOSC6fG172wmdFPAPz3Nc0qVjUQdTj4RQrI0PJo0BIyorn3YP3nMjq0cmsD0I8t
 gMrZQNZ2Oig2RcRygj/Ua/I92aDsH3p1T5gkYLDlasbgniedTir/waNkTo/9Vp+o58hI
 QUxeV/8iLcZbGfxSoXOZT1qOfTmA1MYLe7pbLz8FfhSS3YXn1JlGEV5v/sBw2/rySPIp
 EZTg==
X-Gm-Message-State: APjAAAV2aBjagFNgkLzg1eFLOn3Otvu/qEIPT/aflnFvbqaT8w+sBY/m
 K1MiuX1MmWMZuyoJWjLZ+nl6UYnClqwExOmEXdrtgA==
X-Google-Smtp-Source: APXvYqx2UArSa2pVsHPPffMFfgYNj+btBMm+nOU/Cg++TKHhiD9ZNk2SST7Clj7x3xZTLFZr+LcS7Nrrg+6lFxvWM+Q=
X-Received: by 2002:a5d:9d83:: with SMTP id 3mr7836535ion.65.1559063493844;
 Tue, 28 May 2019 10:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-5-steve.capper@arm.com>
 <CAKv+Gu-4OOy14uKQHxvwiZ-opaMf4h5UJ2V7HhaEKLP=L3aeqQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu-4OOy14uKQHxvwiZ-opaMf4h5UJ2V7HhaEKLP=L3aeqQ@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 28 May 2019 19:11:22 +0200
Message-ID: <CAKv+Gu8kg8H-HT35f46q6MPhimr_JasZdr-3kPVFpz3s6VeWdw@mail.gmail.com>
Subject: Re: [PATCH v2 04/12] arm64: mm: Replace fixed map BUILD_BUG_ON's with
 BUG_ON's
To: Steve Capper <steve.capper@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_101135_147114_EF297A6E 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: crecklin@redhat.com, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 19:07, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Tue, 28 May 2019 at 18:10, Steve Capper <steve.capper@arm.com> wrote:
> >
> > In order to prepare for a variable VA_BITS we need to account for a
> > variable size VMEMMAP which in turn means the position of the fixed map
> > is variable at compile time.
> >
> > Thus, we need to replace the BUILD_BUG_ON's that check the fixed map
> > position with BUG_ON's.
> >
> > Signed-off-by: Steve Capper <steve.capper@arm.com>
>
> Do we still need this patch now that VMEMMAP_SIZE is a compile time
> constant again? Or am I missing something?
>

Never mind. You are moving the start of the linear region and the
start of the vmemmap region.

I wonder if this is really necessry, though. On a 48-bit VA only
system, the linear region could still start at 0xfff0_.... as long as
we don't put any physical memory there (and we already move around our
physical memory inside the linear region when KASLR is enabled)


> > ---
> >  arch/arm64/mm/mmu.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> > index b0401b2ec4da..1b88d9d81954 100644
> > --- a/arch/arm64/mm/mmu.c
> > +++ b/arch/arm64/mm/mmu.c
> > @@ -846,7 +846,7 @@ void __init early_fixmap_init(void)
> >          * The boot-ioremap range spans multiple pmds, for which
> >          * we are not prepared:
> >          */
> > -       BUILD_BUG_ON((__fix_to_virt(FIX_BTMAP_BEGIN) >> PMD_SHIFT)
> > +       BUG_ON((__fix_to_virt(FIX_BTMAP_BEGIN) >> PMD_SHIFT)
> >                      != (__fix_to_virt(FIX_BTMAP_END) >> PMD_SHIFT));
> >
> >         if ((pmdp != fixmap_pmd(fix_to_virt(FIX_BTMAP_BEGIN)))
> > @@ -914,9 +914,9 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
> >          * On 4k pages, we'll use section mappings for the FDT so we only
> >          * have to be in the same PUD.
> >          */
> > -       BUILD_BUG_ON(dt_virt_base % SZ_2M);
> > +       BUG_ON(dt_virt_base % SZ_2M);
> >
> > -       BUILD_BUG_ON(__fix_to_virt(FIX_FDT_END) >> SWAPPER_TABLE_SHIFT !=
> > +       BUG_ON(__fix_to_virt(FIX_FDT_END) >> SWAPPER_TABLE_SHIFT !=
> >                      __fix_to_virt(FIX_BTMAP_BEGIN) >> SWAPPER_TABLE_SHIFT);
> >
> >         offset = dt_phys % SWAPPER_BLOCK_SIZE;
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
