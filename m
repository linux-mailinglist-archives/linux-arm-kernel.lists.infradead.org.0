Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288F1CAB7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0f3xFCnQD1uo0If5G73ng8+J7BzkjHdV/V02bohEdBg=; b=vDGGKmfDYbJLz5
	NmTU4NBHoJkHBBr8/7peSV3IM5/ic6MATzZ2X/BqLhWWmi+8EKJAS+ACXoXy2O+Nyo1phF42HOU1h
	Tg1afFnLg8LbNXR8h36aFx9H19ERs3r8YgkMWgFKJKQVMXMQQibLIKiZRuGkqdR+mmWcI+o6DS+pI
	GwvCL+TkHZJW92tWC+CiOVFiZm+J9LXQr/611Ni/T2agk+8V7HwAMNAIPbxP8K5U89JHTiJLsBRwv
	agn2yDQ1ay+XDoMl/Dzuf212tbqfo3a85qfE1rVMOD8imWKJeuxQJ6C++Espt2LkPNEmpt+gufv3A
	d27bW5X6P/5aViwToIzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4zQ-0000pJ-Vm; Thu, 03 Oct 2019 17:34:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4zJ-0000ns-G7
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:34:03 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0F48661AFD; Thu,  3 Oct 2019 17:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570124040;
 bh=AYmi/neband1M0/iZPZrayWLoJ7jz85EmogdgImxAa0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LO1PvsE0DFvQK1/s1WxHMB19/5D/wsjhA42kRIoDAUDDa7PdEutuZQNjKeehDt0YB
 ctmZSVF7rSZHERTvvjxF5N9bTbeGUrntGCfySeaqysp5a5R9bkufuvG2vWV8Czcf1z
 KkwooBc6hu+oTxd/ZaMurXcMOm4KK3fdN3HSP3xo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AD3736192E;
 Thu,  3 Oct 2019 17:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570124035;
 bh=AYmi/neband1M0/iZPZrayWLoJ7jz85EmogdgImxAa0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R87vj5qKCQ8JWx9FOUsu32uvZ+fhtw4BenQk7pstf47aX4pHC0G6hnhxMZddXwVp2
 QNVEa9j9eHbrWo30aNbcHAX4Eomt3kGQBjStgfxJjwawjVQN8XNxVzmdJxHhAEBlvR
 ZO7uyuDDZc+/luet8gTEWRQk+uRsbjH5ts07t7ik=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AD3736192E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Thu, 3 Oct 2019 11:33:52 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/4] iommu/io-pgtable-arm: Rationalise TCR handling
Message-ID: <20191003173352.GA13386@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Robin Murphy <robin.murphy@arm.com>,
 Will Deacon <will@kernel.org>, joro@8bytes.org,
 iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, robdclark@gmail.com
References: <cover.1566238530.git.robin.murphy@arm.com>
 <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
 <20190820103115.o7neehdethf7sbqi@willie-the-truck>
 <48ca6945-de73-116a-3230-84862ca9e60b@arm.com>
 <20190820160700.6ircxomwuo5bksqz@willie-the-truck>
 <8cc47f43-ad74-b4e2-e977-6c78780abc91@arm.com>
 <20190821121120.34wqo7vj56pqk57c@willie-the-truck>
 <cdceec32-8dae-2c9e-8f66-0cd86288529f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cdceec32-8dae-2c9e-8f66-0cd86288529f@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_103401_586668_190F832B 
