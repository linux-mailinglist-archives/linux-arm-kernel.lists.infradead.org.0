Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD369164CA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 18:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7RIo+GDg/570v8os5L51uVPZfpk9aUoGU0QmQIBAXAo=; b=FcnxhsRmsZLY/shGgOzfqf2ru
	oy/qIj5CPN+FkqTSuozR40NmvYokru3UFCvQd3UwlvD3kmsXRmcIMz5Y8XOpEqFHOx9lJFBj4RRTW
	jajaaTnu+wOMYuaa3sofAIZumJ6oQH1pFm4xs5E2rR5nS8nw93zZMN6Z4/t7SFGd78VeKkU2dYnB4
	vdUK9XsSlgwNXU99J927CF0/6nPzsZlvyvJfBlUlC0nbqvJ8J3yK2ZIlBUKsjMkIB7V0AqKS9z3uN
	sw8WoqY2GwfF1jcwuN86tnw9cuO+nCwkbfbmfs9IL9loMq9WZuFgrLEgkmaRwAb3tyywlSoUfDu5+
	eYTFRcOPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4TVQ-0001Ut-TZ; Wed, 19 Feb 2020 17:51:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TVG-0001Tn-Oi
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 17:51:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A601D31B;
 Wed, 19 Feb 2020 09:51:16 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C21333F703;
 Wed, 19 Feb 2020 09:51:15 -0800 (PST)
Subject: Re: [PATCH 8/8] iommu/io-pgtable-arm: Prepare for TTBR1 usage
To: Stephan Gerhold <stephan@gerhold.net>, Will Deacon <will@kernel.org>
References: <20200110152852.24259-1-will@kernel.org>
 <20200110152852.24259-9-will@kernel.org>
 <20200219122711.GA176090@gerhold.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <615b5077-4cd0-d5b0-5147-202f8c0771c7@arm.com>
