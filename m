Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90D31F779A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wgw9J8C76CIIng+ArAYhDI/UTHgjEiPhJjU+Eue5KQ=; b=qNU9aezuaPbN+b
	Ay7xF+u0pBDbNM/rAw+f2gstXZOPVaoDFZj6JPWk0CYhbOwRLs7l/EX612sPDnc8DUd+smHpJgFDl
	0RRsdMlFuU5ZegepMVf0QRYMCCvZ7jybLXpFfHADJD1vo4gQGJmhceL5IFubyNhh7KDdgjn1zE6Zv
	39G7EAye8koSKPGSXxQRFahhzTfadbiBYwwF06Go2aXQVZmwB5rauWw0mSLUUiA1Ul7R9uU7UQUir
	OHbG0RpJgkizKqmfJsAtbeqzRXO3ZboQQEuymMugcSYUP2osLCpT8tqAA9aCtFupzWAQps2cPobUb
	nL9n8fvkNbGefs8yh4hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiOS-0001MW-T7; Fri, 12 Jun 2020 12:02:44 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiOI-0001M1-1d
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:02:36 +0000
Received: from mail-qv1-f49.google.com ([209.85.219.49]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N33AR-1inAKY3aMX-013Nup for <linux-arm-kernel@lists.infradead.org>; Fri,
 12 Jun 2020 14:02:32 +0200
Received: by mail-qv1-f49.google.com with SMTP id di13so4198703qvb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 05:02:31 -0700 (PDT)
X-Gm-Message-State: AOAM530Jw3+xdqAIpRyM6rqQUKxZAT15w0k4e0He56ihoMuoWjskgRfJ
 P5eHtIvoQu9n6qhJ/v3wjsWnYBnZEZQNdqfv+ME=
X-Google-Smtp-Source: ABdhPJwaC0q8qhyefJKAApvPQhwFQE9nP2a9nN27A+JIasUQypms2Mw76+TpVRTnJXgj3VyngfdGI9MrYEpUMtvmB5I=
X-Received: by 2002:a0c:ba0c:: with SMTP id w12mr12628573qvf.4.1591963350524; 
 Fri, 12 Jun 2020 05:02:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
In-Reply-To: <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jun 2020 14:02:13 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
Message-ID: <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:Yt2j9FJqN+mgsPIsapMR0PoyLMQlMc+2zM7yflfMJzBopJXeewB
 cOicE5INrzmvj+YphReyOwbT2+6GVAkyAo+8zkaAxdSjEr5J1Jg3uCjAjYkWZ+/4ixBYCh/
 KYcRiqDJBooKiyUTSDHmsGhzF5N8819phMrPuNcXj3vvGrLKNFda7xmo1TeiqBJz83awjTl
 Zdlo8/Oluho9eTi8aLlLA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:i33CLVE5QMk=:20UGdbv4mWA4z7jceDkBiz
 yEOlZrvQS2JESQhs0hw9+KoDZqirtS3DwNjgDaotrKnvPtRnClu5rsyLMPmYAVU+9mgIc4rwD
 EYIhXik5ildPQ3P4M16JxEigTx+PL5Fo6MmSJb/yUMyr1MZK0Nd8FHp2sAeiucIr5biAKfncB
 qdOPn8OaDTAYnb1hyS2YMEb9Qu8Bn9Mkl4rP3Nao0Kd+RsyJZXeh/3zN+kaxsJmfGkGh9mLK0
 /bm3tr5Y8ykJpcmssVUH52F/XqM/mZ73K31E9x4KKhGMErYQKtmGr4Ad6ONHDcgCbhWmt/ws6
 V3dD/IiNeXygtFtcggkxRs4OBwKr/8NIv6LFBKSC4l3do/qOi9R+kNVHwXqLCF3ymwdKo2oU+
 mjTi3BWSHIzLYDkIVadVHAXVo49z4zqTnmrJ+1l1i2jwuABUgHWGLY/0SMtaSxSiiC9mx+aJJ
 H70lcXn6UTX07rlgPAdIxSDletSLvIzzpDOD95VH2HfTX6Vk5HPCrUHEt7FkCh0ORd83508+g
 eNAvizHnKllONGjwOxO4Irc3wzwkA3RiW9ZKNNiGJTMaLN0Drucpl7VdoFa2b9RRMMeTcd+F/
 /06dXaE7zJ2sE7qA9EEK1c97ZJXtxA7NvMkmYXTpt1wfVLpnsjUzmvpw+HV8md0YVyopAJo8a
 PSpB8W4jBa0gKrvU7iDpmnd8j2cLIe3yyyDrdG6PwEMH1bRbQaSetFlCNVyEMY0jrsI5pjp86
 d/Hm3An5//uhkZNfKZ/kA+pkf1eK0qVFZr/iOb9AJCBkR/7B1y2n8qRP4FnWw2JZcJfhUMeXm
 eG9ysspkf5Vl+kXCWT3Yk3Fc1O2WdnpmEiW+NXcYswRlTyQNKc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_050234_385189_E2DD5F08 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 12:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
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

Nice changelog text! I agree the performance drop is not great.
There are probably some things that can be done to optimize it,
but I guess most of the overhead is from the page table operations
and cannot be avoided.

What was the exact 'dd' command you used, in particular the block size?
Note that by default, 'dd' will request 512 bytes at a time, so you usually
only access a single page. It would be interesting to see the overhead with
other typical or extreme block sizes, e.g. '1', '64', '4K', '64K' or '1M'.

If you want to drill down into where exactly the overhead is (i.e.
get_user_pages or kmap_atomic, or something different), using
'perf record dd ..', and 'perf report' may be helpful.

> +static int copy_chunk_from_user(unsigned long from, int len, void *arg)
> +{
> +       unsigned long *to_ptr = arg, to = *to_ptr;
> +
> +       memcpy((void *) to, (void *) from, len);
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
> +       return 0;
> +}

Will gcc optimize away the indirect function call and inline everything?
If not, that would be a small part of the overhead.

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

Make sure this doesn't turn into actual division operations but uses shifts.
It might even be clearer here to open-code the shift operation so readers
can see what this is meant to compile into.

> +       pages = kmalloc_array(num_pages, sizeof(*pages), GFP_KERNEL | __GFP_ZERO);
> +       if (!pages)
> +               goto end;

Another micro-optimization may be to avoid the kmalloc for the common case,
e.g. anything with "num_pages <= 64", using an array on the stack.

> +       ret = get_user_pages_fast((unsigned long)from, num_pages, 0, pages);
> +       if (ret < 0)
> +               goto free_pages;
> +
> +       if (ret != num_pages) {
> +               num_pages = ret;
> +               goto put_pages;
> +       }

I think this is technically incorrect: if get_user_pages_fast() only
gets some of the
pages, you should continue with the short buffer and return the number
of remaining
bytes rather than not copying anything. I think you did that correctly
for a failed
kmap_atomic(), but this has to use the same logic.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
