Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E129E1CD04A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 05:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAomJmkJo6rsuhhdx32EzyaLfjddzqi3Tklj5TsaKZA=; b=Nnnk2s0D+kO7Jh
	RXgnXOeTBw7EM3zrAoclw5pdNfHOlM67xSi0P5X1+ysNgYP9bAivj5Rwb48DRo+Gc+UPTJULldYBS
	/fAoIMG7S+jiKA8Zjy2FTUTd9pEto4k1DuOFxWxiOBFiKx59uWjD/2FqJv3tG+Ye8qYNuRcDLSqWr
	XKZicZUCblHNB4WGgFVkuJSGtFlqOevLJ7qBvjeejA3YNwuRGYIxZW7/3sXP8NfaCK7dSqClLly3A
	eynbdNiXX69PxHNNpgvJYVMoeawHMz/L+f9dIxCrl0o6Cz64OLd2/fZOieNzQ0uusnJqMF87Qtw0l
	u6kAIsyu9ZC620WIb3jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXyug-0003OH-Pq; Mon, 11 May 2020 03:15:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXyuY-0003NB-In; Mon, 11 May 2020 03:15:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B3601FB;
 Sun, 10 May 2020 20:15:20 -0700 (PDT)
Received: from [10.163.72.179] (unknown [10.163.72.179])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F18C63F305;
 Sun, 10 May 2020 20:15:09 -0700 (PDT)
Subject: Re: [PATCH V3 2/3] mm/hugetlb: Define a generic fallback for
 is_hugepage_only_range()
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm@kvack.org,
 akpm@linux-foundation.org
References: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
 <1588907271-11920-3-git-send-email-anshuman.khandual@arm.com>
 <9fc622e1-45ff-b79f-ebe0-35614837456c@oracle.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c21ab871-da06-baf6-ba31-80b13402b8c9@arm.com>
Date: Mon, 11 May 2020 08:44:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <9fc622e1-45ff-b79f-ebe0-35614837456c@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_201522_731996_C236D91D 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
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
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/09/2020 03:52 AM, Mike Kravetz wrote:
> On 5/7/20 8:07 PM, Anshuman Khandual wrote:
>> There are multiple similar definitions for is_hugepage_only_range() on
>> various platforms. Lets just add it's generic fallback definition for
>> platforms that do not override. This help reduce code duplication.
>>
>> Cc: Russell King <linux@armlinux.org.uk>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Tony Luck <tony.luck@intel.com>
>> Cc: Fenghua Yu <fenghua.yu@intel.com>
>> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
>> Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
>> Cc: Helge Deller <deller@gmx.de>
>> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>> Cc: Paul Mackerras <paulus@samba.org>
>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>> Cc: Palmer Dabbelt <palmer@dabbelt.com>
>> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
>> Cc: Vasily Gorbik <gor@linux.ibm.com>
>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
>> Cc: Rich Felker <dalias@libc.org>
>> Cc: "David S. Miller" <davem@davemloft.net>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: Borislav Petkov <bp@alien8.de>
>> Cc: "H. Peter Anvin" <hpa@zytor.com>
>> Cc: Mike Kravetz <mike.kravetz@oracle.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: x86@kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-ia64@vger.kernel.org
>> Cc: linux-mips@vger.kernel.org
>> Cc: linux-parisc@vger.kernel.org
>> Cc: linuxppc-dev@lists.ozlabs.org
>> Cc: linux-riscv@lists.infradead.org
>> Cc: linux-s390@vger.kernel.org
>> Cc: linux-sh@vger.kernel.org
>> Cc: sparclinux@vger.kernel.org
>> Cc: linux-mm@kvack.org
>> Cc: linux-arch@vger.kernel.org
>> Cc: linux-kernel@vger.kernel.org
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm/include/asm/hugetlb.h     | 6 ------
>>  arch/arm64/include/asm/hugetlb.h   | 6 ------
>>  arch/ia64/include/asm/hugetlb.h    | 1 +
>>  arch/mips/include/asm/hugetlb.h    | 7 -------
>>  arch/parisc/include/asm/hugetlb.h  | 6 ------
>>  arch/powerpc/include/asm/hugetlb.h | 1 +
>>  arch/riscv/include/asm/hugetlb.h   | 6 ------
>>  arch/s390/include/asm/hugetlb.h    | 7 -------
>>  arch/sh/include/asm/hugetlb.h      | 6 ------
>>  arch/sparc/include/asm/hugetlb.h   | 6 ------
>>  arch/x86/include/asm/hugetlb.h     | 6 ------
>>  include/linux/hugetlb.h            | 9 +++++++++
>>  12 files changed, 11 insertions(+), 56 deletions(-)
>>
> <snip>
>> diff --git a/include/linux/hugetlb.h b/include/linux/hugetlb.h
>> index 43a1cef8f0f1..c01c0c6f7fd4 100644
>> --- a/include/linux/hugetlb.h
>> +++ b/include/linux/hugetlb.h
>> @@ -591,6 +591,15 @@ static inline unsigned int blocks_per_huge_page(struct hstate *h)
>>  
>>  #include <asm/hugetlb.h>
>>  
>> +#ifndef is_hugepage_only_range
>> +static inline int is_hugepage_only_range(struct mm_struct *mm,
>> +					unsigned long addr, unsigned long len)
>> +{
>> +	return 0;
>> +}
>> +#define is_hugepage_only_range is_hugepage_only_range
>> +#endif
>> +
>>  #ifndef arch_make_huge_pte
>>  static inline pte_t arch_make_huge_pte(pte_t entry, struct vm_area_struct *vma,
>>  				       struct page *page, int writable)
>>
> 
> Did you try building without CONFIG_HUGETLB_PAGE defined?  I'm guessing

Yes I did for multiple platforms (s390, arm64, ia64, x86, powerpc etc).

> that you need a stub for is_hugepage_only_range().  Or, perhaps add this
> to asm-generic/hugetlb.h?
> 
There is already a stub (include/linux/hugetlb.h) when !CONFIG_HUGETLB_PAGE.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
