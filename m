Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4144D7165
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=utFcnkM5JWHA3kc5fO6cv3wN+axMKcOD47s5UrjgKMk=; b=OndIgaVYEZ5RrYTvZ6TXYieIL
	RfgW7XBfNOp16DvUCKPsXbfD4y/uZvTcCa5y24VHfOga09x+thAS43CebMwhLMcaH3iiQmY1SsiUt
	/CxiLuiF7jJGSEdx+ZJjMupTo1y4QYldXhqWIR3L+eo+NeSRYB56H9/DNqCQixwsxmIfqvMViwPuP
	lxRPJpKTpUjQkSthSvyHkx/8ORewKox3DlyAogqHMsxdcvr5cLdAU4dUBa4/4ZNXPRkRctfmkLVAz
	+n0obFwkvAcKPrJdP770ptwV0tectYIbW/4vvW/F54DcWVtrLYKEb9iBLtIyrF1zVbnT8iBJ6tio8
	AT9W7Hv1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIUa-0003Ia-PT; Tue, 15 Oct 2019 08:47:44 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIUQ-0003Hv-7w
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 08:47:35 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E5CBC381E56DCDE9C84C;
 Tue, 15 Oct 2019 16:47:28 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 15 Oct 2019 16:47:19 +0800
Subject: Re: [RFC PATCH 6/6] ACPI/IORT: Drop code to set the PMCG
 software-defined model
To: Hanjun Guo <guohanjun@huawei.com>, <lorenzo.pieralisi@arm.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
 <1569854031-237636-7-git-send-email-john.garry@huawei.com>
 <e4e8adfd-a0af-82cb-c5f6-77153474330a@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <4de3b360-710f-e109-93bf-30ff942d08c1@huawei.com>
Date: Tue, 15 Oct 2019 09:47:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <e4e8adfd-a0af-82cb-c5f6-77153474330a@huawei.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_014734_450928_6C5CEB53 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: nleeder@codeaurora.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/2019 04:06, Hanjun Guo wrote:
>> -/*
>> > - * PMCG model identifiers for use in smmu pmu driver. Please note
>> > - * that this is purely for the use of software and has nothing to
>> > - * do with hardware or with IORT specification.
>> > - */
>> > -#define IORT_SMMU_V3_PMCG_GENERIC        0x00000000 /* Generic SMMUv3 PMCG */
>> > -#define IORT_SMMU_V3_PMCG_HISI_HIP08     0x00000001 /* HiSilicon HIP08 PMCG */
> Since only HiSilicon platform has such erratum, and I think it works with
> both old version of firmware, I'm fine with removing this erratum framework.
>

Yeah, seems a decent change on its own, even without the SMMU PMCG 
driver changes.

But we still need to check on patch "[PATCH RFC 2/6] iommu/arm-smmu-v3: 
Record IIDR in arm_smmu_device structure" to progress any of this.

Will, Robin, Any opinion on that patch?

https://lore.kernel.org/linux-iommu/1569854031-237636-1-git-send-email-john.garry@huawei.com/T/#m1e24771a23ee5426ec94ca2c4ec572642c155a77

> Acked-by: Hanjun Guo <guohanjun@huawei.com>

Cheers,
John

>
> Thanks
> Hanjun
>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
