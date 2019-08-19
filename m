Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC69794942
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uP5gWX3XHZDcoFUYykKRzyIEg4YqvzSKsl1cELqMv64=; b=hmUeXMiEOfVShm
	B/ioNS+a+DR/COagtDYlfQyAVrQ1k8+yFP/1jy/QXeEQWYQ/0QINsYrWgcMrhWZvGP1pb/onc5zhF
	sOAMEdpaZRCamVmUldPN+IG3IU267eFH477kxdH+FHsgqoayIITBCfyIo6mieimcKBI4dPJmHG2dW
	naiGTsLhnlJVsSBV+US5vJbwInVOHP3JWDYhYify0kh4vfs0AvbhKtWPBpHJIKbtr6qFG0DirFrYj
	HHpoL6D+9kNvPxRfvFACMOYdBM0pbcb5OqUvRYp/pMYVyiYExz3Nv8747NfdBv9NANKFF9x9UEq98
	ja5cAhl4fPmq2nLSc8bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzk1Y-0007YT-F8; Mon, 19 Aug 2019 15:56:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzk1Q-0007Y8-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:56:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5ED720651;
 Mon, 19 Aug 2019 15:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566230199;
 bh=NW13UGn4atnjhBa36FHx8LmvP4KUCqy2dMmq5Me4ML4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s0ru+uzt089t5r6zCdDKQ3At2xD3MZhQwipAlmWfg5xbawFuVsvLO1kJSeipBK1zZ
 dM10SobE5hnX4sGfo+KetJRHOetiqltmyxP/2BfN8blEsNI1T8J/ldHWDJ2E8hUWNe
 nCTkGEnkXDzXlBzUf659t1/4rM81yyt2kp31P5DE=
Date: Mon, 19 Aug 2019 16:56:34 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 00/17] Arm SMMU refactoring
Message-ID: <20190819155634.xflkhxexzks3y7oa@willie-the-truck>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_085640_296282_FA1A9277 
X-CRM114-Status: GOOD (  11.29  )
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

On Thu, Aug 15, 2019 at 07:37:20PM +0100, Robin Murphy wrote:
> v1 for context: https://patchwork.kernel.org/cover/11087347/
> 
> Here's a quick v2 attempting to address all the minor comments; I've
> tweaked a whole bunch of names, added some verbosity in macros and
> comments for clarity, and rejigged arm_smmu_impl_init() for a bit more
> structure. The (new) patches #1 and #2 are up front as conceptual fixes,
> although they're not actually critical - it turns out to be more of an
> embarrassment than a real problem in practice.

Thanks, I'll pick this up and send to Joerg later this week.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
