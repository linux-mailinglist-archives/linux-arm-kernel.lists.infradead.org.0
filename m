Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18F075DEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 06:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQrJM7Mive1yGHUFFn2rEudtBg9ThMNiKrRte2PmrYU=; b=JZ/3Fps6SS2rJP
	WJDX7htD6i9y85/b/F4bB6mzqHlw8pYiaK5HCm4yJ/2xRNvXqFey96A3XfpH4V2F7aCDq49M7xURr
	XOx6+B6vTcHL946kpX7cbR8/5OsBjfA6bDFDBMR30vWfM24cJauiSFrsBy3gj0Hn1dUB/TKj0D38h
	2oHhX+2RzVbTebJSGT0M7tm9snME1q7FEjB2oUI90xMBhet4bhzBOzvdrLeJWMSYY1+w5I891DQWs
	+YC8tMcQlmHmMnb/ldvN0hYXZBbfE8GFfOA2c5JWW+8UJnV+4b64DcR1GETgtJAdhhY+dgc73mV4n
	uQt5aRuoQWoPOntxABxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqs85-0002lV-HU; Fri, 26 Jul 2019 04:46:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqs7q-0002l7-QA
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 04:46:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6593337;
 Thu, 25 Jul 2019 21:46:37 -0700 (PDT)
Received: from [10.163.1.197] (unknown [10.163.1.197])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CBE13F694;
 Thu, 25 Jul 2019 21:46:33 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
To: Matthew Wilcox <willy@infradead.org>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
 <20190725143920.GW363@bombadil.infradead.org>
Message-ID: <c3bb0420-584c-de3b-2439-8702bc09595e@arm.com>
Date: Fri, 26 Jul 2019 10:17:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190725143920.GW363@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_214638_938865_06BA8FEA 
X-CRM114-Status: GOOD (  23.77  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, x86@kernel.org,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <Steven.Price@arm.com>, linux-mm@kvack.org,
 Mark Brown <Mark.Brown@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Michal Hocko <mhocko@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/25/2019 08:09 PM, Matthew Wilcox wrote:
> On Thu, Jul 25, 2019 at 12:25:23PM +0530, Anshuman Khandual wrote:
>> This adds a test module which will validate architecture page table helpers
>> and accessors regarding compliance with generic MM semantics expectations.
>> This will help various architectures in validating changes to the existing
>> page table helpers or addition of new ones.
> 
> I think this is a really good idea.
> 
>>  lib/Kconfig.debug       |  14 +++
>>  lib/Makefile            |   1 +
>>  lib/test_arch_pgtable.c | 290 ++++++++++++++++++++++++++++++++++++++++++++++++
> 
> Is this the right place for it?  I worry that lib/ is going to get overloaded
> with test code, and this feels more like mm/ test code.

Sure this can be moved to mm/ but unlike existing test configs there (following)
lets keep some config description in mm/Kconfig. Will probably rename this as
CONFIG_DEBUG_ARCH_PGTABLE_TEST to match other tests.

CONFIG_DEBUG_KMEMLEAK_TEST
CONFIG_DEBUG_RODATA_TEST
CONFIG_MEMTEST

After moving to mm/ directory I guess it does not need a loadable module option.

> 
>> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE
>> +static void pmd_basic_tests(void)
>> +{
>> +	pmd_t pmd;
>> +
>> +	pmd = mk_pmd(page, prot);
> 
> But 'page' isn't necessarily PMD-aligned.  I don't think we can rely on
> architectures doing the right thing if asked to make a PMD for a randomly
> aligned page.
> 
> How about finding the physical address of something like kernel_init(),

Physical address corresponding to the symbol in the kernel text segment ?

> and using the corresponding pte/pmd/pud/p4d/pgd that encompasses that

So I guess this will help us use pte/pmd/pud/p4d/pgd entries from a real and
present mapping rather then making them up for test purpose. Although we are
not creating real page tables here just wondering if this could some how
affect these real mapping in anyway from some accessors. The current proposal
stays clear from anything real - allocates, evaluates and releases.

Also table entries at pmd/pud/p4d/pgd cannot be operated with accessors in the
test. THP and PUD THP will operate on leaf entries at pmd or pud levels. We need
them as leaf entries created from allocated (aligned) pfns. While determining
pte/pmd/pud/p4d/pgd for kernel_init() some of them will be table entries.

> address?  It's also better to pass in the pfn/page rather than using global
> variables to communicate to the test functions.

Sure those can be allocated and passed from the main function. Just wanted to
avoid page allocation in each individual tests.

> 
>> +	/*
>> +	 * A huge page does not point to next level page table
>> +	 * entry. Hence this must qualify as pmd_bad().
>> +	 */
>> +	WARN_ON(!pmd_bad(pmd_mkhuge(pmd)));
> 
> I didn't know that rule.  This is helpful because it gives us somewhere
> to document all these tricksy little rules.

That is another objective this test has which will help settle semantics
in a clear and documented manner.

> 
>> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
>> +static void pud_basic_tests(void)
> 
> Is this the right ifdef?

IIUC THP at PUD is where the pud_t entries are directly operated upon and the
corresponding accessors are present only when HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
is enabled. Am I missing something here ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
