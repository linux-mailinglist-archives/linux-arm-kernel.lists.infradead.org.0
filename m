Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87A816C4C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2gCvgREyCBozY7BpE7MY1DMqebdzd+tnpIhP1qeQA8=; b=rBjtqwpsHie3cR
	LIktZE9kXCiePzG0cDauAFQzbu/fHFkhst9bBDygWdHnm4Efef5d++vIzeUTA5ZszGh2ebn7Qxgkb
	9nK9xexEs2hj/GIv7FW6G2wkGwUV5PO9R+Eg8ifhji3ZUSw2eynebEC60cGqkH04T/IUj/v02jPnj
	0akJj5S9fNXrYulMND9LONXNsaCOYRVxe5otos/bhu3ZJQOOhz60x9+OgX+Dtm9fhyGKtHXmJIx5a
	1qHUQFqXFzfGXboajT/mwkZo7Au2YkS5Wa0KP5k8EZrCAlfOtkvcQCpu1mQdacoORXfx60hqUD1xL
	25qioEQF5+qmgyFrF38g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6beE-0002qE-8u; Tue, 25 Feb 2020 14:57:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6be1-0002pY-3Q
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:57:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA9691FB;
 Tue, 25 Feb 2020 06:57:05 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B1233F703;
 Tue, 25 Feb 2020 06:57:04 -0800 (PST)
Date: Tue, 25 Feb 2020 14:57:02 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Heyi Guo <guoheyi@huawei.com>
Subject: Re: [PATCH] acpi/iort: check output reference for the real used
 mapping
Message-ID: <20200225145702.GB8970@e121166-lin.cambridge.arm.com>
References: <20200225090136.40989-1-guoheyi@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225090136.40989-1-guoheyi@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_065710_425723_929E053E 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devel@edk2.groups.io, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 wanghaibin.wang@huawei.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 05:01:36PM +0800, Heyi Guo wrote:
> The function iort_node_map_id() does the sanity check against the
> first mapping in the node, but not the one which we really use.
> 
> Logically we need check the mapping we use, or check every mapping in
> the node. Choose the first fix for we are not firmware tester.

Yes, I agree with you, I will think about what's best to do, can
I pick up this patch and resend it on your behalf please ?

Thanks,
Lorenzo

> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> 
> ---
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Hanjun Guo <guohanjun@huawei.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Len Brown <lenb@kernel.org>
> Cc: linux-acpi@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/acpi/arm64/iort.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index ed3d2d1a7ae9..d0fe8d673240 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -470,13 +470,6 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
>  		map = ACPI_ADD_PTR(struct acpi_iort_id_mapping, node,
>  				   node->mapping_offset);
>  
> -		/* Firmware bug! */
> -		if (!map->output_reference) {
> -			pr_err(FW_BUG "[node %p type %d] ID map has NULL parent reference\n",
> -			       node, node->type);
> -			goto fail_map;
> -		}
> -
>  		/*
>  		 * Get the special ID mapping index (if any) and skip its
>  		 * associated ID map to prevent erroneous multi-stage
> @@ -497,6 +490,13 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
>  		if (i == node->mapping_count)
>  			goto fail_map;
>  
> +		/* Firmware bug! */
> +		if (!map->output_reference) {
> +			pr_err(FW_BUG "[node %p type %d] ID map has NULL parent reference\n",
> +			       node, node->type);
> +			goto fail_map;
> +		}
> +
>  		node = ACPI_ADD_PTR(struct acpi_iort_node, iort_table,
>  				    map->output_reference);
>  	}
> -- 
> 2.19.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
