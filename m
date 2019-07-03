Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A1C5E883
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m194yoVm9WAjAPsTkzNCYySwCM57cBMPCuIqf7RWtVc=; b=EWP9YJ5SUN6svF
	CTZ+Wqrdlu5LkwGbvFWuaNwsX45P2pUTaoRM3QKs44B8hyFijsuzWtgF9JC3I67e5MuKjzAh+dSv1
	ddStjuC1t0QvP3MouV6BB8+bOGqdDg06/l8q4iobBVCfkzfeADGudVeY3WyhETefzUX5UkGCdm/Ln
	/x89caypeATyvI0uVAR3BY87txMRhJkdZFIzeWEX0tcQRA5zXKDFjIirxnn6moDxgu29r9JBsU4Ax
	W+DbAxpOj9vC7tCscrCQ+T/vjSA+36Wpj/5F33VMq3MjUxA1UAOXfohY2V+ABWQ7E4ZYxT2fgka8M
	0ChpoEHlqG1Fm7T7L51Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hihta-0001FY-1F; Wed, 03 Jul 2019 16:14:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hihtO-0001ED-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:14:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DB5B344;
 Wed,  3 Jul 2019 09:13:56 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FEE63F718;
 Wed,  3 Jul 2019 09:13:55 -0700 (PDT)
Date: Wed, 3 Jul 2019 17:13:53 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 02/59] KVM: arm64: Move __load_guest_stage2 to kvm_mmu.h
Message-ID: <20190703161353.GT2790@e103592.cambridge.arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-3-marc.zyngier@arm.com>
 <20190624111924.GK2790@e103592.cambridge.arm.com>
 <bf4e43db-a0ea-9489-1a8c-280a72950cad@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf4e43db-a0ea-9489-1a8c-280a72950cad@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_091358_924305_29745191 
X-CRM114-Status: GOOD (  17.42  )
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andre Przywara <andre.przywara@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 10:30:03AM +0100, Marc Zyngier wrote:
> On 24/06/2019 12:19, Dave Martin wrote:
> > On Fri, Jun 21, 2019 at 10:37:46AM +0100, Marc Zyngier wrote:
> >> Having __load_guest_stage2 in kvm_hyp.h is quickly going to trigger
> >> a circular include problem. In order to avoid this, let's move
> >> it to kvm_mmu.h, where it will be a better fit anyway.
> >>
> >> In the process, drop the __hyp_text annotation, which doesn't help
> >> as the function is marked as __always_inline.
> > 
> > Does GCC always inline things marked __always_inline?
> > 
> > I seem to remember some gotchas in this area, but I may be being
> > paranoid.
> 
> Yes, this is a strong guarantee. Things like static keys rely on that,
> for example.
> 
> > 
> > If this still only called from hyp, I'd be tempted to heep the
> > __hyp_text annotation just to be on the safe side.
> 
> The trouble with that is that re-introduces the circular dependency with
> kvm_hyp.h that this patch is trying to break...

Ah, right.

I guess it's easier to put up with this, then.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
