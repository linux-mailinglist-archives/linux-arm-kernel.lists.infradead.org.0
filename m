Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6ED1FE36B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 04:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyJ2HWAXvWfttxIJJzam55j2n5MB8RPP/enxLl9c3xQ=; b=TbNWnYRoHdiwnB
	Rujr2/tykTu4VRkajlwYx9Qnu9ktpiv7Y2ZPZlrLRETFpIABjeITGtfkxGeRJCCwmsChK5erWEPq8
	9lwQhcvHeSVWl40JVbYZXxu8GZCRxuCLNk1lL/nPh55cc5tvn2CbAvDAAwps1CvXE+6ERRbhzXhMg
	NB0DJxC4jPxd3vbaMlmMltxGWPMCQX09sm6zuadbyX3lBdCiDZuY3yM61NbDJKaJv/fhSdHSJ99ai
	2WJ3bB/k0PXEWX+opx9icz1SK/Ttm2VULYGwN46AInPRPuY3go2k+0DqZF4HvtZQuwLdzzsOmODXB
	I9JwxHai9/u0rrbszYkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlk0Q-0000aM-H1; Thu, 18 Jun 2020 02:10:18 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljxI-0006kO-3e
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 02:07:07 +0000
Received: by mail-oi1-x243.google.com with SMTP id b8so3695458oic.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 19:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nTuTZrROcjbKGbLzM26GRFZl+svxQ2ZPj7ijGP/cuPc=;
 b=NHcuIinDiRWKtzcYfjGb+7YQ2+kaT6KDrLW9ZNvz1U6p4Zv8xELeWUjD5kWKrQDrOB
 EI6EujdfQyX+G4Pp5z3V1uKb1ANZoE1LXWjfQ59bs048ZBbusafkWNgyN9Dyr7lSVVOJ
 LsAchUzeSHFRtyD3k9a0MrC+MKYpdtEqK1hh5BG63ZUPWST2TvhwK3Claoks+N6Pw7Tj
 mU7qHV3w66bAM5+zRlLfoCpFU+knYQ3oBSumnZesfWa+PWsrxK8iA63wellLhr8r9QTb
 MgqXKZoQhXu/eVlkkUTS27tjk/iTOUkXxRS0z9kKYqpV0avZyrV2YnMdKh3jSvq1ztjG
 FWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nTuTZrROcjbKGbLzM26GRFZl+svxQ2ZPj7ijGP/cuPc=;
 b=gvBTA5HAX7ptaN5mosVFsRpYn3qs1BNKbEpRlET4S1LhMhmgfdCcGiv+ypGf43mCRZ
 r2UiodUANZwY6wdvoOKQr4OAI9Xjfcq7s5dst4bH9cERcNfTNKjP+aW5ysIluefrFpqh
 pkWAFj+OHJrQYhoOxAdBbQtoiXBDA/jTK3gDk8Ab7aJgZJ8kLueH5xF+SeDshljrO5Xo
 vwPl3ltoBczR2OHM5ixvGGAEL1+3w/5WnrEZjL1lR88lIQU42zAndmczGqDqJLkWFVuZ
 +qLOhc7XkOMwi8tHmge52gIDjOkT0VofvUILbD8V4kcmrDXV4syPxqYhDUx55u4+dAR+
 vUDw==
X-Gm-Message-State: AOAM533vkx5kCo2x3ERHQ3tntnm6iAou2yu1wRVxzq3yVmfuj2rx3ui5
 P7jUyIeMutH0xk/MnasyclcZwtgQf4rZYqQrMNvLQwGM
X-Google-Smtp-Source: ABdhPJyFTC31VZdaVVaBE9s8VmMDzvA/wIR4yseV1PD6iJ2gshZHqOSl+guplhqIbzvkfw7/CLg6IBiJt6/p79avbek=
X-Received: by 2002:aca:35d4:: with SMTP id c203mr1305469oia.30.1592446021379; 
 Wed, 17 Jun 2020 19:07:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200605222257.44882-1-saravanak@google.com>
 <20200616213953.GA2561@willie-the-truck>
 <CAMj1kXGdpk390+b4VDzqGzUzgwZt7GjWT2p=HaZTBTqnjefKhQ@mail.gmail.com>
 <20200617140526.GA3747@willie-the-truck>
