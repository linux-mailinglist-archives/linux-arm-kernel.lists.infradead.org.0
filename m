Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B995184661
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NN+3kY5+iZXRHUsGPIv7DiOig2RhP1e0n0U/Qt2Qhw8=; b=JfKWg0+BZ2AxUX
	ZEGT0njWUyaCGRd251yyX5qfsF9gVTftiDW5p5cfI5RTIpnenLi2Jef/HhK1Mjtz0dbrPAQ2pTq9Y
	ufHXB3RDdhPlQDLjcu08bGcSQMm2RI+KFYdtpjDkbTjPpgEbWEgHPKm//SEXP82nxi2eVi3UTdz1s
	RmwEISFTGH9PQsvjD2oaaNUI0Fc9e/DBM2r7VV/OcDABcp2jgkefeWCywFtKeagi9vwH2YMFLqNZb
	b9Hy047puD7gD8uMUzIQNrhfRsy7iXqrKORt7n8decRzfXO5UoHN6zmBanAxGsl5uW4Wy0w/UVa0t
	6iAcH4QRdHfXzfmHfrww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCj1D-0001Fq-39; Fri, 13 Mar 2020 12:02:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCj13-0001EO-On
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:02:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E127930E;
 Fri, 13 Mar 2020 05:02:12 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 77EA03F534;
 Fri, 13 Mar 2020 05:02:11 -0700 (PDT)
Date: Fri, 13 Mar 2020 12:02:09 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH] arm64: defconfig: buildin FSL DDR PMU
Message-ID: <20200313120209.GF42546@lakrids.cambridge.arm.com>
References: <1584090348-28910-1-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584090348-28910-1-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_050213_843503_8CC430F6 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, vkoul@kernel.org, linux-imx@nxp.com,
 olof@lixom.net, shawnguo@kernel.org, leonard.crestez@nxp.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 05:05:48PM +0800, Joakim Zhang wrote:
> Buildin FSL DDR PMU since it is used quite often.

Generally. we should only build in stuff that's critical to getting a
system up-and-running, or cannot be built as a module. I don't think
that applies here.

Thanks,
Mark.

> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0f212889c931..9a84ef613c7d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -833,7 +833,7 @@ CONFIG_PHY_UNIPHIER_USB2=y
>  CONFIG_PHY_UNIPHIER_USB3=y
>  CONFIG_PHY_TEGRA_XUSB=y
>  CONFIG_ARM_SMMU_V3_PMU=m
> -CONFIG_FSL_IMX8_DDR_PMU=m
> +CONFIG_FSL_IMX8_DDR_PMU=y
>  CONFIG_HISI_PMU=y
>  CONFIG_QCOM_L2_PMU=y
>  CONFIG_QCOM_L3_PMU=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
