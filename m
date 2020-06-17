Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8251FCF14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eff+N9Ck9dMR3B7qO/9/8mBOWuIz2DF0NYtQFJUUSgQ=; b=PszRYwuKToDKVM
	v0gVHo6W2Lk35IyL6zhxz1ezZimNT03W8Nmm6zNoSY+bPXN9sxykb4fVh/5OgBL7b85jW9PzlBij0
	PgF2sA+eQrnQ7C+nOj6UbHT4PKTwyU9E6ZNAe/ENifJltYjuj7N1vFhDthMTl/nCg9Hjt4s1pTCNF
	TYwmJ5qLl+mh+WGnfop8S/ms8ys37FQuZN3UEWcwwEjRUWiQfq2gXSATZ/nSYEwmcxy2wlqZ0uWuY
	x6Lput5alJnxs2T7PmtbrYi9d+godvUXbo3lO6ehFB0G7RV3QHJFBmuMU5kPlwg8AHuYG8vrzomaB
	52sWDWkO4WE6uZgKX0kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYhC-00052B-0I; Wed, 17 Jun 2020 14:05:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYh1-00051o-Kr
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:05:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D6A22071A;
 Wed, 17 Jun 2020 14:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592402731;
 bh=HZbKcunQpYHIYEa8ZI8r90/oWn2yifRF7iIXbFHmRS0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zyr8hStQS7fa1oxDJQQ7bLa04/UP36Vd7igxFSCX6eIP3ldaPqg9FJuFAkZYUBX6+
 YlKIOwsIKGXvX8GS8wnpRf6IC4WbFoV3zdlpMmOIMPRzUVxq7F/WXYtwvAnuRLC40e
 7i9R1TrdHNGxNsL0CXCN6PVDTC9PfkODVymyOZSI=
Date: Wed, 17 Jun 2020 15:05:26 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v1] arm64/module: Optimize module load time by optimizing
 PLT counting
Message-ID: <20200617140526.GA3747@willie-the-truck>
References: <20200605222257.44882-1-saravanak@google.com>
 <20200616213953.GA2561@willie-the-truck>
 <CAMj1kXGdpk390+b4VDzqGzUzgwZt7GjWT2p=HaZTBTqnjefKhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXGdpk390+b4VDzqGzUzgwZt7GjWT2p=HaZTBTqnjefKhQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_070531_724890_8632014D 
X-CRM114-Status: GOOD (  26.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Saravana Kannan <saravanak@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kernel-team@android.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On Wed, Jun 17, 2020 at 10:17:33AM +0200, Ard Biesheuvel wrote:
> On Tue, 16 Jun 2020 at 23:40, Will Deacon <will@kernel.org> wrote:
> > On Fri, Jun 05, 2020 at 03:22:57PM -0700, Saravana Kannan wrote:
> > > This gives significant reduction in module load time for modules with
> > > large number of relocations with no measurable impact on modules with a
> > > small number of relocations. In my test setup with CONFIG_RANDOMIZE_BASE
> > > enabled, the load time for one module went down from 268ms to 100ms.
> > > Another module went down from 143ms to 83ms.
> >
> > Whilst I can see that's a significant relative saving, what proportion of
> > actual boot time are we talking about here? It would be interesting to
> > know if there are bigger potential savings elsewhere.
> >
> 
> Also, 'some module' vs 'some other module' doesn't really say
> anything. Please explain which modules and their sizes.

I suspect these are all out-of-tree modules, but yes, some metadata such as
sizes, nr or relocs etc would be good to have in the commit message.

> > > diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
> > > index 65b08a74aec6..bf5118b3b828 100644
> > > --- a/arch/arm64/kernel/module-plts.c
> > > +++ b/arch/arm64/kernel/module-plts.c
> > > @@ -253,6 +253,36 @@ static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
> > >       return ret;
> > >  }
> > >
> > > +static bool rela_needs_dedup(Elf64_Rela *rela)
> > > +{
> > > +     return ELF64_R_TYPE(rela->r_info) == R_AARCH64_JUMP26
> > > +            || ELF64_R_TYPE(rela->r_info) == R_AARCH64_CALL26;
> > > +}
> >
> 
> Would it help to check the section index here as well? Call/jump
> instructions within a section are never sent through a PLT entry.

