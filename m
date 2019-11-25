Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DD0108996
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 08:58:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LV8zTZjk/ORlztmkdAzbRYtFuoaJLtWn1M84I9KcxBc=; b=JH2raoi/SNlqXc
	El5EHeySlu1M/nwKsK9/9SsZgWww1ZpNLzkAkFPK/AtwrUhLB3n5U6+4ToYb2+qE29P59ONCjKBE9
	z41DKi1TQC9gSa/qIfm5TcpU9caZnEZJsSkiUCDhVuN891p1Sgk/02TZL5wzH8ySxWL7IEzmtALFX
	61NjrNUgMB8mISjifLAUFCgmGVUyzSaNIuc8khLvqi3h0WqsKNrrU1wEecvNInSfPs/8zKAacbbBm
	XmH6GLJw1iHYqroYLagIVt1g8Wr/tJsesYhHJEtfTZ1yXRxYXG9JPMrZPDuqOJ+JviGIfnW03zSEg
	Ib5L1FKbBRh1EWYR5PwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ9GV-0002rQ-9a; Mon, 25 Nov 2019 07:58:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9GN-0002qm-E2
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 07:58:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6AC220823;
 Mon, 25 Nov 2019 07:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574668706;
 bh=A7pWspbn6rDJXjkXLCpGQzVngua33NeY7NRRSZ6S5mE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o0G2U2Vn+YUqEqQoG4pQ4g2rmyimyN24oveZaciT4tvi4VE4L3oH9VEKfxVNkN5fw
 cBniffaxKd4WxgXmgoUyKNCp/xDIFjrPnfY8q9qTek5Yl+Bk1ZiNkzllaTl2u9kjjz
 c4A0JdPbo6mH4h/Xn1fP06o8mi9G9LGptormh0YI=
Date: Mon, 25 Nov 2019 07:58:22 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 09/10] iommu/io-pgtable-arm: Rationalise TCR handling
Message-ID: <20191125075821.GB1809@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <84e56eb993fff3660376ffad3e915b972d29b008.1572024120.git.robin.murphy@arm.com>
 <20191104191444.GI24909@willie-the-truck>
 <20191104232756.GB16446@jcrouse1-lnx.qualcomm.com>
 <20191120151142.GA26714@willie-the-truck>
 <6e14584c-6942-b3b5-5691-faec4fc345f1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e14584c-6942-b3b5-5691-faec4fc345f1@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_235827_495614_46A4D0F3 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 03:51:26PM +0000, Robin Murphy wrote:
> On 20/11/2019 3:11 pm, Will Deacon wrote:
> > On Mon, Nov 04, 2019 at 04:27:56PM -0700, Jordan Crouse wrote:
> > > On Mon, Nov 04, 2019 at 07:14:45PM +0000, Will Deacon wrote:
> > > > On Fri, Oct 25, 2019 at 07:08:38PM +0100, Robin Murphy wrote:
> > > > > diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
> > > > > index 9a57eb6c253c..059be7e21030 100644
> > > > > --- a/drivers/iommu/qcom_iommu.c
> > > > > +++ b/drivers/iommu/qcom_iommu.c
> > > > > @@ -271,15 +271,13 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
> > > > >   		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
> > > > >   				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
> > > > >   				FIELD_PREP(TTBRn_ASID, ctx->asid));
> > > > > -		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
> > > > > -				FIELD_PREP(TTBRn_ASID, ctx->asid));
> > > > > +		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1, 0);
> > > > 
> > > > Are you sure it's safe to drop the ASID here? Just want to make sure there
> > > > wasn't some "quirk" this was helping with.
> > > 
> > > I was reminded of this recently. Some of our SMMU guys told me that a 0x0 in
> > > TTBR1 could cause a S2 fault if a faulty transaction caused a ttbr1 lookup so
> > > the "quirk" was writing the ASID so the register wasn't zero. I'm not sure if
> > > this is a vendor specific blip or not.
> > 
> > You should be able to set EPD1 to prevent walks via TTBR1 in that case,
> > though. Sticking the ASID in there is still dodgy if EPD1 is clear and
> > TTBR1 points at junk (or even physical address 0x0).
> > 
> > That's probably something which should be folded into this patch.
> 
> Note that EPD1 was being set by io-pgtable-arm before this patch, and
> remains set by virtue of arm_smmu_lpae_tcr() afterwards, so presumably the
> brokenness might run a bit deeper than that. Either way, though, I'm
> somewhat dubious since the ASID could well be 0 anyway :/

Ah, I missed that the qcom driver was calling arm_smmu_lpae_tcr() with
your patches. In which case, everything should be fine, no?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
