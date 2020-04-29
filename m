Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BCA1BD623
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=re6ejZ4jIsX0VxdP+JWwZh0qW4ap9RABHlLgUYWwE+g=; b=Rm1U79tyHenEzJ
	JcBkL34Gi/DWVD/iMIsDoyR5kXk/YxoqOECxVx1evWnP54vyxt8ayVqXytM6vDHd2AqJ5XTq25FUr
	R72Xkgq+QOh6Ap2APpIF1TxQ2eY/N9XSNc4UVBqJu5TOo8rsixn+aPSdL/Fg6oI+wLKSpN2ztdbkH
	cKh424fD1IoXdGoep5E5Gr6BkrCk54CIX4mo6MJX+aSBvyYMg8YwXGofqhngfclB/kglXtezX6Hex
	q9Q/AZ1VZXENX0zfh4F6kCDM28rbvt61RBTZbnXqkf6y6gunRUpv/sS9xPc4IgEYAamJ9bpGXQEA4
	BMNi3ksRSzXAtQkm0dqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThEf-0005Uk-1l; Wed, 29 Apr 2020 07:34:25 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThEV-0005UI-FV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:34:16 +0000
Received: by mail-oi1-f194.google.com with SMTP id o24so1005260oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 00:34:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SyWquW6C3h9yYRPnL8ZX6mVqONgOMsOlS/nbLkzCvR8=;
 b=G43x0pC2rscikVO4hLFX5ftthJl0XQGlYA/g448dwPMmySAvOQx3ji04bAQjUkGERE
 Fo3bJon/ZKCNZggTrR5y1P1fnRW4vgwJnGB+wv4tU3G6Q+OLtdCmPT7n/C8N9v6E7NTm
 +dQlc8dPMBvOmVZp7zjSgsonHcvtuLXi5PB4Ow/Kh1x4KcLdmRdlCIsOHnhnuV+XYaZG
 WPyTyk/QHNoNlsTp7Rj0qD7Xu0UzoVqBxVhGbjURBPey1BxLRTIMhGm02JLLBr3Ql8Es
 1FRMWWzLhP8h6tT+eF3icYbBwh3yn0ucq/aF8p980HjydFK7zZULyZgqfMK26RZWNl0v
 4wuw==
X-Gm-Message-State: AGi0Pub4fvkPVYeMUcpHQtZRuXbMeaUQsOtxCUxZWvfAnc8/HfHy608G
 MOHaNSBmJO3zNd3moAy+jM//016PTS1GnwaRcMNvWQ==
X-Google-Smtp-Source: APiQypJAsZR6cJVnPhd52DhYQokiZWeX1PxL/6m2Vvtp1dgHuL2QQU2M5utJVEIEaKuPsXF6mplj99rnUrUZngmlKtw=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr810760oig.54.1588145654121;
 Wed, 29 Apr 2020 00:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-3-willy@infradead.org>
In-Reply-To: <20200428194449.22615-3-willy@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Apr 2020 09:34:02 +0200
Message-ID: <CAMuHMdUw38VD8WJe5Zbaudnee74ZgLwbfhRwU8Pi9ALitre+_Q@mail.gmail.com>
Subject: Re: [PATCH 2/7] mm: Move pt_mm within struct page
To: Matthew Wilcox <willy@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_003415_517456_259220B4 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthew,

On Tue, Apr 28, 2020 at 9:44 PM Matthew Wilcox <willy@infradead.org> wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> Instead of a per-arch word within struct page, use a formerly reserved
> word.  This word is shared with page->mapping, so it must be cleared
> before being freed as it is checked in free_pages().
>
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Thanks for your patch!

> --- a/include/linux/mm_types.h
> +++ b/include/linux/mm_types.h
> @@ -149,11 +149,8 @@ struct page {
>                                         pgtable_t pmd_huge_pte;
>                                 };
>                         };
> -                       unsigned long _pt_pad_2;        /* mapping */
> -                       union {
> -                               struct mm_struct *pt_mm; /* x86 pgds only */
> -                               atomic_t pt_frag_refcount; /* powerpc */
> -                       };
> +                       struct mm_struct *pt_mm;
> +                       atomic_t pt_frag_refcount; /* powerpc */

So here is now an implicit hole on 64-bit platforms, right?
Do we have any where alignof(long) != 8?

>  #if ALLOC_SPLIT_PTLOCKS
>                         spinlock_t *ptl;
>  #else

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
