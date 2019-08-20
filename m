Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975E295F57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wCp7JDMMe8B9zQ3hxCaKsGYCqLLnw538lj2tTasxIoM=; b=I3I+RUvga5POZZEytodd7TJBU
	RreCJ3+cpQmGdJzeVOZTasz9/n+pO69Wt3fhBcankO7ea14mEaRlm0+zXOWP9BrJXcBk7P0J0/V3R
	6zvyz/q2ruQvxfFc0/S+930DIMjRX8ERV0iwJpo/N6hl3lI/7J14kyNLDdwpQaqesUI4xHIpKwsi6
	Nz4vD2Q5Y4sg+0tzFQ7OO5oTRPexM3TdLTH+dabTGoEudFFqZkrz4WyR6/fAqXpmZgISXmoJnUZqw
	7JEECvUyakswhkTmAMpc2vcRwJz+oxFxlMWgvys9+CUsXXqJiY/ORyjbhjBF1A53Dju7krac8MZMj
	oVzRFu4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03l9-0001vU-HB; Tue, 20 Aug 2019 13:01:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i03kx-0001uo-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:01:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62189344;
 Tue, 20 Aug 2019 06:00:53 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 206CA3F246;
 Tue, 20 Aug 2019 06:00:51 -0700 (PDT)
Subject: Re: [PATCH v2 17/17] iommu/arm-smmu: Add context init implementation
 hook
To: Vivek Gautam <vivek.gautam@codeaurora.org>, will@kernel.org
References: <cover.1565892337.git.robin.murphy@arm.com>
 <f50c14834bb7a4f0f7c765d433c2defdb03661c9.1565892337.git.robin.murphy@arm.com>
 <8306f3f1-925c-0b02-8103-9d4a510005b2@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8bd76c3e-823d-86b2-785e-e80685edfa6c@arm.com>
Date: Tue, 20 Aug 2019 14:00:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8306f3f1-925c-0b02-8103-9d4a510005b2@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_060059_698728_542CA377 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robdclark@gmail.com, gregory.clement@bootlin.com,
 bjorn.andersson@linaro.org, iommu@lists.linux-foundation.org,
 jcrouse@codeaurora.org, joro@8bytes.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 11:15, Vivek Gautam wrote:
[...]
> Hi Robin,
> 
> Sorry for responding late to this series. I have couple of doubts here 
> that I wanted to discuss.
> 
> Are we standardizing these implementation specific ops? Each vendor 
> implementations will have something peculiar to take care. Things are 
> good right now with 'reset', 'cfg_probe', and 'init_context' hooks.
> But, on top of vendor implementation details, there can be SoC specific 
> errata changes that need to be added.

The idea behind the impl hooks is to try to have them in logical places 
which should be suitable for multiple different workarounds (e.g. 
init_context is arranged to allow replacing smmu_domain->tlb_ops) - I 
want to avoid proliferating dozens of them that end up each being 
specific to individual workarounds, but that's not to say that the 
design we're starting with here is by any means complete or final. We're 
almost certainly going to evolve more hooks (and possibly adjust the 
current ones) in future.

> Moreover, adding implementation data based on __model__ may not suffice 
> for long. Do you suggest adding any other data variable in the 
> ARM_SMMU_MATCH_DATA?

As commented in the code, the setup for the existing quirks works out to 
be deceptively simple, and it can and will change. Ultimately I'm fully 
expecting to end up with complex logic hanging off arm_smmu_impl_init() 
to detect the integration details and compose sets of impl hooks in 
various ways as appropriate - I doubt that it's going to be practical or 
even possible to have static data for *every* possibility. The 
fundamental shape of the code is based on "model" quirks being more 
general than "integration" quirks, such that the latter should be in a 
position to dynamically inherit (or statically replace, in simple cases) 
the hooks of the former.

> To show SoC specific needs, I have the change attached in this email to 
> take care of the SDM845 'wait-for-safe' sequence.
> Please take a look.

Other than that introducing QCOM_SMMU500 seems to be redundant, and 
whether it also needs ACPI-based detection, that certainly seems fairly 
reasonable for a simple isolated workaround. However, is the firmware 
call really a one-off probe-time thing? If the firmware does take care 
of preserving the wait-for-safe state across 
suspend/resume/hibernate/etc. then fair enough, but I would have assumed 
that the reset hook would be the more likely place to put it.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
