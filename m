Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F0B94C67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=anTmfo4vzm4IT7ZmJ+ALjWE06CacOAyRT0HNrTPoRm4=; b=qAo7WhFDd2OmKM0IsopTXu94N
	aPuueCc6f/HLBkc079CBA6buqO5ccGbGvdFZBFeBfkjD+g2UliHdZGQPFBtDjeaHF+07HgSpWWDUT
	MSiysAzadiENwUvB7saFgEyaY0R3uWt6AGsc4waQsNbeZJ2bsvXbgEgxPDB4fHsgBomvup26nNxVr
	FRBqIFpdXGHIGbpyp3qAx0Wjho3dDJ2WNKs4mfT9IUZa/MRoLv9Jl80Fcs7BJZt6fYzzz1JKMEX7B
	8vIwxR7gZxRKouUIldBX6kGiBWKX7OpNvoRA36nBHg6cS666FvvbdshPH5aq/4I7ZgbqEn9q8bz/v
	V2J5zzuRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzm7Y-0001SJ-Ei; Mon, 19 Aug 2019 18:11:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzm7H-0001Rw-NY
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:10:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41286360;
 Mon, 19 Aug 2019 11:10:48 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3FEC3F246;
 Mon, 19 Aug 2019 11:10:46 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] Arm SMMU refactoring
To: Will Deacon <will@kernel.org>
References: <cover.1565892337.git.robin.murphy@arm.com>
 <20190819155634.xflkhxexzks3y7oa@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d8a47e62-0768-7ae2-f2fc-53b5b2b24685@arm.com>
Date: Mon, 19 Aug 2019 19:10:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190819155634.xflkhxexzks3y7oa@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_111051_816856_F551401D 
X-CRM114-Status: GOOD (  16.36  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 jcrouse@codeaurora.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/08/2019 16:56, Will Deacon wrote:
> On Thu, Aug 15, 2019 at 07:37:20PM +0100, Robin Murphy wrote:
>> v1 for context: https://patchwork.kernel.org/cover/11087347/
>>
>> Here's a quick v2 attempting to address all the minor comments; I've
>> tweaked a whole bunch of names, added some verbosity in macros and
>> comments for clarity, and rejigged arm_smmu_impl_init() for a bit more
>> structure. The (new) patches #1 and #2 are up front as conceptual fixes,
>> although they're not actually critical - it turns out to be more of an
>> embarrassment than a real problem in practice.
> 
> Thanks, I'll pick this up and send to Joerg later this week.

Oops, I've just noticed that the io-64-nonatomic-hi-lo.h include also 
needs to move to arm-smmu.h in #14 to avoid breaking 32-bit builds. I've 
pushed out an updated branch (along with the static fixes for good 
measure) - let me know if you'd like a resend of the patches.

Cheers,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
