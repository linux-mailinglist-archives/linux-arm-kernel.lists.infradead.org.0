Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C4399696
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KZ7hoFB5iSm8840qtxyyX7a4lSYZWINSs2XgDHuMRJY=; b=Z9ior8Qw95f8SkrkbpPe0wm8A
	7ctBjeTUurp/QVxa8kTvEVoJ489bu8IF/+L/RZ4myOsIs+Jj9Ds2qjLERfApHyFyIPtVa+6DMNO9U
	E1+6n15OmtuuScVBSfqmDS2CeXzfeLJ/k1zffhviAzMFO2LsqlEC1DODdwtQnDLbCAOZs8w60VfE8
	G+1yQQlIXZ7/cnXRrlZjyh2yfGX6IhTjPjmeZ9EDDTLiVxpQIw2iJL9esdg0uTW8QXcF+dcL1tLkN
	19kB1iYXEcIAc5dh/n/YX0tEJcMafW4AptlTYIu/jq85B3J5v2w7zUlhpIGdzGHZ3IuFjVy/ovGP/
	5BpbFZrSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0o6u-0007CX-C3; Thu, 22 Aug 2019 14:30:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0o6g-0007C1-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:30:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F453337;
 Thu, 22 Aug 2019 07:30:29 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5672B3F706;
 Thu, 22 Aug 2019 07:30:26 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] iommu/arm-smmu: Introduce wrapper for writeq/readq
To: Will Deacon <will@kernel.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
References: <20190711150242.25290-1-gregory.clement@bootlin.com>
 <20190711150242.25290-2-gregory.clement@bootlin.com>
 <20190820120848.2m6gytilrpil4stu@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4ef6512d-701f-4fe8-8173-5f659dab0d32@arm.com>
Date: Thu, 22 Aug 2019 15:30:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190820120848.2m6gytilrpil4stu@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_073030_191203_B1B1C0D3 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Hanna Hawa <hannah@marvell.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=c3=a8l_Raynal?= <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 13:08, Will Deacon wrote:
> Hi Gregory, Hanna,
> 
> On Thu, Jul 11, 2019 at 05:02:39PM +0200, Gregory CLEMENT wrote:
>> From: Hanna Hawa <hannah@marvell.com>
>>
>> This patch introduces the smmu_writeq_relaxed/smmu_readq_relaxed
>> helpers, as preparation to add specific Marvell work-around for
>> accessing 64 bits width registers of ARM SMMU.
>>
>> Signed-off-by: Hanna Hawa <hannah@marvell.com>
>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>> ---
>>   drivers/iommu/arm-smmu.c | 36 +++++++++++++++++++++++++++---------
>>   1 file changed, 27 insertions(+), 9 deletions(-)
> 
> Sorry for the delay in replying to this -- Robin's been reworking the driver
> so that implementation quirks can be specified more cleanly. Please can you
> take a look at:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/refactoring
> 
> and try to respin your patches on top of that?

Right, the arm_smmu_impl design was specifically anticipating this quirk 
as well - it should just be a case of a cfg_probe hook to hide the 
features which can't work, plus {read,write}_reg64 hooks to override any 
remaining 64-bit accesses with the explicit hi_lo_* variants, munged 
together (either statically or dynamically) with the standard MMU-500 hooks.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
