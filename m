Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192C78F5A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 22:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pm14TwZ55AIJ/0hRSOZXW1YB0JgLJ0qQqs41CQuzMCE=; b=qWzrtcaLfjuILt
	38nS12z/j/xsJyTE7ZyJBPgJ1MhWE2CR5ND/gVC/HiFNiOphxywlVndJ9NNTWiI5dKx+Vz+a3TFqL
	ypWw/vmeoVE+ioSYtiTt8UiCHb3nvVJEhB3o+AL4Bs47T/zsaYb13OCgzw0OB7YH+a6NCjK8ay5UD
	ufmSswlvRFC1Kv4KdV5ItILUsk4SBjeWVpILwf18rGv08Pjw8yK21bIlpVoidrZBEtmPHSpVklS9V
	iEumXB+UtJ1DUI4hsjoxlM21Ws23Rvh2VFxzJCNo0zoYNf1UgrS21zWLiGn01cELOxcPTRf0xhmNA
	w5MBblYmWCq9EXiF30Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMDN-0007UI-1O; Thu, 15 Aug 2019 20:19:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMD1-0007S1-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 20:18:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id s15so3259911edx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 13:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AxiXdJJYXpzjPIpLv2Ddxotgylmhlwtib1+7lvBDYak=;
 b=Ju5cEMjQPSyBe5Qdc1WzBz5Ov2k2ICfZUob39j/oyK3i8LoFDj+5xFzSfZlAK54Kwp
 czoNKnAMW8wUiIKRq8iHCR5/hYI1EeQIJowboQ2123licx38xK3w8mH/nMX+ssbumUek
 cPcWRL0fjhtIgMYkonmtKhgvqZCvwdZP24IBnbbwIjzEdBBB5WJSqnDtzrYSbxY+Zf7o
 J3Ulenc6DRQk3xc+D0kIuO17NZVBAp2NHWEqj157pUGGo2AA8mNOyfundV2UHi4HUYFg
 I+SHJa5kYajDhB+N6oMpbnBI1K/s9bUciTkjsjkSRledR7MfCuC91DKOo+ACYc5l5E79
 zt3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AxiXdJJYXpzjPIpLv2Ddxotgylmhlwtib1+7lvBDYak=;
 b=gZL1bFmM/7xO9VBpCs4+iiS8RPIZHKaoX8EkmVq5Cr/Ab6OLt1pTKqsYlShLEZZeN8
 SHecG+pw8K3q4Z4TTDu2dE9pk1Sb8jzXc0f8HR4JqCE0s82l6ERSALipVKKbntFt+O5w
 svttrBf7tdFlnoYUu0iS/L2YoSk5s8n56jPLH09zqjT+Jqb5TLB/KitTQIAqoVbVsN3S
 TlMB5TqqlN/PT5PVWpV/Z2GaPtQozsXXDN8t3J32+ZOca91q3EwFmTzGxU/z9nw+pM/g
 A1atNpHv2s0/6jPFkKpQr1MKXRaOA4COrIZGpHmeNr0Gs9mFewegnhy+AglMyvkbPQLJ
 OJkg==
X-Gm-Message-State: APjAAAVQGPuqhXBukRSstqmMxMHejckJCEDymK9UKIImuTPHSdGPyzcM
 ++CCGoJFnf5OlhGP+dM8dP7mmd0wNnwDk4lkWPMzLQ==
X-Google-Smtp-Source: APXvYqxDqYmpkSZeqPgeXbtT8kCNF6W+EAndNXYXrDbS40C1YMhrbgAvoxEdsH1jiLldvnT389ZR52u5JUC9ZljwS7k=
X-Received: by 2002:aa7:d48c:: with SMTP id b12mr7277828edr.170.1565900333819; 
 Thu, 15 Aug 2019 13:18:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <20190801152439.11363-3-pasha.tatashin@soleen.com>
 <e00455af-a9f6-82e1-4c0d-78fae01ae00a@arm.com>
In-Reply-To: <e00455af-a9f6-82e1-4c0d-78fae01ae00a@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 15 Aug 2019 16:18:43 -0400
Message-ID: <CA+CK2bD-_34o0McpFwSYgEDyFa8MDXWUNid0GgVsUKC=ZiQzMg@mail.gmail.com>
Subject: Re: [PATCH v1 2/8] arm64, mm: transitional tables
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_131855_526050_2E1C8A08 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 2:11 PM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 01/08/2019 16:24, Pavel Tatashin wrote:
> > There are cases where normal kernel pages tables, i.e. idmap_pg_dir
> > and swapper_pg_dir are not sufficient because they may be overwritten.
> >
> > This happens when we transition from one world to another: for example
> > during kexec kernel relocation transition, and also during hibernate
> > kernel restore transition.
> >
> > In these cases, if MMU is needed, the page table memory must be allocated
> > from a safe place. Transitional tables is intended to allow just that.
>
> > diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> > index db92950bb1a0..dcb4f13c7888 100644
> > --- a/arch/arm64/include/asm/pgtable-hwdef.h
> > +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> > @@ -110,6 +110,7 @@
> >  #define PUD_TABLE_BIT                (_AT(pudval_t, 1) << 1)
> >  #define PUD_TYPE_MASK                (_AT(pudval_t, 3) << 0)
> >  #define PUD_TYPE_SECT                (_AT(pudval_t, 1) << 0)
> > +#define PUD_SECT_RDONLY              (_AT(pudval_t, 1) << 7)         /* AP[2] */
>
> This shouldn't be needed. As far as I'm aware, we only get read-only pages in the linear
> map from debug-pagealloc, and the module aliases. Both of which require the linear map to
> be made of page-size mappings.
>
> Where are you seeing these?

This was done simply for generalization.

In old copy_pud:

445   set_pud(dst_pudp,
446   __pud(pud_val(pud) & ~PMD_SECT_RDONLY));

In new trans_table_copy_pud():
119                 if (!pud_table(src_pud)) {
120                         if (info->trans_flags & TRANS_MKWRITE)
121                                 pud_val(src_pud) &= ~PUD_SECT_RDONLY;

If you want, I can replace it with PMD_SECT_RDONLY

> > + * trans_flags
> > + *   - bitmap with flags that control how page table is filled.
> > + *     TRANS_MKWRITE: during page table copy make PTE, PME, and PUD page
> > + *                    writeable by removing RDONLY flag from PTE.
> > + *     TRANS_MKVALID: during page table copy, if PTE present, but not valid,
> > + *                    make it valid.
> > + *     TRANS_CHECKPFN: During page table copy, for every PTE entry check that
> > + *                     PFN that this PTE points to is valid. Otherwise return
> > + *                     -ENXIO
>
> Adding top-level global knobs to manipulate the copied linear map is going to lead to
> bugs. The existing code will only change the PTE in specific circumstances, that it tests
> for, that only happen at the PTE level.

I am simply doing the same what the old code is doing:

hibernate sets this flag if: debug_pagealloc_enabled() and trans_table
in this case check if pfn_valid() or not. This is part of
generalization, without which it is not possible to re-use the code
between kexec and hibernate.

>
>
> > + *     TRANS_FORCEMAP: During page map, if translation exists, force
> > + *                     overwrite it. Otherwise -ENXIO may be returned by
> > + *                     trans_table_map_* functions if conflict is detected.
>

I will remove it.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
