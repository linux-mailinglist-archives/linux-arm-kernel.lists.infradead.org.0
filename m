Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E10B1A3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7zUrLHr6TrpTgUO60K4GLlVFgzxlcQc6wjIupvuQxU=; b=FV5p1QGoqkRRaX
	Q8hcsLvygvqv8Evb7tdBBp8pJPayw2/phCQRH/UFPYK6PEGO8hV4r5YH356n3Jw61zAAMmMEYScL3
	DjogpVeeZHIcof2MS8QkTFguFax4kvd6f9r+L5GEVNxCt72Dcfg4sKeX9jRCY5zOVWw+pdeaDRdtH
	z5iTv6++tYPWw1SKew4q45w2mfgw6Vk7CBGgFqAihX8FM6inDtAqnMZ3hGwTUBTS0Pq9J1YWcOtOx
	bx++VGET4ukmmaQmhdZvVALWZlptEQ53GJQtLkZy1A7ovTESZhZNjPx/kQIQV5R1E6XpBmrLiWdPI
	3NZJPkEROvNzrK9KTpVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hMS-0001we-MA; Fri, 13 Sep 2019 08:55:24 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hIm-0008D4-8p
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:51:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id v38so26362301edm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 01:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ljRy//1oqpxbNqcuLvCNHWlNadtkzDq51hCzmFakYzM=;
 b=M6Wl/quwPsEOiMFNCv3xSOrdnDulq5fkBOVf8YSY3tiw77PxkkHJwmP5iEk0kohLlY
 pg4uPVtKpUEevoagc8enKn4uPrSlBiZORCgQoAOniX52xYmOZkzG1/HzuVuRwG1eo1oP
 UUMYm6uVKM/ZyICPXIY6dw0BD4t6sF6ZjlwPzQZa+ZeBzMMqOs4xYJXwzCpcBNDo8jhx
 jXjUL9kfKg583djOtcu64hthdRWYl9M2FSJHI0vB9ZCDV10OZHe+j1P2FdlMaHZTn/Du
 o7aK3kotbpwDLHIjGD7A7LXZ8OC4HcGT0NeYVB7fDkav49RWCtmQCPySSqquXilUNVHm
 pP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ljRy//1oqpxbNqcuLvCNHWlNadtkzDq51hCzmFakYzM=;
 b=A1BUcqqvB5rkzMqn3ddqMFTc91Phb/JPAIp9bImccKxUBVLh9osdVkJtP+TVPItTVK
 LoTPaEkx/Q82Uzw30FgSRN+ycD7hAn5ICuYK7z7FFfvYEAjUAb86a3BWFNKf91cC7vCz
 Ay+oN+n+qovbv3n+qan0sUMKGJXzo+QNWoy9fPUQ0syVzeMp/BJi6OZYeeZu2wqLNe2n
 lzjZVo50j5n50PYZWnddETkPChDv+IMDchfmUtCFQBH4MxFU3upTLzqd3n6MLMV/U3pF
 yHLU9+eWbiL0aPPj+NZzfGRoUBS36h3J0/6+SYFPJM9kCBhv2xJok4+EjExFMH1UhmdC
 nWLQ==
X-Gm-Message-State: APjAAAWgGOOqE4afiSrdw7VMYwaYi3FWk5dA7a7H58nrBHkHvkXz6akl
 9ffUckMz1CrWOcFr4xTiXU4L0A==
X-Google-Smtp-Source: APXvYqxZm96QADm/8SST6BnmvoIUqtDzA7VCb5AHjQ8XsG2pGy1aWbbiVHhIwmyiU7DjVjOntMuCeQ==
X-Received: by 2002:a50:ee92:: with SMTP id f18mr24791178edr.253.1568364694523; 
 Fri, 13 Sep 2019 01:51:34 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id j30sm5287480edb.8.2019.09.13.01.51.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 01:51:33 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id A972310160B; Fri, 13 Sep 2019 11:51:35 +0300 (+03)
Date: Fri, 13 Sep 2019 11:51:35 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm/pgtable/debug: Fix test validating architecture page
 table helpers
