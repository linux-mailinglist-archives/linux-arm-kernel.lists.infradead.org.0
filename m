Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D4816F9ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j5BC7KllhQGu5wt0RvM41HNhytXmstVbnQkKlGTgrT8=; b=ENoq3vxzoENUEzgG4MHSEKtGa
	rfQiu7QqGOg76h8Z9ZuYbhAYZT+clW1b1RIUICa1uF0Cl22qtPrhlIU+8PA/SpRcVc+DTtm5GsnM3
	GLeD2Zq/zNBprSSz0dNKp1DGTgwo7eQGfi/jZnqvr/4h/Dr1f2zSuReKEbzIGYbZbCNkmXFVJvc8B
	ZFL1VW7xuTVKkIlLwRtvPuNs9jofCjkSXZ+cXSfTUeNiNFVIf6OeqeX5vLnBr6f6ouM2/Qc5hOIad
	siAOX/+GKw3d4MSst7GWMNGUMpd7tZwKwT++xUhzchWt7qpPDhzzfhu097k0nzfNmDuveR5YWx5St
	DBZOscNfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6sJi-0005eR-BM; Wed, 26 Feb 2020 08:45:18 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sJT-0005Dx-0r
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:45:04 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 730B97C1AE6C45ED5204;
 Wed, 26 Feb 2020 16:44:54 +0800 (CST)
Received: from [127.0.0.1] (10.67.101.242) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Wed, 26 Feb 2020
 16:44:53 +0800
Subject: Re: [PATCH v4 23/26] iommu/arm-smmu-v3: Add stall support for
 platform devices
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 <iommu@lists.linux-foundation.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-pci@vger.kernel.org>,
 <linux-mm@kvack.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-24-jean-philippe@linaro.org>
From: Xu Zaibo <xuzaibo@huawei.com>
Message-ID: <db6fc8c2-2ff3-631f-2294-c1b49acd27aa@huawei.com>
Date: Wed, 26 Feb 2020 16:44:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200224182401.353359-24-jean-philippe@linaro.org>
X-Originating-IP: [10.67.101.242]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_004503_251145_F8D30B54 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, will@kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, catalin.marinas@arm.com,
 robh+dt@kernel.org, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 christian.koenig@amd.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On 2020/2/25 2:23, Jean-Philippe Brucker wrote:
> From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
>
> The SMMU provides a Stall model for handling page faults in platform
> devices. It is similar to PCI PRI, but doesn't require devices to have
> their own translation cache. Instead, faulting transactions are parked and
> the OS is given a chance to fix the page tables and retry the transaction.
>
> Enable stall for devices that support it (opt-in by firmware). When an
> event corresponds to a translation error, call the IOMMU fault handler. If
> the fault is recoverable, it will call us back to terminate or continue
> the stall.
>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>   drivers/iommu/arm-smmu-v3.c | 271 ++++++++++++++++++++++++++++++++++--
>   drivers/iommu/of_iommu.c    |   5 +-
>   include/linux/iommu.h       |   2 +
>   3 files changed, 269 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 6a5987cce03f..da5dda5ba26a 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -374,6 +374,13 @@
>   #define CMDQ_PRI_1_GRPID		GENMASK_ULL(8, 0)
>   #define CMDQ_PRI_1_RESP			GENMASK_ULL(13, 12)
>   
[...]
> +static int arm_smmu_page_response(struct device *dev,
> +				  struct iommu_fault_event *unused,
> +				  struct iommu_page_response *resp)
> +{
> +	struct arm_smmu_cmdq_ent cmd = {0};
> +	struct arm_smmu_master *master = dev_iommu_fwspec_get(dev)->iommu_priv;
Here can use 'dev_to_master' ?

Cheers,
Zaibo

.
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
[...]


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
