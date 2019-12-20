Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9CB127A38
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvZ6viKUJkr56Kr7NPamrIqkbcO8EWvkkch5qt8JLN0=; b=RHaS5ORDlHrbpQ
	wMBd9wuVSD14khfFsRc/N7zRnEGyrjrE3PHO+BxXxBiFEIMacigaItx4blMzr3tB7lhED7gqUbU24
	/AzgPcRkz2JcqIYD7I3v5MkHkkPHwO2BwoZvbk0Y+JcMMt5bLYguOd0XYR6w5jm92gw14Tlvdkc0y
	5ZuEB8+YqCorvDrCaUlMgNfgInpdHDbu80t6Nv3I+21AiB9+Hm26MiMojcbgqxxpvZcCB1Faiv2Gg
	D+2JVxFTD8yBnxY3ZP5gyCH0pTCn8XHLIQF9K6sGcJIndVf/fXUili/y6SiSiT4tl1oohMOdoNWav
	bze9bKJmSgYeKU7ZfeMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGm0-0007dV-Qa; Fri, 20 Dec 2019 11:48:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGlp-0007dA-76
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 11:48:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8487B30E;
 Fri, 20 Dec 2019 03:48:36 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3F1C3F719;
 Fri, 20 Dec 2019 03:48:33 -0800 (PST)
Subject: Re: [PATCH v17 01/23] mm: Add generic p?d_leaf() macros
To: Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
References: <20191218162402.45610-1-steven.price@arm.com>
 <20191218162402.45610-2-steven.price@arm.com>
 <878sn8mtgt.fsf@mpe.ellerman.id.au>
From: Steven Price <steven.price@arm.com>
Message-ID: <0951d79f-919a-4a9d-00f7-b40be96af118@arm.com>
Date: Fri, 20 Dec 2019 11:48:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <878sn8mtgt.fsf@mpe.ellerman.id.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_034837_347239_08884C5E 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/12/2019 11:43, Michael Ellerman wrote:
> Steven Price <steven.price@arm.com> writes:
>> Exposing the pud/pgd levels of the page tables to walk_page_range() means
>> we may come across the exotic large mappings that come with large areas
>> of contiguous memory (such as the kernel's linear map).
>>
>> For architectures that don't provide all p?d_leaf() macros, provide
>> generic do nothing default that are suitable where there cannot be leaf
>> pages at that level. Futher patches will add implementations for
>> individual architectures.
>>
>> The name p?d_leaf() is chosen to minimize the confusion with existing
>> uses of "large" pages and "huge" pages which do not necessary mean that
>> the entry is a leaf (for example it may be a set of contiguous entries
>> that only take 1 TLB slot). For the purpose of walking the page tables
>> we don't need to know how it will be represented in the TLB, but we do
>> need to know for sure if it is a leaf of the tree.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> Acked-by: Mark Rutland <mark.rutland@arm.com>
>> ---
>>  include/asm-generic/pgtable.h | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
>> index 798ea36a0549..e2e2bef07dd2 100644
>> --- a/include/asm-generic/pgtable.h
>> +++ b/include/asm-generic/pgtable.h
>> @@ -1238,4 +1238,24 @@ static inline bool arch_has_pfn_modify_check(void)
>>  #define mm_pmd_folded(mm)	__is_defined(__PAGETABLE_PMD_FOLDED)
>>  #endif
>>  
>> +/*
>> + * p?d_leaf() - true if this entry is a final mapping to a physical address.
>> + * This differs from p?d_huge() by the fact that they are always available (if
>> + * the architecture supports large pages at the appropriate level) even
>> + * if CONFIG_HUGETLB_PAGE is not defined.
>> + * Only meaningful when called on a valid entry.
>> + */
>> +#ifndef pgd_leaf
>> +#define pgd_leaf(x)	0
>> +#endif
>> +#ifndef p4d_leaf
>> +#define p4d_leaf(x)	0
>> +#endif
>> +#ifndef pud_leaf
>> +#define pud_leaf(x)	0
>> +#endif
>> +#ifndef pmd_leaf
>> +#define pmd_leaf(x)	0
>> +#endif
> 
> Any reason you made these #defines rather than static inlines?

No strong reason - but these have to be #defines in the arch overrides
so the #ifndef works, so I was being consistent here. I guess a static
inline might avoid warnings although I haven't seen any.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
