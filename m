Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072BE16442D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQPrqgUgxbPQbePItEoNGwdRj6JQjWe1UCzV4L/DrzM=; b=WMpjfUlNBQgjsR
	neR0rUdH7WSwRAFiFmCvAaYxE2TYjbwG9Qye4NhdrzjbtM8Fo+rh+uWmy5m7SKAbb/e//at1SUoTC
	21vwIX7z01UprHYOAHkq03dToXTiFE3C1yZaP/YpPFV/wByewTQ+U5u9OmRipPwd+dwe5yQIBESic
	WYhcH6S2s+Fys6G/3Dxu5nzHZ4tHEkJHiZxws9z8gFO802Jo/Yv5Qrcui5wadrp5KjxSgG/gHgrzc
	0s3cnCYzwlCnfwszcWktgwMcG32oHFcRGc8q0CDQeo4rQurj/0JuL3yqoNx/GezILtwCSA8boSVN2
	/QGOHjqF3mpvo/iPCpQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ORx-0002Gv-HH; Wed, 19 Feb 2020 12:27:33 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ORk-0002GR-Uu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1582115239;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Kol9alQE2fexr84Vk2G3U8D7xmADEfgWOaQY2AkKXbY=;
 b=Crh/DGvGE3QKUkZ1sF6+hYJFekP/CjvsQg2DGSDCXqEUsueIx80hqViQ876iTVY0lr
 gN6Fr5soO0rjR7EI31BlhxSusGHIWnFiHM8LAyZu2ed2nQcbsm4L3BS2oy8LZGQAaqQ7
 MQUDYUDzwUgMQlqi/QLEzmjfN1DtKoBOkPrzkezUArreHDYtlh1DqaGsJlMLcTx6VN+R
 osoAMocnfwzWBsK61UDhR6wi4nR14JgT93i1Bnr0yidu0D1dhm6WWOmVY8ZtUBdAqHMv
 6zYsm7/VLxmzl9EfEcLevWXnKE932043lNGZ19aTb4302YU6FDFzmI5SBoRE74MJVpKi
 zdKg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJAQeMuXURD"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 46.1.12 AUTH)
 with ESMTPSA id a01fe9w1JCRHpgR
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 19 Feb 2020 13:27:17 +0100 (CET)
Date: Wed, 19 Feb 2020 13:27:11 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 8/8] iommu/io-pgtable-arm: Prepare for TTBR1 usage
Message-ID: <20200219122711.GA176090@gerhold.net>
References: <20200110152852.24259-1-will@kernel.org>
 <20200110152852.24259-9-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110152852.24259-9-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_042721_744637_9E863DF2 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Hi Robin,

On Fri, Jan 10, 2020 at 03:28:52PM +0000, Will Deacon wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> Now that we can correctly extract top-level indices without relying on
> the remaining upper bits being zero, the only remaining impediments to
> using a given table for TTBR1 are the address validation on map/unmap
> and the awkward TCR translation granule format. Add a quirk so that we
> can do the right thing at those points.
> 
> Tested-by: Jordan Crouse <jcrouse@codeaurora.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  drivers/iommu/io-pgtable-arm.c | 25 +++++++++++++++++++------
>  include/linux/io-pgtable.h     |  4 ++++
>  2 files changed, 23 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 846963c87e0f..5e966ef0bacf 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -104,6 +104,10 @@
>  #define ARM_LPAE_TCR_TG0_64K		1
>  #define ARM_LPAE_TCR_TG0_16K		2
>  
> +#define ARM_LPAE_TCR_TG1_16K		1
> +#define ARM_LPAE_TCR_TG1_4K		2
> +#define ARM_LPAE_TCR_TG1_64K		3
> +
>  #define ARM_LPAE_TCR_SH_NS		0
>  #define ARM_LPAE_TCR_SH_OS		2
>  #define ARM_LPAE_TCR_SH_IS		3
> @@ -463,6 +467,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	arm_lpae_iopte *ptep = data->pgd;
>  	int ret, lvl = data->start_level;
>  	arm_lpae_iopte prot;
> +	long iaext = (long)iova >> cfg->ias;
>  
>  	/* If no access, then nothing to do */
>  	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
> @@ -471,7 +476,9 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>  		return -EINVAL;
>  
> -	if (WARN_ON(iova >> data->iop.cfg.ias || paddr >> data->iop.cfg.oas))
> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
> +		iaext = ~iaext;
> +	if (WARN_ON(iaext || paddr >> cfg->oas))
>  		return -ERANGE;
>  
>  	prot = arm_lpae_prot_to_pte(data, iommu_prot);
> @@ -637,11 +644,14 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>  	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>  	struct io_pgtable_cfg *cfg = &data->iop.cfg;
>  	arm_lpae_iopte *ptep = data->pgd;
> +	long iaext = (long)iova >> cfg->ias;
>  
>  	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>  		return 0;
>  
> -	if (WARN_ON(iova >> data->iop.cfg.ias))
> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
> +		iaext = ~iaext;
> +	if (WARN_ON(iaext))
>  		return 0;
>  
>  	return __arm_lpae_unmap(data, gather, iova, size, data->start_level, ptep);

