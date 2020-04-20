Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB7D1B17EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LG3H3nR5Jxvk4sXd/MljTXhtmUV7lmi1c2hSW1Ck4c=; b=rd990/ZJk8D78Z
	MHZYVOh9zrciUsUGzgETANsk1+2XSGb3BnRt4yg3dnFwQBL+kSU16SZ4NDNHbssvdHMZWA6pJr9bE
	/bSTWhE4m87scdxoOUwBeWNUvSss9CSC6QOQ2qWFYzevyyvYBUlh8ZUe7tmhW2L7YUgkuCrxFvN5w
	Xz2y5mVGiUzqnAupBLHHRyi20iMSiZlH8PqsT6u8RDk+fO/IEjd/OsMrguwRgY2O2+Tk/zdO7rZio
	yjPfQ44x4TFYbw3MUieVRbHmDWJdUQDf3eGZETCueGR+rztUutvV66+wuhgH3XZvLsaHM6jGVjS8X
	K1aN6oJTKQPpVEVJVbjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQdaM-0005tW-N3; Mon, 20 Apr 2020 21:04:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQdaD-0005s7-Uh; Mon, 20 Apr 2020 21:04:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C73920724;
 Mon, 20 Apr 2020 21:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587416641;
 bh=B6tu4PQYxSMIHwT8IIW2BqLBbquTlTHzD+k7VKRWKiY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KLGeSVsaKscXEomFaxLVk4/08pxBFxLmWwvvp/xVS1rq81o2K8P2Bnl1v4kjl/sb2
 XFU86f/Aa7FwnQNCuJpc1uYdan2zLkqza8h9twbemUXWVnnZf6ZvW2IinHp4Lp24AC
 ML8bBjhsBDp85WIi7Pe/U+i6OaK7Z5IAiZJu87jg=
Date: Mon, 20 Apr 2020 22:03:55 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 2/2] mm/thp: Rename pmd_mknotpresent() as pmd_mknotvalid()
Message-ID: <20200420210354.GD29998@willie-the-truck>
References: <1584680057-13753-1-git-send-email-anshuman.khandual@arm.com>
 <1584680057-13753-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584680057-13753-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_140402_009307_4D40F08C 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: x86@kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Russell King <linux@armlinux.org.uk>, Steven Rostedt <rostedt@goodmis.org>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 nouveau@lists.freedesktop.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-snps-arc@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 10:24:17AM +0530, Anshuman Khandual wrote:
> pmd_present() is expected to test positive after pmdp_mknotpresent() as the
> PMD entry still points to a valid huge page in memory. pmdp_mknotpresent()
> implies that given PMD entry is just invalidated from MMU perspective while
> still holding on to pmd_page() referred valid huge page thus also clearing
> pmd_present() test. This creates the following situation which is counter
> intuitive.
> 
> [pmd_present(pmd_mknotpresent(pmd)) = true]
> 
> This renames pmd_mknotpresent() as pmd_mknotvalid() reflecting the helper's
> functionality more accurately while changing the above mentioned situation
> as follows. This does not create any functional change.
> 
> [pmd_present(pmd_mknotvalid(pmd)) = true]
> 
> This is not applicable for platforms that define own pmdp_invalidate() via
> __HAVE_ARCH_PMDP_INVALIDATE. Suggestion for renaming came during a previous
> discussion here.

Bikeshed alert: maybe pmd_mkinvalid() would be better, given that this is
a one-trick pony for pmdp_invalidate()?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
