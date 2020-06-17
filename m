Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FE81FC4C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 05:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDJfYNnftbh8Adcm96PD7JncZWiSnubEAw2uvvVGRL4=; b=KzTmUB2/+smIlU
	jl1WJ2hRXUYRXRuVZFIOAQtzYrypuxU2c4WZjGPzQDK7Lse38DlTe3hHs5pBUsPpPxnAVfSSWDSAu
	k8Li2cD6rCVi9XDDDUHHx2kvUWT2ApjauNhsL10Gd0OBOiJ4nc0leTiR9hCLBqV8ODv5YND6+NmcF
	o23Ni+hmb0Xd3uLjI2YMn9MTP8Lu3rIUoc+vdPjHMmMCXE+7CidCNvWR69LmCTdnWrLy52IO456m/
	uhQEsQYhHk6FNOukf3Um7YvHSgVCJtvdoBPWVpPLh681MMC+Gg2hcc8EYi9PtQCKf2qFm34SThMZk
	NYPGxpuhKhe1y0SofJMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOuZ-00078G-PM; Wed, 17 Jun 2020 03:38:52 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOuQ-00077A-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 03:38:44 +0000
Received: by mail-ot1-x344.google.com with SMTP id n5so532516otj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 20:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=38TmDk1O1wwxXumtDkSDguPbkWoEgQBxlXN5tB3XErM=;
 b=SsMdoAiJoMXnVfBDAJBzK8i4vsrlwdjyvj4UQggdqA3FGk4qedQf8PJbv5/gEW5r98
 u0MxgfeQpi+wTpngK7++3uOk9j7elt+8UWF2hdfzxxuJ0EpXVMyCDK1x+7t6PLazTBef
 1bhrMSQPEQfusinDndI9G/Ydi+n50bg6RkCDuqL2PMX1JMv6bv5bQ+toPGfmRuIJufni
 dzWXG1CfpzpvBDtDSmnLJuEsffL2P0WZmuSuZYsliGic1LK95ywkprYDULwGvWTISTzQ
 CGnJd7fyEzhXmQXSZCbV5//DMyhlMhwjqU1ZYDw8vMuUzQOSkq55JpHuGiXjF6kdcZ8t
 5fdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=38TmDk1O1wwxXumtDkSDguPbkWoEgQBxlXN5tB3XErM=;
 b=tHh6/xc+akaW7u68z08Lv6oWbyKI0nW/tOwmg4o6H3G4jmWdGx/4rZc6cxmNvB8U1Z
 w18hGTHWAfClWtp89OL5nnuowchtFGCeUfXPmQvrILEuG/evb37zqqKa2edWjUEPFYlf
 8R0q6dxBz2Km2KoQd3Ts+DgCBoHWralkGMw0GwMDLrabX+6WRRrbhGCJ3MreQ9EWueSk
 dM+pZH4Fk8hKW57DNbOJB5VX+v8bOjeSCW47qZwVn32XCCah0OMNFr4NnJ85cgsTIHWW
 h8pX0QV4tABys89OJDsSzSL/Nz0w2ppBnntEjXono2SdGZNjAtr+ykBBt2mmKSfr2gul
 bRQg==
X-Gm-Message-State: AOAM531YAMqauAE3/3D1wuAKNsCAl3e6zFnyx1JSx9B/caCeI96sxEhK
 SA4VdRj8sLwvpbpYIyrpNhY+ZS8dcAm3sck6oCRaRQ==
X-Google-Smtp-Source: ABdhPJwEliJlrsvIplobqlJKZ7S6Mjcj+jiCJ7puzAlF0ec1bFcCnb1Nqk5TRvKwqSZ/CBzLW5DixTsprZ0hyE5k3y0=
X-Received: by 2002:a9d:4c0b:: with SMTP id l11mr5412819otf.139.1592365118848; 
 Tue, 16 Jun 2020 20:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200605222257.44882-1-saravanak@google.com>
 <20200616213953.GA2561@willie-the-truck>
In-Reply-To: <20200616213953.GA2561@willie-the-truck>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 16 Jun 2020 20:38:03 -0700
Message-ID: <CAGETcx9=GBDMd0BUt6rmfLt_BFmYvDthLjT1ts=E1JQJ8GT0kw@mail.gmail.com>
Subject: Re: [PATCH v1] arm64/module: Optimize module load time by optimizing
 PLT counting
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_203842_910364_24F86E9E 
X-CRM114-Status: GOOD (  33.88  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Android Kernel Team <kernel-team@android.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 2:40 PM Will Deacon <will@kernel.org> wrote:
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

100ms if pretty big in terms of boot time from a phone OEM
perspective. It adds up. And for these two modules I profiled, it adds
up to 228 ms. That's quite a lot.

Also, if you look at just the kernel init time and all the module load
time, it comes to around 2.2 seconds in the hardware I'm testing on.
That's a 10% reduction in the "kernel init" time. Also, this 2.2
seconds is without async probing. If we do that, this becomes and even
larger % of the kernel init time.

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
> Does this handle A53 erratum 843419 correctly? I'm worried that we skip
> the ADRP PLTs there.

So this isn't really skipping any PLTs or RELAs. It's just picking the
RELAs that can benefit from deduping using sort. Even if I delete the
entire sort() call, all the modules load and the device seems to be
working fine (Video streaming over Wifi works). The catch there is
that the module takes up more memory (because the PLTs are duplicated
often) and you might potentially lose some caching benefits for PLTs
that have a significant amount of repetition (say, printk or something
like that).

You'll see that the duplicate_rel() call isn't even called in any code
related to that erratum. So, I think this is safe.

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
> redundant.

I have no strong opinion on how this function is written. It's a
trivial partitioning code. I'll be happy to copy paste any clean up
anyone wants to suggest. I think all the i < j checks are necessary
for my current implementation.

> Would it make more sense to assign a temporary rather than
> post-inc/decrement and recheck?

I'm not sure I get what you are trying to say.

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