Message-ID: <20190913085135.rfr3zrabghi2qo2t@box>
References: <1892b37d1fd9a4ed39e76c4b999b6556077201c0.1568355752.git.christophe.leroy@c-s.fr>
 <527dd29d-45fa-4d83-1899-6cbf268dd749@arm.com>
 <e2b42446-7f91-83f1-ac12-08dff75c4d35@c-s.fr>
 <cb226b56-ff20-3136-7ffb-890657e56870@c-s.fr>
 <bdf7f152-d093-1691-4e96-77da7eb9e20a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdf7f152-d093-1691-4e96-77da7eb9e20a@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_015136_430028_3EA935A5 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Dave Hansen <dave.hansen@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 02:12:45PM +0530, Anshuman Khandual wrote:
> =

> =

> On 09/13/2019 12:41 PM, Christophe Leroy wrote:
> > =

> > =

> > Le 13/09/2019 =E0 09:03, Christophe Leroy a =E9crit=A0:
> >>
> >>
> >> Le 13/09/2019 =E0 08:58, Anshuman Khandual a =E9crit=A0:
> >>> On 09/13/2019 11:53 AM, Christophe Leroy wrote:
> >>>> Fix build failure on powerpc.
> >>>>
> >>>> Fix preemption imbalance.
> >>>>
> >>>> Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
> >>>> ---
> >>>> =A0 mm/arch_pgtable_test.c | 3 +++
> >>>> =A0 1 file changed, 3 insertions(+)
> >>>>
> >>>> diff --git a/mm/arch_pgtable_test.c b/mm/arch_pgtable_test.c
> >>>> index 8b4a92756ad8..f2b3c9ec35fa 100644
> >>>> --- a/mm/arch_pgtable_test.c
> >>>> +++ b/mm/arch_pgtable_test.c
> >>>> @@ -24,6 +24,7 @@
> >>>> =A0 #include <linux/swap.h>
> >>>> =A0 #include <linux/swapops.h>
> >>>> =A0 #include <linux/sched/mm.h>
> >>>> +#include <linux/highmem.h>
> >>>
> >>> This is okay.
> >>>
> >>>> =A0 #include <asm/pgalloc.h>
> >>>> =A0 #include <asm/pgtable.h>
> >>>> @@ -400,6 +401,8 @@ static int __init arch_pgtable_tests_init(void)
> >>>> =A0=A0=A0=A0=A0 p4d_clear_tests(p4dp);
> >>>> =A0=A0=A0=A0=A0 pgd_clear_tests(mm, pgdp);
> >>>> +=A0=A0=A0 pte_unmap(ptep);
> >>>> +
> >>>
> >>> Now the preemption imbalance via pte_alloc_map() path i.e
> >>>
> >>> pte_alloc_map() -> pte_offset_map() -> kmap_atomic()
> >>>
> >>> Is not this very much powerpc 32 specific or this will be applicable
> >>> for all platform which uses kmap_XXX() to map high memory ?
> >>>
> >>
> >> See https://elixir.bootlin.com/linux/v5.3-rc8/source/include/linux/hig=
hmem.h#L91
> >>
> >> I think it applies at least to all arches using the generic implementa=
tion.
> >>
> >> Applies also to arm:
> >> https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/arm/mm/highmem.c=
#L52
> >>
> >> Applies also to mips:
> >> https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/mips/mm/highmem.=
c#L47
> >>
> >> Same on sparc:
> >> https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/sparc/mm/highmem=
.c#L52
> >>
> >> Same on x86:
> >> https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/x86/mm/highmem_3=
2.c#L34
> >>
> >> I have not checked others, but I guess it is like that for all.
> >>
> > =

> > =

> > Seems like I answered too quickly. All kmap_atomic() do preempt_disable=
(), but not all pte_alloc_map() call kmap_atomic().
> > =

> > However, for instance ARM does:
> > =

> > https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/arm/include/asm/p=
gtable.h#L200
> > =

> > And X86 as well:
> > =

> > https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/x86/include/asm/p=
gtable_32.h#L51
> > =

> > Microblaze also:
> > =

> > https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/microblaze/includ=
e/asm/pgtable.h#L495
> =

> All the above platforms checks out to be using k[un]map_atomic(). I am wo=
ndering whether
> any of the intermediate levels will have similar problems on any these 32=
 bit platforms
> or any other platforms which might be using generic k[un]map_atomic().

No. Kernel only allocates pte page table from highmem. All other page
tables are always visible in kernel address space.

-- =

 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
