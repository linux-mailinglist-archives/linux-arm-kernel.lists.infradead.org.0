Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000C1A3D27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gwTlRVq2uMD8YN2ddn53TMYdELypSswxHWYHDCeOpdU=; b=lfZeJ2fxpTz1G3CuS5HnQma8d
	fk0iWzc6HacfanpGwBxQowbAARw/RmLTtBXAxcX3nFid1ZKc35CL8Ngfze2agkodseX+V9oNEJsFS
	B/OVYYETQWi7uKUY9OQGp3HooEcHO2d2eDn0Kvw2UiOyokuCuVqvFmDuCCn1Tjg7tbFtcsrekX17J
	8sDggc4HHNU4TABWokwwTEzGQV+NJVBYEHsCj1O6t09xaxH00bsdPECecB7GU5603pGC/iGjADLX6
	8se9f7UT3APajLGbwFH8H7DGmFzitAtQnhQdWN2I7Izl/4Wcuz205dJiRgEDNAiIrqha4YbatNMg6
	u0orFOW/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3kyB-0003Pk-M6; Fri, 30 Aug 2019 17:45:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3kxz-0003P3-7e
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 17:45:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 170BF337;
 Fri, 30 Aug 2019 10:45:42 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 719A83F718;
 Fri, 30 Aug 2019 10:45:37 -0700 (PDT)
Subject: Re: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
To: Krishna Reddy <vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-7-git-send-email-vdumpa@nvidia.com>
 <b834ceb2-b296-0a52-c913-5a8923466cf2@arm.com>
 <BYAPR12MB2710BDF98FA472A77D106814B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <da30773d-5831-7cc6-4d82-b304d9b8a29b@arm.com>
Date: Fri, 30 Aug 2019 18:45:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <BYAPR12MB2710BDF98FA472A77D106814B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_104543_322265_AE2E137D 
X-CRM114-Status: GOOD (  14.00  )
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
Cc: Timo Alho <talho@nvidia.com>, Thierry Reding <treding@nvidia.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Pritesh Raithatha <praithatha@nvidia.com>,
 "Thomas Zeng \(SW-TEGRA\)" <thomasz@nvidia.com>,
 Sachin Nikam <Snikam@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Yu-Huan Hsu <YHsu@nvidia.com>, Juha Tukkinen <jtukkinen@nvidia.com>,
 Alexander Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 18:25, Krishna Reddy wrote:
>>> +		#global-interrupts = <1>;
> 
>> Shouldn't that be 3?
> 
> Interrupt line is shared between global and all context faults for each SMMU instance.
> Nvidia implementation checks for both Global and context faults on each interrupt to an SMMU instance.
> It can be either 1 or 3.  If we make it 3, we need to add two more irq entries in node for context faults.

The number of global interrupts has never been related to the number of 
context interrupts :/

> In the future, we can update arm-smmu.c to support shared interrupt line between global and all context faults.

Clearly you have one combined interrupt output per SMMU - describing 
those as one global interrupt and the first two context bank interrupts 
respectively makes far less sense than calling them 3 global interrupts, 
not least because the latter is strictly true. Yes, the binding prevents 
us from describing the context bank interrupts for more than one 
instance, but at that point the fact that it *is* the combined output 
saves us - because the driver is aware of this specific integration it 
knows it can just register the "secondary" global interrupts as 
"secondary" context interrupts too. If we had separate IRQ lines per 
context bank per instance, then we'd have a really big problem and might 
have to redefine the binding, but as it is it happens to work out pretty 
neatly.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
