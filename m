Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE681D2B70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 11:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pG6nAV1nuUvj9bVreIxVIvRS/KRMHUn6+4+A8chlY0=; b=QosuARF77m5J4u
	w/jtCfTdAzUcF6tVwWASa5KpYPUDLBtqiYgx94zefo7XAwy2F7qQMHOh8XruKpR08LpQyM4/kcP94
	qAgA+p3YCV32i/+WEopL8XbDGe1yb+1CJa5yVsamFoYjZGAF+QYZAb6icMmm+Wjr7vRq/zRqwBZDW
	6OXp2BxuvWvRh3pIJb+1AdxHLuHG2rj+VeLXWHQAOYWbhGb2dnVJDFAmVj/fqxpoIQINqabqibXki
	hxX4K3rkprhrWCO80BNHGE5xIHWTF+KrHT5e5a7UpC2tUB40OiZyaHxNsgElnbQ1gPpemktK6RKZQ
	gJHjYk+djrLvUIxTRAxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZABn-0006fG-2V; Thu, 14 May 2020 09:30:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZABd-0006dG-CZ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 09:29:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F26531B;
 Thu, 14 May 2020 02:29:52 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D47A93F71E;
 Thu, 14 May 2020 02:29:50 -0700 (PDT)
Date: Thu, 14 May 2020 10:29:44 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH v3] ACPI/IORT: Fix PMCG node always look for a single ID
 mapping.
Message-ID: <20200514092944.GA18032@e121166-lin.cambridge.arm.com>
References: <1589415122-5899-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589415122-5899-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_022953_466889_27DA4EC1 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: Robin Murphy <robin.murphy@arm.com>, Neil Leeder <nleeder@codeaurora.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please update the subject:

Subject: "ACPI/IORT: Fix PMCG node single ID mapping handling"

On Wed, May 13, 2020 at 05:12:02PM -0700, Tuan Phan wrote:
> PMCG node can have zero ID mapping if its overflow interrupt
> is wire based. The code to parse PMCG node can not assume it will
> have a single ID mapping.

"An IORT PMCG node can have no ID mapping if its overflow interrupt is
wire based therefore the code that parses the PMCG node can not assume
the node will always have a single mapping present at index 0.

Fix iort_get_id_mapping_index() by checking for an overflow interrupt
and mapping count."

> Fixes: 24e516049360 ("ACPI/IORT: Add support for PMCG")
> Reviewed-by: Hanjun Guo <guoahanjun@huawei.com>
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> ---
> v1 -> v2:
> - Use pmcg node to detect wired base overflow interrupt.
> 
> v2 -> v3:
> - Address Hanjun and Robin's comments.
> 
>  drivers/acpi/arm64/iort.c | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

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
