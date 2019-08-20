Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ECE957D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TPTDH0IMaiaVCtgCcawTSYeKhGWyRFuMYD2pmXn2/8=; b=ToFvvkHku4bMkR
	m4Q8pKgXWaEgh6oO/78nEK9UbafoOChHEy31nrNEbXeXiPCAYs7nMaX150r3qd/nRtttZHMcujxzM
	QsNKmPcLlbODXEoWOMt2u3wy+FymC28eeI2Z54J/TST5BuuC7scMuCccDSvhSYR0zW+RMxn70jzPX
	EkkMHMZJg8N9+x6LWu3AVtE0hyZCVSF0dltsIMfW/TWwV5sVSar/zeRxG7Qba1iJGPcfxJlxA87iN
	j9YLrjbt5aqHCN2ziXXbvRXYbwDi2yyG99ICPlaGEIZ270r389ViLEDX+KjJzeCLYuuxFHI23m4hC
	hLxyu0Xa+8HZBe0pXO9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyDa-0005A9-OB; Tue, 20 Aug 2019 07:06:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyCR-00058c-97
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:05:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B2FD20C01;
 Tue, 20 Aug 2019 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566284695;
 bh=k8rmf+NYWBrNwDZWHXITwAsQXxQMUUCm38mRV4YkvEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2nWBnyvNSVa2/Mvwppf+LtBamrCz0V1mPUT5/SIuUh4vd1nOpRDP4XQldLJppe3ba
 CXuDyMRRUqmaWu5nB8Vh+J62GEqhpvPOF+tDHhnpQWT7ILkp4wqxEaVvL/qAjgKedX
 Yo96ZwQfXZBQgfuWWeqDih+xbFmaPEGIEprzWMcg=
Date: Tue, 20 Aug 2019 08:04:50 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 00/17] Arm SMMU refactoring
Message-ID: <20190820070449.mjqmmn4me364lta5@willie-the-truck>
References: <cover.1565892337.git.robin.murphy@arm.com>
 <20190819155634.xflkhxexzks3y7oa@willie-the-truck>
 <d8a47e62-0768-7ae2-f2fc-53b5b2b24685@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8a47e62-0768-7ae2-f2fc-53b5b2b24685@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_000459_509665_67544F68 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 jcrouse@codeaurora.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 07:10:45PM +0100, Robin Murphy wrote:
> On 19/08/2019 16:56, Will Deacon wrote:
> > On Thu, Aug 15, 2019 at 07:37:20PM +0100, Robin Murphy wrote:
> > > v1 for context: https://patchwork.kernel.org/cover/11087347/
> > > 
> > > Here's a quick v2 attempting to address all the minor comments; I've
> > > tweaked a whole bunch of names, added some verbosity in macros and
> > > comments for clarity, and rejigged arm_smmu_impl_init() for a bit more
> > > structure. The (new) patches #1 and #2 are up front as conceptual fixes,
> > > although they're not actually critical - it turns out to be more of an
> > > embarrassment than a real problem in practice.
> > 
> > Thanks, I'll pick this up and send to Joerg later this week.
> 
> Oops, I've just noticed that the io-64-nonatomic-hi-lo.h include also needs
> to move to arm-smmu.h in #14 to avoid breaking 32-bit builds. I've pushed
> out an updated branch (along with the static fixes for good measure) - let
> me know if you'd like a resend of the patches.

Can you just send a patch on top instead, please? I'd prefer not to rebase
things unless we really need to, and I've already pushed this stuff to
for-joerg/arm-smmu/refactoring.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
