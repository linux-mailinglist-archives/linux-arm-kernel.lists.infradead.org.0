Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC0512598
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 02:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIGsMJFhBxoHBbedL5p+kJz38tIqHo/D5TNK/udiMRg=; b=UlQLjNwLRoWobW
	d77ccPUU4Kq9X9qYrl+D6P8i7mkiLvASg7hjv1Dn8YpA8fm1QgfLcArzSJcMUhSEcB0D6DSvQAO99
	CM4yHRxfeE9if/hWyTGii0+YCNAsSWxc3jl0tOFgRHLixygcK+b7GAC7PzRkMCBPVxJWKl8i6D8k+
	X+ylyCUSzOXaLXwAhF0LXxx8rLrbr44uJLnQ2fx9bl3rNghDL2MsDgmJ2Xui62f6LcuFlrcXkKsPN
	vH4/RsFh90ahOQhtSTkEGz70S1Tj0sYi750O3U++V8YYSzKla8tExLOdBYSRPzOCldowFq2VKoeo5
	gcp68RQ80DR4rJqtsczw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMMDu-0001YO-BJ; Fri, 03 May 2019 00:38:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMMDn-0001Xy-4L
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 00:38:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id l2so1812166plt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 17:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+v/56MN/wx/RgbEucH/g+XxGkSN1si/dHCVEeh/ziQM=;
 b=jfbIyqeVbzZ0HHtoV2tsdGfPVGWAWPoWlO4/U2cwmIQ8CZPTPVu7a1z6astBMkpCBw
 XJW5SsUO+6V1Ks9sQ6Dw/Xvfh7zjFnjViBakOFqiqNmNcFBshPaTC5UtNAY924jQ7imK
 m9st7ROAwPPWPcP0ggR0Cjcc/cdZxQjDXe4ANcoa3y9D66DgwCkBUKASi2MBbPCq8MjE
 v0eqD5ANcOOXM8k50T0flQDqqrTBTqGGFScrHkilDDPxbiqZTzurs0sokLngMlEd4JYk
 f8pSYtsAJSGU0w0Qtjnix77+GeVS+e723Nw2gnqy4W/XaWF287TfGYpk+L5MSy4bRhhs
 fTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+v/56MN/wx/RgbEucH/g+XxGkSN1si/dHCVEeh/ziQM=;
 b=fDxNJguGAYuJsIS3wT35gCWunbwyfpqrEg9ETQD5pYRmRq8UjIONCdbQ3rlkPoQIN8
 kIrqVsYHIIgDsCzdIyDHe+FAETOXqN92ulS8Klrr7+fmVVPYwmjBQQZPrWmlBpBBSn/6
 YJYZqO3PtDnV4DExPu+B0Sth0ehOpzKUS2BQOn0VqQZASAjH1V82d9l68BPQ27Y7tcIq
 GhYcfOwbw73SAAtiLlDmNBW6bD12YMwsXS1ktwUUAPBJ73EGBF/G3T8PnphDyIzJq03Z
 Jv4me44hDbAjMJ83I56VTk7gbxOTJFcxk6p99Vq17amjwsKbGzVDjhU7D9ZC4nYZgY7B
 nzyg==
X-Gm-Message-State: APjAAAUu41dqXWdFq+03KpiggOcASk6yana8VG4XewWBVKq0QRRs0Wwk
 pB8C13P1rwkR+B4lEXp56L1aOw==
X-Google-Smtp-Source: APXvYqw5D55PLQpsAt44Gs32kc+CYBAQ+K+FlX3VU8+QIbFddOdMH4vHAFXyDH6JucbEv1nfVVVj5A==
X-Received: by 2002:a17:902:7689:: with SMTP id
 m9mr6866087pll.274.1556843917299; 
 Thu, 02 May 2019 17:38:37 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z22sm463270pgv.23.2019.05.02.17.38.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 17:38:36 -0700 (PDT)
Date: Thu, 2 May 2019 17:38:33 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64/io: Don't use WZR in writel
Message-ID: <20190503003833.GI31438@minitux>
References: <38d8965a-cd41-17cf-1b95-8dd58c079be4@arm.com>
 <874c702b8af760aa8fae38d478c79e3ecba00515.camel@gmail.com>
 <235d20ef-3054-69d9-975d-25aebf32aad3@arm.com>
 <20190223181254.GC572@tuxbook-pro>
 <86zhqm8i6d.wl-marc.zyngier@arm.com>
 <20190224035356.GD572@tuxbook-pro>
 <33d765b5-1807-fa6c-1ceb-99f09f7c8d5a@free.fr>
 <8eb4f446-6152-ffb6-9529-77fb0bcc307f@arm.com>
 <7b5e8bb1-d339-07f7-66f6-7f09df2107c4@free.fr>
 <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_173839_242062_5F232147 