X-CRM114-Status: GOOD (  25.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robdclark@gmail.com, joro@8bytes.org, Will Deacon <will@kernel.org>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 01:56:20PM +0100, Robin Murphy wrote:
> On 21/08/2019 13:11, Will Deacon wrote:
> >On Tue, Aug 20, 2019 at 07:41:52PM +0100, Robin Murphy wrote:
> >>On 20/08/2019 17:07, Will Deacon wrote:
> >>>On Tue, Aug 20, 2019 at 04:25:56PM +0100, Robin Murphy wrote:
> >>>>On 20/08/2019 11:31, Will Deacon wrote:
> >>>>>On Mon, Aug 19, 2019 at 07:19:30PM +0100, Robin Murphy wrote:
> >>>>>>Although it's conceptually nice for the io_pgtable_cfg to provide a
> >>>>>>standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
> >>>>>>looks exactly like an Arm CPU, and they all have various other TCR
> >>>>>>controls which io-pgtable can't be expected to understand. Thus since
> >>>>>>there is an expectation that drivers will have to add to the given TCR
> >>>>>>value anyway, let's strip it down to just the essentials that are
> >>>>>>directly relevant to io-pgatble's inner workings - namely the address
> >>>>>>sizes, walk attributes, and where appropriate, format selection.
> >>>>>>
> >>>>>>Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> >>>>>>---
> >>>>>>    drivers/iommu/arm-smmu-v3.c        | 7 +------
> >>>>>>    drivers/iommu/arm-smmu.c           | 1 +
> >>>>>>    drivers/iommu/arm-smmu.h           | 2 ++
> >>>>>>    drivers/iommu/io-pgtable-arm-v7s.c | 6 ++----
> >>>>>>    drivers/iommu/io-pgtable-arm.c     | 4 ----
> >>>>>>    drivers/iommu/qcom_iommu.c         | 2 +-
> >>>>>>    6 files changed, 7 insertions(+), 15 deletions(-)
> >>>>>
> >>>>>Hmm, so I'm a bit nervous about this one since I think we really should
> >>>>>be providing a TCR with EPD1 set if we're only giving you TTBR0. Relying
> >>>>>on the driver to do this worries me. See my comments on the next patch.
> >>>>
> >>>>The whole idea is that we already know we can't provide a *complete* TCR
> >>>>value (not least because anything above bit 31 is the wild west), thus
> >>>>there's really no point in io-pgtable trying to provide anything other than
> >>>>the parts it definitely controls. It makes sense to provide this partial TCR
> >>>>value "as if" for TTBR0, since that's the most common case, but ultimately
> >>>>io-pgatble doesn't know (or need to) which TTBR the caller intends to
> >>>>actually use for this table. Even if the caller *is* allocating it for
> >>>>TTBR0, io-pgtable doesn't know that they haven't got something live in TTBR1
> >>>>already, so it still wouldn't be in a position to make the EPD1 call either
> >>>>way.
> >>>
> >>>Ok, but the driver can happily rewrite/ignore what it gets back. I suppose
> >>>an alternative would be scrapped the 'u64 tcr' and instead having a bunch
> >>>of named bitfields for the stuff we're actually providing, although I'd
> >>>still like EPDx to be in there.
> >>
> >>I like the bitfield idea; it would certainly emphasise the "you have to do
> >>something more with this" angle that I'm pushing towards here, but still
> >>leave things framed in TCR terms without having to go to some more general
> >>abstraction. It really doesn't play into your EPD argument though - such a
> >>config would be providing TxSZ/TGx/IRGNx/ORGNx/SHx, but EPDy, for y = !x.
> >>For a driver to understand that and do the right thing with it is even more
> >>involved than for the driver to just set EPD1 by itself anyway.
> >
> >Having considered the bitfield idea some more, I'm less attached to EPDx
> >because we simply wouldn't be making a statement about them, rather than a
> >(dangerous) zero value and expecting it to be ignored. So I think we're in
> >agreement on that.
> 
> Cool, I'll give bitfields a go for v2.
> 
> >The only part I'm still stuck to is that I think io-pgtable should know
> >whether it's targetting TTBR0 or TTBR1 so that it can sanitise input
> >addresses correctly. Doing this in the driver code is possible, but I'd
> >rather not start from that position, particularly as it would require things
> >like sign-extension in the TLBI callbacks.

Bumping this as is our tradition in the -rc1 time frame before we get all
distracted with other stuff. It sounds like the last agreement was for a
TTBR1 hint for the EDP and the sign extension in the functions.

Let me know if you need any help. I've got a little time and more than a little
motivation to keep slogging ahead toward a glorious arm-smmu-v2
per-context pagetable future.

Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
