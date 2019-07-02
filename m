Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049825D865
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5YPZIuWHny2lQSdn3rjucBHfWzHqD8FNi0xJRn71ik=; b=utQI8tKAEpKpR+
	6DGMCr9alqWxB2B8Q30sQVcfhqcpEGCsoI5lIV3L7oCMdOQH1YrysykpY7USOZdZ+HvpGcDZJJ69c
	9bEIweXWeYuHLlVbCccxvkWQOPbTAFx2r09N0tnJlQoZqzu2hZzkrxwg+RdL7D+lee+EXNf69R+GN
	WJCqFJcDzHwzEY4mrNvEjMZaHrIFeDliPpMS/XWS3cE4YaeYJWeTyiR0p1ApW+g3hFPm5Az7bI3vG
	QJRiafvyihABpuXpW16+IZdTvaryYNGLBZ4Nqg/Jsl6+Qt2F8SMxqmjc1XrSnvHio4TZU1BF6RUFW
	xEB2eQzUviu2f2hfc+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSB3-00059t-Hu; Tue, 02 Jul 2019 23:27:09 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSAq-00059U-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 23:26:58 +0000
Received: by mail-qt1-x842.google.com with SMTP id s15so512380qtk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 16:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5c4oP4xTk1IBbNBe2Xnvi/hVZ3pLkXGkSfkFWUiE8zI=;
 b=or3ER8GL2VWQXZAyB6TKaLxj3ZFYyknrFx+DqXSLqFoMdoX/GpuCyI8Accipx9XSXu
 7qN7Ep0mMjEOze0iArZLcQaghY0h7AfTzceaWGUg6xA9X+NG6ztolo43eA4dK09rLJH6
 UDQ+gdYIBXGT2OUYEgAjjMhPTuRlsCjnwRpIP8fzur/UOBQEhT5v4++uOi6vy9q2Q41s
 heeBlwdOLLZq4T2WfFmg7MWEv8ML15czbGavD1JSf2FDogclfmr2HtzlrJaqmPOhNF4I
 YtAz6LaBVmDaKQH3Pcj6S6S+8lKrewvtQE+kVftBUH1B7tjPcMY94B1BIPKJSc3+10+U
 MNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5c4oP4xTk1IBbNBe2Xnvi/hVZ3pLkXGkSfkFWUiE8zI=;
 b=YEhCd0VuKoV1bBUFVZrXlHiGj5GiybTXsCaQzV3J3CeCKwUmchyCk3lN9g+pnO20nd
 uIBasb3VsSJpP7/hSZp7HO5vEw9ST7qcS4oqaI488gPEdOA6SfS578vG4VnRqQAo+tb7
 p8bNtTuzIRBQeRgWaB+eqaAhRmVZG0Sb3XzEc9iJCPvYKjEAuVTxrESrJDZ9IzpbzeeM
 a7JTEDAo4CofzuIyJDUMh6bP0Gz01loprhPG2ZxCW8GsqqCo5Ch+h3Trfy4cN6ZUvUjD
 saiSFQu18QvPdOYSKdcKk2s4lXzXi7ATWYXl38VR9SPilrIPpV06Un096eqEPXn/N8sm
 wsag==
X-Gm-Message-State: APjAAAUZ00iA89IA/rLz7fvtAShAbu9GU6/I7XETlfCTMa+u0wimKnmu
 FPiZ5lv7D7AdGCaKg9knD4r/cH/sMVsfcs1o+l2NUA==
X-Google-Smtp-Source: APXvYqyngmd2Rg7LbbyIIoGmaR3URsrZvldAi9oHTTvEW7shZpguleHzKCoPWfRQ0zGoAN9CeBeNA81xUQUG0rbjvsw=
X-Received: by 2002:ac8:1a59:: with SMTP id q25mr27066278qtk.76.1562110013149; 
 Tue, 02 Jul 2019 16:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190702231302.60727-1-nhuck@google.com>
 <20190702232459.GA14941@archlinux-epyc>
