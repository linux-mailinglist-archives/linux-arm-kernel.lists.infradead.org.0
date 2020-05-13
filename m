Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD381D0551
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 05:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w/GSX7cCKdcmg5FbrvxZG9hwfqxasCyVijOVeAL5WeE=; b=BNOXfEcfvl8BzPxplRm3yPLY7
	sU5hDLEL2vac9aAYen+OizpIAHlQAu9NCTBBC9vh2C5FpYJSFHfjhALk28ZksQq7r2Q4VUCjL5K5P
	gYljUVlUyumwMJXcxNbSw/etctgwNKZV3qFeRf1jDtMYQmnVL8bwGx3b71RTdIxCQtlD3YwgpD344
	7bLotxUTSIs2NdLbvV/UgtvgCmhw63AxzSeIutTrIk2qQykS5qxHUTNgcSJ9xzti+vlZOSHKlVUxO
	eHKkQz/nADgTzdy0BBe0clvmLGNGu3eK8MpYznGzZZrDVksPMWj3tuKb1+AM7w0wwStzlvJYMUXw5
	4Arfn91fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYhtD-0000pk-CD; Wed, 13 May 2020 03:16:59 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYht4-0000ot-0E
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 03:16:51 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2437A48CDD2EC4FFADEA;
 Wed, 13 May 2020 11:16:36 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Wed, 13 May 2020
 11:16:34 +0800
Subject: Re: [PATCH v2] ACPI/IORT: Fix PMCG node always look for a single ID
 mapping.
To: Tuan Phan <tuanphan@os.amperecomputing.com>
References: <1589327760-5464-1-git-send-email-tuanphan@os.amperecomputing.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <6f9996d3-18f1-0432-0e59-adc2cf086c9c@huawei.com>
Date: Wed, 13 May 2020 11:16:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1589327760-5464-1-git-send-email-tuanphan@os.amperecomputing.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_201650_214465_D86BD156 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/13 7:56, Tuan Phan wrote:
> PMCG node can have zero ID mapping if its overflow interrupt
> is wire based. The code to parse PMCG node can not assume it will
> have a single ID mapping.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>

It's better to add

Fixes: 24e516049360 ("ACPI/IORT: Add support for PMCG")

> ---
> Changes in v2:
> - Used pmcg node to detect wired base overflow interrupt.
>   
>   drivers/acpi/arm64/iort.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index ed3d2d1..11a4e8e 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -414,6 +414,7 @@ static struct acpi_iort_node *iort_node_get_id(struct acpi_iort_node *node,
>   static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>   {
>   	struct acpi_iort_smmu_v3 *smmu;
> +	struct acpi_iort_pmcg *pmcg;
>   
>   	switch (node->type) {
>   	case ACPI_IORT_NODE_SMMU_V3:
> @@ -441,6 +442,10 @@ static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>   
>   		return smmu->id_mapping_index;
>   	case ACPI_IORT_NODE_PMCG:
> +		pmcg = (struct acpi_iort_pmcg *)node->node_data;
> +		if (pmcg->overflow_gsiv)
> +			return -EINVAL;
> +
>   		return 0;
>   	default:
>   		return -EINVAL;

With my comments addressed,

Reviewed-by: Hanjun Guo <guoahanjun@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
