Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD739644C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mVBFSGA+Dr2zDYgOs/s24zMi9qHeGih8DVBaoxaOF/I=; b=CbHFe3EMvGyycGVKNB2R/5niO
	OGB/61T/AJp7rODONoWi6qgtOrXh/89TMfZK/cE6f0KB/MLAXDvCzWDldPGVyZePHRrIt3VcqH/VI
	KcygY37uY2pdUYYysjQ0Fh2G804wY/ORp735D9x0FIlrZGPJdBmztjhzv5/r3Pc3VlT/B5676tLgx
	wenUvgK9bxq4fLprwpLbge669GMzEZkPAwhz+tolMaAvz/nRP8boqIzZqIRhblGwcytrBoMRLvO+B
	zBn+cK6zgls5HtLsyb5nyyWjzdQtjreyC37xxYCpTPVV4l1EwlsCu0uXxpIzbZCOlZTZ/PLagRpx7
	BquzTi4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i061S-0005Cn-VH; Tue, 20 Aug 2019 15:26:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i061G-0005CH-Tk
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:26:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DB32360;
 Tue, 20 Aug 2019 08:25:58 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 807463F246;
 Tue, 20 Aug 2019 08:25:57 -0700 (PDT)
Subject: Re: [PATCH 3/4] iommu/io-pgtable-arm: Rationalise TCR handling
To: Will Deacon <will@kernel.org>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
 <20190820103115.o7neehdethf7sbqi@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <48ca6945-de73-116a-3230-84862ca9e60b@arm.com>
Date: Tue, 20 Aug 2019 16:25:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190820103115.o7neehdethf7sbqi@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_082558_997920_28F41516 
X-CRM114-Status: GOOD (  19.58  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 11:31, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 07:19:30PM +0100, Robin Murphy wrote:
>> Although it's conceptually nice for the io_pgtable_cfg to provide a
>> standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
>> looks exactly like an Arm CPU, and they all have various other TCR
>> controls which io-pgtable can't be expected to understand. Thus since
>> there is an expectation that drivers will have to add to the given TCR
>> value anyway, let's strip it down to just the essentials that are
>> directly relevant to io-pgatble's inner workings - namely the address
>> sizes, walk attributes, and where appropriate, format selection.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu-v3.c        | 7 +------
>>   drivers/iommu/arm-smmu.c           | 1 +
>>   drivers/iommu/arm-smmu.h           | 2 ++
>>   drivers/iommu/io-pgtable-arm-v7s.c | 6 ++----
>>   drivers/iommu/io-pgtable-arm.c     | 4 ----
>>   drivers/iommu/qcom_iommu.c         | 2 +-
>>   6 files changed, 7 insertions(+), 15 deletions(-)
> 
> Hmm, so I'm a bit nervous about this one since I think we really should
> be providing a TCR with EPD1 set if we're only giving you TTBR0. Relying
> on the driver to do this worries me. See my comments on the next patch.

The whole idea is that we already know we can't provide a *complete* TCR 
value (not least because anything above bit 31 is the wild west), thus 
there's really no point in io-pgtable trying to provide anything other 
than the parts it definitely controls. It makes sense to provide this 
partial TCR value "as if" for TTBR0, since that's the most common case, 
but ultimately io-pgatble doesn't know (or need to) which TTBR the 
caller intends to actually use for this table. Even if the caller *is* 
allocating it for TTBR0, io-pgtable doesn't know that they haven't got 
something live in TTBR1 already, so it still wouldn't be in a position 
to make the EPD1 call either way.

Ultimately, it's the IOMMU drivers who decide what they put in which 
TTBR, so it's the IOMMU drivers which have to take responsibility for 
EPD*. Sure you can worry about it, but you can equally worry about them 
them misprogramming the ASID or anything else...

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
