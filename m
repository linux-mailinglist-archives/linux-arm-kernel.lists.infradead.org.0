Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 820021C4C66
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 04:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0DUAuiUWMVYAsDHsmf/8hItUH8LKMzPcfJXngMpAeI=; b=urMdy4PsuvZKzN
	a2ZLD88TeF9Rk3sVitOcrsNuGT8S/N8pyCIeDBER7nrv0ZnS3wIFZPlrTgaSAjsKf/K87iQw9AK2M
	GnY8fh0Sp01/40YE0NkiZvqC60bK17mBJ8egGIUyQL0ms0GE6+E8sVZW8D6W9Xn6pdahTE6mwu+8D
	gB1ALQmw1fwb6KM5UvRLkGKmZS+ywvaKxShbfmdqbw2pN5GHbX9j6bBFsUN+V3d/iceBxKiDrMVNg
	uTrVM6tsu3KMQBIeL4xyaFKwbUATwXMHUOUxr34QRSqB9k6u3oiTnrH9GBnqLXHweGo2bO+W0OBnT
	sSGXJ6dDa04ToRtlqsxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVnh3-000752-V8; Tue, 05 May 2020 02:52:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVngx-00074F-Kn; Tue, 05 May 2020 02:52:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D5C41FB;
 Mon,  4 May 2020 19:52:17 -0700 (PDT)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20A803F71F;
 Mon,  4 May 2020 19:52:04 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 3/3] mm/hugetlb: Introduce HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
To: Andrew Morton <akpm@linux-foundation.org>
References: <1586864670-21799-1-git-send-email-anshuman.khandual@arm.com>
 <1586864670-21799-4-git-send-email-anshuman.khandual@arm.com>
 <20200425175511.7a68efb5e2f4436fe0328c1d@linux-foundation.org>
 <87d37591-caa2-b82b-392a-3a29b2c7e9a6@arm.com>
 <20200425200124.20d0c75fcaef05d062d3667c@linux-foundation.org>
Message-ID: <21460cbc-8e9a-b956-5797-57b2e1df9fb1@arm.com>
Date: Tue, 5 May 2020 08:21:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200425200124.20d0c75fcaef05d062d3667c@linux-foundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_195219_766957_D4CC9447 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/26/2020 08:31 AM, Andrew Morton wrote:
> On Sun, 26 Apr 2020 08:13:17 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>>
>>
>> On 04/26/2020 06:25 AM, Andrew Morton wrote:
>>> On Tue, 14 Apr 2020 17:14:30 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>>
>>>> There are multiple similar definitions for arch_clear_hugepage_flags() on
>>>> various platforms. This introduces HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS for those
>>>> platforms that need to define their own arch_clear_hugepage_flags() while
>>>> also providing a generic fallback definition for others to use. This help
>>>> reduce code duplication.
>>>>
>>>> ...
>>>>
>>>> --- a/include/linux/hugetlb.h
>>>> +++ b/include/linux/hugetlb.h
>>>> @@ -544,6 +544,10 @@ static inline int is_hugepage_only_range(struct mm_struct *mm,
>>>>  }
>>>>  #endif
>>>>  
>>>> +#ifndef HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
>>>> +static inline void arch_clear_hugepage_flags(struct page *page) { }
>>>> +#endif
>>>> +
>>>>  #ifndef arch_make_huge_pte
>>>>  static inline pte_t arch_make_huge_pte(pte_t entry, struct vm_area_struct *vma,
>>>>  				       struct page *page, int writable)
>>>
>>> This is the rather old-school way of doing it.  The Linus-suggested way is
>>>
>>> #ifndef arch_clear_hugepage_flags
>>> static inline void arch_clear_hugepage_flags(struct page *page)
>>> {
>>> }
>>> #define arch_clear_hugepage_flags arch_clear_hugepage_flags
>>
>> Do we need that above line here ? Is not that implicit.
> 
> It depends if other header files want to test whether
> arch_clear_hugepage_flags is already defined.  If the header heorarchy
> is well-defined and working properly, they shouldn't need to, because
> we're reliably indluding the relevant arch header before (or early
> within) include/linux/hugetlb.h.
> 
> It would be nice if
> 
> #define arch_clear_hugepage_flags arch_clear_hugepage_flags
> #define arch_clear_hugepage_flags arch_clear_hugepage_flags
> 
> were to generate an compiler error but it doesn't.  If it did we could
> detect these incorrect inclusion orders.
> 
>>> #endif
>>>
>>> And the various arch headers do
>>>
>>> static inline void arch_clear_hugepage_flags(struct page *page)
>>> {
>>> 	<some implementation>
>>> }
>>> #define arch_clear_hugepage_flags arch_clear_hugepage_flags
>>>
>>> It's a small difference - mainly to avoid adding two variables to the
>>> overall namespace where one would do.
>>
>> Understood, will change and resend.
> 
> That's OK - I've queued up that fix.
>

Hello Andrew,

I might not have searched all the relevant trees or might have just searched
earlier than required. But I dont see these patches (or your proposed fixes)
either in mmotm (2020-04-29-23-04) or in next-20200504. Wondering if you are
waiting on a V2 for this series accommodating the changes you had proposed.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
