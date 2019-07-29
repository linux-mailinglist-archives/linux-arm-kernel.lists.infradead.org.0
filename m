Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C5878AAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbJZTN8W5gr7v+Km9buI9YualAuYtxMtHVWO2YyBuKk=; b=X+LxGrcyjj3RBz
	982hrkat+hDMuRL3kjNW/17g1MimTjPLe0QfgMXaliP3KovBoMJgTnTtl8iar99LpXBue5sHJzCVE
	jf57FqbydNs5u38N7db6h5JbBBV55ekuKJbum3VNplemfKin7b3lg9KlxgEdBrxRtGiFLvYh8DO/z
	KTiZQzPhJkuDn6oma8crv8DjLOFRRQ9CHE0JF/0tiwHR/tawQAEudEAKyIbWfbnSvfRqBzGND6kjl
	g9l/r9wL+eQuDknU0LQNo0mweWMLfF9itp0RPpGfzsxImci4uqx/KGq5SQt4fuvhxksKGpYR/b75T
	wSMUnyYJ2Q/0aHMEhDrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3zU-0001rt-9g; Mon, 29 Jul 2019 11:38:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3zM-0001rZ-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:38:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECCD228;
 Mon, 29 Jul 2019 04:38:47 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E2E03F694;
 Mon, 29 Jul 2019 04:38:45 -0700 (PDT)
Subject: Re: [PATCH v9 10/21] mm: Add generic p?d_leaf() macros
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-11-steven.price@arm.com>
 <20190723094113.GA8085@lakrids.cambridge.arm.com>
 <ce4e21f2-020f-6677-d79c-5432e3061d6e@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <674bd809-f853-adb0-b1ab-aa4404093083@arm.com>
Date: Mon, 29 Jul 2019 12:38:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ce4e21f2-020f-6677-d79c-5432e3061d6e@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_043848_891208_F25D2CCC 
X-CRM114-Status: GOOD (  17.68  )
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

On 28/07/2019 12:44, Anshuman Khandual wrote:
> 
> 
> On 07/23/2019 03:11 PM, Mark Rutland wrote:
>> On Mon, Jul 22, 2019 at 04:41:59PM +0100, Steven Price wrote:
>>> Exposing the pud/pgd levels of the page tables to walk_page_range() means
>>> we may come across the exotic large mappings that come with large areas
>>> of contiguous memory (such as the kernel's linear map).
>>>
>>> For architectures that don't provide all p?d_leaf() macros, provide
>>> generic do nothing default that are suitable where there cannot be leaf
>>> pages that that level.
>>>
>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>
>> Not a big deal, but it would probably make sense for this to be patch 1
>> in the series, given it defines the semantic of p?d_leaf(), and they're
>> not used until we provide all the architectural implemetnations anyway.
> 
> Agreed.
> 
>>
>> It might also be worth pointing out the reasons for this naming, e.g.
>> p?d_large() aren't currently generic, and this name minimizes potential
>> confusion between p?d_{large,huge}().
> 
> Agreed. But these fallback also need to first check non-availability of large
> pages. I am not sure whether CONFIG_HUGETLB_PAGE config being clear indicates
> that conclusively or not. Being a page table leaf entry has a broader meaning
> than a large page but that is really not the case today. All leaf entries here
> are large page entries from MMU perspective. This dependency can definitely be
> removed when there are other types of leaf entries but for now IMHO it feels
> bit problematic not to directly associate leaf entries with large pages in
> config restriction while doing exactly the same.

The intention here is that the page walkers are able to walk any type of
page table entry which the kernel may use. CONFIG_HUGETLB_PAGE only
controls whether "huge TLB pages" are used by user space processes. It's
quite possible that option to not be selected but the linear mapping to
have been mapped using "large pages" (i.e. leaf entries further up the
tree than normal).

One of the goals was to avoid tying the new functions to a configuration
option but instead match the hardware architecture. Of course this isn't
possible in the most general case (e.g. an architecture may have
multiple hardware page table formats). But to the extent that other
functions like p?d_none() work the desire is that p?d_leaf() should also
work.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
