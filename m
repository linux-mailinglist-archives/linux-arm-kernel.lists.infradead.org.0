Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5D316F637
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 04:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boiCN/CBG5ji1e4A7MhWEIWC2QNaavLtAn8y+Ifhwws=; b=fC4SU7Qt7RQsGY
	ghJ1xB0xifk8cZudwj+CFNt9rSmk5X57xtkw/5RlTTUtuUEKqe202NSiLjXVOjgD+a8P3gJci0sKu
	8Io5F7wg9nA2lhWy9p0JVrEapThuYb6gMzbOVetxQqH/SWsL/XtpwJXhB/ceBco51k2hpjNJQ/4uX
	RiJlo2xtYr4KXFVFPLnl/UYsrmkF00WgzQy8y6xpQ8yA98ZjqEg4nFCq99Qgr/7TQs1EYe4adZ/eJ
	lRafzgerrRFuYwf5QqxQn/IhrpYw7j+h1ptXpCCYEpTkCv2vzuPA10bRaTYcquLExBOpug7hF903j
	gAAn/lAy7uDgXfdRh8fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6nbP-0007NR-Cm; Wed, 26 Feb 2020 03:43:15 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6nbF-0007Ma-Bt
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 03:43:06 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id BC343562B035809ED25D;
 Wed, 26 Feb 2020 11:42:57 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 26 Feb 2020
 11:42:51 +0800
Subject: Re: [PATCH] acpi/iort: check output reference for the real used
 mapping
To: Heyi Guo <guoheyi@huawei.com>, <devel@edk2.groups.io>
References: <20200225090136.40989-1-guoheyi@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <120d5f92-eede-10bc-6d2b-b4a4ef763b24@huawei.com>
Date: Wed, 26 Feb 2020 11:42:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20200225090136.40989-1-guoheyi@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_194305_563358_B86C92A3 
X-CRM114-Status: GOOD (  17.21  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 wanghaibin.wang@huawei.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/2/25 17:01, Heyi Guo wrote:
> The function iort_node_map_id() does the sanity check against the
> first mapping in the node, but not the one which we really use.
> 
> Logically we need check the mapping we use, or check every mapping in
> the node. Choose the first fix for we are not firmware tester.
> 
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

I think we can warning on the NULL parent reference when
scanning the mappings in the node, but don't bail out for
the mappings we are not using.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
