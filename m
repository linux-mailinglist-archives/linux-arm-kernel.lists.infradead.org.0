Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D87AE6B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LmI0/GB2ZyKZV0xEkDPzEVRhwMjj25rGt1nq7Nb91E=; b=rY2upX3IdOk9mi
	dQCfxT7HYwFPQT3mJgU5wWIeQLkxcxZQ0rSOCnOTyN++z/V+9GraY+84qP+0HRdiV0G0ae2uzMEhI
	N1+zuJqJA/dDCy/WH4+NIhsLjryfhbi9NCEPRV+T3AI2GYti/j6RWkhCvPcsIy8tD/EqHRmxAFaDY
	fBn2xcBox/ROdfX9QFByF5WkzozhT7Dh6gBq+f1m5pTDtQpMDPWG0bpUJKGdCfZUB3HJPgPPtqXNo
	APywTDGePP0Q2T9lrLt5Mm+djEFTvZTBwz5w0AbwfCE91fpJAOwfXbc0/YTCXdLRYtjQ/sXDLsc9B
	F7OA/e9ZKKBNXKd5z/GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cKn-00026m-9C; Tue, 10 Sep 2019 09:21:13 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cKW-00025A-Kc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:20:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id i1so16399708edv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 02:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fVGVsESSvCGQOFNvs9wLVPNtEbA+xNhK0Vsp0KuYL0U=;
 b=l1enudLKhX+NelYlOqQKvgNY5xLG29otQPhknZNcMkv0NM6LGktXu52o7Rq9oXni7U
 rT6qa9jJFvVV7DGrQcvT7TkQVr7YPjzLLN2yyQhzqc/3CKUefFYh0Wj1fNGmGs1LrBaU
 +Rt/P8fFgugTd0kFHr2Ss0tY7TIbjyM5B9kitn9D5U0zYDDTKHkZiimf0vIykHPbq2fZ
 mZWj8mIoPkIvn0hdw5gdaffVtvbc7DNotaOw6ScSEUxSsXK+bbSJXldYd/iSPSahFARY
 wygqctO/41VVuzlrbXrPVfgvn1BZBO8SRggWpYtz77R2bRkNGZ3TfXnz9srnNazLkorr
 QBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fVGVsESSvCGQOFNvs9wLVPNtEbA+xNhK0Vsp0KuYL0U=;
 b=lpaTRZCaWAghtdRbf36lYuWvptzXh5u+AG0WlC3s4UBF9Dv7SDyo7S1W2Xbwut6qCY
 TL69k/+25B7OlLRgWyYYnuF3QhlUVKl0IY+8bxMeQc8BioZsP2ntyzJ0/I0PNiR3BkRR
 a+uLZsnmJeEnWnmRlgkC4tKRGH03CuClBC6UCZFkPAAoCq5D01oQuCs+/Bw6EvNeCMcY
 JOIkq+f6lUB9GRCt71J9YBthjzRDQwIwcDqr4IhbEmxRA6XYZjCAVlY4tbJr1EBKIkSv
 906zmOioo6GOHb5sAaDzF4cOw+XUCmVL5P0MgSOe+Je0GtzYIKnilegqvrFCLtJ1HrXi
 Wg9w==
X-Gm-Message-State: APjAAAVxtH3o4rvhHUt7iPao9y6QTWiHjszzINQbd/h9VCE/mZmyCf7/
 GnQ8NdD/AwcxvYIj0Y++SPWcyKROqHnzZ19Ja4+asw==
X-Google-Smtp-Source: APXvYqxafwr9K7U55nRLBrBFKjJwhzRPMsyqMlNm7SM6xGY0Iw+4afMLkFcRjz7kyMGTKRb774E7d1RrUT7vfuc/ufA=
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr28832869edv.124.1568107254841; 
 Tue, 10 Sep 2019 02:20:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
 <20190909181221.309510-11-pasha.tatashin@soleen.com>
 <60975350-87f8-56b3-437d-d9ee26ac3bd3@suse.com>
In-Reply-To: <60975350-87f8-56b3-437d-d9ee26ac3bd3@suse.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 10 Sep 2019 10:20:43 +0100
Message-ID: <CA+CK2bBK40T_DEhNvz8nQaKSsanxXpGYhBm05N_NmZtq+JDVTg@mail.gmail.com>
Subject: Re: [PATCH v4 10/17] arm64: trans_pgd: make trans_pgd_map_page generic
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_022056_674547_16287541 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > +/*
> > + * Add map entry to trans_pgd for a base-size page at PTE level.
> > + * page:     page to be mapped.
> > + * dst_addr: new VA address for the pages
> > + * pgprot:   protection for the page.
>
> For consistency please describe all function parameters. From my experience
> function parameter description is normally done in the C-file that implements
> the logic. Don't ask me why.

Ok, I move the comment, and will describe every parameter. Thank you.

>
> > + */
> > +int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
> > +                    void *page, unsigned long dst_addr, pgprot_t pgprot);
> >
> >  #endif /* _ASM_TRANS_TABLE_H */
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 94ede33bd777..9b75b680ab70 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -179,6 +179,12 @@ int arch_hibernation_header_restore(void *addr)
> >  }
> >  EXPORT_SYMBOL(arch_hibernation_header_restore);
> >
> > +static void *
> > +hibernate_page_alloc(void *arg)
>
> AFAICS no new line needed here.

Right, will fix it.

>
> > +{
> > +     return (void *)get_safe_page((gfp_t)(unsigned long)arg);
> > +}
> > +
> >  /*
> >   * Copies length bytes, starting at src_start into an new page,
> >   * perform cache maintenance, then maps it at the specified address low
> > @@ -195,6 +201,10 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >                                unsigned long dst_addr,
> >                                phys_addr_t *phys_dst_addr)
> >  {
> > +     struct trans_pgd_info trans_info = {
> > +             .trans_alloc_page       = hibernate_page_alloc,
> > +             .trans_alloc_arg        = (void *)GFP_ATOMIC,
> > +     };
>
> New line between end of struct and other variables.

Sure.

>
> With these changes:
> Reviewed-by: Matthias Brugger <mbrugger@suse.com>

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
