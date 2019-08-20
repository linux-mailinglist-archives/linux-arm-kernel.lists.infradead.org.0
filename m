Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE9A96637
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kmu29Hz0wCUDMBV1tCBIphC1+V1IXV8s0wAZ7VOXjM=; b=EeF0OYrcgaioyg
	XkGjMk/x6K9NOizTz0evRwdXeiYgFA7VEqf3nGi/zwuzWwvwwKNg2ljohS70TrCF/MDWHOy4PAFcK
	M4ABamCy8yKj/okIwFcYmptUBF8CgV1m0hRDvviDw7GfBGe5mYbtSHBxf3Nmn5s5eYAf+yatjBtF+
	CHMCp1Efv2RWr3dgTnYWhM+1X7bE/ri4nqDSma/80Fq9jvx0FXy0tJo2RBEBJP0/I5MJM2SDHssMS
	36KjVuSmqj6zuD2JQWBqNW/+AtdYRgLvwXmU17mo/vwxR+aqyKdzlQwe2KDh0gKP5d6ySN9aMq4j4
	DXDlyacjjbw01CbcfMtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06v4-0003Z0-06; Tue, 20 Aug 2019 16:23:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06ur-0003Yg-NP
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:23:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E167360AD1; Tue, 20 Aug 2019 16:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566318205;
 bh=Jq+WMGe8B5Go6F6LI4omy9GTq55Eu9cZlfLG8KVU6Oo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PR+aKY/sipIBtlPUxMe2DgmW1Xq3zfy45UIu3l1+x28K09YeCF6D9quz9Wv7vMSoc
 +K8lXEK3VefXf61Z8Qf5lrYiY+extDZpF02fR1dQzzZG+FiaBeZjwMjJt91Gk+AgFN
 VTZSUtwcrbJ6tT8UO/DT1/VGVXZI0zGomjoAPCng=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2553360AD1;
 Tue, 20 Aug 2019 16:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566318203;
 bh=Jq+WMGe8B5Go6F6LI4omy9GTq55Eu9cZlfLG8KVU6Oo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bcs9DEUx16iQeIX8DYR8oEZHwcJU+AEVDdS88SgXUEEbPtNeLJOTA3fXC2LuJ+KqV
 TrhO3hhYeDkPp3rjnkcuKKtuRj++UA37KtPltm/Fm64Qw3idcZRgM3klI2TD7lSzAH
 0izZTnrNXoYSooB6xvPerSvXC/EM//mUs+FLPj5s=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2553360AD1
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Tue, 20 Aug 2019 10:23:20 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/4] iommu/io-pgtable-arm: Rationalise TCR handling
Message-ID: <20190820162319.GH28465@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Robin Murphy <robin.murphy@arm.com>,
 Will Deacon <will@kernel.org>, joro@8bytes.org,
 iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, robdclark@gmail.com
References: <cover.1566238530.git.robin.murphy@arm.com>
 <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
 <20190820103115.o7neehdethf7sbqi@willie-the-truck>
 <48ca6945-de73-116a-3230-84862ca9e60b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <48ca6945-de73-116a-3230-84862ca9e60b@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_092325_806258_7ABADC4B 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Aug 20, 2019 at 04:25:56PM +0100, Robin Murphy wrote:
> On 20/08/2019 11:31, Will Deacon wrote:
> >On Mon, Aug 19, 2019 at 07:19:30PM +0100, Robin Murphy wrote:
> >>Although it's conceptually nice for the io_pgtable_cfg to provide a
> >>standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
> >>looks exactly like an Arm CPU, and they all have various other TCR
> >>controls which io-pgtable can't be expected to understand. Thus since
> >>there is an expectation that drivers will have to add to the given TCR
> >>value anyway, let's strip it down to just the essentials that are
> >>directly relevant to io-pgatble's inner workings - namely the address
> >>sizes, walk attributes, and where appropriate, format selection.
> >>
> >>Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> >>---
> >>  drivers/iommu/arm-smmu-v3.c        | 7 +------
> >>  drivers/iommu/arm-smmu.c           | 1 +
> >>  drivers/iommu/arm-smmu.h           | 2 ++
> >>  drivers/iommu/io-pgtable-arm-v7s.c | 6 ++----
> >>  drivers/iommu/io-pgtable-arm.c     | 4 ----
> >>  drivers/iommu/qcom_iommu.c         | 2 +-
> >>  6 files changed, 7 insertions(+), 15 deletions(-)
> >
> >Hmm, so I'm a bit nervous about this one since I think we really should
> >be providing a TCR with EPD1 set if we're only giving you TTBR0. Relying
> >on the driver to do this worries me. See my comments on the next patch.
> 
> The whole idea is that we already know we can't provide a *complete* TCR
> value (not least because anything above bit 31 is the wild west), thus
> there's really no point in io-pgtable trying to provide anything other than
> the parts it definitely controls. It makes sense to provide this partial TCR
> value "as if" for TTBR0, since that's the most common case, but ultimately
> io-pgatble doesn't know (or need to) which TTBR the caller intends to
> actually use for this table. Even if the caller *is* allocating it for
> TTBR0, io-pgtable doesn't know that they haven't got something live in TTBR1
> already, so it still wouldn't be in a position to make the EPD1 call either
> way.
> 
> Ultimately, it's the IOMMU drivers who decide what they put in which TTBR,
> so it's the IOMMU drivers which have to take responsibility for EPD*. Sure
> you can worry about it, but you can equally worry about them them
> misprogramming the ASID or anything else...

I agree. If the driver *does* want to use TTBR1 then it gets a bit uglier to
realize that the io-pgtable set the bit and mask it off. To me it is a lot
clearer if this is done explicitly in the driver especially if the driver is
where we are making the choice to use either ttbr0 or ttbr1.

It would probably be easier to see in actual code, and I'll have a patch
shortly on top of this series.

Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
