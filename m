Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353AAEE53B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En8xpDLRv/FOoBm+z1x5RayCWwPSfgJMapJaeuI+z14=; b=H+bHp33iG4Ci5o
	uE0dERmkM42q798MzI5l11TeJKDdG8IT9bKGDTyhT2j02XMd3Trl6hTHf+VxFjtEBiDiwHpHxiRrm
	82x19OueE0dNDHpMzxB14LcBTLADiMjruY4BM8UoxvPVBQ6PVTPlhExh8pNCfXf0yUg9OckuQtg0l
	00PBQ9taHAdSD/D+3BkOMNuHr5fJcHt5B89s8jD7Bmgzp5Kyz/9DblGe+KadchoShCBsZ0f/1Q1Ki
	KrOH6DxR6aThzn/mhVQZtyEEfcPu/WrI0NrsopW6X6DkC3BLb86hADE41Dm7uC0SnsVbwxx9eqLBe
	5V9aAbXYErk8/yDngSNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfc0-0005tY-Fo; Mon, 04 Nov 2019 16:53:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfbs-0005sj-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 16:53:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D1B32080F;
 Mon,  4 Nov 2019 16:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572886423;
 bh=7dD6Q4tlUl7wozwXyzdnM2AvGACwIeE0juVapgoURfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jNmNkSqQcvR2PZlrlone/01qZuz3lpvuzZyA3aN4JDF0uOSN3J6qy3omk75ECGi1D
 BxGPWLvn0mEGeZ8S1jSKALP3FUupXLqEwD//YAfcZxxv1sNey6Ij+kwCBgRbYA6Ugu
 kU7o7UvyfMpfGaJFN1AwE6EpeMun91JDLuniSRj4=
Date: Mon, 4 Nov 2019 16:53:38 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Message-ID: <20191104165338.GE24909@willie-the-truck>
References: <20191104070616.29834-1-qiangqing.zhang@nxp.com>
 <20191104070616.29834-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104070616.29834-2-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_085344_899052_840B9854 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Nov 04, 2019 at 07:09:24AM +0000, Joakim Zhang wrote:
> caps/filter indicates whether HW supports AXI ID filter or not.
> caps/enhanced_filter indicates whether HW supports enhanced AXI ID filter
> or not.
> 
> Users can check filter features from userspace with these attributions.
> 
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 59 ++++++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 3bbf806209a6..6db484251950 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -84,6 +84,64 @@ struct ddr_pmu {
>  	int id;
>  };
>  
> +enum ddr_perf_filter_capabilities {
> +	PERF_CAP_AXI_ID_FILTER = 0,
> +	PERF_CAP_AXI_ID_FILTER_ENHANCED,
> +	PERF_CAP_AXI_ID_FEAT_MAX,
> +};
> +
> +static int ddr_perf_filter_feat_caps[PERF_CAP_AXI_ID_FEAT_MAX] = {
> +	[PERF_CAP_AXI_ID_FILTER] = DDR_CAP_AXI_ID_FILTER,
> +	[PERF_CAP_AXI_ID_FILTER_ENHANCED] = DDR_CAP_AXI_ID_FILTER_ENHANCED,
> +};
> +
> +static u32 ddr_perf_filter_cap_get(struct ddr_pmu *pmu, int cap)
> +{
> +	switch (cap) {
> +	case PERF_CAP_AXI_ID_FILTER:
> +		return !!(pmu->devtype_data->quirks);
> +	case PERF_CAP_AXI_ID_FILTER_ENHANCED:
> +		return (pmu->devtype_data->quirks ==
> +			ddr_perf_filter_feat_caps[cap]);
> +	}

I think this is a bit error-prone if you add additional caps in future,
since you'll need to remember to go back and update this case. I rewrote
it as follows to try to prevent this:


-static int ddr_perf_filter_feat_caps[PERF_CAP_AXI_ID_FEAT_MAX] = {
-	[PERF_CAP_AXI_ID_FILTER] = DDR_CAP_AXI_ID_FILTER,
-	[PERF_CAP_AXI_ID_FILTER_ENHANCED] = DDR_CAP_AXI_ID_FILTER_ENHANCED,
-};
-
 static u32 ddr_perf_filter_cap_get(struct ddr_pmu *pmu, int cap)
 {
+	u32 quirks = pmu->devtype_data->quirks;
+
 	switch (cap) {
 	case PERF_CAP_AXI_ID_FILTER:
-		return !!(pmu->devtype_data->quirks);
+		return quirks & DDR_CAP_AXI_ID_FILTER;
 	case PERF_CAP_AXI_ID_FILTER_ENHANCED:
-		return (pmu->devtype_data->quirks ==
-			ddr_perf_filter_feat_caps[cap]);
+		quirks &= DDR_CAP_AXI_ID_FILTER_ENHANCED;
+		return quirks == DDR_CAP_AXI_ID_FILTER_ENHANCED;
+	default:
+		WARN(1, "unknown filter cap %d\n", cap);
 	}
 
-	WARN(1, "unknown filter cap %d\n", cap);
-
 	return 0;
 }


which also means we can drop ddr_perf_filter_feat_caps[] altogether.

> +#define PERF_EXT_ATTR_ENTRY(_name, _func, _var)				\
> +	(&((struct dev_ext_attribute[]) {				\
> +		{ __ATTR(_name, 0444, _func, NULL), (void *)_var }	\
> +	})[0].attr.attr)

In another thread, we recently realised that the array syntax is not needed
here, so I've updated this to be:


 #define PERF_EXT_ATTR_ENTRY(_name, _func, _var)				\
-	(&((struct dev_ext_attribute[]) {				\
-		{ __ATTR(_name, 0444, _func, NULL), (void *)_var }	\
-	})[0].attr.attr)
+	(&((struct dev_ext_attribute) {					\
+		__ATTR(_name, 0444, _func, NULL), (void *)_var		\
+	}).attr.attr)


I've made those two changes, so I'll queue this up for 5.5. Thanks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
