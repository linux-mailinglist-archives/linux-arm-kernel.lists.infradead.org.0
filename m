Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30015B89E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 06:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxO8Taek3JZoJVrtBIMp2o2xF7pqPk+VP5/9KkF8rvA=; b=sUc+VM7re2Ra3e
	V4jsLpQ4x90m8ZsPOMUvKIetIBH+OqREr6Gu1mDA8lQUXv8LbpUFOSSp7TriTMIHFrmn86kZ9p6/6
	c5ceHGpZJO6++ML24VepRjJv+O1DcWDMANmN7zpTaOSReHJu8AvlgWDa/C2orvVxnhXm4dnU6hNso
	6J3afTcSuaQnLWMno8xSrORy05wqfBR9HDREwB1DFyob5mgh15KFNWbVMZD7+NIt7Te7C5K8uv/UZ
	WfJcL8mJuiHyeOxfGgyE7CdXoCgV953gEs8XrwRk7MJxEzGW9O8Aaod5dYaVpEHrN8XAebg4Jxr2R
	GhDlCZSo3VOW6VR3TBNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBABf-0000Rq-9Y; Fri, 20 Sep 2019 04:06:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBABR-0000RM-Qf; Fri, 20 Sep 2019 04:06:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08718337;
 Thu, 19 Sep 2019 21:06:10 -0700 (PDT)
Received: from [10.162.40.137] (p8cg001049571a15.blr.arm.com [10.162.40.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 85C4F3F67D; Thu, 19 Sep 2019 21:05:57 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <ab0ca38b-1e4f-b636-f8b4-007a15903984@c-s.fr>
 <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
 <95ed9d92-dd43-4c45-2e52-738aed7f2fb5@c-s.fr>
 <f872e6f4-a5cb-069d-2034-78961930cb9f@arm.com>
 <64504101-d9dd-f273-02f9-e9a8b178eecc@c-s.fr>
 <20190918202243.37e709df@thinkpad>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <5a6045af-bcfb-12c2-0f4a-3b49a905ec4d@arm.com>
Date: Fri, 20 Sep 2019 09:36:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190918202243.37e709df@thinkpad>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_210613_954674_D2F043C0 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/18/2019 11:52 PM, Gerald Schaefer wrote:
> On Wed, 18 Sep 2019 18:26:03 +0200
> Christophe Leroy <christophe.leroy@c-s.fr> wrote:
> 
> [..] 
>> My suggestion was not to completely drop the #ifdef but to do like you 
>> did in pgd_clear_tests() for instance, ie to add the following test on 
>> top of the function:
>>
>> 	if (mm_pud_folded(mm) || is_defined(__ARCH_HAS_5LEVEL_HACK))
>> 		return;
>>
> 
> Ah, very nice, this would also fix the remaining issues for s390. Since
> we have dynamic page table folding, neither __PAGETABLE_PXX_FOLDED nor
> __ARCH_HAS_XLEVEL_HACK is defined, but mm_pxx_folded() will work.

Like Christophe mentioned earlier on the other thread, we will convert
all __PGTABLE_PXX_FOLDED checks as mm_pxx_folded() but looks like 
ARCH_HAS_[4 and 5]LEVEL_HACK macros will still be around. Will respin
the series with all agreed upon changes first and probably we can then
discuss pending issues from there.

> 
> mm_alloc() returns with a 3-level page table by default on s390, so we
> will run into issues in p4d_clear/populate_tests(), and also at the end
> with p4d/pud_free() (double free).
> 
> So, adding the mm_pud_folded() check to p4d_clear/populate_tests(),
> and also adding mm_p4d/pud_folded() checks at the end before calling> p4d/pud_free(), would make it all work on s390.

Atleast p4d_clear/populate_tests() tests will be taken care.

> 
> BTW, regarding p4d/pud_free(), I'm not sure if we should rather check
> the folding inside our s390 functions, similar to how we do it for
> p4d/pud_free_tlb(), instead of relying on not being called for folded
> p4d/pud. So far, I see no problem with this behavior, all callers of
> p4d/pud_free() should be fine because of our folding check within
> p4d/pud_present/none(). But that doesn't mean that it is correct not
> to check for the folding inside p4d/pud_free(). At least, with this
> test module we do now have a caller of p4d/pud_free() on potentially
> folded entries, so instead of adding pxx_folded() checks to this
> test module, we could add them to our p4d/pud_free() functions.
> Any thoughts on this?
Agreed, it seems better to do the check inside p4d/pud_free() functions.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
