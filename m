Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA32F9C746
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 04:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPxO33VFzFs+ASPGZ+eP7h367I/F8147BccZzYV7KZY=; b=tchKQXy2qm6XJg
	Hj7ykCtNZYbEpkVGzNcPKGolMu1b/iSry/OpSHX7CTbpq3TbeF1LLpIFUdHpBac48aZHh7T+Zh4JB
	qBAiKB5S1SjTyc++0QO4tYfK10ryRa7chAmaWW5FXhiZ70upkscvTs1Uz4Bgag0U6Nody3qx+c2D5
	ueF9eOE1gkqk1HulttcyDwQ7QqfqYsXr/a8+bPiZ5BhXiMOSP4QznZVvLjkgyQnn2STJYOrXBw4cF
	LF4iNhPpLhtYkdJuDvdVU3/6V5yxdTRMT6EoCSUxld+DYq3cidcVay/S7LVxD719SP/cm5RSagg2W
	+FHY97BzVNwRZZq+Nbxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i24lu-00031T-71; Mon, 26 Aug 2019 02:30:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i24lP-00030B-Jt; Mon, 26 Aug 2019 02:29:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 77760344;
 Sun, 25 Aug 2019 19:29:42 -0700 (PDT)
Received: from [10.162.43.136] (p8cg001049571a15.blr.arm.com [10.162.43.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8EB213F718; Sun, 25 Aug 2019 19:29:32 -0700 (PDT)
Subject: Re: [RFC V2 0/1] mm/debug: Add tests for architecture exported page
 table helpers
To: Mark Rutland <mark.rutland@arm.com>, Matthew Wilcox <willy@infradead.org>
References: <1565335998-22553-1-git-send-email-anshuman.khandual@arm.com>
 <20190809101632.GM5482@bombadil.infradead.org>
 <20190809114450.GF48423@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <652ae041-2033-1cf8-e559-6dcf85dd2fdd@arm.com>
Date: Mon, 26 Aug 2019 07:59:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190809114450.GF48423@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_192947_745371_7ECE0A23 
X-CRM114-Status: GOOD (  18.43  )
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Steven Price <Steven.Price@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-arm-kernel@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/09/2019 05:14 PM, Mark Rutland wrote:
> On Fri, Aug 09, 2019 at 03:16:33AM -0700, Matthew Wilcox wrote:
>> On Fri, Aug 09, 2019 at 01:03:17PM +0530, Anshuman Khandual wrote:
>>> Should alloc_gigantic_page() be made available as an interface for general
>>> use in the kernel. The test module here uses very similar implementation from
>>> HugeTLB to allocate a PUD aligned memory block. Similar for mm_alloc() which
>>> needs to be exported through a header.
>>
>> Why are you allocating memory at all instead of just using some
>> known-to-exist PFNs like I suggested?
> 
> IIUC the issue is that there aren't necessarily known-to-exist PFNs that
> are sufficiently aligned -- they may not even exist.
> 
> For example, with 64K pages, a PMD covers 512M. The kernel image is
> (generally) smaller than 512M, and will be mapped at page granularity.
> In that case, any PMD entry for a kernel symbol address will point to
> the PTE level table, and that will only necessarily be page-aligned, as
> any P?D level table is only necessarily page-aligned.

Right.

> 
> In the same configuration, you could have less than 512M of total
> memory, and none of this memory is necessarily aligned to 512M. So
> beyond the PTE level, I don't think you can guarantee a known-to-exist
> valid PFN.
Right a PMD aligned valid PFN might not even exist. This proposed patch
which attempts to allocate memory chunk with required alignment will just
fail indicating that such a valid PFN does not exist and hence will skip
any relevant tests. At present this is done for PUD aligned allocation
failure but we can similarly skip PMD relevant tests as well if PMD
aligned memory chunk is not allocated.

> 
> I also believe that synthetic PFNs could fail pfn_valid(), so that might
> cause us pain too...

Agreed. So do we have an agreement that it is better to use allocated
memory with required alignment for the tests than known-to-exist PFNs ?

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
