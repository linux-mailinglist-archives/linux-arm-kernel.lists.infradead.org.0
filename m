Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C15A173784
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3i2HRz/qcIckd3Bblr+k7RcZoFkSgwOjBAKxjG0kPho=; b=A20IUP21fgT979
	De2YqgAPrukIGWKCnkmAHT9pvYbloXNxhITADqcSp4sbEre/fHhpicwl9PIRo6hco2yrmf7g6nzaT
	9sfzWw7lYDQbPnUrU4VNc+i14pTmnRJ05+H884i3afuRyXG2f4FQvx+9tobzOe6BzNNncVnbUMXg4
	eW2ifXqDxQh97h91BmENajSa3l7VNSAd5rM5UTNTMAxF58G651Bft60kLyU0CPUuLoU3mN6mnEVQP
	WDbnsbEIFbXMj39JxfQOazz3ez4++Uppjsg/ZjErnfuueW9mhzc7xrPIrzgS6E2aQZ/m4g/VeLijq
	2fMqZM7QZpI8RwqTu8Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7f3X-0001Bd-Ok; Fri, 28 Feb 2020 12:47:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7f3I-0001B8-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:47:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D7B4246AF;
 Fri, 28 Feb 2020 12:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582894055;
 bh=fdR6c1sPQyMICl3deohUdwGgLZOJa5k06Gv2GgRRLkw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kz9+hr52KZ3IEf6cT5ZcryYGelFoi7eqtGEvkMii+pdQrtBOIXfXMF5YWjd8Bn1Rg
 YtrnMN6veyj+YKG2XoM0hEcdzGVv4j2g1GDa/KqwOoZzpuEWPJ4zTkAJ7Z8GiO6Sx3
 YRdD+//KNa4AMHp0kvPGv1t60hfF42bmTwqnE3iQ=
Date: Fri, 28 Feb 2020 12:47:32 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: mm: convert cpu_do_switch_mm() to C
Message-ID: <20200228124731.GA4179@willie-the-truck>
References: <20200213121452.23205-1-mark.rutland@arm.com>
 <20200227142946.GG3281767@arrakis.emea.arm.com>
 <20200228111350.GA2941@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228111350.GA2941@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044736_328042_937B0FAE 
X-CRM114-Status: GOOD (  26.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 11:13:50AM +0000, Will Deacon wrote:
> On Thu, Feb 27, 2020 at 02:29:46PM +0000, Catalin Marinas wrote:
> > On Thu, Feb 13, 2020 at 12:14:52PM +0000, Mark Rutland wrote:
> > > There's no reason that cpu_do_switch_mm() needs to be written as an
> > > assembly function, and having it as a C function would make it easier to
> > > maintain.
> > > 
> > > This patch converts cpu_do_switch_mm() to C, removing code that this
> > > change makes redundant (e.g. the mmid macro). Since the header comment
> > > was stale and the prototype now implies all the necessary information,
> > > this comment is removed. The 'pgd_phys' argument is made a phys_addr_t
> > > to match the return type of virt_to_phys().
> > > 
> > > At the same time, post_ttbr_update_workaround() is updated to use
> > > IS_ENABLED(), which allows the compiler to figure out it can elide calls
> > > for !CONFIG_CAVIUM_ERRATUM_27456 builds.
> > > 
> > > There should be no functional change as a result of this patch.
> > > 
> > > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > 
> > I'll queue this for 5.7. Does not seem to have any functional change (I
> > changed the comments to C-style ones /* */).
> 
> Can you also update the comment in asm/mmu.h for the ASID() macro please?

Ah, I see this is already queued (I'm catching up with email after a trip
to the US) so here's a patch.

Will

--->8

From 2528094854c3b56ad3fe49d2164c9a920a251f05 Mon Sep 17 00:00:00 2001
From: Will Deacon <will@kernel.org>
Date: Fri, 28 Feb 2020 12:43:55 +0000
Subject: [PATCH] arm64: Update comment for ASID() macro

Commit 25b92693a1b6 ("arm64: mm: convert cpu_do_switch_mm() to C") added
a new use of the ASID() macro, so update the comment in asm/mmu.h which
reasons about why an atomic reload of 'mm->context.id.counter' is not
required.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/mmu.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index e4d862420bb4..21a4bcfdb378 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -23,9 +23,9 @@ typedef struct {
 } mm_context_t;
 
 /*
- * This macro is only used by the TLBI code, which cannot race with an
- * ASID change and therefore doesn't need to reload the counter using
- * atomic64_read.
+ * This macro is only used by the TLBI and low-level switch_mm() code,
+ * neither of which can race with an ASID change. We therefore don't
+ * need to reload the counter using atomic64_read().
  */
 #define ASID(mm)	((mm)->context.id.counter & 0xffff)
 
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
