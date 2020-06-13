Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BBF1F836D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 15:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hB59n4i1GlIdfDGLqLwH+yt34y6i0hLzEv6WK/0pSc=; b=dVuZedMQIO6fPm
	R2ke7WqUJ6axkg5Q82wj9MLzRUU3FUEYfp5oQwhflg48cJ833V/ZRBzG2ZjNRgqDvFbhtELwD2nCH
	8jpYTYu/XlkED3hrLIXNiWiV3FIq8Ar1H0Sn9XI/M1j59UZJujsGWNiqZH77C0MIWUR87QBJ7jSKE
	Gq1UapiJ1ZyGrEzQ0XFZuPkd2hwR7zmDZnUwwgt3qlXWJPwCPjm0cWZcL+NIb1p8fnQItVfcnWUbh
	X4f2UnIy4rvCYawn9POM/8F60KpIqGG1qL2L4NTkyK3hlGfWMjCyJOd1uxRO9eRV7RQ2z4k4VBZhe
	TJ1BdggUFNB2PuyzMY3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk6ED-0003G3-QX; Sat, 13 Jun 2020 13:29:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk6E4-0003FA-DU
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 13:29:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id 23so5633693pfw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 06:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FgD7trK9UXai91vKASUg9drm0IS6CWPS1x1rvWXbOqI=;
 b=YAz0iEo0hPYKJp7OqcrKcUh3QZ6NVMIfb8JNmJQexYFLcsQkcfe4oxjTldEqzp1vko
 o/MMzJRE9NB1XlzFvR6IHPhztJaGV/ZhEZsqJgnRPvX/HupGJlunL51IFW5HotEA3YuB
 qH2io2BRmD/6UGpmHm6GvXQaTLExnDvJtSkRYRsRAyNvY3ti8b1eAl0EnwgKxvU1qBY8
 Jimb0i7fRhLucW3TTviZB0t+bhCGvrMheIWKAmsTYW6DAvHvBKa0DEtBhyKHJTP0EWzj
 bijLfnxKVWKqQ+CsboOhnIEVkNwJMkpCYpm6zQ6mxTI9OtHC92qxpeRP9nNal0Y+VMeI
 JFGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FgD7trK9UXai91vKASUg9drm0IS6CWPS1x1rvWXbOqI=;
 b=OKcj28UdIWW8hGs4N9m7DKpQ9eY2L36CUmrv/ZfJxkA+JuE1sLNqVfWQWwsWTrh9fX
 5QxUavSya/vYCL7D2pXT2XUp89hyBoAEm47En98V/SnRhY7wzTprtfUIVoITczZHZ2Hs
 SW5c2G9SB5cdezr6wh+OcLmnBnH+FArrO2ALhMFXONnvWpzrBmkRy6Y08hPsFts3Gv+L
 aYzuhhlr5vOlZua6VGQoFJZXsmOD2XwfBIczIxFQxoFe+Mp68cbAHbK49GX6sLlJPkD6
 KJYqT1D2hJcxchl6HL5bJHDbMJyUm/X7fNdAVxP1Geis8cc4bb8xK3N0M4nhmeT5yi5t
 ozEQ==
X-Gm-Message-State: AOAM530bWHiW0dkleohZ/6lESdDHNO6disvpWWHg07rWV64PJoDwfbhJ
 2DGV20FqxOqQg49rMxUTXK8=
X-Google-Smtp-Source: ABdhPJzRhgcSz+npSCAV/H07NPbuJdcfBHWW62k9iaNoNkiA7BP5w79gXw1gi9vcc51wgZllbwjPcA==
X-Received: by 2002:a62:3582:: with SMTP id
 c124mr11627890pfa.298.1592054973085; 
 Sat, 13 Jun 2020 06:29:33 -0700 (PDT)
Received: from localhost ([49.207.210.132])
 by smtp.gmail.com with ESMTPSA id p19sm8996514pff.116.2020.06.13.06.29.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 13 Jun 2020 06:29:32 -0700 (PDT)
Date: Sat, 13 Jun 2020 18:59:30 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200613132930.GA4005@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAHp75VfRxDH-UE+O7_9W4zyBzPt2+3LeV-=C4iZq2PLwPEbhBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VfRxDH-UE+O7_9W4zyBzPt2+3LeV-=C4iZq2PLwPEbhBw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_062936_476301_CC09F0F0 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Hi,

