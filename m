Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD70C7DA5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lQAGtImRvB8yafKJRgP0tG9qGjYZ1xwK1JolcBhXus=; b=SuSnRPKM728Gxo
	RShZvccgk0R3vu0xGcZx8/YF3fE5jcHeEhGsGLjmKWre4CZVLrahiLKh1k+wAioS/0zaRw5HeMjLD
	Hs+joSLsTAVyuxms3OG3pqQ2VSDcsviEa/YG71zg3gKuBg6ZIuHZSDZMdYcVydZkIRUwMPnVYOyz2
	JqE4fzhQFRVv8LnMWs5N+C07svNqgsNOdeP7w5YqXz6sY6HsvXmy5WoS7QTl+hbPzVVOToWnXdcBP
	37SSxig4sXJWoHDlI/VwMmv07KqrtZJ6p5iB9zNZr7315+LWO90tUrx1xFmkPaJOnoIXCmLzeUAuO
	d2Qcj/aBScWkYtQ5rwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9KA-0002z4-9T; Thu, 01 Aug 2019 11:32:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9Jx-0002yi-5p
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:32:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2BFB206B8;
 Thu,  1 Aug 2019 11:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564659152;
 bh=NtwTTaIOP7JO5LjB4L3pgHRfVkixh6kZlu+eAYfw89I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ei8DJd7oqTvzfCAeP9APwSKyZGL2nqBlUKlScTaAIe06J1BiXaMcMPMnhVUfv5bnT
 GkwTTMYnDLmIzxtApsLGK9cv00GJCOQBNNN89ghNc1cA+ybN1RLcGVwMjtO6b2qlUn
 K+eCnLwEkn2iFvgN5+T+ROTj1sSHWQ+XTKAnoo6g=
Date: Thu, 1 Aug 2019 12:32:29 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/2] perf/smmuv3: Validate group size
Message-ID: <20190801113228.jmqghx52zsltmc2y@willie-the-truck>
References: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_043233_242839_6385DD9F 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 shameerali.kolothum.thodi@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 02:37:41PM +0100, Robin Murphy wrote:
> Ensure that a group will actually fit into the available counters.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/perf/arm_smmuv3_pmu.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index da71c741cb46..dd40df2ac895 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -323,6 +323,7 @@ static int smmu_pmu_event_init(struct perf_event *event)
>  	struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);
>  	struct device *dev = smmu_pmu->dev;
>  	struct perf_event *sibling;
> +	int group_num_events = 1;
>  	u16 event_id;
>  
>  	if (event->attr.type != event->pmu->type)
> @@ -359,6 +360,9 @@ static int smmu_pmu_event_init(struct perf_event *event)
>  			dev_dbg(dev, "Can't create mixed PMU group\n");
>  			return -EINVAL;
>  		}
> +
> +		if (++group_num_events >= smmu_pmu->num_counters)
> +			return -EINVAL;

Did you forget to update the condition when you changed your mind about the
count?

;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
