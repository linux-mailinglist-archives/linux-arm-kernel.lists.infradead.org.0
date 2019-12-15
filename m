Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C8911F742
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 11:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsFZysPmImlfOteSONP9QBUJg/fYCwvpE/RkByic4Eo=; b=GYKVeqe1IJKYv7
	dXMo7X7U47Fw/FWFatKDitHrj7xk5Ctu9/bejcWqk9dojcyxkXf/CBB61BPigSvTmZrroit6AXTMc
	wnxNfKgUibrLYYSDn0hVVsep1VN0ZcsnteRpd20f3PYenOlv6XKJ0tURB4kzc6M27bpR7jGbr0NLT
	leJ0eH9juA5ssypLmlH9Ay139PSqSf3rfwPsYOR7DdSdnQhct0fj8BOBEHmlQM7jI0lInA+WMeAbl
	DemqJaBQUFOoEZo6EIpwwOPGitIsejot0c/dcXknE2MB1swzde7nhPaerkA271PLG8cJG4SMCYYhR
	LyYoBOzWIoLkNmk+pPfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igRSD-00029L-8a; Sun, 15 Dec 2019 10:48:49 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igRS2-00026x-IL; Sun, 15 Dec 2019 10:48:40 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1igRRq-0007sB-2S; Sun, 15 Dec 2019 11:48:26 +0100
Date: Sun, 15 Dec 2019 10:48:24 +0000
From: Marc Zyngier <maz@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 10/10] soc: qcom: convert to devm_platform_ioremap_resource
Message-ID: <20191215104824.658889d3@why>
In-Reply-To: <20191214175447.25482-10-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
 <20191214175447.25482-10-tiny.windzz@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: tiny.windzz@gmail.com, khilman@baylibre.com,
 leoyang.li@nxp.com, khalasa@piap.pl, john@phrozen.org, matthias.bgg@gmail.com,
 agross@kernel.org, bjorn.andersson@linaro.org, kgene@kernel.org,
 krzk@kernel.org, mripard@kernel.org, wens@csie.org, ssantosh@kernel.org,
 jun.nie@linaro.org, shawnguo@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_024838_751053_AD68F9C5 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: john@phrozen.org, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, khilman@baylibre.com, krzk@kernel.org,
 wens@csie.org, agross@kernel.org, linux-arm-msm@vger.kernel.org,
 mripard@kernel.org, khalasa@piap.pl, ssantosh@kernel.org,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org,
 shawnguo@kernel.org, linux-mips@vger.kernel.org, leoyang.li@nxp.com,
 kgene@kernel.org, linux-mediatek@lists.infradead.org, jun.nie@linaro.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 14 Dec 2019 17:54:47 +0000
Yangtao Li <tiny.windzz@gmail.com> wrote:

> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/soc/qcom/llcc-qcom.c    | 7 +------
>  drivers/soc/qcom/qcom-geni-se.c | 4 +---
>  drivers/soc/qcom/qcom_aoss.c    | 4 +---
>  drivers/soc/qcom/qcom_gsbi.c    | 5 +----
>  drivers/soc/qcom/spm.c          | 4 +---
>  5 files changed, 5 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> index 429b5a60a1ba..99e19df76889 100644
> --- a/drivers/soc/qcom/llcc-qcom.c
> +++ b/drivers/soc/qcom/llcc-qcom.c
> @@ -387,7 +387,6 @@ static int qcom_llcc_remove(struct platform_device *pdev)
>  static struct regmap *qcom_llcc_init_mmio(struct platform_device *pdev,
>  		const char *name)
>  {
> -	struct resource *res;
>  	void __iomem *base;
>  	struct regmap_config llcc_regmap_config = {
>  		.reg_bits = 32,
> @@ -396,11 +395,7 @@ static struct regmap *qcom_llcc_init_mmio(struct platform_device *pdev,
>  		.fast_io = true,
>  	};
>  
> -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, name);
> -	if (!res)
> -		return ERR_PTR(-ENODEV);
> -
> -	base = devm_ioremap_resource(&pdev->dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);

What guarantees do you have that entry 0 matches name?

I find these changes pointless: they don't add much to the readability
or maintainability of the code, and instead introduce creative bugs.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
