Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D316E173C92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTmldPmZHN9QpUsgksQK8BoJCcf87PtyNV6+fFF9WuA=; b=RbLItp3UyDpfxl
	VkqlflOnuP4W1JLvA8dJ9CCPRRecrl5jeRCo1QL0orunOJq/pzPvMuUj7WjmHfe2oFv4VRQOt0fYg
	at3uJDCwEhBxTHQf5etvjh67x/yn5ExhzCsp8Z75fRw3CyVbxHGjbhHLJ0RlYvQ3QP98xnFuXT45F
	k3EkCzXNSW8iLOsxo0Ii1hVj8wwEFeqkqEziBdcEc9Wtnd5MrLSzZz9+EPsCjJCJvpUtQp0atQUVo
	a0fry7YOxGbdEktbcboVBH4wGplpqdf6mmSvJRMM8gbGSOgha237YNW2uZ5JDtDaX6MCAM24rt2bo
	ZRL6i3iG+ON7/iQaaY1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iBa-0002lU-Uh; Fri, 28 Feb 2020 16:08:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iBR-0002l2-7O
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:08:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 732BF31B;
 Fri, 28 Feb 2020 08:08:12 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C20803F73B;
 Fri, 28 Feb 2020 08:08:11 -0800 (PST)
Date: Fri, 28 Feb 2020 16:08:09 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64: entry: unmask IRQ in el0_sp()
Message-ID: <20200228160809.GK36089@lakrids.cambridge.arm.com>
References: <20200228145942.10675-1-mark.rutland@arm.com>
 <2680f3b0-a457-ba9f-322c-2c6e9f079e87@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2680f3b0-a457-ba9f-322c-2c6e9f079e87@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_080813_310362_8FE85977 
X-CRM114-Status: GOOD (  16.08  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 03:37:46PM +0000, James Morse wrote:
> Hi Mark,
> 
> On 28/02/2020 14:59, Mark Rutland wrote:
> > Currently, the EL0 SP alignment handler masks IRQs unnecessarily. It
> > does so due to historic code sharing of the EL0 SP and PC alignment
> > handlers, and branch predictor hardening applicable to the EL0 SP
> > handler.
> > 
> > We began masking IRQs in the EL0 SP alignment handler in commit:
> > 
> >   5dfc6ed27710c42c ("arm64: entry: Apply BP hardening for high-priority synchronous exception")
> > 
> > ... as this shared code with the EL0 PC alignment handler, and branch
> > predictor hardening made it necessary to disable IRQs for early parts of
> > the EL0 PC alignment handler. It was not necessary to mask IRQs during
> > EL0 SP alignment exceptions, but it was not considered harmful to do so.
> > 
> > This masking was carried forward into C code in commit:
> > 
> >   582f95835a8fc812 ("arm64: entry: convert el0_sync to C")
> > 
> > ... where the SP/PC cases were split into separate handlers, and the
> > masking duplicated.
> > 
> > Subsequently the EL0 PC alignment handler was refactored to perform
> > branch predictor hardening before unmasking IRQs, in commit:
> > 
> >   bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")
> > 
> > ... but the redundant masking of IRQs was not removed from the EL0 SP
> > alignment handler.
> 
> Bother.
> 
> 
> > Let's do so now, and make it interruptible as with most other
> > synchronous exception handlers.
> 
> I think you want:
> Fixes: bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")
> 
> on this as, bfe298745afc9548 changed the behaviour: local_daif_restore(DAIF_PROCCTX) was
> called before arm64_notify_die(), now its not.
> 
> With that,
> Reviewed-by: James Morse <james.morse@arm.com>

Ah; I missed that subtlety.

I assume that Catalin can fold those in when applying. Otherwise I'll
add them for a v2.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
