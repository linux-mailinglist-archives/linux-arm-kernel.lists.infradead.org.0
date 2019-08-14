Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C88C534
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 02:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWszycr21fusXeMnKZzGACZ7APUOnrH2ebz1oQO+F+Q=; b=jvEO1BKOqRCIFx
	XJJ12/3mw/9fh4Xvtj++SpkvX3OUpVDQ2E/VEStOUqF7zDo6VckdtH8SppehovQCJs5PXwk+5X7U5
	WzI4obn8t/wAs9L6XSAx2VDu3V3cCRCyr9w+DWoQiao+kPPwba1k+36XELeSS5IDhR4Zu8P3oGFid
	7k/fXXFXRzmSqnEhapl+QwyplszoA6sskKrckndBlA6tar+J107AwlGUEXZMbJjoAae65imOjIBZX
	KBuHmIBfTH8R7t0j5dTiy/+lXJnJcS9D2Ccq+J5+A+2xN2h/bMxiw068DbbAs3bLHCMXGkxLtLzIq
	URT+FYKTFr80TuIH6nCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhMv-0001cV-PT; Wed, 14 Aug 2019 00:42:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMY-0001bV-9a
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 00:42:04 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 509E972F8571B7ADFF66;
 Wed, 14 Aug 2019 08:41:48 +0800 (CST)
Received: from [127.0.0.1] (10.133.215.186) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 14 Aug 2019 08:41:38 +0800
Subject: Re: [PATCH] iommu/arm-smmu-v3: add nr_ats_masters to avoid
 unnecessary operations
To: Will Deacon <will@kernel.org>, John Garry <john.garry@huawei.com>
References: <20190801122040.26024-1-thunder.leizhen@huawei.com>
 <b5866f7a-013a-5900-6fce-268052f2ba0a@huawei.com>
 <20190813171039.y64wslo4dzgyis3e@willie-the-truck>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <19e427af-7ff3-99a5-cfec-60ebce686cb2@huawei.com>
Date: Wed, 14 Aug 2019 08:41:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190813171039.y64wslo4dzgyis3e@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174202_494319_798AAE31 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jean-philippe@linaro.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/14 1:10, Will Deacon wrote:
> On Mon, Aug 12, 2019 at 11:42:17AM +0100, John Garry wrote:
>> On 01/08/2019 13:20, Zhen Lei wrote:
>>> When (smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS) is true, even if a
>>> smmu domain does not contain any ats master, the operations of
>>> arm_smmu_atc_inv_to_cmd() and lock protection in arm_smmu_atc_inv_domain()
>>> are always executed. This will impact performance, especially in
>>> multi-core and stress scenarios. For my FIO test scenario, about 8%
>>> performance reduced.
>>>
>>> In fact, we can use a atomic member to record how many ats masters the
>>> smmu contains. And check that without traverse the list and check all
>>> masters one by one in the lock protection.
>>>
>>
>> Hi Will, Robin, Jean-Philippe,
>>
>> Can you kindly check this issue? We have seen a signifigant performance
>> regression here.
> 
> Sorry, John: Robin and Jean-Philippe are off at the moment and I've been
> swamped dealing with the arm64 queue. I'll try to get to this tomorrow.

Hi, all:
   I found my patch have some mistake, see below. I'm sorry I didn't see this coupling. 
I'm preparing v2. 

> @@ -1915,10 +1921,10 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
>  	list_del(&master->domain_head);
>  	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
>  
> -	master->domain = NULL;
>  	arm_smmu_install_ste_for_dev(master);

"master->domain = NULL" is needed in arm_smmu_install_ste_for_dev().

>  
>  	arm_smmu_disable_ats(master);
> +	master->domain = NULL;
>  }

> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
