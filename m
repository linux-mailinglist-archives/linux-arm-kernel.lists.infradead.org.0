Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F28F4F3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6YCAHIFEvmh+4Jyf+75OTF/r7R9Py/3Qs1omxz/hEg=; b=WmyherfkKlCTC4
	iQdrLz7SKMXmxbdF+QlLIatJwJIE132LYiy3vmBZU6ZaV2yplPlp5DCSOCB8YQAQE27lSqwCG+eWE
	aqL+3gVuKSs1I7iAVKn1I1dr/37ie5xqgkWVSLgZjvOm+ZNmxaFvhwEy+1sDLdaqImMRi2wePpuc4
	Q3/v4mjvKS9bjR/9/ysXFyFlOugDOivwg4aH48paDEkrtGf4Yhu6Ofw+ZaB+V1oFdebm6L2k8JyGg
	EdPGoA6MXbhfljdnpurBHCwQ/pBO3OMGmUvD+dCEOMzMWX95wD3dFs2ICZAhLGh6KUa8yNuAx/g/w
	N5AsbkzmEBfF+uYG+fPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT617-0000Cx-Sr; Fri, 08 Nov 2019 15:17:41 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT60z-0000CC-Tn
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:17:35 +0000
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 01487100008;
 Fri,  8 Nov 2019 15:17:20 +0000 (UTC)
Date: Fri, 8 Nov 2019 16:17:20 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] soc: fsl: Enable COMPILE_TEST
Message-ID: <20191108151720.GB216543@piout.net>
References: <20191108130213.23684-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108130213.23684-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_071734_096598_72294D65 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, leoyang.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08/11/2019 21:02:13+0800, YueHaibing wrote:
> When do COMPILE_TEST buiding for RTC_DRV_FSL_FTM_ALARM,
> we get this warning:
> 
> WARNING: unmet direct dependencies detected for FSL_RCPM
>   Depends on [n]: PM_SLEEP [=y] && (ARM || ARM64)
>   Selected by [m]:
>   - RTC_DRV_FSL_FTM_ALARM [=m] && RTC_CLASS [=y] && (ARCH_LAYERSCAPE || SOC_LS1021A || COMPILE_TEST [=y])
> 
> This enable COMPILE_TEST for FSL_RCPM to fix the issue.
> 
> Fixes: e1c2feb1efa2 ("rtc: fsl-ftm-alarm: allow COMPILE_TEST")

I've removed that patch until the fsl maintainers apply this one.

> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> In commit c6c2d36bc46f ("rtc: fsl-ftm-alarm: Fix build error without PM_SLEEP")
> I posted a wrong kconfig warning(which PM_SLEEP is n), sorry for confusion.
> ---
>  drivers/soc/fsl/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig
> index 4df32bc..e142662 100644
> --- a/drivers/soc/fsl/Kconfig
> +++ b/drivers/soc/fsl/Kconfig
> @@ -43,7 +43,7 @@ config DPAA2_CONSOLE
>  
>  config FSL_RCPM
>  	bool "Freescale RCPM support"
> -	depends on PM_SLEEP && (ARM || ARM64)
> +	depends on PM_SLEEP && (ARM || ARM64 || COMPILE_TEST)
>  	help
>  	  The NXP QorIQ Processors based on ARM Core have RCPM module
>  	  (Run Control and Power Management), which performs all device-level
> -- 
> 2.7.4
> 
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
