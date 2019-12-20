Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FF1127A45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:54:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uG0yiQJ+8ph1nA21y4yHh8dZcu8vbaDmaUAKmAKdBQ=; b=fGHmBVd7Fn//Zw
	njsktE3ZPit4JezG88vxeu5X7e+Sd6SC33dw4xLcNoFb4cJsBE6kaUa7TQkdlfM6hFDX4cjJnhmZA
	K0aeOe72HDcSQSRf61nzyke39sIHMwiwrmlBdnRejo1zzn3zu4kKyclYTL+KbLPVFgY7AvWkvxu3j
	Dyg6AFbjMsYJV2IgDSUIuSWdtMFWBAstcXBOJ8I9rSvZ1803S0zZwtu4OD4gcoKYeYF9VEqghrh6M
	DfNKNjLkMMoytRPQl+fYAIMCl/RnBmlDlSQnILAuZC+eAmwj/e6aVrBIhWeiBOUwP6XexroesHpwm
	CBgiPorgQ3dpH580yu4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGr3-0001JH-GL; Fri, 20 Dec 2019 11:54:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGqr-0001I5-CX
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 11:53:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 395A030E;
 Fri, 20 Dec 2019 03:53:48 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 567D63F719;
 Fri, 20 Dec 2019 03:53:45 -0800 (PST)
Subject: Re: [PATCH v17 06/23] powerpc: mm: Add p?d_leaf() definitions
To: Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
References: <20191218162402.45610-1-steven.price@arm.com>
 <20191218162402.45610-7-steven.price@arm.com>
 <877e2smt6r.fsf@mpe.ellerman.id.au>
From: Steven Price <steven.price@arm.com>
Message-ID: <e99a9857-e9f4-588a-ad12-4d5f3a9de739@arm.com>
Date: Fri, 20 Dec 2019 11:53:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <877e2smt6r.fsf@mpe.ellerman.id.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_035349_515940_37370B4E 
X-CRM114-Status: GOOD (  20.10  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Arnd Bergmann <arnd@arndb.de>, kvm-ppc@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/12/2019 11:49, Michael Ellerman wrote:
> Steven Price <steven.price@arm.com> writes:
>> walk_page_range() is going to be allowed to walk page tables other than
>> those of user space. For this it needs to know when it has reached a
>> 'leaf' entry in the page tables. This information is provided by the
>> p?d_leaf() functions/macros.
>>
>> For powerpc p?d_is_leaf() functions already exist. Export them using the
>> new p?d_leaf() name.
>>
>> CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>> CC: Paul Mackerras <paulus@samba.org>
>> CC: Michael Ellerman <mpe@ellerman.id.au>
>> CC: linuxppc-dev@lists.ozlabs.org
>> CC: kvm-ppc@vger.kernel.org
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  arch/powerpc/include/asm/book3s/64/pgtable.h | 3 +++
>>  1 file changed, 3 insertions(+)
> 
> We have fallback versions of our pmd_is_leaf() etc. in
> arch/powerpc/include/asm/pgtable.h, eg:
> 
> #ifndef pmd_is_leaf
> #define pmd_is_leaf pmd_is_leaf
> static inline bool pmd_is_leaf(pmd_t pmd)
> {
> 	return false;
> }
> #endif
> 
> Because we support several different MMUs and most of them don't need to
> do anything.
> 
> So we could put the compatibility #defines to your names along with the
> fallback versions in asm/pgtable.h, rather than in
> asm/book3s/64/pgtable.h
> 
> But I see you also have fallbacks for your versions, so it probably
> doesn't matter either way.
> 
> So I'm OK with this version, unless you think there's a compelling
> reason to do the compatibility #defines in our asm/pgtable.h

I was thinking that (assuming this series actually gets merged this
time), the p?d_is_leaf() versions could be removed and replaced by
p?d_leaf() in the future. Since the fallbacks are in the asm-generic
code it makes sense for the pmd_leaf() definitions to be next to the
non-fallback versions.

> Acked-by: Michael Ellerman <mpe@ellerman.id.au>

Thanks!

Steve

> cheers
> 
> 
>> diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
>> index b01624e5c467..201a69e6a355 100644
>> --- a/arch/powerpc/include/asm/book3s/64/pgtable.h
>> +++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
>> @@ -1355,18 +1355,21 @@ static inline bool is_pte_rw_upgrade(unsigned long old_val, unsigned long new_va
>>   * Like pmd_huge() and pmd_large(), but works regardless of config options
>>   */
>>  #define pmd_is_leaf pmd_is_leaf
>> +#define pmd_leaf pmd_is_leaf
>>  static inline bool pmd_is_leaf(pmd_t pmd)
>>  {
>>  	return !!(pmd_raw(pmd) & cpu_to_be64(_PAGE_PTE));
>>  }
>>  
>>  #define pud_is_leaf pud_is_leaf
>> +#define pud_leaf pud_is_leaf
>>  static inline bool pud_is_leaf(pud_t pud)
>>  {
>>  	return !!(pud_raw(pud) & cpu_to_be64(_PAGE_PTE));
>>  }
>>  
>>  #define pgd_is_leaf pgd_is_leaf
>> +#define pgd_leaf pgd_is_leaf
>>  static inline bool pgd_is_leaf(pgd_t pgd)
>>  {
>>  	return !!(pgd_raw(pgd) & cpu_to_be64(_PAGE_PTE));
>> -- 
>> 2.20.1
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