This part of the patch seems to break io-pgtable-arm.c on ARM32 to some
extent. I have a device using qcom_iommu that could normally run ARM64,
but I'm unable to because of outdated (signed) firmware. :(
So it's running a lot of code that would normally run only on ARM64.

It used to work quite well but now qcom-venus fails to probe on:
    if (WARN_ON(iaext || paddr >> cfg->oas))
(I added some debug prints for clarity.)

    qcom-venus 1d00000.video-codec: Adding to iommu group 0
    arm-lpae io-pgtable: quirks: 0x0
    arm-lpae io-pgtable: arm_lpae_map: iova: 0xdd800000, paddr: 0xebe3f000, iaext: 0xffffffff, paddr >> oas: 0x0
    ------------[ cut here ]------------
    WARNING: CPU: 0 PID: 954 at drivers/iommu/io-pgtable-arm.c:487 arm_lpae_map+0xe4/0x510
    Hardware name: Generic DT based system
    ...
    [<c04bafb0>] (arm_lpae_map) from [<c04bcd6c>] (qcom_iommu_map+0x50/0x78)
    [<c04bcd6c>] (qcom_iommu_map) from [<c04b7290>] (__iommu_map+0xe8/0x1cc)
    [<c04b7290>] (__iommu_map) from [<c04b7bbc>] (__iommu_map_sg+0xa8/0x118)
    [<c04b7bbc>] (__iommu_map_sg) from [<c04b7c64>] (iommu_map_sg_atomic+0x18/0x20)
    [<c04b7c64>] (iommu_map_sg_atomic) from [<c04b94f8>] (iommu_dma_alloc+0x4dc/0x5a0)
    [<c04b94f8>] (iommu_dma_alloc) from [<c0196a50>] (dma_alloc_attrs+0x104/0x114)
    [<c0196a50>] (dma_alloc_attrs) from [<bf302c60>] (venus_hfi_create+0xa4/0x260 [venus_core])
    [<bf302c60>] (venus_hfi_create [venus_core]) from [<bf2fe6cc>] (venus_probe+0x1e4/0x328 [venus_core])
    [<bf2fe6cc>] (venus_probe [venus_core]) from [<c04c8eb4>] (platform_drv_probe+0x48/0x98)
    ...
    Exception stack(0xc2587fa8 to 0xc2587ff0)
    7fa0:                   b6f3dc70 b5051010 b5051010 0017388c b6e645b0 b6e645b0
    7fc0: b6f3dc70 b5051010 00020000 00000080 b6e30790 be84ea54 0046ac91 00000000
    7fe0: b6e75f1c be84e940 b6e5fb51 b6eec8a4
    ---[ end trace 2a0ed284f6d82f16 ]---
    qcom-venus: probe of 1d00000.video-codec failed with error -12

Note that iaext = 0xffffffff != 0.
It seems to be some int/long size problem that only happens with larger
iova addresses on 32-bit systems.

Without the (long) cast for iova everything is working correctly again:

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 983b08477e64..f7ecc763c706 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -468,7 +468,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
 	arm_lpae_iopte *ptep = data->pgd;
 	int ret, lvl = data->start_level;
 	arm_lpae_iopte prot;
-	long iaext = (long)iova >> cfg->ias;
+	long iaext = iova >> cfg->ias;
 
 	/* If no access, then nothing to do */
 	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
@@ -645,7 +645,7 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
 	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 	struct io_pgtable_cfg *cfg = &data->iop.cfg;
 	arm_lpae_iopte *ptep = data->pgd;
-	long iaext = (long)iova >> cfg->ias;
+	long iaext = iova >> cfg->ias;
 
 	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
 		return 0;

But I'm not sure if this is really the correct "fix"...

