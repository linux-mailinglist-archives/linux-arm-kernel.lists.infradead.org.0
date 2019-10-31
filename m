Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0FEB415
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:39:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKBRFpnoxyZWgkqUgPyn0AfcJJAw32nh5OXxk1PraTQ=; b=PerbSst/ULItKx
	bBb6dDmhf2hspHy+4hQ0RUvKmEgNX4lqoQ/fftTI6gjyOfZlD9L4okf7tVesDk7gPa8qFZCc1S0dx
	KuWgO0eZpD1NoyrGr+iRh36c/ah9S0TWyXuV97hJMpC5haFuT52b6+piAoZxBB73OOUy2u+ZvBvhu
	PFf7SDpDY0tK8js5WtR92ognKLpY1wZeWLr5CqioPMJyxj7D82itfZy/ffxkO1cotjHqo27H7w/5w
	JuWqZhVimBG17tIp8g7cQNURqUC+OSpPIRh6ztomIJIzTRRYb1mTYeeoKCimfNBimctx2VhNkY1Fh
	sqQXZjWu5JM8VcA+B8zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCXa-0001yO-AB; Thu, 31 Oct 2019 15:39:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCXQ-0001xy-FC
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:39:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC53F2086D;
 Thu, 31 Oct 2019 15:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572536343;
 bh=j9LAJ0x6z0BUQXUswzV5t/979UbOaQ40EkBDvWepkYc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nefmvw+i+IBm3ul42guw3+YNlBO6Vl437z0KIDxUz7xfF+kF9ah8zcayanXkmEmio
 IrOeImdYcxfG5mdRIr+7J/WIDKKiN7n5BXEce+0lYg9/AqG0RDfafgLCOinQFSRnzY
 ThONz9KeHA4J9Uz01Nhw4YklNUB7S5jsz3mGiGRY=
Date: Thu, 31 Oct 2019 15:38:58 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V2 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Message-ID: <20191031153858.GA28061@willie-the-truck>
References: <20191029070314.16719-1-qiangqing.zhang@nxp.com>
 <20191029070314.16719-3-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029070314.16719-3-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_083904_551112_72068703 
X-CRM114-Status: GOOD (  17.93  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 07:06:19AM +0000, Joakim Zhang wrote:
> With DDR_CAP_AXI_ID_FILTER quirk, indicating HW supports AXI ID filter
> which only can get bursts from DDR transaction, i.e. DDR read/write
> requests.
> 
> This patch add DDR_CAP_AXI_ID_ENHANCED_FILTER quirk, indicating HW
> supports AXI ID filter which can get bursts and bytes from DDR
> transaction at the same time. We hope PMU always return bytes in the
> driver due to it is more meaningful for users.
> 
> DDR_CAP_AXI_ID_ENHANCED_FILTER is based on DDR_CAP_AXI_ID_FILTER and
> extend it a bit. So need select both above two qiurks together when
> HW supports enhanced AXI ID filter.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
> Changelog:
> V1->V2:
> 	* use ddr_perf_is_filtered() helper to simply the code.
> 	* improve the commit message.
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 55 ++++++++++++++++++++------------
>  1 file changed, 34 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index ce7345745b42..17c817d89222 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -45,7 +45,8 @@
>  static DEFINE_IDA(ddr_ida);
>  
>  /* DDR Perf hardware feature */
> -#define DDR_CAP_AXI_ID_FILTER          0x1     /* support AXI ID filter */
> +#define DDR_CAP_AXI_ID_FILTER			BIT(1)     /* support AXI ID filter */
> +#define DDR_CAP_AXI_ID_FILTER_ENHANCED		BIT(2)     /* support enhanced AXI ID filter */

I still don't understand why you don't do something like this:

#define DDR_CAP_AXI_ID_FILTER		0x1 /* support AXI ID filter */
#define DDR_CAP_AXI_ID_FILTER_ENHANCED	0x3 /* support enhanced AXI ID filter */


static bool ddr_perf_is_enhanced_filtered(struct perf_event *event)
{
	unsigned int filt;
	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);

	filt = pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER_ENHANCED;
	return (filt == DDR_CAP_AXI_ID_FILTER_ENHANCED) &&
		ddr_perf_is_filtered(event);
}


and then:

> +	/*
> +	 * return bytes instead of bursts from ddr transaction for
> +	 * axid-read and axid-write event if PMU core supports enhanced
> +	 * filter.
> +	 */
> +	if ((pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) &&
> +	    (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER_ENHANCED) &&
> +	    ddr_perf_is_filtered(event)) {

static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
{
	struct perf_event *event = pmu->events[counter];
	void __iomem *base = pmu->base;

	base += ddr_perf_is_enhanced_filtered(event) ? COUNTER_DPCR1 :
						       COUNTER_READ;
	return readl_relaxed(base + counter * 4);
}


In patch 4 you can then do:

.quirks = DDR_CAP_AXI_ID_FILTER_ENHANCED;

Make sense?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
