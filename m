Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00A234DF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTP9MGmiT4IURsZqwW6WBZTur5c1h/fhQiSiIp0jU1I=; b=K8CHHvNumgnLiW
	QOrboOTAkPq6pKH645N39AuS92WQCVx/a02jd9aJiw1M/3U7grVCOY2yueNb9bpb9MKBf/JQ3M7S9
	cj26SZKpP7I8TuF+WLRu55+arwWGaO2tq3hC3BDxYyntFztW7yG9Ofy861uwg30eMYSgOX09Iug6Q
	s5LR44I6JDS25iIUeg+yipLoK2dRozsspYHs4nbeiRSICz/8XNBQuYMLN5hW9GW9PN0sLyvtIMI+x
	pLJ1fpprjsk5lt/1MLl6LpG3pes5M9b2+A85y2xD2AJaFqQMi401feWlEZrVBiShT8y2iUc3B6oJJ
	ioycNBRs0wocICoTwt5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCbE-00012v-Lc; Tue, 04 Jun 2019 16:47:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCb5-0000q1-Ux
 for linux-arm-kernel@bombadil.infradead.org; Tue, 04 Jun 2019 16:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rlldz+L4DSGAGwyFBCca76UxT7hl6blZ1Oap3fqgSGQ=; b=HpYGx+GL+/bLgB4wx3MjfyWxpS
 JIOGpDtV4Eil7rvRxhUFN4KPmFAX+Eg+VJlpW6zyRmYfjaUEv5M1YpFQ4IgNlXvHpfG9pwuXeYW3E
 Uu92Nq1kQ+4hstPlqqrclyx/fIQj7et+4dfmuRUvZYNcoRH/D0xKC6FKzcnwbDJbn+sMwfrsDd2gU
 Xd7pTkOAqVe1/ozhiP1SfudI0ZxhqFaeSOspjuhzIlLgY3fAFdDTjgRiyahjRptlEY0B2LETUuDHV
 v5zAMDSO2YHQfl+yM+ZPLPjLDashWO8wM1xDzVu8UlEXjp60efjV5k3QeBrrdbxeSSQfy4dbFcdfl
 l5R3S9dQ==;
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCM0-0004hK-0S
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:32:06 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf69cf10000>; Tue, 04 Jun 2019 09:31:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 04 Jun 2019 09:31:58 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 04 Jun 2019 09:31:58 -0700
Received: from [10.26.11.65] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Jun
 2019 16:31:56 +0000
Subject: Re: [PATCH v2 3/3] soc/tegra: pmc: Add comments clarifying wake events
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190604155135.25390-1-thierry.reding@gmail.com>
 <20190604155135.25390-3-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <dc233c45-ca13-7a75-02a7-ebdd41a730a5@nvidia.com>
Date: Tue, 4 Jun 2019 17:31:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604155135.25390-3-thierry.reding@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559665905; bh=Rlldz+L4DSGAGwyFBCca76UxT7hl6blZ1Oap3fqgSGQ=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=TqnHNeIdjhRMM+zpvBnhfSg6NkTxpP4fz1aJdVNPT4FEXy6PXSrbaQi3NBgDGy2gG
 pa+/n9w3mmil3RC5HsqZhpXMP70lu/d7kVBTFnt7nKGMzKQqg7gkCoGhUJbkeJCtGy
 0Ui7t+gYexND7CNHCxP9YjiEoQgHTOBXvqc2tnDuwsAglh+TSV6DjyjtLimynFq11u
 XFo/ce/DgUM6XVODecjwEd83YXj/xICJ4/z/cX5cnJn28uajBdoIqoTi/AMKy/CWch
 R4yzjOlWKfrVQsHc05P4R6z4/vVPdgeNRg66oaqivwn2nIYX+2ARPeyOlBs3QyJYwI
 Y2weqTXRmLz4w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_173204_411235_30A25A51 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bitan Biswas <bbiswas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 04/06/2019 16:51, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add some comments to clarify the purpose of the wake event support
> implemented in the PMC driver.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/soc/tegra/pmc.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 6e66b5e293be..af8f63a844cd 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -241,6 +241,11 @@ struct tegra_pmc_soc {
>  	const char * const *reset_levels;
>  	unsigned int num_reset_levels;
>  
> +	/*
> +	 * These describe events that can wake the system from sleep (i.e.
> +	 * LP0 or SC7). Wakeup from other sleep states (such as LP1 or LP2)
> +	 * are dealt with in the LIC.
> +	 */
>  	const struct tegra_wake_event *wake_events;
>  	unsigned int num_wake_events;
>  };
> @@ -1906,6 +1911,11 @@ static int tegra_pmc_irq_alloc(struct irq_domain *domain, unsigned int virq,
>  		}
>  	}
>  
> +	/*
> +	 * For interrupts that don't have associated wake events, assign a
> +	 * dummy hardware IRQ number. This is used in the ->irq_set_type()
> +	 * and ->irq_set_wake() callbacks to return early for these IRQs.
> +	 */
>  	if (i == soc->num_wake_events)
>  		err = irq_domain_set_hwirq_and_chip(domain, virq, ULONG_MAX,
>  						    &pmc->irq, pmc);
> @@ -1924,6 +1934,7 @@ static int tegra_pmc_irq_set_wake(struct irq_data *data, unsigned int on)
>  	unsigned int offset, bit;
>  	u32 value;
>  
> +	/* nothing to do if there's no associated wake event */
>  	if (WARN_ON(data->hwirq == ULONG_MAX))
>  		return 0;
>  
> @@ -1954,6 +1965,7 @@ static int tegra_pmc_irq_set_type(struct irq_data *data, unsigned int type)
>  	struct tegra_pmc *pmc = irq_data_get_irq_chip_data(data);
>  	u32 value;
>  
> +	/* nothing to do if there's no associated wake event */
>  	if (data->hwirq == ULONG_MAX)
>  		return 0;
>  

For the series ...

Reviewed-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon


-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
