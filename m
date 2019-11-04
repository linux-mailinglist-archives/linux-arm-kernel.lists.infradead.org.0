Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78601EE775
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:37:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/h4nxUJzGwPuPe+mBUwdGqYZk/w7AmY7FeR6tV0Bjt8=; b=gRaImQWITrGHgp
	/GS+Drl+VIJ9CViBjj7D4i+BVAyaHbAKhAo89WbEaMESYbEzslc5eZq1zbu156KVMnRLY+YQzqbwV
	koVxFdm7kg7nTmhcA6TVGwC+HMi6ks7Zau2ec+eUrsMF/Kn+cApMNDXh9HCkAC9hovUMlrfHt57lO
	f9Qk5HOtT2asiAFuBJefDnIQdGB5yHDTwmWE9U2IdIrQ7VgYMMCO7o37JIzUsp7JDzr/RI6MhKjVF
	B4Gs2hPXCCi7YCrguNwf/9lba1CuyMUV1VyQYPBb74wjIGhwmtretUA0titSVGpDsfwj7cTys1Bph
	TDtgPMuxGI8+ZkgWxrVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhDy-0003tT-Dh; Mon, 04 Nov 2019 18:37:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhDo-0003sS-Sh
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:37:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 982402084D;
 Mon,  4 Nov 2019 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572892620;
 bh=rI9UdgOktprMFD0/dk/zkRwmYAt4WKteXodRLuUYe3g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iRIiJb4HSMW81NtrCy2YeZDd7heklVx9fWbj/p5yijsTcRuRNChpwHsmixfH32DXy
 6Q0vgAbPOQB300DZVgLFEEeKloViv3Yve8PbvfJQrZB4yHkNKHhgoET4uYEk8ZVhrI
 ethMrdUnoMXe2II1IvQZG9bduv2G3tKVRaVQ/IXU=
Date: Mon, 4 Nov 2019 18:36:56 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 08/10] iommu/io-pgtable-arm: Rationalise TTBRn handling
Message-ID: <20191104183655.GH24909@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <74ada0e6c488a2310206a553eb108cc28fd52457.1572024120.git.robin.murphy@arm.com>
 <5324d888-857a-b07c-439c-4ae4ea3a9784@arm.com>
 <a74dcecd-7061-ce4b-85e1-deaadd0f71a4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a74dcecd-7061-ce4b-85e1-deaadd0f71a4@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_103700_969770_B6A8B35D 
X-CRM114-Status: GOOD (  18.71  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Steven Price <steven.price@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 06:51:55PM +0000, Robin Murphy wrote:
> On 28/10/2019 15:09, Steven Price wrote:
> [...]
> > > --- a/drivers/iommu/io-pgtable-arm-v7s.c
> > > +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> > > @@ -822,15 +822,13 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> > >   	/* Ensure the empty pgd is visible before any actual TTBR write */
> > >   	wmb();
> > > -	/* TTBRs */
> > > -	cfg->arm_v7s_cfg.ttbr[0] = virt_to_phys(data->pgd) |
> > > -				   ARM_V7S_TTBR_S | ARM_V7S_TTBR_NOS |
> > > -				   (cfg->coherent_walk ?
> > > -				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
> > > -				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
> > > -				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
> > > -				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
> > > -	cfg->arm_v7s_cfg.ttbr[1] = 0;
> > > +	/* TTBR */
> > > +	cfg->arm_v7s_cfg.ttbr = virt_to_phys(data->pgd) | ARM_V7S_TTBR_S |
> > > +				(cfg->coherent_walk ? (ARM_V7S_TTBR_NOS |
> > > +				  ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
> > > +				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
> > > +				 (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
> > > +				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
> > 
> > ARM_V7S_TTBR_NOS seems to have sneaked into the cfg->coherent_walk
> > condition here - which you haven't mentioned in the commit log, so it
> > doesn't look like it should be in this commit.
> 
> Ah, yes, it's taken a while to remember whether this was something important
> that got muddled up in rebasing, but it's actually just trivial cleanup. For
> !coherent_walk, the non-cacheable output attribute makes shareable accesses
> implicitly outer-shareable, so setting TTBR.NOS for that case actually does
> nothing except look misleading. Thus this is essentially just a cosmetic
> change included in the reformatting for clarity and consistency with the
> LPAE version. I'll call that out in the commit message, thanks for spotting!

I vaguely remember a case where you had to mark non-cacheable accesses as
outer-shareable explicitly to avoid unpredictable behaviour. Hmm.

/me looks at the Arm ARM

Ok, it looks like this changed between ARMv7 and ARMv8. The ARMv7 ARM
states:

  | A memory region with a resultant memory type attribute of Normal, and a
  | resultant cacheability attribute of Inner Non-cacheable, Outer
  | Non-cacheable, must have a resultant shareability attribute of Outer
  | Shareable, otherwise shareability is UNPREDICTABLE.

Although this only seems to be the case for LPAE! The short descriptor docs are
less clear, but I think it might be wise to ensure that non-cacheable mappings
are always outer-shareable for consistency.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
