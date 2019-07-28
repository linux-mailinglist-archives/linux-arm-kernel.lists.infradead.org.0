Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2147777F4B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 13:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzE7LH5HDXBFV/rSPHm7XcEYSyHhzIATgdDxVrGEzZo=; b=n8h1T1vrzmRoPF
	m7zIpewfjkwXz8Ox2Z8bQPTly7DtKG/mhUfZiarnji0GC2GMT1IQT1cO0iitZWHkonpy3dsnHnyTW
	Gni/s768YVKE32Bne75HFW8XiekhT+6evkyNVZZAA20FjxH5whznKwcPcLXssi33SUTsCDoYjzM5q
	YFMcet6ebsCDbB8T4I+i2Z25VN7A5OaJIoG3Ul0pJsTjSBfIg1HqKLeVA23L9zNlQOGdmQ6pdtZwX
	9svAovYFJwPaLAxf3Vc/HUHMDe54z+vtq4bUTtptE4DDtIVmDawnDh4i7Dhw88B2O1+sk6R6Qww/L
	PD1+C03DHj+WgQ1HPvFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrhb2-0003jN-LB; Sun, 28 Jul 2019 11:44:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hrhao-0003iw-Je
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 11:43:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A702F337;
 Sun, 28 Jul 2019 04:43:57 -0700 (PDT)
Received: from [10.163.1.126] (unknown [10.163.1.126])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F39DE3F71F;
 Sun, 28 Jul 2019 04:43:50 -0700 (PDT)
Subject: Re: [PATCH v9 10/21] mm: Add generic p?d_leaf() macros
To: Mark Rutland <mark.rutland@arm.com>, Steven Price <steven.price@arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-11-steven.price@arm.com>
 <20190723094113.GA8085@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ce4e21f2-020f-6677-d79c-5432e3061d6e@arm.com>
Date: Sun, 28 Jul 2019 17:14:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190723094113.GA8085@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_044358_691893_D3EAC8A2 
X-CRM114-Status: GOOD (  15.69  )
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
Cc: x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/23/2019 03:11 PM, Mark Rutland wrote:
> On Mon, Jul 22, 2019 at 04:41:59PM +0100, Steven Price wrote:
>> Exposing the pud/pgd levels of the page tables to walk_page_range() means
>> we may come across the exotic large mappings that come with large areas
>> of contiguous memory (such as the kernel's linear map).
>>
>> For architectures that don't provide all p?d_leaf() macros, provide
>> generic do nothing default that are suitable where there cannot be leaf
>> pages that that level.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
> 
> Not a big deal, but it would probably make sense for this to be patch 1
> in the series, given it defines the semantic of p?d_leaf(), and they're
> not used until we provide all the architectural implemetnations anyway.

Agreed.

> 
> It might also be worth pointing out the reasons for this naming, e.g.
> p?d_large() aren't currently generic, and this name minimizes potential
> confusion between p?d_{large,huge}().

Agreed. But these fallback also need to first check non-availability of large
pages. I am not sure whether CONFIG_HUGETLB_PAGE config being clear indicates
that conclusively or not. Being a page table leaf entry has a broader meaning
than a large page but that is really not the case today. All leaf entries here
are large page entries from MMU perspective. This dependency can definitely be
removed when there are other types of leaf entries but for now IMHO it feels
bit problematic not to directly associate leaf entries with large pages in
config restriction while doing exactly the same.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