On Sat, Jun 13, 2020 at 02:08:11PM +0300, Andy Shevchenko wrote:
> On Fri, Jun 12, 2020 at 1:20 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

> > +// Started from arch/um/kernel/skas/uaccess.c
> 
> Does it mean you will deduplicate it there?

What i meant was, that file was taken as a template & nothing more, at
same time i wanted to give credit to that file, i will explicitly
mention it next time.

It is not meant to deduplicate it. Functionality here is completely
different.

In the case here, there would be different virtual address mapping
that CPU will be see once in Kernel as compared to user mode.

Here a facility is provided to access the user page, when the
current virtual address mapping of the CPU excludes it. This
is for providing full 4G virtual address to both user & kernel on
32bit ARM to avoid using highmem or reduce the impact of highmem,
i.e. so that Kernel can address till 4GiB (almost) as lowmem.

Here assumption is that user mapping is not a subset of virtual
address mapped by CPU, but a separate one. Upon Kernel entry ttbr0
is changed to Kernel lowmem, while upon Kernel exit is changed back to
user pages (ttbrx in ARM, iiuc, equivalent to cr3 in x86)

Now realize that i am unable to put coherently the problem being
attempted to solve here to a person not familiar w/ the issue
w/o taking considerable time. If above explanation is not enough,
i will try to explain later in a better way.

> > +#include <linux/err.h>
> > +#include <linux/slab.h>
> > +#include <linux/highmem.h>
> > +#include <linux/mm.h>
> 
> Perhaps ordered?

will take care

> > +static int do_op_one_page(unsigned long addr, int len,
> > +                int (*op)(unsigned long addr, int len, void *arg), void *arg,
> > +                struct page *page)
> 
> Maybe typedef for the func() ?

will take care

> > +{
> > +       int n;
> > +
> > +       addr = (unsigned long) kmap_atomic(page) + (addr & ~PAGE_MASK);
> 
> I don't remember about this one...

i am not following you here, for my case !CONFIG_64BIT case in that
file was required, hence only it was picked (or rather not deleted)

> > +       size = min(PAGE_ALIGN(addr) - addr, (unsigned long) len);
> 
> ...but here seems to me you can use helpers (offset_in_page() or how
> it's called).

i was not aware of it, will use it as required.

> 
> Also consider to use macros like PFN_DOWN(), PFN_UP(), etc in your code.

Okay

> 
> > +       remain = len;
> > +       if (size == 0)
> > +               goto page_boundary;
> > +
> > +       n = do_op_one_page(addr, size, op, arg, *pages);
> > +       if (n != 0) {
> 
> > +               remain = (n < 0 ? remain : 0);
> 
> Why duplicate three times (!) this line, if you can move it to under 'out'?

yes better to move there

> 
> > +               goto out;
> > +       }
> > +
> > +       pages++;
> > +       addr += size;
> > +       remain -= size;
> > +
> > +page_boundary:
> > +       if (remain == 0)
> > +               goto out;
> > +       while (addr < ((addr + remain) & PAGE_MASK)) {
> > +               n = do_op_one_page(addr, PAGE_SIZE, op, arg, *pages);
> > +               if (n != 0) {
> > +                       remain = (n < 0 ? remain : 0);
> > +                       goto out;
> > +               }
> > +
> > +               pages++;
> > +               addr += PAGE_SIZE;
> > +               remain -= PAGE_SIZE;
> > +       }
> 
> Sounds like this can be refactored to iterate over pages rather than addresses.

Okay, i will check

> > +static int copy_chunk_from_user(unsigned long from, int len, void *arg)
> > +{
> > +       unsigned long *to_ptr = arg, to = *to_ptr;
> > +
> > +       memcpy((void *) to, (void *) from, len);
> 
> What is the point in the casting to void *?

The reason it was there was because of copy-paste :), passing unsigned
long as 'void *' or 'const void *' requires casting right ?, or you
meant something else ?

now i checked removing the cast, compiler is abusing me :), says
'makes pointer from integer without a cast'

> > +       num_pages = DIV_ROUND_UP((unsigned long)from + n, PAGE_SIZE) -
> > +                                (unsigned long)from / PAGE_SIZE;
> 
> PFN_UP() ?

Okay

> I think you can clean up the code a bit after you will get the main
> functionality working.

Yes, surely, intention was to post proof-of-concept ASAP, perhaps
contents will change drastically in next version so that any
resemblence of arch/um/kernel/skas/uaccess.c might not be there.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
