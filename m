Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393CABD6C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 05:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6HLzbgYiSt7d6EPS2rWeiU855UTuWkJi4BnmQ/w3Eo=; b=mjJE1EB47lqJC2
	sdMSF9sV9zAThghWg8PpRcsNwLHxAZXZbvBUoXgI6ZPVUSGvGRM982q70FFxgR9XzKHXICzbyEW++
	OovImaWDNI0CXahncrYFz6HIrwoDtqUUcgjc9PQI31VUXoFBNf7jsO9ew6iarIM+o13MhL2q5R20y
	X/XTmG59GIHL5H80gLVLcaAXXBAvyYsm3TDF6sJNlpQq11ezEa/Imw7ty7mTeBI3X5P8u8kU2uhpL
	3nK2q7Gq2DtWRux5zDXDOFg+x2k+b8VbIic//gi6yc7eNvqhVOWOErE9t4jh7Jf/YwYr1oaFAKUco
	9VomuNOErgUMCeFY8E8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCy6U-0005Tp-0b; Wed, 25 Sep 2019 03:36:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCy6D-0005TR-Ms; Wed, 25 Sep 2019 03:36:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06DD8337;
 Tue, 24 Sep 2019 20:36:17 -0700 (PDT)
Received: from [10.162.41.120] (p8cg001049571a15.blr.arm.com [10.162.41.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DB6CB3F694; Tue, 24 Sep 2019 20:36:05 -0700 (PDT)
Subject: Re: [PATCH V3 0/2] mm/debug: Add tests for architecture exported page
 table helpers
To: Mike Rapoport <rppt@linux.ibm.com>,
 "Kirill A. Shutemov" <kirill@shutemov.name>
References: <1568961203-18660-1-git-send-email-anshuman.khandual@arm.com>
 <20190924115101.p6y7vpbtgmj5qjku@box> <20190924123146.GC5202@linux.ibm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a5acc1cc-d046-e1d8-f39b-e3e785588d5e@arm.com>
Date: Wed, 25 Sep 2019 09:06:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190924123146.GC5202@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_203617_842707_4E9A8FA4 
X-CRM114-Status: GOOD (  17.05  )
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
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/24/2019 06:01 PM, Mike Rapoport wrote:
> On Tue, Sep 24, 2019 at 02:51:01PM +0300, Kirill A. Shutemov wrote:
>> On Fri, Sep 20, 2019 at 12:03:21PM +0530, Anshuman Khandual wrote:
>>> This series adds a test validation for architecture exported page table
>>> helpers. Patch in the series adds basic transformation tests at various
>>> levels of the page table. Before that it exports gigantic page allocation
>>> function from HugeTLB.
>>>
>>> This test was originally suggested by Catalin during arm64 THP migration
>>> RFC discussion earlier. Going forward it can include more specific tests
>>> with respect to various generic MM functions like THP, HugeTLB etc and
>>> platform specific tests.
>>>
>>> https://lore.kernel.org/linux-mm/20190628102003.GA56463@arrakis.emea.arm.com/
>>>
>>> Testing:
>>>
>>> Successfully build and boot tested on both arm64 and x86 platforms without
>>> any test failing. Only build tested on some other platforms. Build failed
>>> on some platforms (known) in pud_clear_tests() as there were no available
>>> __pgd() definitions.
>>>
>>> - ARM32
>>> - IA64
>>
>> Hm. Grep shows __pgd() definitions for both of them. Is it for specific
>> config?
>  
> For ARM32 it's defined only for 3-lelel page tables, i.e with LPAE on.
> For IA64 it's defined for !STRICT_MM_TYPECHECKS which is even not a config
> option, but a define in arch/ia64/include/asm/page.h

Right. So now where we go from here ! We will need help from platform folks to
fix this unless its trivial. I did propose this on last thread (v2), wondering if
it will be a better idea to restrict DEBUG_ARCH_PGTABLE_TEST among architectures
which have fixed all pending issues whether build or run time. Though enabling all
platforms where the test builds at the least might make more sense, we might have
to just exclude arm32 and ia64 for now. Then run time problems can be fixed later
platform by platform. Any thoughts ?

BTW the test is known to run successfully on arm64, x86, ppc32 platforms. Gerald
has been trying to get it working on s390. in the meantime., if there are other
volunteers to test this on ppc64, sparc, riscv, mips, m68k etc platforms, it will
be really helpful.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
