Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621B31EA426
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 14:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDMjX+aEqtQrZpuTpWNUmzyJt04aBT6n8cC+C/P578k=; b=LwYXcWp0fUR9Xw
	t0X3X2yKejNhJ+ipuYKNa3xr1PHdTwSA2NgFQDGILbePR9DRaxrijlRUG3MUnP9tSkYnROuE1f6yd
	/otQTLGse3NNphYwthCbLGKDlKY1uFkgdVmxKj9DFzDCI/EjlOywuHjbkeLlMEh+hAcIxQPUBSKzm
	8lLInCzHSnrP3wYIajFEg3m7Qewbry53UDzF3nsJOj0Ymmi4AiJJmO5KfmXLO4ur8cC+0eBsgwpBA
	oiyeIjlBe1w3R+TzBLs1P5sPUuQgmDI4XO7kLkmrI+JvnmqYTjgvU7qowMqRZLs63vs3kyavXNB+3
	pAU4bwSSvX+y+IJpg+LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfjm2-0006U3-3H; Mon, 01 Jun 2020 12:42:38 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfjlt-0006Sc-Iz
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 12:42:32 +0000
Received: from lhreml711-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 1CCC664940B15FDD01AC;
 Mon,  1 Jun 2020 13:42:16 +0100 (IST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml711-chm.china.huawei.com (10.201.108.62) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Mon, 1 Jun 2020 13:42:15 +0100
Received: from lhreml710-chm.china.huawei.com ([169.254.81.184]) by
 lhreml710-chm.china.huawei.com ([169.254.81.184]) with mapi id
 15.01.1913.007; Mon, 1 Jun 2020 13:42:15 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>
Subject: RE: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for
 platform devices
Thread-Topic: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for
 platform devices
Thread-Index: AQHWLgezl67to0Fq/kugWrIzT8tlbajDuzCQ
Date: Mon, 1 Jun 2020 12:42:15 +0000
Message-ID: <4741b6c45d1a43b69041ecb5ce0be0d5@huawei.com>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-22-jean-philippe@linaro.org>
In-Reply-To: <20200519175502.2504091-22-jean-philippe@linaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.47.95.102]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_054229_921770_5C325BBF 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "fenghua.yu@intel.com" <fenghua.yu@intel.com>,
 "kevin.tian@intel.com" <kevin.tian@intel.com>,
 "will@kernel.org" <will@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "felix.kuehling@amd.com" <felix.kuehling@amd.com>,
 "hch@infradead.org" <hch@infradead.org>, "jgg@ziepe.ca" <jgg@ziepe.ca>,
 "zhangfei.gao@linaro.org" <zhangfei.gao@linaro.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

> -----Original Message-----
> From: iommu [mailto:iommu-bounces@lists.linux-foundation.org] On Behalf Of
> Jean-Philippe Brucker
> Sent: 19 May 2020 18:55
> To: iommu@lists.linux-foundation.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-pci@vger.kernel.org;
> linux-mm@kvack.org
> Cc: fenghua.yu@intel.com; kevin.tian@intel.com; jgg@ziepe.ca;
> catalin.marinas@arm.com; robin.murphy@arm.com; hch@infradead.org;
> zhangfei.gao@linaro.org; Jean-Philippe Brucker <jean-philippe@linaro.org>;
> felix.kuehling@amd.com; will@kernel.org; christian.koenig@amd.com
> Subject: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for platform
> devices
> 
> The SMMU provides a Stall model for handling page faults in platform
> devices. It is similar to PCI PRI, but doesn't require devices to have
> their own translation cache. Instead, faulting transactions are parked
> and the OS is given a chance to fix the page tables and retry the
> transaction.
> 
> Enable stall for devices that support it (opt-in by firmware). When an
> event corresponds to a translation error, call the IOMMU fault handler.
> If the fault is recoverable, it will call us back to terminate or
> continue the stall.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/Kconfig       |   1 +
>  include/linux/iommu.h       |   2 +
>  drivers/iommu/arm-smmu-v3.c | 284
> ++++++++++++++++++++++++++++++++++--
>  drivers/iommu/of_iommu.c    |   5 +-
>  4 files changed, 281 insertions(+), 11 deletions(-)
> 

[...]
 