This problem can be also easily reproduced by enabling
IOMMU_IO_PGTABLE_LPAE_SELFTEST on ARM32.
(Shouldn't there be some system that runs these automatically? ;))

Without this patch all of them are passing:

    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 32
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 36
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 40
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 42
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 44
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 48
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 32
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 36
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 40
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 42
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 44
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 48
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 32
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 36
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 40
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 42
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 44
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 48
    arm-lpae io-pgtable: selftest: completed with 18 PASS 0 FAIL

But with this patch 6 of them are failing (with a similar warning as
I posted above):

    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 32
    ------------[ cut here ]------------
    WARNING: CPU: 3 PID: 1 at drivers/iommu/io-pgtable-arm.c:482 arm_lpae_map+0xa4/0x4e4
    Hardware name: Generic DT based system
    [<c01104ac>] (unwind_backtrace) from [<c010c0b4>] (show_stack+0x10/0x14)
    [<c010c0b4>] (show_stack) from [<c06cfb34>] (dump_stack+0x90/0xa4)
    [<c06cfb34>] (dump_stack) from [<c012d76c>] (__warn+0xb8/0xd4)
    [<c012d76c>] (__warn) from [<c012d7ec>] (warn_slowpath_fmt+0x64/0xbc)
    [<c012d7ec>] (warn_slowpath_fmt) from [<c04baf70>] (arm_lpae_map+0xa4/0x4e4)
    [<c04baf70>] (arm_lpae_map) from [<c0a1de3c>] (arm_lpae_do_selftests+0x234/0x688)
    [<c0a1de3c>] (arm_lpae_do_selftests) from [<c0102788>] (do_one_initcall+0x50/0x1b8)
    [<c0102788>] (do_one_initcall) from [<c0a0148c>] (kernel_init_freeable+0x1ec/0x25c)
    [<c0a0148c>] (kernel_init_freeable) from [<c06e6dc4>] (kernel_init+0x8/0x110)
    [<c06e6dc4>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
    Exception stack(0xee867fb0 to 0xee867ff8)
    7fa0:                                     00000000 00000000 00000000 00000000
    7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
    ---[ end trace 89e831c50a111e7c ]---
    ------------[ cut here ]------------
    WARNING: CPU: 3 PID: 1 at drivers/iommu/io-pgtable-arm.c:1182 arm_lpae_do_selftests+0x4b8/0x688
    selftest: test failed for fmt idx 0
    Hardware name: Generic DT based system
    [<c01104ac>] (unwind_backtrace) from [<c010c0b4>] (show_stack+0x10/0x14)
    [<c010c0b4>] (show_stack) from [<c06cfb34>] (dump_stack+0x90/0xa4)
    [<c06cfb34>] (dump_stack) from [<c012d76c>] (__warn+0xb8/0xd4)
    [<c012d76c>] (__warn) from [<c012d820>] (warn_slowpath_fmt+0x98/0xbc)
    [<c012d820>] (warn_slowpath_fmt) from [<c0a1e0c0>] (arm_lpae_do_selftests+0x4b8/0x688)
    [<c0a1e0c0>] (arm_lpae_do_selftests) from [<c0102788>] (do_one_initcall+0x50/0x1b8)
    [<c0102788>] (do_one_initcall) from [<c0a0148c>] (kernel_init_freeable+0x1ec/0x25c)
    [<c0a0148c>] (kernel_init_freeable) from [<c06e6dc4>] (kernel_init+0x8/0x110)
    [<c06e6dc4>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
    Exception stack(0xee867fb0 to 0xee867ff8)
    7fa0:                                     00000000 00000000 00000000 00000000
    7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
    ---[ end trace 89e831c50a111e7d ]---
    arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 32-bit
    arm-lpae io-pgtable: data: 3 levels, 0x20 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 36
    [warning as above]
    arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 36-bit
    arm-lpae io-pgtable: data: 3 levels, 0x200 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 40
    [warning as above]
    arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 40-bit
    arm-lpae io-pgtable: data: 4 levels, 0x10 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 42
    [warning as above]
    arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 42-bit
    arm-lpae io-pgtable: data: 4 levels, 0x40 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 44
    [warning as above]
    arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 44-bit
    arm-lpae io-pgtable: data: 4 levels, 0x100 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x40201000, IAS 48
    [warning as above]
    arm-lpae io-pgtable: cfg: pgsize_bitmap 0x40201000, ias 48-bit
    arm-lpae io-pgtable: data: 4 levels, 0x1000 pgd_size, 12 pg_shift, 9 bits_per_level, pgd @ (ptrval)
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 32
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 36
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 40
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 42
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 44
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x02004000, IAS 48
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 32
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 36
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 40
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 42
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 44
    arm-lpae io-pgtable: selftest: pgsize_bitmap 0x20010000, IAS 48
    arm-lpae io-pgtable: selftest: completed with 12 PASS 6 FAIL

Any suggestions how to fix this properly?

Thanks,
Stephan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
