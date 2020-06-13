Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B13B1F830C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 13:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mtHHm8ULTghrVKzjD4o83z0/ngGYqkQy7cYWMc3L4c=; b=t16+/HVfR1AC/g
	lbn2HyIdeP4ixPU6afyTlSiutQznB65mIS5R45tuBTqGAJ2Sk0eE00DosZVthplpV9k/VydZu0X4a
	7xN35Bd5XRMfRdipEsB6BwbwcG2WXXjeWsQ90Ae73WhHLtXUHbc3uwyYGTzcThOAex2Y7Yoy88adD
	3i7kG811JMUnm8Oa5mEKO+fI5yQS5SI/mv+6Axrtmtqi/73gxubnl1feuVAtwIF/cfC/F//E++Ll7
	cRchpik2luVW7iO5F08i9/Me3ygYkGUm2K+8M/78n8A5hQ9Di2quJOuxg3PFeCO+5oDedYARrjQyF
	AQaffP0snvjCHBfcm0KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk41e-0001xq-LL; Sat, 13 Jun 2020 11:08:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk41W-0001xH-Bk
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 11:08:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id t7so5357941pgt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 04:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KkGNponpocVT1qAlSBkmbT/0fDQhc4cCY7fZTe5debY=;
 b=WsjC9xGSzAq2ycO61aJjdhojVuKTnafM/X95A418DSCRsZvPhRsolz3MR042xaD4Sn
 SJ6vEycRTKInFJ341dMgo9g7gcm9Unm76q+fGOYo5joX5TKfShKH+SIdKva4htXnH8O+
 zYmYYWIlrOyLkQUr9e+zhO0sNMaWgUlTfFwkOq7Muv/f2yR/rkI/WjFdAcfZzI1cAC6D
 cmaJkB5B9Qahikxs7VCXBowrsYVHekACCvk9LoWZHRQ7Et/6Yc/dapzzVtnk23+fOsPq
 mlmuoofIgjqNz/lX3X7f+l482ofaLT+rrGICKxryQu4r81mGQO3UmlWC0qVI/wCYp92m
 ap9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KkGNponpocVT1qAlSBkmbT/0fDQhc4cCY7fZTe5debY=;
 b=WG+4fXuL8rTEk7EFgsJOObyeWM1/e8+fRJtfpRzZwWN25Yxw1sfCUGXQca3wSDvvJN
 JRgFsJdWbhKNS+AV9VsnM0KgiZsdDXCeWlfMFoeavlCN1XlHgmhA1vvYEbcluZie74ps
 8MzN4FttPvL8CorqUPh3Y7teZjoIkFOozPjJT2VVlKgCrhO60jgRsSjlS8CoA14+ELPl
 ZTfYa99hvMLCfnXpnNa0ZiHQmUvhMDbnaFaH3JSjXtOQuWQz/iYlrFBVBk5eABk5QeuN
 GPpsGn55Axz6WWqpDUGVuQ4CEsGct7RL2FwnhcP/t4MRwuebAQ1Jhr0Br3kz5Bc3zyEG
 xkyA==
X-Gm-Message-State: AOAM533MLla+nKtqOWBlh2i2VKV9AY205/vwfdPwKWUGwaEd2rPDsvqV
 DBtO0MVVtuyP92O3BVxbUbXKcB4gm5AEY/PuTTE=
X-Google-Smtp-Source: ABdhPJyKgJAiFYOq1sl/ONbpxVBHe1PqrTuejkwZKkqfgo2Tagov6GnYx5GIt/KxJmpVkqbpin/QvYzrbe7T0VOe8Ko=
X-Received: by 2002:a62:5284:: with SMTP id g126mr9237977pfb.36.1592046508560; 
 Sat, 13 Jun 2020 04:08:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
In-Reply-To: <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 13 Jun 2020 14:08:11 +0300
Message-ID: <CAHp75VfRxDH-UE+O7_9W4zyBzPt2+3LeV-=C4iZq2PLwPEbhBw@mail.gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_040830_433165_4D358A33 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mm <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 1:20 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> copy_{from,to}_user() uaccess helpers are implemented by user page
> pinning, followed by temporary kernel mapping & then memcpy(). This
> helps to achieve user page copy when current virtual address mapping
> of the CPU excludes user pages.
>
> Performance wise, results are not encouraging, 'dd' on tmpfs results,
>
> ARM Cortex-A8, BeagleBone White (256MiB RAM):
> w/o series - ~29.5 MB/s
> w/ series - ~20.5 MB/s
> w/ series & highmem disabled - ~21.2 MB/s
>
> On Cortex-A15(2GiB RAM) in QEMU:
> w/o series - ~4 MB/s
> w/ series - ~2.6 MB/s
>
> Roughly a one-third drop in performance. Disabling highmem improves
> performance only slightly.
>
> 'hackbench' also showed a similar pattern.
>
> uaccess routines using page pinning & temporary kernel mapping is not
> something new, it has been done long long ago by Ingo [1] as part of
> 4G/4G user/kernel mapping implementation on x86, though not merged in
> mainline.
>
> [1] https://lore.kernel.org/lkml/Pine.LNX.4.44.0307082332450.17252-100000@localhost.localdomain/

