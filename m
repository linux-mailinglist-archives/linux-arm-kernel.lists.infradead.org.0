Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC81DFB5E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/KVnqwdW1eCXQMTXwW+AkcXGOLSWfPy2HvaaiMTLAlA=; b=ExoZ44avtgOPk7t40ZEllprZO
	G8rga+OA2UTj/DfJDiAE6sIh/8k083WyIlIiPMbiWUh6ROnxZPx8xzvIPCsKW8YSLjmDckwINfDqQ
	6ad9mDeLkxeSk9wZ3xj/5WXXLi4vfOO8gCY/nfF/wOpolJf+dD7oErtQOIveQM1fT913g6EuToOs+
	Bw140SE76AXjbhkDoUv+YQcDCXrjSZYyzm1Edi2oJN199tbX5aoTBfuejW3zMPo1m1R0dt5qdR+RK
	TW0x5p8yahPYd+xCEECgfNTEZgUqtB4xOYF+6HEi3aD+NAw9ySTvscnd5OYRJnJMsCFsh0J7oAyIi
	IsXy7JXLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUw5c-0004y1-SJ; Wed, 13 Nov 2019 17:05:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUw5U-0004pd-N3
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:05:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4333C30E;
 Wed, 13 Nov 2019 09:05:46 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 353E13F534;
 Wed, 13 Nov 2019 09:05:45 -0800 (PST)
Subject: Re: [PATCH] iommu/arm-smmu-v3: Populate VMID field for
 CMDQ_OP_TLBI_NH_VA
To: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>, will@kernel.org
References: <20191113161138.22336-1-shameerali.kolothum.thodi@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e91b2c6e-ab0a-5908-bcd3-e62c5b7b536a@arm.com>
Date: Wed, 13 Nov 2019 17:05:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113161138.22336-1-shameerali.kolothum.thodi@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_090548_799151_FB9D2BE6 
X-CRM114-Status: GOOD (  15.02  )
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
Cc: joro@8bytes.org, linuxarm@huawei.com, xuwei5@hisilicon.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 4:11 pm, Shameer Kolothum wrote:
> CMDQ_OP_TLBI_NH_VA requires VMID and this was missing since
> commit 1c27df1c0a82 ("iommu/arm-smmu: Use correct address mask
> for CMD_TLBI_S2_IPA"). Add it back.

Whoops indeed... although we do currently issue S1 invalidations with 
the VMID hardcoded to 0, so nothing's actually broken as things stand.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Fixes: 1c27df1c0a82 ("iommu/arm-smmu: Use correct address mask for CMD_TLBI_S2_IPA")
> Signed-off-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> ---
> This came to light while verifying the "SMMUv3 Nested Stage Setup"
> series by Eric. Please find the discusiion here,
> https://lore.kernel.org/patchwork/cover/1099617/
> ---
>   drivers/iommu/arm-smmu-v3.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 8da93e730d6f..9b5274346df0 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -856,6 +856,7 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
>   		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
>   		break;
>   	case CMDQ_OP_TLBI_NH_VA:
> +		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
>   		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
>   		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
>   		cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_VA_MASK;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
