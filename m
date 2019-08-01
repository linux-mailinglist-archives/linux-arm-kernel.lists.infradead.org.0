Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE86A7D541
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLrgoERFVS+Ws3+BBKcrb6lwCXP4B71OLkXSXwi1mpA=; b=MCzqvHnE73+/9a
	xW0C6W7Vo5SZu9I+D2FJaLEArXjHIgE/lDD2ZVuoCNIMd3JisHBSR9PrNSW8NeSkUbiCMNptjNJK5
	Tz9YJwGTq52xdFRx3VEKsYkZ/vfZVt4uxcf6/ceqMxB3Zhcz7cv9z1Hp4asxnhczLgx3trk1DVjv2
	mHBbc3j6ju/OJnANBb4TF3KokcerZhW4iN/oC2ALtX0uCGzKsEdnmm5AF38xqNGFZbbsCKWxSUhxa
	Ovg7G0rpb2gBrTqs182+VmibUvb77JQBugxuZhYvdam7LzmCIx54WUkTNUa6fs6zHybt+te5YuwHy
	t3hMwePZNW6nbd5L3dKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4Gx-0006Ll-7z; Thu, 01 Aug 2019 06:09:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4Gp-0006Kn-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:09:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F57B337;
 Wed, 31 Jul 2019 23:08:53 -0700 (PDT)
Received: from [10.163.1.81] (unknown [10.163.1.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF2273F694;
 Wed, 31 Jul 2019 23:10:46 -0700 (PDT)
Subject: Re: [PATCH v9 10/21] mm: Add generic p?d_leaf() macros
To: Steven Price <steven.price@arm.com>, Mark Rutland <mark.rutland@arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-11-steven.price@arm.com>
 <20190723094113.GA8085@lakrids.cambridge.arm.com>
 <ce4e21f2-020f-6677-d79c-5432e3061d6e@arm.com>
 <674bd809-f853-adb0-b1ab-aa4404093083@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <0979d4b4-7a97-2dc3-67cf-3aa6569bfdcd@arm.com>
Date: Thu, 1 Aug 2019 11:39:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <674bd809-f853-adb0-b1ab-aa4404093083@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_230859_966098_47BE8AFE 
X-CRM114-Status: GOOD (  19.43  )
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/29/2019 05:08 PM, Steven Price wrote:
> On 28/07/2019 12:44, Anshuman Khandual wrote:
>>
>>
>> On 07/23/2019 03:11 PM, Mark Rutland wrote:
>>> On Mon, Jul 22, 2019 at 04:41:59PM +0100, Steven Price wrote:
>>>> Exposing the pud/pgd levels of the page tables to walk_page_range() means
>>>> we may come across the exotic large mappings that come with large areas
>>>> of contiguous memory (such as the kernel's linear map).
>>>>
>>>> For architectures that don't provide all p?d_leaf() macros, provide
>>>> generic do nothing default that are suitable where there cannot be leaf
>>>> pages that that level.
>>>>
>>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>>
>>> Not a big deal, but it would probably make sense for this to be patch 1
>>> in the series, given it defines the semantic of p?d_leaf(), and they're
>>> not used until we provide all the architectural implemetnations anyway.
>>
>> Agreed.
>>
>>>
>>> It might also be worth pointing out the reasons for this naming, e.g.
>>> p?d_large() aren't currently generic, and this name minimizes potential
>>> confusion between p?d_{large,huge}().
>>
>> Agreed. But these fallback also need to first check non-availability of large
>> pages. I am not sure whether CONFIG_HUGETLB_PAGE config being clear indicates
>> that conclusively or not. Being a page table leaf entry has a broader meaning
>> than a large page but that is really not the case today. All leaf entries here
>> are large page entries from MMU perspective. This dependency can definitely be
>> removed when there are other types of leaf entries but for now IMHO it feels
>> bit problematic not to directly associate leaf entries with large pages in
>> config restriction while doing exactly the same.
> 
> The intention here is that the page walkers are able to walk any type of
> page table entry which the kernel may use. CONFIG_HUGETLB_PAGE only
> controls whether "huge TLB pages" are used by user space processes. It's
> quite possible that option to not be selected but the linear mapping to
> have been mapped using "large pages" (i.e. leaf entries further up the
> tree than normal).

I understand that kernel page table might use large pages where as user space
never enabled HugeTLB. The point to make here was CONFIG_HUGETLB approximately
indicates the presence of large pages though the absence of same does not
conclusively indicate that large pages are really absent on the MMU. Perhaps it
will requires something new like MMU_[LARGE|HUGE]_PAGES.

> 
> One of the goals was to avoid tying the new functions to a configuration
> option but instead match the hardware architecture. Of course this isn't
> possible in the most general case (e.g. an architecture may have
> multiple hardware page table formats). But to the extent that other
> functions like p?d_none() work the desire is that p?d_leaf() should also
> work.

It is fair enough to assume that a platform can decide wisely and provide
accurate definition for p?d_leaf() functions. Anyways its okay not to make
this more complex by tying with a new config option which does not exist.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
