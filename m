Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC571D7D8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5Mb5b0aPZro+EZ45w58NwhBCyNejRRkY7zqUZijzow=; b=WxBU58QgNNOlPR
	MMOumAH7Dy3cmqBmR+jx0XAqis8axMBXAUfL03Cfsy2yWYs26g1rnqm4FQCSF1YH5D1NUzFMPDQnv
	ozlg0SxB26ilt8za+9wX6gaHiIop8OexLemf1wYSXgq8b8sRO/1xLYYLSwVC2op8B/Od1nCmxeAik
	+9xHaju0yaSiUkuKTy5WtlaGsgm0sL7+VJNFYCMBOD7JiEHXUbXsg/Kr47no09CybQwgYZXL4AuRw
	kMqPf/uLrfsO+OgnYN22ObwXXotbh1gslPvOhS4lCvQt5EseEmFiipslNDsIiH5MOyWBsXqaQAzT9
	aMlEONk7jUflJlNxNzKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jai7Y-0000gi-2k; Mon, 18 May 2020 15:56:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jai7K-0000fV-TM; Mon, 18 May 2020 15:55:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6EB320758;
 Mon, 18 May 2020 15:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589817350;
 bh=Wx4p6yxTdiIO86qlqVAOoNaX5wFWEOsFALFL9E66gjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M0cQmdbRMNAUe2KziY1OqPeQmB7zmn2ZB8/2eh+Zr4B3WuvBa6Y229Uw4YBqKmA0X
 luVA4odAZlsKVS490D5ZK2vuV/Yg8d0H0Uf4P8hLtFICmyF/0IM/pwkfYTItrqriGj
 bG1dPcy2FsVxrQX7/FefGVpip9oc7iMy30JO4Iqc=
Date: Mon, 18 May 2020 16:55:45 +0100
From: Will Deacon <will@kernel.org>
To: Prabhakar Kushwaha <pkushwaha@marvell.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
Message-ID: <20200518155545.GO32394@willie-the-truck>
References: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_085551_801974_FBD82456 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: gkulkarni@marvell.com, maz@kernel.org, bhsharma@redhat.com,
 kexec@lists.infradead.org, helgaas@kernel.org, prabhakar.pkin@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> An SMMU Stream table is created by the primary kernel. This table is
> used by the SMMU to perform address translations for device-originated
> transactions. Any crash (if happened) launches the kdump kernel which
> re-creates the SMMU Stream table. New transactions will be translated
> via this new table.
> 
> There are scenarios, where devices are still having old pending
> transactions (configured in the primary kernel). These transactions
> come in-between Stream table creation and device-driver probe.
> As new stream table does not have entry for older transactions,
> it will be aborted by SMMU.
> 
> Similar observations were found with PCIe-Intel 82576 Gigabit
> Network card. It sends old Memory Read transaction in kdump kernel.
> Transactions configured for older Stream table entries, that do not
> exist any longer in the new table, will cause a PCIe Completion Abort.
> Returned PCIe completion abort further leads to AER Errors from APEI
> Generic Hardware Error Source (GHES) with completion timeout.
> A network device hang is observed even after continuous
> reset/recovery from driver, Hence device is no more usable.
> 
> So, If we are in a kdump kernel try to copy SMMU Stream table from
> primary/old kernel to preserve the mappings until the device driver
> takes over.
> 
> Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> ---
> Changes for v2: Used memremap in-place of ioremap
> 
> V2 patch has been sanity tested.

Are you sure?

> V1 patch has been tested with
> A) PCIe-Intel 82576 Gigabit Network card in following
> configurations with "no AER error". Each iteration has
> been tested on both Suse kdump rfs And default Centos distro rfs.
> 
>  1)  with 2 level stream table 
>        ----------------------------------------------------
>        SMMU               |  Normal Ping   | Flood Ping
>        -----------------------------------------------------
>        Default Operation  |  100 times     | 10 times
>        -----------------------------------------------------
>        IOMMU bypass       |  41 times      | 10 times
>        -----------------------------------------------------
> 
>  2)  with Linear stream table. 
>        -----------------------------------------------------
>        SMMU               |  Normal Ping   | Flood Ping
>        ------------------------------------------------------
>        Default Operation  |  100 times     | 10 times
>        ------------------------------------------------------
>        IOMMU bypass       |  55 times      | 10 times
>        -------------------------------------------------------
> 
> B) This patch is also tested with Micron Technology Inc 9200 PRO NVMe
> SSD card with 2 level stream table using "fio" in mixed read/write and
> only read configurations. It is tested for both Default Operation and
> IOMMU bypass mode for minimum 10 iterations across Centos kdump rfs and
> default Centos ditstro rfs.
> 
> This patch is not full proof solution. Issue can still come
> from the point device is discovered and driver probe called. 
> This patch has reduced window of scenario from "SMMU Stream table 
> creation - device-driver" to "device discovery - device-driver".
> Usually, device discovery to device-driver is very small time. So
> the probability is very low. 
> 
> Note: device-discovery will overwrite existing stream table entries 
> with both SMMU stage as by-pass.
> 
> 
>  drivers/iommu/arm-smmu-v3.c | 36 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 82508730feb7..d492d92c2dd7 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -1847,7 +1847,13 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  			break;
>  		case STRTAB_STE_0_CFG_S1_TRANS:
>  		case STRTAB_STE_0_CFG_S2_TRANS:
> -			ste_live = true;
> +			/*
> +			 * As kdump kernel copy STE table from previous
> +			 * kernel. It still may have valid stream table entries.
> +			 * Forcing entry as false to allow overwrite.
> +			 */
> +			if (!is_kdump_kernel())
> +				ste_live = true;
>  			break;
>  		case STRTAB_STE_0_CFG_ABORT:
>  			BUG_ON(!disable_bypass);
> @@ -3264,6 +3270,9 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
>  		return -ENOMEM;
>  	}
>  
> +	if (is_kdump_kernel())
> +		return 0;
> +
>  	for (i = 0; i < cfg->num_l1_ents; ++i) {
>  		arm_smmu_write_strtab_l1_desc(strtab, &cfg->l1_desc[i]);
>  		strtab += STRTAB_L1_DESC_DWORDS << 3;
> @@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
>  	return 0;
>  }
>  
> +static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
> +			       struct arm_smmu_strtab_cfg *cfg, u32 size)
> +{
> +	struct arm_smmu_strtab_cfg rdcfg;
> +
> +	rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
> +	rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
> +					      + ARM_SMMU_STRTAB_BASE_CFG);
> +
> +	rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
> +	rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
> +
> +	memcpy_fromio(cfg->strtab, rdcfg.strtab, size);
> +
> +	cfg->strtab_base_cfg = rdcfg.strtab_base_cfg;

Sorry, but this is unacceptable. These things were allocated by the DMA API
so you can't just memcpy them around and hope for the best.

Either you reinitialise the DMA masters you care about or you disable DMA. I
don't see a viable third option.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
