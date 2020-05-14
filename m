Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CE71D3525
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZyrNU8HEVTRj3pulBepZ4WYSKspdl6AO3FrETwUwrU=; b=P9tKsnuyRcZxi2
	J5mafbvzax66YPF+y2dBjnB5W5OHpSUu4uSHjlGITKLb2cX9NBUJxhMzWhDP6c1EkIoI/wAOkDLvK
	ulRlyWCOlJTfFLM+nEfA9Zw3Hln91vXTZ1okgc9OJRYRE6GTQWfK9AyeU7ORgfKwn3H1QhbpjKLwT
	uqFDAqbV4D8WZEsFi4FIfb1D8fCXouX32KvtXHi3lI6c9xPYXEDTDYyOTKRnUDIdi5Z2h8L9TDA7f
	QzyQmvNWoKRbRyi+q111P9OUMIPCn6ziRnIsNu4OO4DFxFIu8Af1lC/luy0qe2eTuFWjpTZ9pdd3C
	DtZDQ+D6Vq7SoIaRhfrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFrG-0005kK-7e; Thu, 14 May 2020 15:33:14 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFr3-0005jw-S9
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:33:03 +0000
Received: from mail-qv1-f48.google.com ([209.85.219.48]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N2E5Q-1j69Ar1n0o-013eei for <linux-arm-kernel@lists.infradead.org>; Thu,
 14 May 2020 17:32:59 +0200
Received: by mail-qv1-f48.google.com with SMTP id z5so1876659qvw.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 08:32:58 -0700 (PDT)
X-Gm-Message-State: AOAM533i0nt2OJUIlsFQvSnCrX0vkHnC928QEOdUfNCZH6MDLDdKG5R5
 FNSP4QIwMNmgYiolneh2AGWUazHShlWc3Lt2zig=
X-Google-Smtp-Source: ABdhPJzFhU3uR60qV+NCsNONeIzKaCGCy5L57CVbEj8kxjwZrZF3EKTRXtmeZ6RSyPcjRbe5um5gPB2eFj40u3fiQBo=
X-Received: by 2002:a0c:a90f:: with SMTP id y15mr4980431qva.211.1589470378043; 
 Thu, 14 May 2020 08:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
In-Reply-To: <20200514133545.GA5020@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 14 May 2020 17:32:41 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
Message-ID: <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
Subject: Re: ARM: static kernel in vmalloc space
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:yqrT+eiwhrTQyYwRAhAEIvQ9Owo18AleOEZuGJYVGCNoB1pZ/SV
 rmRvjQLdCcsv3tP5c5miokk+uc9qHoK1FjsZI2sEE7HadrE9YYkXuukwxRNxsss4nZPrtqP
 aao62bkvGsndgL3DrqurVjaLvrfU3Uv5577Etp+VNFOQETEelAERwbiA2VBrdQMrs771Bvm
 unFdKGJx6C7+dy64hZAqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l0oD+M6pOYc=:LV1T0QgqGIVTtW6uwhhFGs
 2N3vM2lJzFu4RCODCHwG6kwr5tRAha5WZZZoJR9GNUCiNl3siV7/dkbCpCQsjrlsKdTYukZrm
 lA6ixlgVvS1x3xs2y2/ABJdvF3b+MbHdfgZQKlxIorbChDNDVHSypPn/P4Ab9qeb5AeJHvPg5
 oCSW17CEJyx22b/Ct1StT6+lG4QF4smEaiJ9mOOxcOtQ6On2kZPQczW6++XXXSYEUo7xOUxQK
 0mh2q9mcf1Dh3GFzavfeZkX+NvIunFCQ5vukcz+l7JlGxkLCm/DApyZ0/rcG2Zatgz7dkP08u
 aVVa2eGyA9NT16oMeoa/Zo6MH7+NdU5N//zcYt6vO97+RNes+M+p/uvXMOFnfHh7JMo6ib1yH
 aluje9gsmux32h9fJdUU8LD0mmM6R8LS8RfbzCFe/foIesj2fcravwUZxFYwA5CpZos7kj22t
 75FlSoE6fXO0jQcUPqgUGsIKgbaPm0nDalC8SyfTFKaAXvYUhccANbv33P3gmwprpPH8AnnPE
 juW38eaiyA+8grdGy38UIssx3pzR2qpLIx5irjweBoT1WcIL/crk/+k2rtV/w9kjqzUdjOtcl
 4cg6QA5DiiQ42lrv+ssF4i7AFUhhXYv8qsd6nMzpWFUxUcqHho3+iwh8x7F7/VBm34zNNiw7q
 ZfNkQVLBl3DpLybUTQDLfXMVkNt8DhVaXKZotHSs8x9K2zDD2J+975K3X6rcBgsFYNCoxEAQN
 1HHbDMc/obIvsrAMx/WuxZ9am2A9dSfhN9vhjMEbn8A5hI2OSy7Qk74edMSnblPGI2ycHxKMJ
 58md71EkKRdkYu5Wk+RmJ498JOJUXeoLU/mVsewCiGyZ/+tKBA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_083302_203897_E43418D2 
X-CRM114-Status: GOOD (  25.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 3:35 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> On Thu, May 14, 2020 at 02:41:11PM +0200, Arnd Bergmann wrote:
> > On Thu, May 14, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> > > 4. for user space to/from copy
> > >  a. pin user pages
> > >  b. kmap user page (can't corresponding lowmem be used instead ?)
>
> > - In the long run, there is no need for kmap()/kmap_atomic() after
> >   highmem gets removed from the kernel, but for the next few years
> >   we should still assume that highmem can be used, in order to support
> >   systems like the 8GB highbank, armadaxp, keystone2 or virtual
> >   machines. For lowmem pages (i.e. all pages when highmem is
> >   disabled), kmap_atomic() falls back to page_address() anyway,
> >   so there is no much overhead.
>
> Here i have some confusion - iiuc, VMSPLIT_4G_4G is meant to help
> platforms having RAM > 768M and <= 4GB disable high memory and still
> be able to access full RAM, so high memory shouldn't come into picture,
> right ?. And for the above platforms it can continue current VMPSLIT
> option (the default 3G/1G), no ?, as VMSPLIT_4G_4G can't help complete
> 8G to be accessible from lowmem.
>
> So if we make VMSPLIT_4G_4G, depends on !HIGH_MEMORY (w/ mention of
> caveat in Kconfig help that this is meant for platforms w/ <=4GB), then
> we can do copy_{from,to}_user the same way currently do, and no need to
> do the user page pinning & kmap, right ?

No, that doesn't work: the current copy_from_user() relies on the user
address space being a subset of the kernel address space, so it doesn't
have to walk the page tables but just access the pointer and use
the .text.fixup/__ex_table trick to trap any accesses to pages with the
wrong permission or no backing.

> ...
> i think user page pinning is still required, but kmap can be avoided
> by using lowmem corresponding to that page, right ?, or am i
> completely wrong ?

As long as one does not actually use highmem on a particular
machine, kmap_atomic() is much cheaper than the get_user_pages()
that is needed anyway:

static inline void *kmap_atomic_prot(struct page *page, pgprot_t prot)
{
        preempt_disable();
        pagefault_disable();
        if (!PageHighMem(page))
                return page_address(page);
        return kmap_atomic_high_prot(page, prot);
}
#define kmap_atomic(page)       kmap_atomic_prot(page, kmap_prot)

The preempt_disable()/pagefault_disable() are just adding to
variables that are usually on the local L1 cache, and the
page_address() is another multiply+add that you need in any
case. In kernels that disable highmem, the expensive code path
(kmap_atomic_high_prot) goes away entirely.

As a micro-optimization, one could use page_address() directly
instead of kmap_atomic() when highmem is disabled, but
I doubt it makes much of a difference.

> Only problem i see is Kernel compiled w/ VMSPLIT_4G_4G not suitable
> for >4GB machines, but anyway iiuc, it is was not meant for those
> machines. And it is not going to affect our current multiplatform
> setup as LPAE is not defined in multi_v7.

That was what I original thought as well, but I'd now prefer to
allow highmem to coexist with vmsplit-4g-4g:

Typical distros currently offer two kernels, with and without LPAE,
and they probably don't want to add a third one for LPAE with
either highmem or vmsplit-4g-4g. Having extra user address
space and more lowmem is both going to help users that
still have 8GB configurations.

If we want to limit the number of combinations, I'd prefer making
vmsplit-4g-4g mandatory for all LPAE kernels and it is stable
enough.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
