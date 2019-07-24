Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0F372F7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5B64IJWfPoCG/lsosBal8DvuSXENUQk/+XiWywbMa8=; b=tTG/ka8Z2mJNTb
	vL4EVoMTM1LT+wJc5FtUskAJp4Co0eYoX0Zz5SJFDjxsDUTHrxHdp9EcnJU1hHj+Bz/r3bXwU+Vb/
	uz3JM8g6snj5NkS89FrpzdG1q65M35njwwWQJ/wgEj0MxYqDtNi65gpITJBV7ZVB031LUIWtCGv5A
	DXz4v2mzZAE0To8xe4qG1TFX+GJaSMyO1rql3sB7YBM/BA5bueMss4Cvh9aDGhh3rI4/eLlbhG0GF
	gRwoYqU1TsRxkEMubiFNZrhfEtG9lwLiZkqKRngpLd5uWYDZBZhuoIl2YN0a2d3m4M0gt9uq+RtoH
	OjUovs+V0N3vYctAKhGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGwI-0004qT-7u; Wed, 24 Jul 2019 13:04:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGw9-0004pY-Bw
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:04:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29A9128;
 Wed, 24 Jul 2019 06:04:03 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FC383F71A;
 Wed, 24 Jul 2019 06:04:00 -0700 (PDT)
Subject: Re: [PATCH v9 04/21] mips: mm: Add p?d_leaf() definitions
To: Paul Burton <paul.burton@mips.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-5-steven.price@arm.com>
 <20190722214722.wdlj6a3der3r2oro@pburton-laptop>
From: Steven Price <steven.price@arm.com>
Message-ID: <85b20d93-bb60-b9e2-ea6a-92ca6f90abc6@arm.com>
Date: Wed, 24 Jul 2019 14:03:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722214722.wdlj6a3der3r2oro@pburton-laptop>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_060405_498181_B08625B7 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, "Liang, Kan" <kan.liang@linux.intel.com>,
 "x86@kernel.org" <x86@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 James Hogan <jhogan@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/07/2019 22:47, Paul Burton wrote:
> Hi Steven,
> 
> On Mon, Jul 22, 2019 at 04:41:53PM +0100, Steven Price wrote:
>> walk_page_range() is going to be allowed to walk page tables other than
>> those of user space. For this it needs to know when it has reached a
>> 'leaf' entry in the page tables. This information is provided by the
>> p?d_leaf() functions/macros.
>>
>> For mips, we only support large pages on 64 bit.
> 
> That ceases to be true with commit 35476311e529 ("MIPS: Add partial
> 32-bit huge page support") in mips-next, so I think it may be best to
> move the definition to asm/pgtable.h so that both 32b & 64b kernels can
> pick it up.

Thanks for pointing that out. I'll move the definitions as you suggest.

Steve

> Thanks,
>     Paul
> 
>> For 64 bit if _PAGE_HUGE is defined we can simply look for it. When not
>> defined we can be confident that there are no leaf pages in existence
>> and fall back on the generic implementation (added in a later patch)
>> which returns 0.
>>
>> CC: Ralf Baechle <ralf@linux-mips.org>
>> CC: Paul Burton <paul.burton@mips.com>
>> CC: James Hogan <jhogan@kernel.org>
>> CC: linux-mips@vger.kernel.org
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  arch/mips/include/asm/pgtable-64.h | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/mips/include/asm/pgtable-64.h b/arch/mips/include/asm/pgtable-64.h
>> index 93a9dce31f25..2bdbf8652b5f 100644
>> --- a/arch/mips/include/asm/pgtable-64.h
>> +++ b/arch/mips/include/asm/pgtable-64.h
>> @@ -273,6 +273,10 @@ static inline int pmd_present(pmd_t pmd)
>>  	return pmd_val(pmd) != (unsigned long) invalid_pte_table;
>>  }
>>  
>> +#ifdef _PAGE_HUGE
>> +#define pmd_leaf(pmd)	((pmd_val(pmd) & _PAGE_HUGE) != 0)
>> +#endif
>> +
>>  static inline void pmd_clear(pmd_t *pmdp)
>>  {
>>  	pmd_val(*pmdp) = ((unsigned long) invalid_pte_table);
>> @@ -297,6 +301,10 @@ static inline int pud_present(pud_t pud)
>>  	return pud_val(pud) != (unsigned long) invalid_pmd_table;
>>  }
>>  
>> +#ifdef _PAGE_HUGE
>> +#define pud_leaf(pud)	((pud_val(pud) & _PAGE_HUGE) != 0)
>> +#endif
>> +
>>  static inline void pud_clear(pud_t *pudp)
>>  {
>>  	pud_val(*pudp) = ((unsigned long) invalid_pmd_table);
>> -- 
>> 2.20.1
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
