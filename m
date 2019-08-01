Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4253A7D9B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmd0lfqp1jQQOPgQA5+ZJwSEMPC8pcwws8+swDO8Gos=; b=PnwDsfFRS346RE
	N9wMhIXAzZq0BRiI9JzPsnSJDeN2XRb3BQk7R1HB7lc+OtvbiRnT2jlMkpQCqCk+kGnFecRaqfQAh
	o+N9/eY6R+A0eYTuUerIOlu0QZ3ffXvsn8JszKe+E1InO2orLVWpNWm72/qb5j0Mum2QKR0ZBfEql
	XDTi/X5g0ALrUUwqVYJp1XrKZGyVmWqR3JbFIOu2ThxTIcbAHY2LWqtNixINWsyphCpsDYEyAzIhZ
	NFhra3DJZbN7Zxc/jH4zkDTP1nJBU8fhV2UpGt5T6HoYhOYYd72eZPinYa3ZIYl/PqJShV3sCF++i
	rUt2zBhF7LO5eHy4xknQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht8l0-000581-R3; Thu, 01 Aug 2019 10:56:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht8kn-00057b-0o
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:56:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A3C5206A2;
 Thu,  1 Aug 2019 10:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564656972;
 bh=hEWPoHC2u0L2OQ602Rt9JYecpNq6rT2D5lRNOV6EJFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k8ZHUmgL4RiR72aF/r/NfwdIub0yuNpmyfxvq9K80F9dNakP0v9ogn65gm9p3ANyQ
 hDGJYgTMuUsN0TKgklbv6+YKOtzNnhLaOZnAA34X4ELIs50q2iRgf/nQPS2sqmvVED
 YUaQeD9fIk98KQ2f1nHgh8l9yom3INB26JLKiK/U=
Date: Thu, 1 Aug 2019 11:56:08 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] perf/smmuv3: Validate groups for global filtering
Message-ID: <20190801105607.aizjw4l7rvi7vnpw@willie-the-truck>
References: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
 <1921604dc4cd820363ccf728ade6508e0987e082.1564580090.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1921604dc4cd820363ccf728ade6508e0987e082.1564580090.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_035613_089207_A7A11B9A 
X-CRM114-Status: GOOD (  17.43  )
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

On Wed, Jul 31, 2019 at 02:37:42PM +0100, Robin Murphy wrote:
> With global filtering, it becomes possible for users to construct
> self-contradictory groups with conflicting filters. Make sure we
> cover that when initially validating events.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/perf/arm_smmuv3_pmu.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index dd40df2ac895..e1e41d2fea94 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -324,6 +324,8 @@ static int smmu_pmu_event_init(struct perf_event *event)
>  	struct device *dev = smmu_pmu->dev;
>  	struct perf_event *sibling;
>  	int group_num_events = 1;
> +	bool has_filter;
> +	u32 filter_span, filter_sid;
>  	u16 event_id;
>  
>  	if (event->attr.type != event->pmu->type)
> @@ -354,6 +356,10 @@ static int smmu_pmu_event_init(struct perf_event *event)
>  		return -EINVAL;
>  	}
>  
> +	has_filter = get_filter_enable(event);
> +	filter_span = get_filter_span(event);
> +	filter_sid = get_filter_stream_id(event);
> +
>  	for_each_sibling_event(sibling, event->group_leader) {
>  		if (sibling->pmu != event->pmu &&
>  		    !is_software_event(sibling)) {
> @@ -363,6 +369,16 @@ static int smmu_pmu_event_init(struct perf_event *event)
>  
>  		if (++group_num_events >= smmu_pmu->num_counters)
>  			return -EINVAL;
> +
> +		if (smmu_pmu->global_filter) {
> +			if (has_filter != (bool)get_filter_enable(sibling))
> +				return -EINVAL;
> +
> +			if (has_filter &&
> +			    (filter_span != get_filter_span(sibling) ||
> +			    filter_sid != get_filter_stream_id (sibling)))
> +				return -EINVAL;
> +		}

Can we avoid duplicating the validation logic from
smmu_pmu_apply_event_filter() by adding the group to a fake PMU, like we
do for the CPU PMU and the DSU PMU? You'll probably need to do a bit
of surgery on 'struct smmu_pmu' to move out the bits you need, but I
think it would be better that way.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
