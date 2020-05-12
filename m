Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FC31CF2B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcXqcvAAh/DbvH6ce7vAwAq3gMUsBdRNYuPDDj3WScY=; b=FTC+H/piRVctd6
	pNvzsrMc/JeX+smQ3iktFU4rnZIQs8IlyWDk4IS1xR9sjCZ48v+T9txjmMfsdmCzR1wZ3YGcPwS5H
	UWRzAS4S8b8/mPWcVBuZ7/xoBhku9YkaiYdXFTJ7dE2yGMAlp2OKS0Ew/xNdVs5YuXFXavNZq1BN3
	iTYmNFGAdIEOkarPHff/tK+QD5ub56NasAWTaATfuuYwAA/FagSMzfYhEuuoM6TVoCIdslpS+mpp8
	vOJcaLATlKKvcqEJrQ6tfPnPbwvRAka0xR1nzZ9L4xNOrxs7zx4MyWkwkwXXewqqw1XMMwPeZCX3W
	K490NUmfE2IDuihmIXcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSL8-0002mA-Qc; Tue, 12 May 2020 10:40:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSL1-0002lU-2m
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:40:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B58071FB;
 Tue, 12 May 2020 03:40:36 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 810FA3F71E;
 Tue, 12 May 2020 03:40:35 -0700 (PDT)
Date: Tue, 12 May 2020 11:40:30 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH] ACPI/IORT: Fix PMCG node always look for a single ID
 mapping.
Message-ID: <20200512104030.GA11555@e121166-lin.cambridge.arm.com>
References: <1589228576-18053-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589228576-18053-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_034039_174347_642A3D45 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, patches@amperecomputing.com,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 01:22:56PM -0700, Tuan Phan wrote:
> PMCG node can have zero ID mapping if its overflow interrupt
> is wire based. The code to parse PMCG node can not assume it will
> have a single ID mapping.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> ---
>  drivers/acpi/arm64/iort.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index ed3d2d1..72444e1 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -441,7 +441,9 @@ static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>  
>  		return smmu->id_mapping_index;
>  	case ACPI_IORT_NODE_PMCG:
> -		return 0;
> +		if (node->mapping_count)
> +			return 0;

Check struct acpi_iort_pmcg->overflow_gsiv to be coherent with SMMUv3
code.

Lorenzo

> +		return -EINVAL;
>  	default:
>  		return -EINVAL;
>  	}
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
