Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AB41B19CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSxBQji2ovNe44+uMvxXnufqhzVE+ygClIfgFBXTDDg=; b=mP2ZKo5GmL35Al
	2wUI/2RLwb0THGba3hkofjfQ5WqhvmvxQbtnu2cUEzz8gXBnImXT9NsmK44PGyXtdf6GpujsuHhT1
	Wl+iMJ/f7mR592QCs7nnbINLUKITAOpm8t6knccLSkRFp2ZYzKdT39v8S2FP8Uln+O7+yPOL05k0v
	a3Iz/e7bKaH/v72Y+AHt6RWDOirstQhtYe8IItl/8t5EzPt8ZxA0/7MBosyz8DRT7cBs74sUfaHv/
	GgspfUQ81e+s5Pdov8M5pQqGEr1SmpBgXrBeW/y2dxxSmJ3v7sMf4t1n43d3h9BCNszx3EfxDpH4l
	tlHHPDNOKl5inKaT31IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQfIW-0004MB-KF; Mon, 20 Apr 2020 22:53:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQfIJ-0004JS-MU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:53:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id x23so9472904lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 15:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RNk2/s+798PoKv3JnJ/hhJNPDgeiscbjwcrK7uyEZbg=;
 b=YmH7uDuqtUjh8BP0z9BmAxjyrM//1+xCH8CFdpc6VTVXdhnlBzHI9Gi4MjPqeBpVjj
 mqMqXslZ390z3xe+WjoXruazSkm2A7fhvcwxJILSerUwh57i/v20zmQ3G1rqkIRX35I5
 kVZx/Cyb2sXvDCl5gopY5/n+K6zvvOsrxU5033mk9qdCTDWLU4GJevyhL5NPtDWdZvEi
 SdovFleLu6drNliJrSEEksJ9b9EL7q7qkLDAkcVRzC3yxcc95IFS5h2dnJcSFAKZU5rv
 c58AaKgSKeFmuL93FK26irrPTr22IC9ONJiZXnuID0v+tqe5F2F9LFZz/LAOgsYh3NoY
 ANNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RNk2/s+798PoKv3JnJ/hhJNPDgeiscbjwcrK7uyEZbg=;
 b=T81WV53pZOQAcKAN8dnWC5CHJ0+mqxhiht7tXPRCZcXk2VYGzjftpXe+mT66SY09rN
 1ZefnaKLZnuC7tOSDOTUk6qUM+WRW8AaDuHQdgMaSWePalZl6R934OKUnPDtLZ86fEAE
 gs2oa/pwpf5fqWMuYg1/R3W+8QaAQhOe3Z35dto02HaA2gmDfqGP1rLXrcBEHWKcNFX5
 56omeHtTh9exPZj5ODdY1NqnCYTKIvkDuedC0ZVmcgTPwmwahBxXCGvDupex59OXMmgF
 v+u2eDEPdttkr/lCTB7mYvgSnP5nMLMBuxhdJ5Dfaja7MEIdHYjEfRNwYnjIbcVByFxP
 WIbg==
X-Gm-Message-State: AGi0PuYz2vfoMTFxY3OvwufEnbJnbB9wDNLoQ0QjfE/ELU8Xe6y1Omge
 qehM1gOQu1yFPrkB7am53nOVtE/jqx61Rl1VAqP96g==
X-Google-Smtp-Source: APiQypKXyvohoz9hAFVdAiOa8F7voUy3e/GT1SGuDeVrZQD1XPKHc8CL09oKY7XVjUOx5xFWTNgrgWZPn+CxnBqFFH8=
X-Received: by 2002:a19:c1d3:: with SMTP id
 r202mr11708833lff.216.1587423217517; 
 Mon, 20 Apr 2020 15:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <5E312000-05D8-4C5D-A7C0-DDDE1842CB0E@lca.pw>
 <4c36c6ce-3774-78fa-abc4-b7346bf24348@oracle.com>
 <CADYN=9+=tCDmddTYGY44onvrzbg7yrbacMDSxd4hhD+=b=Yeiw@mail.gmail.com>
 <86333853-0648-393f-db96-d581ee114d2b@oracle.com>
