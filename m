Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779BF83137
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8SkEVqlaQDpR2ios3YwXw/kcN+aC05XZdPSZeT9DJok=; b=O3uiLnTZ8+idVY9p4WpeADbZi
	2aIH1LLzToXMnZIzuwmNUg5R2X5YBASOVyfmYOJNqz/GnQ+DcOLBKQuivMHruxy2RudN456ScY6HA
	uoUbXqdM1ZXCUbU578VdDxAcn+ElosYYir9DRfcu6Bl7F/ZO/dXoljYQT6mYn5jyFxBIGwCZz7u7r
	ArwPs/FDf3IviABUwE11Wvam2AS7NgnvoJD9WkPHo4uqyvrKNakg7UAg7TiOLNmc3nSpnIZU2GlI0
	T0qBrzAZk8Ne4kEETP7TUN+dt8d5BYjTfs78toS6u6hgRpDluy/XClYyu0mpOsfeQDDZGVgzi7kDA
	KtLdupxVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyPB-0005wG-S1; Tue, 06 Aug 2019 12:17:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huyOz-0005vt-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:17:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 776DB28;
 Tue,  6 Aug 2019 05:17:14 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FB503F694;
 Tue,  6 Aug 2019 05:17:14 -0700 (PDT)
Subject: Re: 5.2: arm-smmu e0600000.smmu: Unexpected global fault, this could
 be serious
To: Andreas Schwab <schwab@suse.de>, linux-arm-kernel@lists.infradead.org
References: <mvmlfw6354j.fsf@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5036fcb8-131e-9ffe-4bfe-dc8cbae71bc4@arm.com>
Date: Tue, 6 Aug 2019 13:17:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <mvmlfw6354j.fsf@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_051717_702890_BBB86792 
X-CRM114-Status: GOOD (  14.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/08/2019 12:28, Andreas Schwab wrote:
> When trying to boot 5.2 on a seattle platform, I'm getting these errors:
> 
> [ 5056.934028] arm-smmu e0600000.smmu: Unexpected global fault, this could be serious
> [ 5056.953895] arm-smmu e0600000.smmu: Unexpected global fault, this could be serious
> [ 5056.961452] arm_smmu_global_fault: 2959 callbacks suppressed
> [ 5056.961456] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5056.977276] arm-smmu e0600000.smmu: Unexpected global fault, this could be serious
> [ 5056.984838] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.007296] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.017475] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.039919] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.050098] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.072592] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.082766] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.105167] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5057.115342] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
> [ 5061.847674] arm_smmu_global_fault: 2964 callbacks suppressed
> 
> The errors start as soon as the network interface is being brought up,
> and causes networking to fail to work.

Urgh, it finally happened... :(

I take it you have firmware still using the old "mmu-masters" DT binding 
on that machine? I was really hoping that that might have died out in 
the wild by now.

The way the legacy binding is handled turns out to interact badly with 
the disable_bypass option, so CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT 
is presumably now tripping you up. The immediate workaround would be to 
turn that off and/or boot with "arm-smmu.disable_bypass=0" to ensure 
it's overridden. If you can update the firmware to something newer using 
either the generic "iommus" binding or ACPI (I believe Seattle is 
supported in EDK2 these days) that would remove the problem entirely.

In principle it should be possible to make the kernel driver support 
disable_bypass with old firmware, but it's non-trivial and thus I chose 
not to pursue it unless a worthwhile justification came along. 
Alternatively I guess we could write off the old binding as "not 
security-focused" and just force the option back off if we detect both 
together - that's less than ideal, but would at least be simple to do.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
