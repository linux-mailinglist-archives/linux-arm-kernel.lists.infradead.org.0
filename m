Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D11B5085
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AMI4FBtiG4zsyMupT+NnLuUgqYzeIRWABJ77EcIhZs=; b=QGZISK6EW0SOVv
	0rrLNLYqzGdSQvjzk9s+g4bv5Z6gcbPQECUlgUkGu3BRPUMZUVLIHut7btkj4PJgY3Jmqk/5yyXLj
	puZKWiyalu9YeVDiWo6KaJ4zAvgN7ucyfuT+UA1VERRnw5mldimPe2dZhXbmLFy/YICoHZ47beu01
	RymEQnpjvd5cdrfOQ7ILp4bd1e7XgVe23nsLN+3E9bzW2uKNkKnVp+sviMn7JKXctq5GbX96pGS//
	BB8ho6BuOjTpGNEatyHjidskpSBwt7kx0qJA5htDCZjVO9vs0GojIYMSKybPYXWnp9GZdI9L4cv6X
	myJCd7FXXjEfWQfgHxqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEaw-0005Jz-5F; Tue, 17 Sep 2019 14:36:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEal-0005Jk-6X
 for linux-arm-kernel@bombadil.infradead.org; Tue, 17 Sep 2019 14:36:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:CC:To:From:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BKZ/l1hUHK5Lb7Lj4EIG2R0t9kHvTcjmYmkIz7Z5l1o=; b=OFCNcc43y38B3m0JdY6KXXUVJ1
 lbSzm7jDwc4BNWj1c2gPovr5ezu/IoYed1KgwNfUccfd2oaSkQEiPfp6qmb1xdGONJVJUrjbVAYec
 ibgvDQSKZ8qpqqY69xHROFwGRR7ZI6ysafInTvk+0w48ByQC4po3F2KSQPY31oTNiMIV6tnMErHAi
 p+k7/N+GP8/0wsfpAQU8C6iBQZWv2ruas/zjgd4u8qmtbzaxamEkEoeJwG+tFKowBe9M1aDuYJOtF
 OOk4iPgyFSTv7NjDK9CNYH/RNwgUqRx3JCGa1koVA473UlhDLEbeSYxMd75uei0ms++OUVJDheq3+
 lNKwi11g==;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEah-0000Dh-P2
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:36:29 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 39099E79C2165A46F9FC;
 Tue, 17 Sep 2019 22:35:30 +0800 (CST)
Received: from [127.0.0.1] (10.133.215.186) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 17 Sep 2019 22:35:29 +0800
Subject: Re: [PATCH v3 0/2] improve the concurrency of
 arm_smmu_atc_inv_domain()
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
To: Will Deacon <will@kernel.org>
References: <20190823024551.24448-1-thunder.leizhen@huawei.com>
 <20190823075026.pwlx33e4crh3m6tn@willie-the-truck>
 <7e28e1ce-2cc3-3c7f-45c7-e7de334c6976@huawei.com>
Message-ID: <c81257d2-f675-0596-498e-c8a7c391fbdc@huawei.com>
Date: Tue, 17 Sep 2019 22:35:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7e28e1ce-2cc3-3c7f-45c7-e7de334c6976@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/23 16:06, Leizhen (ThunderTown) wrote:
> 
> 
> On 2019/8/23 15:50, Will Deacon wrote:
>> On Fri, Aug 23, 2019 at 10:45:49AM +0800, Zhen Lei wrote:
>>> v2 --> v3:
>>> As Will Deacon's suggestion, I changed the lock type of
>>> arm_smmu_domain.devices_lock from spinlock_t to rwlock_t, and I saw that the
>>> performance is all right. And further use nr_ats_masters to quickly check have
>>> no obvious effect, so I drop it.
>>
>> :/
>>
>> I already sent two versions of a series fixing this without any locking at
>> all on the ->unmap() path, and you were on cc. I've also queued that stuff
>> up.
>>
>> Did you not receive my patches?
> Sorry, my message filter setting is a bit wrong, must contains
> "linux-kernel@vger.kernel.org", I have corrected it.
> 
>>
>> v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038306.html
>> v2: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038374.html
> OK, I will test it when it's my turn to use the board.

The test result shows good to me, without these patches, it's about 22xx-23xx

Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11160M/0K /s] [2725K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11165M/0K /s] [2726K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11220M/0K /s] [2739K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11189M/0K /s] [2732K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11082M/0K /s] [2705K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11003M/0K /s] [2686K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11412M/0K /s] [2786K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11415M/0K /s] [2787K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11214M/0K /s] [2738K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [11054M/0K /s] [2699K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [10733M/0K /s] [2620K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.6% done] [10772M/0K /s] [2630K/0 
Jobs: 24 (f=24): [RRRRRRRRRRRRRRRRRRRRRRRR] [0.7% done] [10772M/0K /s] [2630K/0 

> 
>>
>> Queued: https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/smmu-v3
>>
>> Will
>>
>> .
>>
> 
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
