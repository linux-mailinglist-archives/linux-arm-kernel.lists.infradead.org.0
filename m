Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B557777F2F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 13:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epJpyQMSY+LZhQZCjosjEnMvlA/63l3mPS9a6CHoeyw=; b=gs/xVgBsaem1mx
	52cCgufx5KJp1mWsyaFZeDrK+qRgS1rE/PVamFUv04DbkrXLmFtNRSR5AF1UpKBzFast5PwBRSjuN
	DAAL00ME4FZhhi0epodMTL1ncRf3QkcNphKsNHPTZQGY0WNEG30rsAZya2q7jZGblYyh/7MDm3L8K
	sEkcisf4sEcV3bDhZCQ9dYk+sIQxb1mw1bJhUa2APc3rAEaa7haWjapkL9KsQhWhGhTT0YG6+j7lj
	9a43fOVEjxXsYNPZPit/HmjCzPzxHwjMPWfHvlJ4X0pbjIOIZkdzKWOG5hUFHBZYxPm5aAyydIXsk
	1MB2SeFz+LQGwqCOsAfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrhDQ-0003tl-Mf; Sun, 28 Jul 2019 11:19:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hrhDA-0003t3-W6
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 11:19:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1C89344;
 Sun, 28 Jul 2019 04:19:29 -0700 (PDT)
Received: from [10.163.1.126] (unknown [10.163.1.126])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 855083F71F;
 Sun, 28 Jul 2019 04:19:23 -0700 (PDT)
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
To: Steven Price <steven.price@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <794fb469-00c8-af10-92a8-cb7c0c83378b@arm.com>
Date: Sun, 28 Jul 2019 16:50:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190722154210.42799-1-steven.price@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_041933_078054_4C13E105 
X-CRM114-Status: GOOD (  13.74  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
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

On 07/22/2019 09:11 PM, Steven Price wrote:
> Steven Price (21):
>   arc: mm: Add p?d_leaf() definitions
>   arm: mm: Add p?d_leaf() definitions
>   arm64: mm: Add p?d_leaf() definitions
>   mips: mm: Add p?d_leaf() definitions
>   powerpc: mm: Add p?d_leaf() definitions
>   riscv: mm: Add p?d_leaf() definitions
>   s390: mm: Add p?d_leaf() definitions
>   sparc: mm: Add p?d_leaf() definitions
>   x86: mm: Add p?d_leaf() definitions

The set of architectures here is neither complete (e.g ia64, parisc missing)
nor does it only include architectures which had previously enabled PTDUMP
like arm, arm64, powerpc, s390 and x86. Is there any reason for this set of
archs to be on the list and not the others which are currently falling back
on generic p?d_leaf() defined later in the series ? Are the missing archs
do not have huge page support in the MMU ? If there is a direct dependency
for these symbols with CONFIG_HUGETLB_PAGE then it must be checked before
falling back on the generic ones.

Now that pmd_leaf() and pud_leaf() are getting used in walk_page_range() these
functions need to be defined on all arch irrespective if they use PTDUMP or not
or otherwise just define it for archs which need them now for sure i.e x86 and
arm64 (which are moving to new generic PTDUMP framework). Other archs can
implement these later.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