In-Reply-To: <20190702232459.GA14941@archlinux-epyc>
From: Nathan Huckleberry <nhuck@google.com>
Date: Tue, 2 Jul 2019 16:26:42 -0700
Message-ID: <CAJkfWY4yvVVmJoQ0WwyoFBkWYsUJnnQPNU+-g23-m-L3ETe_hQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: mm: Fix dead assignment of old_pte
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_162656_953171_422A8401 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Oops I forgot moving the variable declaration would cause a warning.
Will send a V2.

Thanks,
Nathan Huckleberry

On Tue, Jul 2, 2019 at 4:25 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jul 02, 2019 at 04:13:02PM -0700, 'Nathan Huckleberry' via Clang Built Linux wrote:
> > When analyzed with the clang static analyzer the
> > following warning occurs
> >
> > line 251, column 2
> > Value stored to 'old_pte' is never read
> >
> > This warning is repeated every time pgtable.h is
> > included by another file and produces ~3500
> > extra warnings.
> >
> > Moving old_pte into preprocessor guard.
> >
> > Cc: clang-built-linux@googlegroups.com
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >  arch/arm64/include/asm/pgtable.h | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index fca26759081a..42ca4fc67f27 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -238,8 +238,6 @@ extern void __sync_icache_dcache(pte_t pteval);
> >  static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
> >                             pte_t *ptep, pte_t pte)
> >  {
> > -     pte_t old_pte;
> > -
> >       if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
> >               __sync_icache_dcache(pte);
> >
> > @@ -248,8 +246,11 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
> >        * hardware updates of the pte (ptep_set_access_flags safely changes
> >        * valid ptes without going through an invalid entry).
> >        */
> > +     #if IS_ENABLED(CONFIG_DEBUG_VM)
> > +     pte_t old_pte;
> > +
> >       old_pte = READ_ONCE(*ptep);
> > -     if (IS_ENABLED(CONFIG_DEBUG_VM) && pte_valid(old_pte) && pte_valid(pte) &&
> > +     if (pte_valid(old_pte) && pte_valid(pte) &&
> >          (mm == current->active_mm || atomic_read(&mm->mm_users) > 1)) {
> >               VM_WARN_ONCE(!pte_young(pte),
> >                            "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
> > @@ -258,6 +259,7 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
> >                            "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
> >                            __func__, pte_val(old_pte), pte_val(pte));
> >       }
> > +     #endif
> >
> >       set_pte(ptep, pte);
> >  }
> > --
> > 2.22.0.410.gd8fdbe21b5-goog
> >
>
> Hi Nathan,
>
> This does not apply on -next because of https://git.kernel.org/arm64/c/9b604722059039a1a3ff69fb8dfd024264046024.
> I would get into the habit of testing -next to see if the warning is
> present there first because someone may have independently fixed it
> already (I'd be surprised if it wasn't fixed by that commit from a quick
> glance).
>
> Additionally, when I do apply this patch to mainline and build, I see
> the following warning:
>
> In file included from /home/nathan/cbl/linux/arch/arm64/kernel/asm-offsets.c:10:
> In file included from /home/nathan/cbl/linux/include/linux/arm_sdei.h:14:
> In file included from /home/nathan/cbl/linux/include/acpi/ghes.h:5:
> In file included from /home/nathan/cbl/linux/include/acpi/apei.h:9:
> In file included from /home/nathan/cbl/linux/include/linux/acpi.h:34:
> In file included from /home/nathan/cbl/linux/include/acpi/acpi_io.h:5:
> In file included from /home/nathan/cbl/linux/include/linux/io.h:13:
> In file included from /home/nathan/cbl/linux/arch/arm64/include/asm/io.h:18:
> /home/nathan/cbl/linux/arch/arm64/include/asm/pgtable.h:250:8: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
>         pte_t old_pte;
>               ^
> 1 warning generated.
>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190702232459.GA14941%40archlinux-epyc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
