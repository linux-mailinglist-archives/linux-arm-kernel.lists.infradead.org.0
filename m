Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985D29B2E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 17:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ii4kr9iwB7GZmVUkmeItTU9aXzbhDWCBNDbDFFZ5+bI=; b=izAaC38kaVGn/L
	ASIOw06BGYvvpWX++iDgzw6+vt5/PLz/wCiokrl7T1iPvoQ+JzkMJv+X4fCQXzb/lYD/MZiFBWTod
	Ik2BVH5NwJD57uSn6eweddLPqxKPWx/dbvSkshjjJyQ3xWSKYJRZCdQhv8zbfBqPLqZhjiI24sRMP
	W7uXY0nVf2EzeX2UpB/cHjnaDHTCcaQiKNsnX80KKLHL7wDaxfbIDoFSvY2jyqp5FpTPLVeiOs2Oe
	eWdrSRLom26t/RJ1LGiRQvovMa/O2td/TOU7ez9+Zmqk5Sr30mftne9uJZ3nCDz/3cDKcqTITopM7
	FQ1edTaZgNG2A01kjQlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1B4K-00081m-PM; Fri, 23 Aug 2019 15:01:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1B4C-00081A-Sw
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 15:01:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EB4320870;
 Fri, 23 Aug 2019 15:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566572488;
 bh=VeDXUNhYi4KOLRcPtTimB9I/sRPTZn6cLXwdsKfPAoM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ogw5G1a4JKEhadQ4VXMl8TD9pUVeCpgRlOTMDgBEM80gSNPg9C9ilMz662jfrrP1D
 C0Ht4swy/wJGr0TqI3JQy1vqynpRHpPFJGNGSigNYfrwVf14YBKQpVaFkXmW8Hu0AX
 lQ2Ehl2PfHVZv6NukNtD+6USjCHPjarbfILjbFQU=
Date: Fri, 23 Aug 2019 16:01:23 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v8 1/5] mm: untag user pointers in mmap/munmap/mremap/brk
Message-ID: <20190823150123.okjow4g3mt2znz7c@willie-the-truck>
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-2-catalin.marinas@arm.com>
 <20190819162851.tncj4wpwf625ofg6@willie-the-truck>
 <20190822164125.acfb97de912996b2b9127c61@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822164125.acfb97de912996b2b9127c61@linux-foundation.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_080128_959754_BF8F1AD4 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave Hansen <dave.hansen@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 04:41:25PM -0700, Andrew Morton wrote:
> On Mon, 19 Aug 2019 17:28:51 +0100 Will Deacon <will@kernel.org> wrote:
> 
> > On Thu, Aug 15, 2019 at 04:43:59PM +0100, Catalin Marinas wrote:
> > > There isn't a good reason to differentiate between the user address
> > > space layout modification syscalls and the other memory
> > > permission/attributes ones (e.g. mprotect, madvise) w.r.t. the tagged
> > > address ABI. Untag the user addresses on entry to these functions.
> > > 
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > ---
> > >  mm/mmap.c   | 5 +++++
> > >  mm/mremap.c | 6 +-----
> > >  2 files changed, 6 insertions(+), 5 deletions(-)
> > 
> > Acked-by: Will Deacon <will@kernel.org>
> > 
> > Andrew -- please can you pick this patch up? I'll take the rest of the
> > series via arm64 once we've finished discussing the wording details.
> > 
> 
> Sure, I grabbed the patch from the v9 series.

Thanks, Andrew.

> But please feel free to include this in the arm64 tree - I'll autodrop
> my copy if this turns up in linux-next.

I'd prefer for this one to go via you so that it can sit with the rest of
the core changes relating to tagged addresses. Obviously please yell if
you run into any issues with it!

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