> +static int arm_smmu_page_response(struct device *dev,
> +				  struct iommu_fault_event *unused,
> +				  struct iommu_page_response *resp)
> +{
> +	struct arm_smmu_cmdq_ent cmd = {0};
> +	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
> +	int sid = master->streams[0].id;
> +
> +	if (master->stall_enabled) {
> +		cmd.opcode		= CMDQ_OP_RESUME;
> +		cmd.resume.sid		= sid;
> +		cmd.resume.stag		= resp->grpid;
> +		switch (resp->code) {
> +		case IOMMU_PAGE_RESP_INVALID:
> +		case IOMMU_PAGE_RESP_FAILURE:
> +			cmd.resume.resp = CMDQ_RESUME_0_RESP_ABORT;
> +			break;
> +		case IOMMU_PAGE_RESP_SUCCESS:
> +			cmd.resume.resp = CMDQ_RESUME_0_RESP_RETRY;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +	} else {
> +		/* TODO: insert PRI response here */
> +		return -ENODEV;
> +	}
> +
> +	arm_smmu_cmdq_issue_cmd(master->smmu, &cmd);
> +	/*
> +	 * Don't send a SYNC, it doesn't do anything for RESUME or PRI_RESP.
> +	 * RESUME consumption guarantees that the stalled transaction will be
> +	 * terminated... at some point in the future. PRI_RESP is fire and
> +	 * forget.
> +	 */
> +
> +	return 0;
> +}
> +
>  /* Context descriptor manipulation functions */
>  static void arm_smmu_tlb_inv_asid(struct arm_smmu_device *smmu, u16
> asid)
>  {
> @@ -1762,8 +1846,7 @@ static int arm_smmu_write_ctx_desc(struct
> arm_smmu_domain *smmu_domain,
>  			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
>  			CTXDESC_CD_0_V;
> 
> -		/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
> -		if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
> +		if (smmu_domain->stall_enabled)
>  			val |= CTXDESC_CD_0_S;
>  	}
> 
> @@ -2171,7 +2254,7 @@ static void arm_smmu_write_strtab_ent(struct
> arm_smmu_master *master, u32 sid,
>  			 FIELD_PREP(STRTAB_STE_1_STRW, strw));
> 
>  		if (smmu->features & ARM_SMMU_FEAT_STALLS &&
> -		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
> +		    !master->stall_enabled)
>  			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
> 
>  		val |= (s1_cfg->cdcfg.cdtab_dma & STRTAB_STE_0_S1CTXPTR_MASK)
> |
> @@ -2248,7 +2331,6 @@ static int arm_smmu_init_l2_strtab(struct
> arm_smmu_device *smmu, u32 sid)
>  	return 0;
>  }
> 
> -__maybe_unused
>  static struct arm_smmu_master *
>  arm_smmu_find_master(struct arm_smmu_device *smmu, u32 sid)
>  {
> @@ -2275,23 +2357,123 @@ arm_smmu_find_master(struct
> arm_smmu_device *smmu, u32 sid)
>  }
> 
>  /* IRQ and event handlers */
> +static int arm_smmu_handle_evt(struct arm_smmu_device *smmu, u64 *evt)
> +{
> +	int ret;
> +	u32 perm = 0;
> +	struct arm_smmu_master *master;
> +	bool ssid_valid = evt[0] & EVTQ_0_SSV;
> +	u8 type = FIELD_GET(EVTQ_0_ID, evt[0]);
> +	u32 sid = FIELD_GET(EVTQ_0_SID, evt[0]);
> +	struct iommu_fault_event fault_evt = { };
> +	struct iommu_fault *flt = &fault_evt.fault;
> +
> +	/* Stage-2 is always pinned at the moment */
> +	if (evt[1] & EVTQ_1_S2)
> +		return -EFAULT;
> +
> +	master = arm_smmu_find_master(smmu, sid);
> +	if (!master)
> +		return -EINVAL;
> +
> +	if (evt[1] & EVTQ_1_READ)
> +		perm |= IOMMU_FAULT_PERM_READ;
> +	else
> +		perm |= IOMMU_FAULT_PERM_WRITE;
> +
> +	if (evt[1] & EVTQ_1_EXEC)
> +		perm |= IOMMU_FAULT_PERM_EXEC;
> +
> +	if (evt[1] & EVTQ_1_PRIV)
> +		perm |= IOMMU_FAULT_PERM_PRIV;
> +
> +	if (evt[1] & EVTQ_1_STALL) {
> +		flt->type = IOMMU_FAULT_PAGE_REQ;
> +		flt->prm = (struct iommu_fault_page_request) {
> +			.flags = IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE,
> +			.pasid = FIELD_GET(EVTQ_0_SSID, evt[0]),
> +			.grpid = FIELD_GET(EVTQ_1_STAG, evt[1]),
> +			.perm = perm,
> +			.addr = FIELD_GET(EVTQ_2_ADDR, evt[2]),
> +		};
> +

> +		if (ssid_valid)
> +			flt->prm.flags |= IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;

Do we need to set this for STALL mode only support? I had an issue with this
being set on a vSVA POC based on our D06 zip device(which is a "fake " pci dev
that supports STALL mode but no PRI). The issue is, CMDQ_OP_RESUME doesn't
have any ssid or SSV params and works on sid and stag only. Hence, it is difficult for
Qemu SMMUv3 to populate this fields while preparing a page response. I can see
that this flag is being checked in iopf_handle_single() (patch 04/24) as well. For POC,
I used a temp fix[1] to work around this. Please let me know your thoughts.

Thanks,
Shameer

1. https://github.com/hisilicon/kernel-dev/commit/99ff96146e924055f38d97a5897e4becfa378d15


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
