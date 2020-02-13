Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8215B718
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 03:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XN8QPkT/fRbhV/HktJO/cIrVVOE5GDeD9UW3exQCxQ=; b=A3qVCyE/OzTZwv
	oi424XAomDO2OtDf7pcdNRCFwfZ0BvUzNqYU3ULe73EGd5WdRu+zQ6fvechyjxXN43RIoqa3TbCPS
	STJSTlaR7zpByqHR71FGjTjN3XSfh4AWAbNbUOBgxC8RDE45zGcw5erbblC5NesU3Y+3eVM3ksNo6
	Wi6/0t86Yfll6+w7L0Ve/wFJphhCUhjGXSda17bxjsSbSSnOwmKfiwWIT888Cv7voFJFAZL8Q7jeY
	BVF5+Px5l78PK8OGp4Vb6+dgN0u2DCe1Rn8sTfUlz3nUuDi8jwlqIzSMG4fEWV2+cgD/0Q6GuWnBe
	Fj72ERDVBacloJK/iNXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j243U-0002yi-6U; Thu, 13 Feb 2020 02:16:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j242y-0002jE-TC; Thu, 13 Feb 2020 02:16:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0600030E;
 Wed, 12 Feb 2020 18:16:07 -0800 (PST)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 017A33F68E;
 Wed, 12 Feb 2020 18:15:52 -0800 (PST)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <20200210153716.GB9283@E121110.arm.com>
 <b169ff9d-7b87-91f4-b3d0-e97f86680d0c@arm.com>
 <20200212185548.3274ec2e@thinkpad>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <085cdec7-1759-82c6-7a65-9b7d28c1c458@arm.com>
Date: Thu, 13 Feb 2020 07:45:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200212185548.3274ec2e@thinkpad>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_181609_044016_0E6F7E31 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Ingo Molnar <mingo@kernel.org>,
 linux-s390@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, James Hogan <jhogan@kernel.org>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Dan Williams <dan.j.williams@intel.com>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/12/2020 11:25 PM, Gerald Schaefer wrote:
> On Wed, 12 Feb 2020 15:12:54 +0530
> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>>>> +/*
>>>> + * On s390 platform, the lower 12 bits are used to identify given page table
>>>> + * entry type and for other arch specific requirements. But these bits might
>>>> + * affect the ability to clear entries with pxx_clear(). So while loading up
>>>> + * the entries skip all lower 12 bits in order to accommodate s390 platform.
>>>> + * It does not have affect any other platform.
>>>> + */
>>>> +#define RANDOM_ORVALUE	(0xfffffffffffff000UL)  
>>>
>>> I'd suggest you generate this mask with something like
>>> GENMASK(BITS_PER_LONG, PAGE_SHIFT).  
>>
>> IIRC the lower 12 bits constrains on s390 platform might not be really related
>> to it's PAGE_SHIFT which can be a variable, but instead just a constant number.
>> But can definitely use GENMASK or it's variants here.
>>
>> https://lkml.org/lkml/2019/9/5/862
> 
> PAGE_SHIFT would be fine, it is 12 on s390. However, in order to be
> more precise, we do not really need all 12 bits, only the last 4 bits.
> So, something like this would work:
> 
> #define RANDOM_ORVALUE GENMASK(BITS_PER_LONG - 1, 4)
> 
> The text in the comment could then also be changed from 12 to 4, and
> be a bit more specific on the fact that the impact on pxx_clear()
> results from the dynamic page table folding logic on s390:
> 
> /*
>  * On s390 platform, the lower 4 bits are used to identify given page table
>  * entry type. But these bits might affect the ability to clear entries with
>  * pxx_clear() because of how dynamic page table folding works on s390. So
>  * while loading up the entries do not change the lower 4 bits.
>  * It does not have affect any other platform.
>  */

Sure, will update accordingly.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
