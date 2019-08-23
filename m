Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6159AB1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PdLgRg7r2rQWu0X50ga2ZUpCn9+lDO0Ha2gXb8cWoQ=; b=QqmPI1UQgranP0
	mPh4/xoR+eweefxrFf0ENvbAxKQLnP/GoyMEKvr8d0D9uHrZUcXUeIP7H/wZRnB6ruYQTSE2QtvuJ
	JK/ChBvnf73yPBy4JUVWD60wfDCKVsMZfvyAyZ7YN/gk5qdKW+Rn2QrSRM/wXW+hCYCIdynoZPPT4
	0h50KqJ1bASPJ2xxPF6MGrEli+2jI06mGMIvmsx9JNgInbDJh9UqtCgdvVR7BYMvczd/hN74bhMJS
	1cq0TbP6r/ojbQ0buTCo1pcjj+n/jggHvyWwLX7Vikl8Mzsh6t+viVepTEZsGWgEELuu+1OhQIF1Q
	uBvAeIm8AmZfv0xSJ6gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15YP-0004Uc-16; Fri, 23 Aug 2019 09:08:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15W4-0002ic-2G
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:05:54 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0B9099376FC76823520;
 Fri, 23 Aug 2019 17:05:47 +0800 (CST)
Received: from [127.0.0.1] (10.133.215.186) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 23 Aug 2019 17:05:41 +0800
Subject: Re: [PATCH v3 0/2] improve the concurrency of
 arm_smmu_atc_inv_domain()
To: Will Deacon <will@kernel.org>
References: <20190823024551.24448-1-thunder.leizhen@huawei.com>
 <20190823075026.pwlx33e4crh3m6tn@willie-the-truck>
 <7e28e1ce-2cc3-3c7f-45c7-e7de334c6976@huawei.com>
 <20190823083712.ggzmw3rcodwyhmlf@willie-the-truck>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <c7de4504-6253-49ef-c628-5a702e28fc8d@huawei.com>
Date: Fri, 23 Aug 2019 17:05:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190823083712.ggzmw3rcodwyhmlf@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020552_802693_05EB2869 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, John Garry <john.garry@huawei.com>,
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/23 16:37, Will Deacon wrote:
> On Fri, Aug 23, 2019 at 04:06:52PM +0800, Leizhen (ThunderTown) wrote:
>>
>>
>> On 2019/8/23 15:50, Will Deacon wrote:
>>> On Fri, Aug 23, 2019 at 10:45:49AM +0800, Zhen Lei wrote:
>>>> v2 --> v3:
>>>> As Will Deacon's suggestion, I changed the lock type of
>>>> arm_smmu_domain.devices_lock from spinlock_t to rwlock_t, and I saw that the
>>>> performance is all right. And further use nr_ats_masters to quickly check have
>>>> no obvious effect, so I drop it.
>>>
>>> :/
>>>
>>> I already sent two versions of a series fixing this without any locking at
>>> all on the ->unmap() path, and you were on cc. I've also queued that stuff
>>> up.
>>>
>>> Did you not receive my patches?
>> Sorry, my message filter setting is a bit wrong, must contains
>> "linux-kernel@vger.kernel.org", I have corrected it.
> 
> Ha, sounds like the opposite of my email filter ;)
> 
>>> v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038306.html
>>> v2: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038374.html
>> OK, I will test it when it's my turn to use the board.
> 
> Thanks, although I plan to send it to Joerg today so any changes will need
> to go on top. Does your testing involve ATS, or just non-ATS devices? I've
I also currently only have non-ATS devices. 

> tested the latter locally, although I haven't looked at the performance
> since most of the patches are trying to fix the enable/disable ordering.
> 
> Thanks,
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