Some comments (more related to generic things).

...

> +// Started from arch/um/kernel/skas/uaccess.c

Does it mean you will deduplicate it there?

...

> +#include <linux/err.h>
> +#include <linux/slab.h>
> +#include <linux/highmem.h>
> +#include <linux/mm.h>

Perhaps ordered?


> +static int do_op_one_page(unsigned long addr, int len,
> +                int (*op)(unsigned long addr, int len, void *arg), void *arg,
> +                struct page *page)

Maybe typedef for the func() ?

> +{
> +       int n;
> +
> +       addr = (unsigned long) kmap_atomic(page) + (addr & ~PAGE_MASK);

I don't remember about this one...

> +       n = (*op)(addr, len, arg);
> +       kunmap_atomic((void *)addr);
> +
> +       return n;
> +}
> +
> +static long buffer_op(unsigned long addr, int len,
> +                     int (*op)(unsigned long, int, void *), void *arg,
> +                     struct page **pages)
> +{
> +       long size, remain, n;
> +

> +       size = min(PAGE_ALIGN(addr) - addr, (unsigned long) len);

...but here seems to me you can use helpers (offset_in_page() or how
it's called).

Also consider to use macros like PFN_DOWN(), PFN_UP(), etc in your code.

> +       remain = len;
> +       if (size == 0)
> +               goto page_boundary;
> +
> +       n = do_op_one_page(addr, size, op, arg, *pages);
> +       if (n != 0) {

> +               remain = (n < 0 ? remain : 0);

Why duplicate three times (!) this line, if you can move it to under 'out'?

> +               goto out;
> +       }
> +
> +       pages++;
> +       addr += size;
> +       remain -= size;
> +
> +page_boundary:
> +       if (remain == 0)
> +               goto out;
> +       while (addr < ((addr + remain) & PAGE_MASK)) {
> +               n = do_op_one_page(addr, PAGE_SIZE, op, arg, *pages);
> +               if (n != 0) {
> +                       remain = (n < 0 ? remain : 0);
> +                       goto out;
> +               }
> +
> +               pages++;
> +               addr += PAGE_SIZE;
> +               remain -= PAGE_SIZE;
> +       }

Sounds like this can be refactored to iterate over pages rather than addresses.

> +       if (remain == 0)
> +               goto out;
> +
> +       n = do_op_one_page(addr, remain, op, arg, *pages);
> +       if (n != 0) {
> +               remain = (n < 0 ? remain : 0);
> +               goto out;
> +       }
> +
> +       return 0;

> +out:
> +       return remain;
> +}

...

> +static int copy_chunk_from_user(unsigned long from, int len, void *arg)
> +{
> +       unsigned long *to_ptr = arg, to = *to_ptr;
> +
> +       memcpy((void *) to, (void *) from, len);

What is the point in the casting to void *?

> +       *to_ptr += len;
> +       return 0;
> +}
> +
> +static int copy_chunk_to_user(unsigned long to, int len, void *arg)
> +{
> +       unsigned long *from_ptr = arg, from = *from_ptr;
> +
> +       memcpy((void *) to, (void *) from, len);
> +       *from_ptr += len;

Ditto.

> +       return 0;
> +}
> +
> +unsigned long gup_kmap_copy_from_user(void *to, const void __user *from, unsigned long n)
> +{
> +       struct page **pages;
> +       int num_pages, ret, i;
> +
> +       if (uaccess_kernel()) {
> +               memcpy(to, (__force void *)from, n);
> +               return 0;
> +       }
> +

> +       num_pages = DIV_ROUND_UP((unsigned long)from + n, PAGE_SIZE) -
> +                                (unsigned long)from / PAGE_SIZE;

PFN_UP() ?

> +       pages = kmalloc_array(num_pages, sizeof(*pages), GFP_KERNEL | __GFP_ZERO);
> +       if (!pages)
> +               goto end;
> +
> +       ret = get_user_pages_fast((unsigned long)from, num_pages, 0, pages);
> +       if (ret < 0)
> +               goto free_pages;
> +
> +       if (ret != num_pages) {
> +               num_pages = ret;
> +               goto put_pages;
> +       }
> +
> +       n = buffer_op((unsigned long) from, n, copy_chunk_from_user, &to, pages);
> +
> +put_pages:
> +       for (i = 0; i < num_pages; i++)
> +               put_page(pages[i]);
> +free_pages:
> +       kfree(pages);
> +end:
> +       return n;
> +}

...

I think you can clean up the code a bit after you will get the main
functionality working.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