In-Reply-To: <20200617140526.GA3747@willie-the-truck>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 17 Jun 2020 19:06:25 -0700
Message-ID: <CAGETcx_hF9-G5Xg+kQJdCyho3cE3pp=L8ESsUwSQC8je9QERmA@mail.gmail.com>
Subject: Re: [PATCH v1] arm64/module: Optimize module load time by optimizing
 PLT counting
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_190704_227519_4346F370 
X-CRM114-Status: GOOD (  28.32  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Android Kernel Team <kernel-team@android.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 7:05 AM Will Deacon <will@kernel.org> wrote:
>
> Hi all,
>
> On Wed, Jun 17, 2020 at 10:17:33AM +0200, Ard Biesheuvel wrote:
> > On Tue, 16 Jun 2020 at 23:40, Will Deacon <will@kernel.org> wrote:
> > > On Fri, Jun 05, 2020 at 03:22:57PM -0700, Saravana Kannan wrote:
> > > > This gives significant reduction in module load time for modules with
> > > > large number of relocations with no measurable impact on modules with a
> > > > small number of relocations. In my test setup with CONFIG_RANDOMIZE_BASE
> > > > enabled, the load time for one module went down from 268ms to 100ms.
> > > > Another module went down from 143ms to 83ms.
> > >
> > > Whilst I can see that's a significant relative saving, what proportion of
> > > actual boot time are we talking about here? It would be interesting to
> > > know if there are bigger potential savings elsewhere.
> > >
> >
> > Also, 'some module' vs 'some other module' doesn't really say
> > anything. Please explain which modules and their sizes.
>
> I suspect these are all out-of-tree modules, but yes, some metadata such as
> sizes, nr or relocs etc would be good to have in the commit message.
>
> > > > diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
> > > > index 65b08a74aec6..bf5118b3b828 100644
> > > > --- a/arch/arm64/kernel/module-plts.c
> > > > +++ b/arch/arm64/kernel/module-plts.c
> > > > @@ -253,6 +253,36 @@ static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
> > > >       return ret;
> > > >  }
> > > >
> > > > +static bool rela_needs_dedup(Elf64_Rela *rela)
> > > > +{
> > > > +     return ELF64_R_TYPE(rela->r_info) == R_AARCH64_JUMP26
> > > > +            || ELF64_R_TYPE(rela->r_info) == R_AARCH64_CALL26;
> > > > +}
> > >
> >
> > Would it help to check the section index here as well? Call/jump
> > instructions within a section are never sent through a PLT entry.
>
> (I tried hacking this in below)
>
> > > Does this handle A53 erratum 843419 correctly? I'm worried that we skip
> > > the ADRP PLTs there.
> > >
> >
> > ADRP PLTs cannot be deduplicated, as they incorporate a relative jump
> > back to the caller.
>
> Duh yes, thanks. We can't trash the link register here.
>
> > > > +/* Group the CALL26/JUMP26 relas toward the beginning of the array. */
> > > > +static int partition_dedup_relas(Elf64_Rela *rela, int numrels)
> > > > +{
> > > > +     int i = 0, j = numrels - 1;
> > > > +     Elf64_Rela t;
> > > > +
> > > > +     while (i < j) {
> > > > +             while (rela_needs_dedup(rela + i) && i < j)
> > > > +                     i++;
> > > > +             while (!rela_needs_dedup(rela + j) && i < j)
> > > > +                     j--;
> > > > +             if (i < j) {
> > > > +                     t = *(rela + j);
> > > > +                     *(rela + j) = *(rela + i);
> > > > +                     *(rela + i) = t;
> > > > +             }
> > > > +     }
> > >
> > > This is very hard to read and I think some of the 'i < j' comparisons are
> > > redundant. Would it make more sense to assign a temporary rather than
> > > post-inc/decrement and recheck?
> > >
> >
> > Agreed.
> >
> > Also, what's wrong with [] array indexing?
>
> Saravana, since our stylistic objections are reasonably vague, I tried
> to clean this up so you can get an idea of how I'd prefer it to look (can't
> speak for Ard). I haven't tried running this, but please feel free to adapt
> it. Replacement diff below.
>
> Will
>
> --->8
>
> diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
> index 65b08a74aec6..204290314054 100644
> --- a/arch/arm64/kernel/module-plts.c
> +++ b/arch/arm64/kernel/module-plts.c
> @@ -253,6 +253,39 @@ static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
>         return ret;
>  }
>
> +static bool branch_rela_needs_plt(Elf64_Sym *syms, Elf64_Rela *rela,
> +                                 Elf64_Word dstidx)
> +{
> +
> +       Elf64_Sym *s = syms + ELF64_R_SYM(rela->r_info);
> +
> +       if (s->st_shndx == dstidx)
> +               return false;
> +
> +       return ELF64_R_TYPE(rela->r_info) == R_AARCH64_JUMP26 ||
> +              ELF64_R_TYPE(rela->r_info) == R_AARCH64_CALL26;
> +}
> +
> +static int partition_branch_plt_relas(Elf64_Sym *syms, Elf64_Rela *rela,
> +                                     int numrels, Elf64_Word dstidx)
> +{
> +       int i = 0, j = numrels - 1;
> +
> +       if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
> +               return 0;
> +
> +       while (i < j) {
> +               if (branch_rela_needs_plt(syms, &rela[i], dstidx))
> +                       i++;
> +               else if (branch_rela_needs_plt(syms, &rela[j], dstidx))
> +                       swap(rela[i], rela[j]);
> +               else
> +                       j--;
> +       }
> +
> +       return i;
> +}
> +
>  int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
>                               char *secstrings, struct module *mod)
>  {
> @@ -290,7 +323,7 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
>
>         for (i = 0; i < ehdr->e_shnum; i++) {
>                 Elf64_Rela *rels = (void *)ehdr + sechdrs[i].sh_offset;
> -               int numrels = sechdrs[i].sh_size / sizeof(Elf64_Rela);
> +               int nents, numrels = sechdrs[i].sh_size / sizeof(Elf64_Rela);
>                 Elf64_Shdr *dstsec = sechdrs + sechdrs[i].sh_info;
>
>                 if (sechdrs[i].sh_type != SHT_RELA)
> @@ -300,8 +333,14 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
>                 if (!(dstsec->sh_flags & SHF_EXECINSTR))
>                         continue;
>
> -               /* sort by type, symbol index and addend */
> -               sort(rels, numrels, sizeof(Elf64_Rela), cmp_rela, NULL);
> +               /*
> +                * sort branch relocations requiring a PLT by type, symbol index
> +                * and addend
> +                */
> +               nents = partition_branch_plt_relas(syms, rels, numrels,
> +                                                  sechdrs[i].sh_info);
> +               if (nents)
> +                       sort(rels, nents, sizeof(Elf64_Rela), cmp_rela, NULL);
>
>                 if (!str_has_prefix(secstrings + dstsec->sh_name, ".init"))
>                         core_plts += count_plts(syms, rels, numrels,

Thanks Will & Ard. I'll incorporate your feedback and send a v2 within
a few days.

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