(I tried hacking this in below)

> > Does this handle A53 erratum 843419 correctly? I'm worried that we skip
> > the ADRP PLTs there.
> >
> 
> ADRP PLTs cannot be deduplicated, as they incorporate a relative jump
> back to the caller.

Duh yes, thanks. We can't trash the link register here.

> > > +/* Group the CALL26/JUMP26 relas toward the beginning of the array. */
> > > +static int partition_dedup_relas(Elf64_Rela *rela, int numrels)
> > > +{
> > > +     int i = 0, j = numrels - 1;
> > > +     Elf64_Rela t;
> > > +
> > > +     while (i < j) {
> > > +             while (rela_needs_dedup(rela + i) && i < j)
> > > +                     i++;
> > > +             while (!rela_needs_dedup(rela + j) && i < j)
> > > +                     j--;
> > > +             if (i < j) {
> > > +                     t = *(rela + j);
> > > +                     *(rela + j) = *(rela + i);
> > > +                     *(rela + i) = t;
> > > +             }
> > > +     }
> >
> > This is very hard to read and I think some of the 'i < j' comparisons are
> > redundant. Would it make more sense to assign a temporary rather than
> > post-inc/decrement and recheck?
> >
> 
> Agreed.
> 
> Also, what's wrong with [] array indexing?

Saravana, since our stylistic objections are reasonably vague, I tried
to clean this up so you can get an idea of how I'd prefer it to look (can't
speak for Ard). I haven't tried running this, but please feel free to adapt
it. Replacement diff below.

Will

--->8

diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
index 65b08a74aec6..204290314054 100644
--- a/arch/arm64/kernel/module-plts.c
+++ b/arch/arm64/kernel/module-plts.c
@@ -253,6 +253,39 @@ static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
 	return ret;
 }
 
+static bool branch_rela_needs_plt(Elf64_Sym *syms, Elf64_Rela *rela,
+				  Elf64_Word dstidx)
+{
+
+	Elf64_Sym *s = syms + ELF64_R_SYM(rela->r_info);
+
+	if (s->st_shndx == dstidx)
+		return false;
+
+	return ELF64_R_TYPE(rela->r_info) == R_AARCH64_JUMP26 ||
+	       ELF64_R_TYPE(rela->r_info) == R_AARCH64_CALL26;
+}
+
+static int partition_branch_plt_relas(Elf64_Sym *syms, Elf64_Rela *rela,
+				      int numrels, Elf64_Word dstidx)
+{
+	int i = 0, j = numrels - 1;
+
+	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
+		return 0;
+
+	while (i < j) {
+		if (branch_rela_needs_plt(syms, &rela[i], dstidx))
+			i++;
+		else if (branch_rela_needs_plt(syms, &rela[j], dstidx))
+			swap(rela[i], rela[j]);
+		else
+			j--;
+	}
+
+	return i;
+}
+
 int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 			      char *secstrings, struct module *mod)
 {
@@ -290,7 +323,7 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 
 	for (i = 0; i < ehdr->e_shnum; i++) {
 		Elf64_Rela *rels = (void *)ehdr + sechdrs[i].sh_offset;
-		int numrels = sechdrs[i].sh_size / sizeof(Elf64_Rela);
+		int nents, numrels = sechdrs[i].sh_size / sizeof(Elf64_Rela);
 		Elf64_Shdr *dstsec = sechdrs + sechdrs[i].sh_info;
 
 		if (sechdrs[i].sh_type != SHT_RELA)
@@ -300,8 +333,14 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 		if (!(dstsec->sh_flags & SHF_EXECINSTR))
 			continue;
 
-		/* sort by type, symbol index and addend */
-		sort(rels, numrels, sizeof(Elf64_Rela), cmp_rela, NULL);
+		/*
+		 * sort branch relocations requiring a PLT by type, symbol index
+		 * and addend
+		 */
+		nents = partition_branch_plt_relas(syms, rels, numrels,
+						   sechdrs[i].sh_info);
+		if (nents)
+			sort(rels, nents, sizeof(Elf64_Rela), cmp_rela, NULL);
 
 		if (!str_has_prefix(secstrings + dstsec->sh_name, ".init"))
 			core_plts += count_plts(syms, rels, numrels,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