In-Reply-To: <86333853-0648-393f-db96-d581ee114d2b@oracle.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 21 Apr 2020 00:53:26 +0200
Message-ID: <CADYN=9JbXi=rvBAvhwPh8aFu2ne4Hbu4T+PW3NP3Rv2is+x77w@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Clean up hugetlb boot command line processing
To: Mike Kravetz <mike.kravetz@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_155340_258101_4047B7D5 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Longpeng <longpeng2@huawei.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Qian Cai <cai@lca.pw>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S.Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 at 23:43, Mike Kravetz <mike.kravetz@oracle.com> wrote:
>
> On 4/20/20 1:29 PM, Anders Roxell wrote:
> > On Mon, 20 Apr 2020 at 20:23, Mike Kravetz <mike.kravetz@oracle.com> wrote:
> >> On 4/20/20 8:34 AM, Qian Cai wrote:
> >>>
> >>> Reverted this series fixed many undefined behaviors on arm64 with the config,
> >> While rearranging the code (patch 3 in series), I made the incorrect
> >> assumption that CONT_XXX_SIZE == (1UL << CONT_XXX_SHIFT).  However,
> >> this is not the case.  Does the following patch fix these issues?
> >>
> >> From b75cb4a0852e208bee8c4eb347dc076fcaa88859 Mon Sep 17 00:00:00 2001
> >> From: Mike Kravetz <mike.kravetz@oracle.com>
> >> Date: Mon, 20 Apr 2020 10:41:18 -0700
> >> Subject: [PATCH] arm64/hugetlb: fix hugetlb initialization
> >>
> >> When calling hugetlb_add_hstate() to initialize a new hugetlb size,
> >> be sure to use correct huge pages size order.
> >>
> >> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> >> ---
> >>  arch/arm64/mm/hugetlbpage.c | 8 ++++----
> >>  1 file changed, 4 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
> >> index 9ca840527296..a02411a1f19a 100644
> >> --- a/arch/arm64/mm/hugetlbpage.c
> >> +++ b/arch/arm64/mm/hugetlbpage.c
> >> @@ -453,11 +453,11 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
> >>  static int __init hugetlbpage_init(void)
> >>  {
> >>  #ifdef CONFIG_ARM64_4K_PAGES
> >> -       hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(PUD_SIZE) - PAGE_SHIFT);
> >>  #endif
> >> -       hugetlb_add_hstate(CONT_PMD_SHIFT - PAGE_SHIFT);
> >> -       hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
> >> -       hugetlb_add_hstate(CONT_PTE_SHIFT - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(CONT_PMD_SIZE) - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(PMD_SIZE) - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(CONT_PTE_SIZE) - PAGE_SHIFT);
> >>
> >>         return 0;
> >>  }
> >
> > I build this for an arm64 kernel and ran it in qemu and it worked.
>
> Thanks for testing Anders!
>
> Will, here is an updated version of the patch based on your suggestion.
> I added the () for emphasis but that may just be noise for some.  Also,
> the naming differences and values for CONT_PTE may make some people
> look twice.  Not sure if being consistent here helps?
>
> I have only built this.  No testing.
>
> From daf833ab6b806ecc0816d84d45dcbacc052a7eec Mon Sep 17 00:00:00 2001
> From: Mike Kravetz <mike.kravetz@oracle.com>
> Date: Mon, 20 Apr 2020 13:56:15 -0700
> Subject: [PATCH] arm64/hugetlb: fix hugetlb initialization
>
> When calling hugetlb_add_hstate() to initialize a new hugetlb size,
> be sure to use correct huge pages size order.
>
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>

Tested-by: Anders Roxell <anders.roxell@linaro.org>

I tested this patch on qemu-aarch64.

Cheers,
Anders

> ---
>  arch/arm64/mm/hugetlbpage.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
> index 9ca840527296..bed6dc7c4276 100644
> --- a/arch/arm64/mm/hugetlbpage.c
> +++ b/arch/arm64/mm/hugetlbpage.c
> @@ -455,9 +455,9 @@ static int __init hugetlbpage_init(void)
>  #ifdef CONFIG_ARM64_4K_PAGES
>         hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
>  #endif
> -       hugetlb_add_hstate(CONT_PMD_SHIFT - PAGE_SHIFT);
> +       hugetlb_add_hstate((CONT_PMD_SHIFT + PMD_SHIFT) - PAGE_SHIFT);
>         hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
> -       hugetlb_add_hstate(CONT_PTE_SHIFT - PAGE_SHIFT);
> +       hugetlb_add_hstate((CONT_PTE_SHIFT + PAGE_SHIFT) - PAGE_SHIFT);
>
>         return 0;
>  }
> --
> 2.25.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
