Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A74EB473
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pcp+cJiSPuUp9tbziVpoMQDfeo7OQ8DSVGOWiCViUyk=; b=r3Afri3yMz+WH2
	RjlHO1xz+tl+BmCNJNqd17RzVHkDXbtwSAikFTRrZV4kI/aMJwzRz3bXyKMDGVtGJ+N6Fz8k/KlEy
	/X5kJtigF1RnOdBJuqQmKYi6ilagI5aHAW7xSaOsieWq5GwBFJIXG1qy3aj7/RRC0RSN27L1hERLD
	l3HCovqAnDYZvpXaZidatL1ON7xiNe2jv/Pd1HVK2zTVt3ouH6TDHzuiuoOLdMrUl3vLYfzT+3JDT
	nC0Iicek0Z6FBj1qTqW4SkzAPHe6H3C/wAaR5JAq7nYIdIHDu/gwzye2lFx8CZxxiJKBwaKQe5fZT
	dkjbjxRQZ8zZIMoxHW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCzk-0007XW-PV; Thu, 31 Oct 2019 16:08:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCzZ-0007Wy-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:08:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22A8820873;
 Thu, 31 Oct 2019 16:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572538088;
 bh=fghdOvr2OgY+0ekHMFjXmZkPb2T75OfCtlZkaJYklJw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NaTt76GTXoj8jPo2lH9hUzpA4tWIvlqdPiVwStWyMBljnoJ/Q9SzcJvpTEYk1+lEY
 ySh6s/kiYEaNvmC/z8PqgPp32F3VXTYJa/2asMvQKZ9K57Tp5tjQw0KoTmeHW+vfYf
 2Vvv88P1YYwi3XFBdCfO6a9n7AuhifuB42c8bZD0=
Date: Thu, 31 Oct 2019 16:08:04 +0000
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
Message-ID: <20191031160804.GA28325@willie-the-truck>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_090809_323042_BB739422 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
> For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
> &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
> to simplify the armv8_pmuv3_event_attrs.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
>  arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
>  1 file changed, 65 insertions(+), 124 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index a0b4f1bca491..d0f084939bcf 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
>  }

[...]

> +	(&((struct perf_pmu_events_attr[]) { \
> +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> +		  .id = config, } \
> +	})[0].attr.attr)

I don't get the need for the array here. Why can't you do:

	(&((struct perf_pmu_events_attr) {
		.attr = ...,
		.id = ...,
	}).attr.attr)

?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
