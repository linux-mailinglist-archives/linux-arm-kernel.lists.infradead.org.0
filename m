Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1A4F423C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:36:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FE/37zpuxeUs0JNUkAju6fGTNUVoCyxdsLAlpyTPfEY=; b=uu+vdnsaQlWHX3
	tv2EEuHyE9Ubb2hW5KjVlAZpfS4+tHtsJbAlR2zSOuuw0jeBtHPxUg2FV8DNheIuVZiwNOaJjn4Tg
	SEA5D50wnH120uRXRFo62HngP1DmCbCZV11YV/U+w5M/SxF7EmLJkrIlXjGofY758upFvMkrgTKLU
	qgOjOf83dr4dYdVqHCvRbaLLIC7PcM37wJ/JvO+xI2YCmkVHc3ChDnSJNjsp8wA1rwA51FvIfFomE
	q9prUqP/FlFiNye97bgj/EaNP6lMp+5xRwGRJyQ0hNXFQ8Nfj78aSFERakeWiE+efHXLMibjoff4A
	t8Uj6MwKM3f0OMvAE4Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzkH-00013Y-8R; Fri, 08 Nov 2019 08:35:53 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzk7-00012Y-OI; Fri, 08 Nov 2019 08:35:45 +0000
Received: by mail-oi1-f195.google.com with SMTP id j7so4573524oib.3;
 Fri, 08 Nov 2019 00:35:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h1uMs1sJfEiNP+XnwLWOA56bVLhvU2oQuJJbSb2fF04=;
 b=Sz6KZezBOjTRatGfiicNwQahFEoIX3zz1GB0o65VSoEIS3gtWX0E+/l+J2v0otXYZX
 x9j1wzcYBOjhD6RunDqhcLEDkiYm3laoeJudW9Cfgqj18Q9CCe0y+J6jBuvslqUgfz8S
 nnh8+mU1o0EwOUgqj5xOiKDaAXx9jagMyPdu1Qt0VR4dL9yZOh5cgFFklbno3BKw/a8U
 I0hDCDTeA3VfL8yqkkGpZ7sRP2AUXI8wuk7to35fXzs3UgBmhdODSNo4LV5jYNwhzMRx
 /doApqBTct1R4IOxtUxEgeIKlEvK29o1fJ0wJTbdrH2XeechxgBOkV2KXQYbAY99V9Sc
 6wuA==
X-Gm-Message-State: APjAAAVcyVsUoeoO8mEBzD/0Z2qYxm4PvkTUjeQ3n/xhnikR8fZFjkUC
 M6R7bQ1xxb9mS/83fuoVp1nvSS09RvMtx/TjB4U=
X-Google-Smtp-Source: APXvYqxOUOr/TBH5H/Et++6eJWrvXzscFQJINZxRtWaYCdbXL4E/D5dDGUqtPMP+MwKaU6AtU89yWbI44eh67jVJ2zk=
X-Received: by 2002:aca:3a86:: with SMTP id h128mr8105952oia.131.1573202142533; 
 Fri, 08 Nov 2019 00:35:42 -0800 (PST)
MIME-Version: 1.0
References: <1572938135-31886-1-git-send-email-rppt@kernel.org>
 <1572938135-31886-6-git-send-email-rppt@kernel.org>
In-Reply-To: <1572938135-31886-6-git-send-email-rppt@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 Nov 2019 09:35:31 +0100
Message-ID: <CAMuHMdXqaw_k=XiY0RYvvR+smE-5tbTBzWiAZOFev731vR3q3A@mail.gmail.com>
Subject: Re: [PATCH v4 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
To: Mike Rapoport <rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_003543_790328_8794FF5C 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Linux-Arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On Tue, Nov 5, 2019 at 8:16 AM Mike Rapoport <rppt@kernel.org> wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
>
> m68k has two or three levels of page tables and can use appropriate
> pgtable-nopXd and folding of the upper layers.
>
> Replace usage of include/asm-generic/4level-fixup.h and explicit
> definitions of __PAGETABLE_PxD_FOLDED in m68k with
> include/asm-generic/pgtable-nopmd.h for two-level configurations and with
> include/asm-generic/pgtable-nopud.h for three-lelve configurations and
> adjust page table manipulation macros and functions accordingly.
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> Acked-by: Greg Ungerer <gerg@linux-m68k.org>

Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

One forgotten error message update below.

> --- a/arch/m68k/mm/kmap.c
> +++ b/arch/m68k/mm/kmap.c
> @@ -258,18 +265,23 @@ void __iounmap(void *addr, unsigned long size)
>  {
>         unsigned long virtaddr = (unsigned long)addr;
>         pgd_t *pgd_dir;
> +       p4d_t *p4d_dir;
> +       pud_t *pud_dir;
>         pmd_t *pmd_dir;
>         pte_t *pte_dir;
>
>         while ((long)size > 0) {
>                 pgd_dir = pgd_offset_k(virtaddr);
> -               if (pgd_bad(*pgd_dir)) {
> -                       printk("iounmap: bad pgd(%08lx)\n", pgd_val(*pgd_dir));
> -                       pgd_clear(pgd_dir);
> +               p4d_dir = p4d_offset(pgd_dir, virtaddr);
> +               pud_dir = pud_offset(p4d_dir, virtaddr);
> +               if (pud_bad(*pud_dir)) {
> +                       printk("iounmap: bad pgd(%08lx)\n", pud_val(*pud_dir));

bad pud

> +                       pud_clear(pud_dir);
>                         return;
>                 }
> -               pmd_dir = pmd_offset(pgd_dir, virtaddr);
> +               pmd_dir = pmd_offset(pud_dir, virtaddr);
>
> +#if CONFIG_PGTABLE_LEVELS == 3
>                 if (CPU_IS_020_OR_030) {
>                         int pmd_off = (virtaddr/PTRTREESIZE) & 15;
>                         int pmd_type = pmd_dir->pmd[pmd_off] & _DESCTYPE_MASK;

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
