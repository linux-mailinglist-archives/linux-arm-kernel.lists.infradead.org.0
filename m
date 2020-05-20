Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41AA1DBB70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvFYb724dMeMuooApTOX74Kk6FLyZ242rchAcj7wXsM=; b=W6D94fLoFa/CQ3
	Mftb/OlRFalbps4TmBVJQQ9LV9zYpc8oinbjiQXYQwpUQ2GWIJo9o1TlJZFY26s+jk4F7wvjU/M4u
	B2v0ZueaIVpjFax4Eju/O+0E64zyJKy3QnAtZmwGUywHynlq966vLC0n5Pm3v7T6vdaAqX4HqWFwV
	pEDioFvjKB+/7SKUu/MeqFLfoO50QZuaPI/7VVv1o7rgSF5q9FJuYr+RSEfLa8FwJta8DTNwf4U83
	l50k6uVSQ+uSm+gE/XQ3bW9gCYO2WUZlpXlgoQcSIWqFqf9XQruav9BTNvTprEPHgUEwYje1q8xyF
	LggfYR1AnBMWDCU+JPFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSVf-00050L-BG; Wed, 20 May 2020 17:28:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSVO-0004va-G7
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:27:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE19730E;
 Wed, 20 May 2020 10:27:44 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D77FB3F305;
 Wed, 20 May 2020 10:27:42 -0700 (PDT)
Date: Wed, 20 May 2020 18:27:36 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>, will@kernel.org
Subject: Re: [PATCH v5] ACPI/IORT: Fix PMCG node single ID mapping handling
Message-ID: <20200520172736.GA10693@e121166-lin.cambridge.arm.com>
References: <1589994787-28637-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589994787-28637-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_102746_592753_3BE7FDBF 
X-CRM114-Status: GOOD (  20.95  )
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
 linux-kernel@vger.kernel.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 10:13:07AM -0700, Tuan Phan wrote:
> An IORT PMCG node can have no ID mapping if its overflow interrupt is
> wire based therefore the code that parses the PMCG node can not assume
> the node will always have a single mapping present at index 0.
> 
> Fix iort_get_id_mapping_index() by checking for an overflow interrupt
> and mapping count.
> 
> Fixes: 24e516049360 ("ACPI/IORT: Add support for PMCG")
> 
> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Reviewed-by: Hanjun Guo <guoahanjun@huawei.com>
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> ---
> v1 -> v2:
> - Use pmcg node to detect wired base overflow interrupt.
> 
> v2 -> v3:
> - Address Hanjun and Robin's comments.
> 
> v3 -> v4:
> - Update the title and description as mentioned by Lorenzo.
> 
> v4 -> v5:
> - Remove period in the title and commit references.
> 
>  drivers/acpi/arm64/iort.c | 5 +++++

Hi Will,

is there a chance we can get this patch into v5.8 ? I understand
we are very late in the cycle but I wanted to ask (it applies cleanly
to for-next/acpi).

Thanks !
Lorenzo

>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index ed3d2d1..12bb70e 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -414,6 +414,7 @@ static struct acpi_iort_node *iort_node_get_id(struct acpi_iort_node *node,
>  static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>  {
>  	struct acpi_iort_smmu_v3 *smmu;
> +	struct acpi_iort_pmcg *pmcg;
>  
>  	switch (node->type) {
>  	case ACPI_IORT_NODE_SMMU_V3:
> @@ -441,6 +442,10 @@ static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>  
>  		return smmu->id_mapping_index;
>  	case ACPI_IORT_NODE_PMCG:
> +		pmcg = (struct acpi_iort_pmcg *)node->node_data;
> +		if (pmcg->overflow_gsiv || node->mapping_count == 0)
> +			return -EINVAL;
> +
>  		return 0;
>  	default:
>  		return -EINVAL;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
