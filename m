Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D999D1F4BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bHZX4AnNdVBEYEbj93rRUvtPauH3TzJ92YC+gbu9mag=; b=dIrVtpwtKg0dEFaFzEe2gq7Me
	qPh/P5TnreBn8KYlryoKYmqRScj6laOh64uQ/Ckrrd3sFFJY/nzeILL8rNe9R/3j57vHM1AzGWO5n
	nRWesT4UgP5npbICvSON+xNkMbGXI5hXdPKoZSqVvd6mHdy0nDQ0Cr+X02u96Ggc7uKW61BYBM+QZ
	vF7cSifZpCHKlUv5mQmxPUBcXa6nG9vtnSiknEmm+6EDE1xA8tMgk7T1NZdELTT9yVAcIqlDaslf5
	gEQ79X7Et33N8qkZ4c4CpZO5PkAEIaLpzo2oMphP+1s/fSYQ5lp83UFFX8sb+6c/taNBqIMtNRlo/
	oYVf0y1dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtIw-0008It-JW; Wed, 15 May 2019 12:46:42 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtIo-0008IX-0s
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:46:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 813C9374;
 Wed, 15 May 2019 05:46:32 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CAEF83F71E;
 Wed, 15 May 2019 05:46:30 -0700 (PDT)
Subject: Re: [PATCH RESEND] ACPI/IORT: Fix build error when IOMMU_SUPPORT
 disabled
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will.deacon@arm.com>
References: <20190515033406.79020-1-wangkefeng.wang@huawei.com>
 <20190515034253.79348-1-wangkefeng.wang@huawei.com>
 <20190515101534.GF24357@fuggles.cambridge.arm.com>
 <20190515120652.GA27269@e121166-lin.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a7efd571-d82e-1d8f-147f-3bf8d1152d0d@arm.com>
Date: Wed, 15 May 2019 13:46:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515120652.GA27269@e121166-lin.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_054634_077364_58D65D88 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, joro@8bytes.org,
 linux-acpi@vger.kernel.org, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/05/2019 13:06, Lorenzo Pieralisi wrote:
> [+Joerg, Robin]
> 
> On Wed, May 15, 2019 at 11:15:34AM +0100, Will Deacon wrote:
>> On Wed, May 15, 2019 at 11:42:53AM +0800, Kefeng Wang wrote:
>>> drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
>>> drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
>>>      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
>>>                       ^~
>>> drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
>>> undeclared (first use in this function)
>>>      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
>>>                                  ^~~~~~~~~~~~~~~~~~~~~~~
>>> drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in
>>>
>>> If IOMMU_SUPPORT not enabled, struct iommu_fwspec without members and
>>> IOMMU_FWSPEC_PCI_RC_ATS not defined, add new iommu_fwspec_set_ats_flags()
>>> to set IOMMU_FWSPEC_PCI_RC_ATS flags to solve build error.
>>>
>>> Cc: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
>>> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>>> Cc: Will Deacon <will.deacon@arm.com>
>>> Reported-by: Hulk Robot <hulkci@huawei.com>
>>
>> What's this "Hulk Robot"? Does it report things publicly?
> 
> AFAIK it is Huawei CI system, I had some doubts about leaving
> that tag for other patches I dealt with, I am not sure it is
> really useful (other than giving Hulk some credit).
> 
>> Anyway, I can pick this up if Lorenzo acks it.
> 
> Actually I think we should compile out iort_iommu_configure() for
> !IOMMU_SUPPORT unless I am missing something, so that we are
> removing this source of errors.

Indeed, much as I like the compile coverage of not having things 
#ifdefed out in general, this particular case seems like a fairly 
atypical configuration so I'm not sure all the extra fluff of struct 
accessors is really worth it.

Robin.

> If that does not cut it, for this patch:
> 
> iommu_fwspec_set_ats_flags() should be iommu_fwspec_set_ats_flag()
> 
> The commit log should be fixed (it is pretty weird to start with the
> build error and then explain it):
> 
> "If IOMMU_SUPPORT is not enabled, struct iommu_fwspec is an empty
> struct and IOMMU_FWSPEC_PCI_RC_ATS is not defined, resulting in
> the following build error:
> 
> drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
> drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
>      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
>                       ^~
> drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
> undeclared (first use in this function)
>      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
>                                  ^~~~~~~~~~~~~~~~~~~~~~~
> drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in
> 
> Add a iommu_fwspec_set_ats_flag() helper function (that is an empty
> stub on !IOMMU_SUPPORT) to fix it."
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
