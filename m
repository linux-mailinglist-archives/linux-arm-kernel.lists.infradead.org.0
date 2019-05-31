Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22EF3135D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wZ8gw+qHf1uqYkv2AGJfe5GqdsEJe1Niq1jpv6ffZCw=; b=D9sNFKXQF4srNwKBRtLoPRRQB
	icGzANIWyZuTxAY2V1GaZqdHyVeKEUmqV0TkDPjzi5xYavmNl1kY8SOV620zumJlFrDbWB27CPDBP
	E3ZcgRtuorJJyLNMLLiu8OaxAx5W4a7d1tmMZrtldxig3GJYmMY7Zg/Wj04MAOgi+jyHeig05Ov3/
	HDd6wjROmpUJJZmTq2Zv/wUEY5S1v0uoeu6xNBuGdzwAgA9eGmxPNHnvqXvsubFyv8/X3M2N+kI/S
	kZSND+8GyEYFZVmgRYlk94MYM/3j1VkpqdzKQhJdA//K3mNJiNy0Jvotmcs5nfezow120L+LwXNIX
	/Moit+FdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkx1-0000I5-TO; Fri, 31 May 2019 17:04:19 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkwL-0008L0-EO
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:03:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00600A78;
 Fri, 31 May 2019 10:03:37 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B94C3F59C;
 Fri, 31 May 2019 10:03:32 -0700 (PDT)
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
To: Christoph Hellwig <hch@infradead.org>, David Miller <davem@davemloft.net>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530.150844.1826796344374758568.davem@davemloft.net>
 <20190531163350.GB8708@infradead.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <37406608-df48-c7a0-6975-4b4ad408ba36@arm.com>
Date: Fri, 31 May 2019 18:03:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190531163350.GB8708@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_100337_892064_623DC4A3 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Joakim.Tjernlund@infinera.com, iommu@lists.linux-foundation.org,
 camelia.groza@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/05/2019 17:33, Christoph Hellwig wrote:
> On Thu, May 30, 2019 at 03:08:44PM -0700, David Miller wrote:
>> From: laurentiu.tudor@nxp.com
>> Date: Thu, 30 May 2019 17:19:45 +0300
>>
>>> Depends on this pull request:
>>>
>>>   http://lists.infradead.org/pipermail/linux-arm-kernel/2019-May/653554.html
>>
>> I'm not sure how you want me to handle this.
> 
> The thing needs to be completely redone as it abuses parts of the
> iommu API in a completely unacceptable way.

`git grep iommu_iova_to_phys drivers/{crypto,gpu,net}`

:(

I guess one alternative is for the offending drivers to maintain their 
own lookup tables of mapped DMA addresses - I think at least some of 
these things allow storing some kind of token in a descriptor, which 
even if it's not big enough for a virtual address might be sufficient 
for an index.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
