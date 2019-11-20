Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ED0103E0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRdIvbhu03C8ovmV445HxCwoGISfIf9tnBs82ncv/sM=; b=YU57z+vUJhuafO
	IvdKS5iuLfDO8S4zW6PwxScW1LodEX+jk6Sj/kHmFb0Eu3l+eqJsfeEPulGvRmjGWfrMvAAAs3qab
	RBg2LQd0GkLJG//JITFr/EL3Cv/VJ0bqDV+XXliB2J5ZkXbCg6XsS6dgDxxRZLRF0DSIL6t6QdSI9
	Wr/rBEms7XZjckNsD8tQx4RLlReHWHLGFJX9bRceQsDbZZdSpLI8iEw3taoxQEMED1JOCX3rEks+Z
	IWxUAnKGEIFhwH5wSB2vMYuI7CFp4YQ6W3qir0QkfqRbCragwHXus3gI7Izuj5NAhGeRuqNT9edMi
	++h2t+2XKPHuUIqli0qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRe8-0002ko-Tn; Wed, 20 Nov 2019 15:11:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRe2-0002kB-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:11:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4755421845;
 Wed, 20 Nov 2019 15:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574262708;
 bh=lDXOvWwo4P285akqfgYX0BXlHNo7SdDsAXAcco73QDg=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=ihQ2Vu1EGj1xp+l0YpB7oFpibEJvC+AjqRpVTxrzAVaVs2/PMoN4do1Ydo86f4vx3
 OLqzhlv6FG0sYOsyYKTWiupLxIoAtAgbBg7jMPN2CTJd3bVRB738G6uincmRi05ZQn
 BreTkprMSwUoffdJbVrIBkrh385IBW31QtxFmSoQ=
Date: Wed, 20 Nov 2019 15:11:43 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 09/10] iommu/io-pgtable-arm: Rationalise TCR handling
Message-ID: <20191120151142.GA26714@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <84e56eb993fff3660376ffad3e915b972d29b008.1572024120.git.robin.murphy@arm.com>
 <20191104191444.GI24909@willie-the-truck>
 <20191104232756.GB16446@jcrouse1-lnx.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104232756.GB16446@jcrouse1-lnx.qualcomm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_071150_316217_B909231A 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 04:27:56PM -0700, Jordan Crouse wrote:
> On Mon, Nov 04, 2019 at 07:14:45PM +0000, Will Deacon wrote:
> > On Fri, Oct 25, 2019 at 07:08:38PM +0100, Robin Murphy wrote:
> > > diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
> > > index 9a57eb6c253c..059be7e21030 100644
> > > --- a/drivers/iommu/qcom_iommu.c
> > > +++ b/drivers/iommu/qcom_iommu.c
> > > @@ -271,15 +271,13 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
> > >  		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
> > >  				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
> > >  				FIELD_PREP(TTBRn_ASID, ctx->asid));
> > > -		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
> > > -				FIELD_PREP(TTBRn_ASID, ctx->asid));
> > > +		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1, 0);
> > 
> > Are you sure it's safe to drop the ASID here? Just want to make sure there
> > wasn't some "quirk" this was helping with.
> 
> I was reminded of this recently. Some of our SMMU guys told me that a 0x0 in
> TTBR1 could cause a S2 fault if a faulty transaction caused a ttbr1 lookup so
> the "quirk" was writing the ASID so the register wasn't zero. I'm not sure if
> this is a vendor specific blip or not.

You should be able to set EPD1 to prevent walks via TTBR1 in that case,
though. Sticking the ASID in there is still dodgy if EPD1 is clear and
TTBR1 points at junk (or even physical address 0x0).

That's probably something which should be folded into this patch.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
