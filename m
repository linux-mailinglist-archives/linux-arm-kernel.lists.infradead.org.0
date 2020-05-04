Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50C11C3777
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJrDeRHp+4/oIw9a3NyVxV5PlE/g2rGy+3Cjtzkzp5Q=; b=ZhabRDHNBed5Ne
	YXdbgINskjlJnfxyxb2azggXPPHboNsDFIPpPCMSSKpbRNmglCczZXRPiKSUKMq9pnl0L7jBgoV5S
	UHx20Li0SNtD5KEKnsvVlpBGnswg01pf6j3TX07ry2+1mgAaUL9trbH8sm8wqUV0OdTPiF1b7acg1
	MmPOuPU/cizqTulFZkRRXSNDyUXelmXSm5Te+SXiENwev9531mgVw9Y7Tkrz3QPfSFoIly+5Qb/M3
	QrRBkyUrszczNYy/6c0orSsO0/qGXoSO65oQY7fpeGc/xhp9Kdyo7Fao0km/keOJB1HiMd5w3zjlO
	qiYesZFD4LsdxqMjPN5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYqa-0005ir-Kg; Mon, 04 May 2020 11:01:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYqM-0005e4-Lx
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:01:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 321811FB;
 Mon,  4 May 2020 04:00:58 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F17D93F71F;
 Mon,  4 May 2020 04:00:56 -0700 (PDT)
Date: Mon, 4 May 2020 12:00:46 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 2/2] ACPI/IORT: work around num_ids ambiguity
Message-ID: <20200504110037.GA26486@e121166-lin.cambridge.arm.com>
References: <20200501161014.5935-1-ardb@kernel.org>
 <20200501161014.5935-3-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501161014.5935-3-ardb@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_040102_815469_67FEE91A 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 06:10:14PM +0200, Ard Biesheuvel wrote:
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
>  drivers/acpi/arm64/iort.c | 40 +++++++++++++++++---
>  1 file changed, 34 insertions(+), 6 deletions(-)

The patch logic is sound - I still think that the resulting code can
benefit from a one-off boot time mapping data initialisation but we can
address that later as a clean-up, first thing is to remove the quirk
mechanism.

Goes without saying, this needs extensive testing on existing
platforms before sending it to stable kernels.

Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 98be18266a73..9f139a94a1d3 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -300,7 +300,7 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
>  }
>  
>  static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> -		       u32 *rid_out)
> +		       u32 *rid_out, bool check_overlap)
>  {
>  	/* Single mapping does not care for input id */
>  	if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
> @@ -316,10 +316,34 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>  	}
>  
>  	if (rid_in < map->input_base ||
> -	    (rid_in >= map->input_base + map->id_count))
> +	    (rid_in > map->input_base + map->id_count))
>  		return -ENXIO;
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
> +		if (rid_in != map->input_base)
> +			return -ENXIO;
> +	}
> +
>  	*rid_out = map->output_base + (rid_in - map->input_base);
> +
> +	/*
> +	 * Due to confusion regarding the meaning of the id_count field (which
> +	 * carries the number of IDs *minus 1*), we may have to disregard this
> +	 * match if it is at the end of the range, and overlaps with the start
> +	 * of another one.
> +	 */
> +	if (map->id_count > 0 && rid_in == map->input_base + map->id_count)
> +		return -EAGAIN;
>  	return 0;
>  }
>  
> @@ -404,7 +428,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
>  	/* Parse the ID mapping tree to find specified node type */
>  	while (node) {
>  		struct acpi_iort_id_mapping *map;
> -		int i, index;
> +		int i, index, rc = 0;
> +		u32 out_ref = 0, map_id = id;
>  
>  		if (IORT_TYPE_MASK(node->type) & type_mask) {
>  			if (id_out)
> @@ -438,15 +463,18 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
>  			if (i == index)
>  				continue;
>  
> -			if (!iort_id_map(map, node->type, id, &id))
> +			rc = iort_id_map(map, node->type, map_id, &id, out_ref);
> +			if (!rc)
>  				break;
> +			if (rc == -EAGAIN)
> +				out_ref = map->output_reference;
>  		}
>  
> -		if (i == node->mapping_count)
> +		if (i == node->mapping_count && !out_ref)
>  			goto fail_map;
>  
>  		node = ACPI_ADD_PTR(struct acpi_iort_node, iort_table,
> -				    map->output_reference);
> +				    rc ? out_ref : map->output_reference);
>  	}
>  
>  fail_map:
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
