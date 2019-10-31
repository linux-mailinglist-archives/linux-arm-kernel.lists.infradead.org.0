Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E71EB2DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69wziyX+MzBcr8L36Vcw0cWXNjJ1bw2aBUCWIauEFhU=; b=au3MpoGkg6AGuK
	KvlmiIWE2rXTVAKvddbf5p48NtjYI/j0HrMtFKBeFUjnoZk52Ixk4sDbCwWoKVmk1ClKw4SvQyI1R
	Wsg5oNDfe7KfG6ymclPGMVuwiVKcBiJKmE5X1O8688mrB65akuI6IME7VBlXWby9WvLwW36wAWwem
	1jrCmF3i1pMU7gLeSozHlM1NOmNg3BOJNOyaVXRIyXcTVUjwo3I1JUDB5LzctqK/sQhNSguYHDstm
	ABeq+QtxEXx7RcO9gCFufnMYWdJJKQK+ttjDUOGOhYNFxq9s5FXEetNFrc5kZ9+yZWvq5LB+tT1tz
	ky/P7hu3Tn0aQHzoNv4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBZy-00043K-Va; Thu, 31 Oct 2019 14:37:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBZp-000423-DW
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:37:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9A741F1;
 Thu, 31 Oct 2019 07:37:28 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4D2843F71E; Thu, 31 Oct 2019 07:37:26 -0700 (PDT)
Date: Thu, 31 Oct 2019 14:37:24 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v14 21/22] arm64: mm: Convert mm/dump.c to use
 walk_page_range()
Message-ID: <20191031143724.GE39590@arrakis.emea.arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
 <20191028135910.33253-22-steven.price@arm.com>
 <20191030164535.GC13309@arrakis.emea.arm.com>
 <40956d62-241c-6685-72f1-bfc01183141e@arm.com>
 <20191031140038.GC39590@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031140038.GC39590@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_073729_498819_5C1BCFC4 
X-CRM114-Status: GOOD (  18.20  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:00:38PM +0000, Catalin Marinas wrote:
> On Thu, Oct 31, 2019 at 01:32:34PM +0000, Steven Price wrote:
> > On 30/10/2019 16:45, Catalin Marinas wrote:
> > > On Mon, Oct 28, 2019 at 01:59:09PM +0000, Steven Price wrote:
> > >> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> > >> index 93f9f77582ae..9d9b740a86d2 100644
> > >> --- a/arch/arm64/mm/dump.c
> > >> +++ b/arch/arm64/mm/dump.c
> > >> @@ -15,6 +15,7 @@
> > >>  #include <linux/io.h>
> > >>  #include <linux/init.h>
> > >>  #include <linux/mm.h>
> > >> +#include <linux/ptdump.h>
> > >>  #include <linux/sched.h>
> > >>  #include <linux/seq_file.h>
> > >>  
> > >> @@ -75,10 +76,11 @@ static struct addr_marker address_markers[] = {
> > >>   * dumps out a description of the range.
> > >>   */
> > >>  struct pg_state {
> > >> +	struct ptdump_state ptdump;
> > >>  	struct seq_file *seq;
> > >>  	const struct addr_marker *marker;
> > >>  	unsigned long start_address;
> > >> -	unsigned level;
> > >> +	int level;
> > >>  	u64 current_prot;
> > >>  	bool check_wx;
> > >>  	unsigned long wx_pages;
> > >> @@ -178,6 +180,10 @@ static struct pg_level pg_level[] = {
> > >>  		.name	= "PGD",
> > >>  		.bits	= pte_bits,
> > >>  		.num	= ARRAY_SIZE(pte_bits),
> > >> +	}, { /* p4d */
> > >> +		.name	= "P4D",
> > >> +		.bits	= pte_bits,
> > >> +		.num	= ARRAY_SIZE(pte_bits),
> > >>  	}, { /* pud */
> > >>  		.name	= (CONFIG_PGTABLE_LEVELS > 3) ? "PUD" : "PGD",
> > >>  		.bits	= pte_bits,
> > > 
> > > We could use "PGD" for the p4d entry since we don't have five levels.
> > > This patches the "PGD" name used for pud/pmd when these levels are
> > > folded.
> > 
> > Good point, although I'd actually be more tempted to do the opposite -
> > remove the special casing for PUD/PMD as the generic code should now
> > never provide those levels if they are folded. What do you think?
> 
> I agree, it makes sense.

Forgot to mention. With the additional patch you sent, feel free to also
add my r-o-b on this one.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
