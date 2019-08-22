Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5219A402
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 01:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8MAXoTO2WFUyYwL/0XSmrRF1moAwRbkTBc7E0dgaa8=; b=S2zZtZXJ1oCpSO
	UXNkCaqjApS3k7F8V/NNN2Y14owSNveSXyq4TW/RdJkdc0JYruHm18vOxYYYFj/abFrJzPvWV8/ym
	9PV3w6vo/blpNK/vuBX9qvBlmx7SMdLVmDfe5FeQGLIhUHqmDwpIEg81UZV7udFwTnOm1E13AcJ6Y
	RRbwCMo0jmgNndGp1b3jS5aNJLguLWnyP8Sf1l/QyS/euaMsV6qLK/QtnUK/EagfKt6PHGuxViG1U
	3MG3mpWUGA70YY8i5xXt1vz8k2YkvVjBqBlI5PVXTGHyMPZW/uvx0/xGh82hdWAD3NiEGjKd6cj58
	eJPKSIjPUO/RP9Sfrcbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0wi1-0005zy-Nm; Thu, 22 Aug 2019 23:41:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0whs-0005zX-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 23:41:29 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 684C121848;
 Thu, 22 Aug 2019 23:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566517286;
 bh=YtRCAC6fgsRgJnEx63ur5nyjptr+AEUs6gIrAbXRiQI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=o8UdmRX97TswzWBvjk2gFJF6KO7BY2x+E967bHezsjBUP95XqFclydiiZxQDIWGNS
 /HK3TqMe1pG0vXyWjTqyWMiN6WOHRQ1slbrz8a4c6qtJJ6NDsk6SdUwK5hdhg43NJH
 om2HivuzvF1RXZajtMlOuiaXDG6/WAAxgrYZQZQg=
Date: Thu, 22 Aug 2019 16:41:25 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v8 1/5] mm: untag user pointers in mmap/munmap/mremap/brk
Message-Id: <20190822164125.acfb97de912996b2b9127c61@linux-foundation.org>
In-Reply-To: <20190819162851.tncj4wpwf625ofg6@willie-the-truck>
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-2-catalin.marinas@arm.com>
 <20190819162851.tncj4wpwf625ofg6@willie-the-truck>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_164128_235967_9AC91B51 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, 19 Aug 2019 17:28:51 +0100 Will Deacon <will@kernel.org> wrote:

> On Thu, Aug 15, 2019 at 04:43:59PM +0100, Catalin Marinas wrote:
> > There isn't a good reason to differentiate between the user address
> > space layout modification syscalls and the other memory
> > permission/attributes ones (e.g. mprotect, madvise) w.r.t. the tagged
> > address ABI. Untag the user addresses on entry to these functions.
> > 
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  mm/mmap.c   | 5 +++++
> >  mm/mremap.c | 6 +-----
> >  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Andrew -- please can you pick this patch up? I'll take the rest of the
> series via arm64 once we've finished discussing the wording details.
> 

Sure, I grabbed the patch from the v9 series.

But please feel free to include this in the arm64 tree - I'll autodrop
my copy if this turns up in linux-next.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
