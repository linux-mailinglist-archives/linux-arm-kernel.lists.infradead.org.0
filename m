Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0307EE7414
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xPCR/RbZPHJX86hKzT/LKNpTL+7XFRjGvpIysa2wkM=; b=qXCb63t2lnVQvo
	m5ZJnbUn+dDElWv/LAoyuLFvokBVW1OFOm1xZqD6HYgQlOWXwK4pqsfYedjqGGgHCuYdivZ+8eruG
	A2b4y9NHfIthjZOt+Dpefz6NNXbQG0xkNNQuMgWnXoc62fsCAhjKjBdX/Le+s4SxpcYJRuuSkYS/g
	S0IK1ptUmEbZHoMNRbJMnMxDPDZgROGkn1/4yJSd+207ekScugfseDn8fqQ7v8fgUH2AvkSLd4wEe
	xCf0oWKm7oyt9JFhXJN0v9W+mVQNuOEZMK7DIYsFPljZpobuMoOZaIsuRQ9vqllyi+Qhm+iRHdLcu
	W1FkRx7NiEvvVDK1KGCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6Pz-0007kK-JT; Mon, 28 Oct 2019 14:54:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6Pq-0007jn-Ne
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:54:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D642208C0;
 Mon, 28 Oct 2019 14:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572274482;
 bh=PhikCgxetaRn/QivtL9ZiSUgV42VKkp/4HdVJZ8os4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dw85Ikz4lNXGWHUl0us9s7fvZdUBNCBRGUFZ7f+StA3QWPMTkkrTS4xJ/GijSDjoa
 lW3bELx6pSpRkQnSl4zhBqAq5pRiaceRHsPuqVeYioT0YyiYPDKWfOEHBOygaI6snV
 WS1JhnOoWnyxLumtfABtheA2vVBN5asMkIoImXvE=
Date: Mon, 28 Oct 2019 14:54:37 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Message-ID: <20191028145436.GA5576@willie-the-truck>
References: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_075442_791209_DAB8A1B2 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Sep 06, 2019 at 08:26:55AM +0000, Joakim Zhang wrote:
> With DDR_CAP_AXI_ID_FILTER quirk, indicating HW supports AXI ID filter
> which only can get bursts of reading/writing DDR, i.e. DDR read/write
> request.
> 
> This patch add DDR_CAP_AXI_ID_ENHANCED_FILTER quirk, indicating HW
> supports AXI ID filter which can get bytes of reading/writing DDR. This
> feature is more meaningful due to we always care more about bandwidth.
> 
> Need select both above two qiurks together when HW support enhanced AXI
> ID filter.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index ce7345745b42..5f70dbfa9607 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -45,7 +45,8 @@
>  static DEFINE_IDA(ddr_ida);
>  
>  /* DDR Perf hardware feature */
> -#define DDR_CAP_AXI_ID_FILTER          0x1     /* support AXI ID filter */
> +#define DDR_CAP_AXI_ID_FILTER			BIT(1)     /* support AXI ID filter */

Is this a deliberate change from the previous code and, if so, why?

> +#define DDR_CAP_AXI_ID_FILTER_ENHANCED		BIT(2)     /* support enhanced AXI ID filter */

What does it mean to have DDR_CAP_AXI_ID_FILTER_ENHANCED but not
DDR_CAP_AXI_ID_FILTER? Could we just say that DDR_CAP_AXI_ID_FILTER_ENHANCED
implies DDR_CAP_AXI_ID_FILTER?

>  struct fsl_ddr_devtype_data {
>  	unsigned int quirks;    /* quirks needed for different DDR Perf core */
> @@ -209,7 +210,15 @@ static void ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
>  
>  static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
>  {
> -	return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
> +	if ((pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) &&
> +	    (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER_ENHANCED)) {
> +		if ((pmu->events[counter]->attr.config == 0x41) ||
> +		    (pmu->events[counter]->attr.config == 0x42))
> +			return readl_relaxed(pmu->base + COUNTER_DPCR1 + counter * 4);

In which case, this could be slightly simplified.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
