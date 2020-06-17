Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E1C1FC863
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0z9O2wJVKux3JrUkT2JzUvqlg/OmKpiMDiXYxg1TTkM=; b=rfToEv+SJCPu0I
	szViOACQFcuP94nk7aCzwoeCUscJXfwazW6WDwz++SSdAURMcg2+ys/KAcEAsywotmSpE7oJ9gdxi
	HeJV9TyBZIcigvD6UOMObD+DImB2pqc8VTKIydAlZbVDuQoszrcbOkdR3LJFr+pRaQDyf2Fu9uHOA
	Zn/QNVeG8YKv/JGcc9AOmJuZ130t4VU9SN9o0fx4EMlqkEG4pxFQpd9m1glb2vIszqTY2fRd97hyg
	nt0vBU3B/dIFalPcAAvVBiLRX33JUlfDRJDLHHksiLYBZfZk+xCOq8r5JVI9ViUI+y8q9zAmAKzfQ
	IeEbCFGrtcflrh1A8oAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTGg-0005HN-UB; Wed, 17 Jun 2020 08:17:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTGU-0005GV-8U
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 08:17:47 +0000
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBBAA21501
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 08:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592381865;
 bh=KANy5N1nWIV9H/SGf8fjZ+c9xEq4cZlQFQzFMCjvnMQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=waQ3Tx6ZTdvKhLbHknQfL1HtgLTXTO3eIAaH5dODytLIObM/owJCYZZvAoMoMNV1G
 XYx2Vrlg8He8CwgMK7dMwf99xBQZf9QEKl23oj/rPCCJu97WetqHPKkFa8nQIgN+tq
 egjwDOjbwlGfMUyS3IFDiuDzmHTO2AuO7+UEya18=
Received: by mail-ot1-f52.google.com with SMTP id 97so953730otg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 01:17:45 -0700 (PDT)
X-Gm-Message-State: AOAM533kgaTzS7yeixgCjgmv0PZeEinlRHj5V7rrub9EtxgmOz0W6xdZ
 EbjD2igIGq7WGtUI7+DhmwCojs/hEr3qiZKhvIA=
X-Google-Smtp-Source: ABdhPJwgXq8YvwTYJNdrMbAD7Em1ZZ0MMgjSrSc60NfxtftYJvAcJRt8u1TiCduwrAkt/AZOKqNJWgD64uP1F+9SZrU=
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr5613374oth.90.1592381865028; 
 Wed, 17 Jun 2020 01:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200605222257.44882-1-saravanak@google.com>
 <20200616213953.GA2561@willie-the-truck>
In-Reply-To: <20200616213953.GA2561@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 17 Jun 2020 10:17:33 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGdpk390+b4VDzqGzUzgwZt7GjWT2p=HaZTBTqnjefKhQ@mail.gmail.com>
Message-ID: <CAMj1kXGdpk390+b4VDzqGzUzgwZt7GjWT2p=HaZTBTqnjefKhQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64/module: Optimize module load time by optimizing
 PLT counting
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_011746_337820_A9A41FA6 
X-CRM114-Status: GOOD (  28.82  )
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

On Tue, 16 Jun 2020 at 23:40, Will Deacon <will@kernel.org> wrote:
>
> On Fri, Jun 05, 2020 at 03:22:57PM -0700, Saravana Kannan wrote:
> > When loading a module, module_frob_arch_sections() tries to figure out
> > the number of PLTs that'll be needed to handle all the RELAs. While
> > doing this, it tries to dedupe PLT allocations for multiple
> > R_AARCH64_CALL26 relocations to the same symbol. It does the same for
> > R_AARCH64_JUMP26 relocations too.
> >
> > To make checks for duplicates easier/faster, it sorts the relocation
> > list by type, symbol and addend. That way, to check for a duplicate
> > relocation, it just needs to compare with the previous entry.
> >
> > However, sorting the entire relocation array is unnecessary and
> > expensive (O(n log n)) because there are a lot of other relocation types
> > that don't need deduping or can't be deduped.
> >
> > So this commit partitions the array into entries that need deduping and
> > those that don't. And then sorts just the part that needs deduping. And
> > when CONFIG_RANDOMIZE_BASE is disabled, the sorting is skipped entirely
> > because PLTs are not allocated for R_AARCH64_CALL26 and R_AARCH64_JUMP26
> > if it's disabled.
> >
> > This gives significant reduction in module load time for modules with
> > large number of relocations with no measurable impact on modules with a
> > small number of relocations. In my test setup with CONFIG_RANDOMIZE_BASE
> > enabled, the load time for one module went down from 268ms to 100ms.
> > Another module went down from 143ms to 83ms.
>
> Whilst I can see that's a significant relative saving, what proportion of
> actual boot time are we talking about here? It would be interesting to
> know if there are bigger potential savings elsewhere.
>

Also, 'some module' vs 'some other module' doesn't really say
anything. Please explain which modules and their sizes.

> > This commit also disables the sorting if CONFIG_RANDOMIZE_BASE is
> > disabled because it looks like PLTs are not allocated for
> > R_AARCH64_CALL26 and R_AARCH64_JUMP26 if it's disabled.
> >
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  arch/arm64/kernel/module-plts.c | 37 ++++++++++++++++++++++++++++++++-
> >  1 file changed, 36 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
> > index 65b08a74aec6..bf5118b3b828 100644
> > --- a/arch/arm64/kernel/module-plts.c
> > +++ b/arch/arm64/kernel/module-plts.c
> > @@ -253,6 +253,36 @@ static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
> >       return ret;
> >  }
> >
> > +static bool rela_needs_dedup(Elf64_Rela *rela)
> > +{
> > +     return ELF64_R_TYPE(rela->r_info) == R_AARCH64_JUMP26
> > +            || ELF64_R_TYPE(rela->r_info) == R_AARCH64_CALL26;
> > +}
>

Would it help to check the section index here as well? Call/jump
instructions within a section are never sent through a PLT entry.

> Does this handle A53 erratum 843419 correctly? I'm worried that we skip
> the ADRP PLTs there.
>

ADRP PLTs cannot be deduplicated, as they incorporate a relative jump
back to the caller.

> > +
> > +/* Group the CALL26/JUMP26 relas toward the beginning of the array. */
> > +static int partition_dedup_relas(Elf64_Rela *rela, int numrels)
> > +{
> > +     int i = 0, j = numrels - 1;
> > +     Elf64_Rela t;
> > +
> > +     while (i < j) {
> > +             while (rela_needs_dedup(rela + i) && i < j)
> > +                     i++;
> > +             while (!rela_needs_dedup(rela + j) && i < j)
> > +                     j--;
> > +             if (i < j) {
> > +                     t = *(rela + j);
> > +                     *(rela + j) = *(rela + i);
> > +                     *(rela + i) = t;
> > +             }
> > +     }
>
> This is very hard to read and I think some of the 'i < j' comparisons are
> redundant. Would it make more sense to assign a temporary rather than
> post-inc/decrement and recheck?
>

Agreed.

Also, what's wrong with [] array indexing?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