Date: Wed, 19 Feb 2020 17:51:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200219122711.GA176090@gerhold.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_095118_892779_6D2829CC 
X-CRM114-Status: GOOD (  32.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: iommu@lists.linux-foundation.org, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/02/2020 12:27 pm, Stephan Gerhold wrote:
> Hi Will, Hi Robin,
> 
> On Fri, Jan 10, 2020 at 03:28:52PM +0000, Will Deacon wrote:
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> Now that we can correctly extract top-level indices without relying on
>> the remaining upper bits being zero, the only remaining impediments to
>> using a given table for TTBR1 are the address validation on map/unmap
>> and the awkward TCR translation granule format. Add a quirk so that we
>> can do the right thing at those points.
>>
>> Tested-by: Jordan Crouse <jcrouse@codeaurora.org>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> Signed-off-by: Will Deacon <will@kernel.org>
>> ---
>>   drivers/iommu/io-pgtable-arm.c | 25 +++++++++++++++++++------
>>   include/linux/io-pgtable.h     |  4 ++++
>>   2 files changed, 23 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
>> index 846963c87e0f..5e966ef0bacf 100644
>> --- a/drivers/iommu/io-pgtable-arm.c
>> +++ b/drivers/iommu/io-pgtable-arm.c
>> @@ -104,6 +104,10 @@
>>   #define ARM_LPAE_TCR_TG0_64K		1
>>   #define ARM_LPAE_TCR_TG0_16K		2
>>   
>> +#define ARM_LPAE_TCR_TG1_16K		1
>> +#define ARM_LPAE_TCR_TG1_4K		2
>> +#define ARM_LPAE_TCR_TG1_64K		3
>> +
>>   #define ARM_LPAE_TCR_SH_NS		0
>>   #define ARM_LPAE_TCR_SH_OS		2
>>   #define ARM_LPAE_TCR_SH_IS		3
>> @@ -463,6 +467,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>>   	arm_lpae_iopte *ptep = data->pgd;
>>   	int ret, lvl = data->start_level;
>>   	arm_lpae_iopte prot;
>> +	long iaext = (long)iova >> cfg->ias;
>>   
>>   	/* If no access, then nothing to do */
>>   	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
>> @@ -471,7 +476,9 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>>   	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>>   		return -EINVAL;
>>   
>> -	if (WARN_ON(iova >> data->iop.cfg.ias || paddr >> data->iop.cfg.oas))
>> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
>> +		iaext = ~iaext;
>> +	if (WARN_ON(iaext || paddr >> cfg->oas))
>>   		return -ERANGE;
>>   
>>   	prot = arm_lpae_prot_to_pte(data, iommu_prot);
>> @@ -637,11 +644,14 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>>   	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>>   	struct io_pgtable_cfg *cfg = &data->iop.cfg;
>>   	arm_lpae_iopte *ptep = data->pgd;
>> +	long iaext = (long)iova >> cfg->ias;
>>   
>>   	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>>   		return 0;
>>   
>> -	if (WARN_ON(iova >> data->iop.cfg.ias))
>> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
>> +		iaext = ~iaext;
>> +	if (WARN_ON(iaext))
>>   		return 0;
>>   
>>   	return __arm_lpae_unmap(data, gather, iova, size, data->start_level, ptep);
> 
> This part of the patch seems to break io-pgtable-arm.c on ARM32 to some
> extent. I have a device using qcom_iommu that could normally run ARM64,
> but I'm unable to because of outdated (signed) firmware. :(
> So it's running a lot of code that would normally run only on ARM64.
> 
> It used to work quite well but now qcom-venus fails to probe on:
>      if (WARN_ON(iaext || paddr >> cfg->oas))
> (I added some debug prints for clarity.)
> 
>      qcom-venus 1d00000.video-codec: Adding to iommu group 0
>      arm-lpae io-pgtable: quirks: 0x0
>      arm-lpae io-pgtable: arm_lpae_map: iova: 0xdd800000, paddr: 0xebe3f000, iaext: 0xffffffff, paddr >> oas: 0x0
>      ------------[ cut here ]------------
>      WARNING: CPU: 0 PID: 954 at drivers/iommu/io-pgtable-arm.c:487 arm_lpae_map+0xe4/0x510
>      Hardware name: Generic DT based system
>      ...
>      [<c04bafb0>] (arm_lpae_map) from [<c04bcd6c>] (qcom_iommu_map+0x50/0x78)
>      [<c04bcd6c>] (qcom_iommu_map) from [<c04b7290>] (__iommu_map+0xe8/0x1cc)
>      [<c04b7290>] (__iommu_map) from [<c04b7bbc>] (__iommu_map_sg+0xa8/0x118)
>      [<c04b7bbc>] (__iommu_map_sg) from [<c04b7c64>] (iommu_map_sg_atomic+0x18/0x20)
>      [<c04b7c64>] (iommu_map_sg_atomic) from [<c04b94f8>] (iommu_dma_alloc+0x4dc/0x5a0)
>      [<c04b94f8>] (iommu_dma_alloc) from [<c0196a50>] (dma_alloc_attrs+0x104/0x114)
>      [<c0196a50>] (dma_alloc_attrs) from [<bf302c60>] (venus_hfi_create+0xa4/0x260 [venus_core])
>      [<bf302c60>] (venus_hfi_create [venus_core]) from [<bf2fe6cc>] (venus_probe+0x1e4/0x328 [venus_core])
>      [<bf2fe6cc>] (venus_probe [venus_core]) from [<c04c8eb4>] (platform_drv_probe+0x48/0x98)
>      ...
>      Exception stack(0xc2587fa8 to 0xc2587ff0)
>      7fa0:                   b6f3dc70 b5051010 b5051010 0017388c b6e645b0 b6e645b0
>      7fc0: b6f3dc70 b5051010 00020000 00000080 b6e30790 be84ea54 0046ac91 00000000
>      7fe0: b6e75f1c be84e940 b6e5fb51 b6eec8a4
>      ---[ end trace 2a0ed284f6d82f16 ]---
>      qcom-venus: probe of 1d00000.video-codec failed with error -12
> 
> Note that iaext = 0xffffffff != 0.
> It seems to be some int/long size problem that only happens with larger
> iova addresses on 32-bit systems.
> 
> Without the (long) cast for iova everything is working correctly again:
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 983b08477e64..f7ecc763c706 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -468,7 +468,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>   	arm_lpae_iopte *ptep = data->pgd;
>   	int ret, lvl = data->start_level;
>   	arm_lpae_iopte prot;
> -	long iaext = (long)iova >> cfg->ias;
> +	long iaext = iova >> cfg->ias;
>   
>   	/* If no access, then nothing to do */
>   	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
> @@ -645,7 +645,7 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>   	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>   	struct io_pgtable_cfg *cfg = &data->iop.cfg;
>   	arm_lpae_iopte *ptep = data->pgd;
> -	long iaext = (long)iova >> cfg->ias;
> +	long iaext = iova >> cfg->ias;
>   
>   	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>   		return 0;
> 
> But I'm not sure if this is really the correct "fix"...

No, that would end up breaking the TTBR1 case. The quirk isn't intended 
to be supported on 32-bit platforms, but somehow it's slipped through 
that this sign-extension still affects them (and goes wrong to boot), 
sorry about that.

I think quick fixes would be either to replace the "(long)" cast with 
"(s64)(u64)", or to just elide the iaext check altogether when 32-bit 
longs make it impossible to pass an out-of-range IOVA anyway. I'll have 
a think and see what works out nicest.

> This problem can be also easily reproduced by enabling
> IOMMU_IO_PGTABLE_LPAE_SELFTEST on ARM32.
> (Shouldn't there be some system that runs these automatically? ;))
> 
> Without this patch all of them are passing:
> 
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 32
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 36
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 40
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 42
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 44
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 48
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 32
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 36
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 40
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 42
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 44
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 48
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 32
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 36
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 40
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 42
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 44
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 48
>      arm-lpae io-pgtable: selftest: completed with 18 PASS 0 FAIL

Hmm, we probably shouldn't be running IAS > 32 tests on 32-bit, given 
that such configs are effectively impossible to use.

Robin.

> 
> But with this patch 6 of them are failing (with a similar warning as
> I posted above):
> 
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 32
>      ------------[ cut here ]------------
>      WARNING: CPU: 3 PID: 1 at drivers/iommu/io-pgtable-arm.c:482 arm_lpae_map+0xa4/0x4e4
>      Hardware name: Generic DT based system
>      [<c01104ac>] (unwind_backtrace) from [<c010c0b4>] (show_stack+0x10/0x14)
>      [<c010c0b4>] (show_stack) from [<c06cfb34>] (dump_stack+0x90/0xa4)
>      [<c06cfb34>] (dump_stack) from [<c012d76c>] (__warn+0xb8/0xd4)
>      [<c012d76c>] (__warn) from [<c012d7ec>] (warn_slowpath_fmt+0x64/0xbc)
>      [<c012d7ec>] (warn_slowpath_fmt) from [<c04baf70>] (arm_lpae_map+0xa4/0x4e4)
>      [<c04baf70>] (arm_lpae_map) from [<c0a1de3c>] (arm_lpae_do_selftests+0x234/0x688)
>      [<c0a1de3c>] (arm_lpae_do_selftests) from [<c0102788>] (do_one_initcall+0x50/0x1b8)
>      [<c0102788>] (do_one_initcall) from [<c0a0148c>] (kernel_init_freeable+0x1ec/0x25c)
>      [<c0a0148c>] (kernel_init_freeable) from [<c06e6dc4>] (kernel_init+0x8/0x110)
>      [<c06e6dc4>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
>      Exception stack(0xee867fb0 to 0xee867ff8)
>      7fa0:                                     00000000 00000000 00000000 00000000
>      7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
>      7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
>      ---[ end trace 89e831c50a111e7c ]---
>      ------------[ cut here ]------------
>      WARNING: CPU: 3 PID: 1 at drivers/iommu/io-pgtable-arm.c:1182 arm_lpae_do_selftests+0x4b8/0x688
>      selftest: test failed for fmt idx 0
>      Hardware name: Generic DT based system
>      [<c01104ac>] (unwind_backtrace) from [<c010c0b4>] (show_stack+0x10/0x14)
>      [<c010c0b4>] (show_stack) from [<c06cfb34>] (dump_stack+0x90/0xa4)
>      [<c06cfb34>] (dump_stack) from [<c012d76c>] (__warn+0xb8/0xd4)
>      [<c012d76c>] (__warn) from [<c012d820>] (warn_slowpath_fmt+0x98/0xbc)
>      [<c012d820>] (warn_slowpath_fmt) from [<c0a1e0c0>] (arm_lpae_do_selftests+0x4b8/0x688)
>      [<c0a1e0c0>] (arm_lpae_do_selftests) from [<c0102788>] (do_one_initcall+0x50/0x1b8)
>      [<c0102788>] (do_one_initcall) from [<c0a0148c>] (kernel_init_freeable+0x1ec/0x25c)
>      [<c0a0148c>] (kernel_init_freeable) from [<c06e6dc4>] (kernel_init+0x8/0x110)
>      [<c06e6dc4>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
>      Exception stack(0xee867fb0 to 0xee867ff8)
>      7fa0:                                     00000000 00000000 00000000 00000000
>      7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
>      7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
>      ---[ end trace 89e831c50a111e7d ]---
>      arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 32-bit
>      arm-lpae io-pgtable: data: 3 levels, 0x20 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 36
>      [warning as above]
>      arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 36-bit
>      arm-lpae io-pgtable: data: 3 levels, 0x200 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 40
>      [warning as above]
>      arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 40-bit
>      arm-lpae io-pgtable: data: 4 levels, 0x10 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 42
>      [warning as above]
>      arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 42-bit
>      arm-lpae io-pgtable: data: 4 levels, 0x40 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 44
>      [warning as above]
>      arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 44-bit
>      arm-lpae io-pgtable: data: 4 levels, 0x100 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 48
>      [warning as above]
>      arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 48-bit
>      arm-lpae io-pgtable: data: 4 levels, 0x1000 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 32
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 36
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 40
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 42
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 44
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 48
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 32
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 36
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 40
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 42
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 44
>      arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 48
>      arm-lpae io-pgtable: selftest: completed with 12 PASS 6 FAIL
> 
> Any suggestions how to fix this properly?
> 
> Thanks,
> Stephan
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
