Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119A11C31D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 06:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s2caqNG3j0AQpu5cfGwV8Bjszxc++M7TgfQ+Ffcf8ro=; b=JjdRkkHm0eS/7ZZXRieLxYxJB
	czESco7hKoZNuRKGMN+ov8LCMf6O/IAZvogwmw0rWYww2dxR6nPBl9Hfla6TcquPQi8UfysjMxfGP
	X3eo3KVkfAQEflXT0LGtQH2VwvYn2e2W6WMiKnaRD/LGzSFPgJXvL7/gvzj4VUouVg1S0ltrcGqFO
	caSEVRSpaN5Yfkf07m4cVr//sAGea47u8zkq4bTTC1z04XB3ttvjdMezD6MDzh+3uvN+lH95O7pcC
	l1SlnTzx10j+Yb/yFa4Sr0J9A3tdzSJJWQj0LdHaeO33QuPUIggDSRb3SFsBlCi3UphznIoUGjw9J
	K2VNBftEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVSmR-0000rf-8F; Mon, 04 May 2020 04:32:35 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVSmL-0000qF-Si
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 04:32:31 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5A058784538CDCB1D6BB;
 Mon,  4 May 2020 12:32:17 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Mon, 4 May 2020
 12:32:09 +0800
Subject: Re: [PATCH v2 2/2] ACPI/IORT: work around num_ids ambiguity
To: Ard Biesheuvel <ardb@kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20200501161014.5935-1-ardb@kernel.org>
 <20200501161014.5935-3-ardb@kernel.org>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <bbd56b89-643a-2f86-79af-f65ef46822ef@huawei.com>
Date: Mon, 4 May 2020 12:32:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200501161014.5935-3-ardb@kernel.org>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_213230_088489_E83EC317 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Robin Murphy <robin.murphy@arm.com>, Linuxarm <linuxarm@huawei.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>, Will
 Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/2 0:10, Ard Biesheuvel wrote:
> The ID mapping table structure of the IORT table describes the size of
> a range using a num_ids field carrying the number of IDs in the region
> minus one. This has been misinterpreted in the past in the parsing code,
> and firmware is known to have shipped where this results in an ambiguity,
> where regions that should be adjacent have an overlap of one value.
> 
> So let's work around this by detecting this case specifically: when
> resolving an ID translation, allow one that matches right at the end of
> a multi-ID region to be superseded by a subsequent one.
> 
> To prevent potential regressions on broken firmware that happened to
> work before, only take the subsequent match into account if it occurs
> at the start of a mapping region.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>   drivers/acpi/arm64/iort.c | 40 +++++++++++++++++---
>   1 file changed, 34 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 98be18266a73..9f139a94a1d3 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -300,7 +300,7 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
>   }
>   
>   static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> -		       u32 *rid_out)
> +		       u32 *rid_out, bool check_overlap)
>   {
>   	/* Single mapping does not care for input id */
>   	if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
> @@ -316,10 +316,34 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>   	}
>   
>   	if (rid_in < map->input_base ||
> -	    (rid_in >= map->input_base + map->id_count))
> +	    (rid_in > map->input_base + map->id_count))
>   		return -ENXIO;
>   
> +	if (check_overlap) {
> +		/*
> +		 * We already found a mapping for this input ID at the end of
> +		 * another region. If it coincides with the start of this
> +		 * region, we assume the prior match was due to the off-by-1
> +		 * issue mentioned below, and allow it to be superseded.
> +		 * Otherwise, things are *really* broken, and we just disregard
> +		 * duplicate matches entirely to retain compatibility.
> +		 */
> +		pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
> +		       map, rid_in);

As we already applied a workaround here, can we add "applying
workaround" in the error message? This will make the customers
less uneasy to see such message in the boot log. Once the product
was deliveried to customers, it's not that easy to update all the
firmwares entirely.

I'm out of reach for D05/D06 hardware as it's holidays in China,
please allow me to test this patch set in Wednesday this week.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
