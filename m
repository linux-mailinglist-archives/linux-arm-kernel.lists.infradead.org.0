Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BE9878F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y83uJcnZpzxmm0sidb73pDzU0r6BKNkzEZ/51dy3hb8=; b=e62BqoerdYOY9L
	sEjHmgTmV+SLuGLDNmcbx9dy4bxnCq8sGflVIEG7hYCraQad65VKzBbKSFzm7w197KoX5Goj92Kfy
	uo/Rktg2szh7KZfdngo1uzqSZd0ZLIZ5lVccQ4id/BFFPqcpPLdFU7XzqIXr41r3+Sf4iSita0kd3
	gdRd0cuKvtX2zV6kzDYuMQtlsdae4YN/hvJM/g5LDP4gtGQOmR5bp2tKZLARWAqwWtUK5hMQNcMjP
	/Ew6+mx5lo8itBsVpnCqRYTaDOl3eCfxXYN6CnsnESW9Pl203CJfPi3UDQH/4htoUU16O1oe3PlDy
	Jo++F1ASG08Eh5wrGzGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3Kc-00078y-7m; Fri, 09 Aug 2019 11:45:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3KM-00078a-IG; Fri, 09 Aug 2019 11:44:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C12CD1596;
 Fri,  9 Aug 2019 04:44:57 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DD783F575;
 Fri,  9 Aug 2019 04:44:53 -0700 (PDT)
Date: Fri, 9 Aug 2019 12:44:51 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [RFC V2 0/1] mm/debug: Add tests for architecture exported page
 table helpers
Message-ID: <20190809114450.GF48423@lakrids.cambridge.arm.com>
References: <1565335998-22553-1-git-send-email-anshuman.khandual@arm.com>
 <20190809101632.GM5482@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809101632.GM5482@bombadil.infradead.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_044458_644311_50D9CF79 
X-CRM114-Status: GOOD (  13.53  )
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
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Steven Price <Steven.Price@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-arm-kernel@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
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

On Fri, Aug 09, 2019 at 03:16:33AM -0700, Matthew Wilcox wrote:
> On Fri, Aug 09, 2019 at 01:03:17PM +0530, Anshuman Khandual wrote:
> > Should alloc_gigantic_page() be made available as an interface for general
> > use in the kernel. The test module here uses very similar implementation from
> > HugeTLB to allocate a PUD aligned memory block. Similar for mm_alloc() which
> > needs to be exported through a header.
> 
> Why are you allocating memory at all instead of just using some
> known-to-exist PFNs like I suggested?

IIUC the issue is that there aren't necessarily known-to-exist PFNs that
are sufficiently aligned -- they may not even exist.

For example, with 64K pages, a PMD covers 512M. The kernel image is
(generally) smaller than 512M, and will be mapped at page granularity.
In that case, any PMD entry for a kernel symbol address will point to
the PTE level table, and that will only necessarily be page-aligned, as
any P?D level table is only necessarily page-aligned.

In the same configuration, you could have less than 512M of total
memory, and none of this memory is necessarily aligned to 512M. So
beyond the PTE level, I don't think you can guarantee a known-to-exist
valid PFN.

I also believe that synthetic PFNs could fail pfn_valid(), so that might
cause us pain too...

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
