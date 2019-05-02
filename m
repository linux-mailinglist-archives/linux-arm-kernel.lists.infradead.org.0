Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEE7120F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kk9LbeuIh3K8XGEhcIcnaeJ/DV5y0MsWGDhDXC8Zayw=; b=XvcibfUBerLnMB
	ASjUNqnO9St0eeoEE7Du726jpyMINRxguApJyPB1ow4hIqz1oCymgozjWT1VIL9aNTV0YvnmGUV9y
	BbymehioGGveM8jjWouoRHvFlOyeDVan1337J7sW1jGQuFthlYvmreltFvYYhbcmQIHQhV8juK+Zb
	LCKiXjFQ+XZaK6hhBdMjAKjso1h6XsVXFc/ljtO3/mWbOnqVwlL5YhQlaIZ7rav3+bNEGVJeIa4xK
	pIet0xr9zRFd+yuarorsA/GbLkALhgrKGpVP75E9/BESd8qTyOC2QIqLBgA9zhjj3rBo6nc4ELrF6
	nClEovhuPTzyOyVTm5+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFUG-0000Z4-Lo; Thu, 02 May 2019 17:27:12 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFU8-0000YO-43
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 17:27:06 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 0D2B82170C;
 Thu,  2 May 2019 19:27:02 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id F3A822163C;
 Thu,  2 May 2019 19:27:01 +0200 (CEST)
Subject: Re: [PATCH] arm64/io: Don't use WZR in writel
To: Robin Murphy <robin.murphy@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <68b71c15f32341468a868f6418e4fcb375bc49ba.camel@gmail.com>
 <20190211105755.GB30880@fuggles.cambridge.arm.com>
 <38d8965a-cd41-17cf-1b95-8dd58c079be4@arm.com>
 <874c702b8af760aa8fae38d478c79e3ecba00515.camel@gmail.com>
 <235d20ef-3054-69d9-975d-25aebf32aad3@arm.com>
 <20190223181254.GC572@tuxbook-pro> <86zhqm8i6d.wl-marc.zyngier@arm.com>
 <20190224035356.GD572@tuxbook-pro>
 <33d765b5-1807-fa6c-1ceb-99f09f7c8d5a@free.fr>
 <8eb4f446-6152-ffb6-9529-77fb0bcc307f@arm.com>
 <7b5e8bb1-d339-07f7-66f6-7f09df2107c4@free.fr>
 <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <190e3c4f-7486-f56c-b3e1-7ee07da88395@free.fr>
Date: Thu, 2 May 2019 19:27:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu May  2 19:27:02 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_102704_459169_E875848D 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>, MSM <linux-arm-msm@vger.kernel.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/05/2019 18:33, Robin Murphy wrote:

> Both Angelo's and your reports strongly imply that the previous 
> constant-folding debate was a red herring and the trivial fix[1] should 
> still be sufficient, but nobody's given me actual confirmation of 
> whether it is or isn't :(
> 
> Robin.
> 
> [1] 
> http://linux-arm.org/git?p=linux-rm.git;a=commitdiff;h=a13e3239f0c543f1f61ce5f7f5c06320e521701c
>
>
> Apparently some Qualcomm arm64 platforms which appear to expose their

I'd write qcom. I don't think they deserve to be named & capitalized :'p

> SMMU global register space are still in fact using a hypervisor to
> mediate it by trapping and emulating register accesses. Sadly, some
> deployed versions of said trapping code have bugs wherein they go
> horribly wrong for stores using r31 (i.e. XZR/WZR) as the source
> register.
> 
> While this can be mitigated for GCC today by tweaking the constraints
> for the implementation of writel_relaxed(), to avoid any potential arms
> race with future compilers compilers more aggressively optimising

"compilers compilers" ... typo?

> register allocation the simple way is to just remove all the problematic
> constant zeros. For the write-only TLB operations, the actual value is
> irrelevant anyway and any old nearby variable will provide a suitable
> GPR to encode. The one point at which we really do need a zero to clear
> a context bank happens before any of the TLB maintenance where hangs
> have been reported, so is apparently not a problem... :/
> 
> Reported-by: Angelo G. Del Regno <kholk11@gmail.com>
> Reported-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 045d938..80bf29e 100644 (file)
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -422,7 +422,7 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
>  {
>         unsigned int spin_cnt, delay;
>  
> -       writel_relaxed(0, sync);
> +       writel_relaxed((unsigned long)sync, sync);

You don't think this might deserve a comment explaining that the value
is irrelevant? (On top of the commit message, I mean.)

>         for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
>                 for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
>                         if (!(readl_relaxed(status) & sTLBGSTATUS_GSACTIVE))
> @@ -1760,8 +1760,8 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
>         }
>  
>         /* Invalidate the TLB, just in case */
> -       writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> -       writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
> +       writel_relaxed(reg, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> +       writel_relaxed(reg, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);

Same here?

Anyway, your solution works on msm8998, therefore you have my

Tested-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

and you can throw in my

Reviewed-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

for good measure ;-)

All that's left now is to submit it to Linus during the merge window :-p

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