X-CRM114-Status: GOOD (  38.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>, MSM <linux-arm-msm@vger.kernel.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 02 May 09:33 PDT 2019, Robin Murphy wrote:

> On 02/05/2019 17:05, Marc Gonzalez wrote:
> > On 18/03/2019 17:04, Robin Murphy wrote:
> > 
> > > On 12/03/2019 12:36, Marc Gonzalez wrote:
> > > 
> > > > On 24/02/2019 04:53, Bjorn Andersson wrote:
> > > > 
> > > > > On Sat 23 Feb 10:37 PST 2019, Marc Zyngier wrote:
> > > > > 
> > > > > > On Sat, 23 Feb 2019 18:12:54 +0000, Bjorn Andersson wrote:
> > > > > > > 
> > > > > > > On Mon 11 Feb 06:59 PST 2019, Marc Zyngier wrote:
> > > > > > > 
> > > > > > > > On 11/02/2019 14:29, AngeloGioacchino Del Regno wrote:
> > > > > > > > 
> > > > > > > > > Also, just one more thing: yes this thing is going ARM64-wide and
> > > > > > > > > - from my findings - it's targeting certain Qualcomm SoCs, but...
> > > > > > > > > I'm not sure that only QC is affected by that, others may as well
> > > > > > > > > have the same stupid bug.
> > > > > > > > 
> > > > > > > > At the moment, only QC SoCs seem to be affected, probably because
> > > > > > > > everyone else has debugged their hypervisor (or most likely doesn't
> > > > > > > > bother with shipping one).
> > > > > > > > 
> > > > > > > > In all honesty, we need some information from QC here: which SoCs are
> > > > > > > > affected, what is the exact nature of the bug, can it be triggered from
> > > > > > > > EL0. Randomly papering over symptoms is not something I really like
> > > > > > > > doing, and is likely to generate problems on unaffected systems.
> > > > > > > 
> > > > > > > The bug at hand is that the XZR is not deemed a valid source in the
> > > > > > > virtualization of the SMMU registers. It was identified and fixed for
> > > > > > > all platforms that are shipping kernels based on v4.9 or later.
> > > > > > 
> > > > > > When you say "fixed": Do you mean fixed in the firmware? Or by adding
> > > > > > a workaround in the shipped kernel?
> > > > > 
> > > > > I mean that it's fixed in the firmware.
> > > > > 
> > > > > > If the former, is this part of an official QC statement, with an
> > > > > > associated erratum number?
> > > > > 
> > > > > I don't know, will get back to you on this one.
> > > > > 
> > > > > > Is this really limited to the SMMU accesses?
> > > > > 
> > > > > Yes.
> > > > > 
> > > > > > > As such Angelo's list of affected platforms covers the high-profile
> > > > > > > ones. In particular MSM8996 and MSM8998 is getting pretty good support
> > > > > > > upstream, if we can figure out a way around this issue.
> > > > > > 
> > > > > > We'd need an exhaustive list of the affected SoCs, and work out if we
> > > > > > can limit the hack to the SMMU driver (cc'ing Robin, who's the one
> > > > > > who'd know about it).
> > > > > 
> > > > > I will try to compose a list.
> > > > 
> > > > FWIW, I have just been bitten by this issue. I needed to enable an SMMU to
> > > > filter PCIe EP accesses to system RAM (or something). I'm using an APQ8098
> > > > MEDIABOX dev board. My system hangs in arm_smmu_device_reset() doing:
> > > > 
> > > > 	/* Invalidate the TLB, just in case */
> > > > 	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> > > > 	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
> > > > 
> > > > 
> > > > With the 'Z' constraint, gcc generates:
> > > > 
> > > > 	str wzr, [x0]
> > > > 
> > > > without the 'Z' constraint, gcc generates:
> > > > 
> > > > 	mov	w1, 0
> > > > 	str w1, [x0]
> > > > 
> > > > 
> > > > I can work around the problem using the following patch:
> > > > 
> > > > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > > > index 045d93884164..93117519aed8 100644
> > > > --- a/drivers/iommu/arm-smmu.c
> > > > +++ b/drivers/iommu/arm-smmu.c
> > > > @@ -59,6 +59,11 @@
> > > >    #include "arm-smmu-regs.h"
> > > > +static inline void qcom_writel(u32 val, volatile void __iomem *addr)
> > > > +{
> > > > +	asm volatile("str %w0, [%1]" : : "r" (val), "r" (addr));
> > > > +}
> > > > +
> > > >    #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
> > > >    #define ARM_MMU500_ACR_CACHE_LOCK	(1 << 26)
> > > > @@ -422,7 +427,7 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
> > > >    {
> > > >    	unsigned int spin_cnt, delay;
> > > > -	writel_relaxed(0, sync);
> > > > +	qcom_writel(0, sync);
> > > >    	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
> > > >    		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
> > > >    			if (!(readl_relaxed(status) & sTLBGSTATUS_GSACTIVE))
> > > > @@ -1760,8 +1765,8 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
> > > >    	}
> > > >    	/* Invalidate the TLB, just in case */
> > > > -	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> > > > -	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
> > > > +	qcom_writel(0, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> > > > +	qcom_writel(0, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
> > > >    	reg = readl_relaxed(ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
> > > > 
> > > > 
> > > > 
> > > > Can a quirk be used to work around the issue?
> > > > Or can we just "pessimize" the 3 writes for everybody?
> > > > (Might be cheaper than a test anyway)
> > > 
> > > If it really is just the SMMU driver which is affected, we can work
> > > around it for free (not counting the 'cost' of slightly-weird-looking
> > > code, of course). If the diff below works as expected, I'll write it up
> > > properly.
> > 
> > Here's another take on the subject. I find it minimally intrusive.
> > (But I might have overlooked better options.)
> 
> Both Angelo's and your reports strongly imply that the previous
> constant-folding debate was a red herring and the trivial fix[1] should
> still be sufficient, but nobody's given me actual confirmation of whether it
> is or isn't :(
> 
> Robin.
> 
> [1] http://linux-arm.org/git?p=linux-rm.git;a=commitdiff;h=a13e3239f0c543f1f61ce5f7f5c06320e521701c
> 

Sorry for not getting back to you in a timely manner. I have not been
able to figure out the details, but I can confirm that the issue only
covers a subset of the registers and that [1] seems to work fine on the
Dragonboard 820c (MSM8996 based).

So for [1] you have my:

Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
