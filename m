Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9976D181B6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFV+5esmJ2yCWoF8sFB3zKm9y2NayZpWsxYlq03geTs=; b=rBaiS95DQhSAmI
	n+GNcVxeWAM/HLSvBEJTyEeviCH5AYiHYSmdVELFoXvNS9mymATRx+35RZAeXo5OEzKVq1NxpeQzV
	iD8RtIQSARgtsM1XTp7pEP8Hn5itAUgmddAC5lK3GL6MNUQnm80ViMYUimcevOoE0yb9zjkPNGI5+
	gl9gAYjhdqWlt2FiYCOkW25U+F32h+ff2RFx85vs7ivUPy8GHqzO5USwKUzuRDdk90NdUL6VOtLkN
	REHsED7cqT2uMdC85DimFotVMcG0zpUyPOYg1d9AjHVU4U2T52JrpJgX3C0tsbFZKJ3gdDOb4hZJh
	DD007m1pIlV2K7VCQzGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2SA-0001Pi-Vp; Wed, 11 Mar 2020 14:35:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2S2-0001PN-Rz
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:35:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B56AF7FA;
 Wed, 11 Mar 2020 07:35:13 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 101613F67D; Wed, 11 Mar 2020 07:35:12 -0700 (PDT)
Date: Wed, 11 Mar 2020 14:35:10 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: entry: unmask IRQ in el0_sp()
Message-ID: <20200311143510.GJ3216816@arrakis.emea.arm.com>
References: <20200228145942.10675-1-mark.rutland@arm.com>
 <2680f3b0-a457-ba9f-322c-2c6e9f079e87@arm.com>
 <20200228160809.GK36089@lakrids.cambridge.arm.com>
 <20200305203021.GA29446@willie-the-truck>
 <2147529b-ff22-3b63-ae9c-6a97754dd7eb@arm.com>
 <20200310105151.GB48640@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310105151.GB48640@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_073514_957456_3F22DD43 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 10:51:52AM +0000, Mark Rutland wrote:
> On Mon, Mar 09, 2020 at 04:04:58PM +0000, James Morse wrote:
> > Hi Mark, Will,
> > 
> > On 05/03/2020 20:30, Will Deacon wrote:
> > > On Fri, Feb 28, 2020 at 04:08:09PM +0000, Mark Rutland wrote:
> > >> On Fri, Feb 28, 2020 at 03:37:46PM +0000, James Morse wrote:
> > >>> On 28/02/2020 14:59, Mark Rutland wrote:
> > >>>> Let's do so now, and make it interruptible as with most other
> > >>>> synchronous exception handlers.
> > >>>
> > >>> I think you want:
> > >>> Fixes: bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")
> > >>>
> > >>> on this as, bfe298745afc9548 changed the behaviour: local_daif_restore(DAIF_PROCCTX) was
> > >>> called before arm64_notify_die(), now its not.
> > >>>
> > >>> With that,
> > >>> Reviewed-by: James Morse <james.morse@arm.com>
> > >>
> > >> Ah; I missed that subtlety.
> > >>
> > >> I assume that Catalin can fold those in when applying. Otherwise I'll
> > >> add them for a v2.
> > > 
> > > If you want v2 to go in as a fix, please can you explain why this is a
> > > problem (beyond disabling interrupts for longer than necessary) in the
> > > commit message?
> > 
> > Good news, its not broken. I wrongly-assumed calling arm64_notify_die() and then
> > force_sig_fault() with both IRQ-unmasked and IRQ-masked would lead to problems, but the
> > guts of force_sig_fault() is all wrapped in spin_lock_irqsave().
> 
> Thanks for delving into that.
> 
> Catalin, are you happy to queue the patch for v5.7 with James' R-b (but
> not the Fixes tag), and/or would you like me to send a v2 with that?

No need to send a v2. Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
