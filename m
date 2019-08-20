Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429019694E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvFe7lei3psCakPV6qoooBAcFQ2DslSXiONG139ZTV8=; b=p3WvyYSncSomrU
	8aMWAaI3b2w0WQSXW0X5QK3IQyvZKjHeXjozE4p7CY6GSDmgVkzKgGupArRlyPkTyO7Alr2VCAuYt
	YDDoD6Kl1Btgu25RScxEwoRBKAtuHeVDEl4UjjKCOQI3ZfYf5L3sF4F5p9MA7GTw8Om9S40SfkVhh
	CW8tOpvKA+Z3taAxK4Xxj7BtyOkEc0oth3GxWGDgXDBiMDtcBOHYr51IgNo198wQ1XbIP78cT7Fln
	ayCrnD0VquLICpNup7Ashpg4fP8yWYoM5ElQcDd+Blao28P22JbRLFYi1Oi7ZA83bMFBgaygQTzLE
	YoAky8gcZa69+fR2eB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i09kC-0002PJ-A2; Tue, 20 Aug 2019 19:24:36 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09k3-0002OD-G9
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:24:28 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d5c48ea0000>; Tue, 20 Aug 2019 12:24:26 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 20 Aug 2019 12:24:26 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 20 Aug 2019 12:24:26 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 20 Aug
 2019 19:24:25 +0000
Received: from [10.2.172.48] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 20 Aug
 2019 19:24:24 +0000
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, <krzk@kernel.org>
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
Date: Tue, 20 Aug 2019 20:24:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813150827.31972-3-s.nawrocki@samsung.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566329066; bh=aqrV0qozQvPyCJF5OMU0O0mUi+RuzpeTvQFTlPYLGYo=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=k+uQ9whCpdQaPncRO5pqbWY5peXZs4u76HSG7FdTncaFHyBVBUU0+VUmNGh9l9uZf
 rpeWK8ybyj9BjBvzww8775rlL+xFRbAdnnTVOBDBMWnpyymV0Nnhrsa5laXm4Hk3qD
 pZ1wGU6rKdyQAowtuZcJ0eS5DEAA91UoASJ7hFBMi3BIgQwcv7WgObfF73CRAdTfBW
 pjAUvOqjr6lPkT/PyLVElqPjTsAjP0Ftpf96uHk8GNi8f3BSD5Zq2keebN1h20A4U9
 ScTNMW3THbcgO4H9B/gbFW1EJ323YLHH/MOahU6KmAH/fuSUpSLLER37mWG1YWVC+M
 z7KT+ONPzKgTw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_122427_548886_7BCE99E9 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 vireshk@kernel.org, linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/08/2019 16:08, Sylwester Nawrocki wrote:
> Convert the driver to use regmap API in order to allow other
> drivers, like ASV, to access the CHIPID registers.
> 
> This patch adds definition of selected CHIPID register offsets
> and register bit fields for Exynos5422 SoC.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - s/_EXYNOS_ASV_H/__LINU_SOC_EXYNOS_ASV_H,
>  - removed __func__ from error log,
>  - removed unneeded <linux/of_address.h> header inclusion.
> 
> Changes since v1 (RFC):
>  - new patch
> ---
>  drivers/soc/samsung/exynos-chipid.c       | 34 ++++++---------
>  include/linux/soc/samsung/exynos-chipid.h | 52 +++++++++++++++++++++++
>  2 files changed, 65 insertions(+), 21 deletions(-)
>  create mode 100644 include/linux/soc/samsung/exynos-chipid.h
> 
> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
> index bcf691f2b650..006a95feb618 100644
> --- a/drivers/soc/samsung/exynos-chipid.c
> +++ b/drivers/soc/samsung/exynos-chipid.c
> @@ -9,16 +9,13 @@
>   */
>  
>  #include <linux/io.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/of.h>
> -#include <linux/of_address.h>
> +#include <linux/regmap.h>
>  #include <linux/slab.h>
> +#include <linux/soc/samsung/exynos-chipid.h>
>  #include <linux/sys_soc.h>
>  
> -#define EXYNOS_SUBREV_MASK	(0xF << 4)
> -#define EXYNOS_MAINREV_MASK	(0xF << 0)
> -#define EXYNOS_REV_MASK		(EXYNOS_SUBREV_MASK | EXYNOS_MAINREV_MASK)
> -#define EXYNOS_MASK		0xFFFFF000
> -
>  static const struct exynos_soc_id {
>  	const char *name;
>  	unsigned int id;
> @@ -51,29 +48,24 @@ static const char * __init product_id_to_soc_id(unsigned int product_id)
>  int __init exynos_chipid_early_init(void)
>  {
>  	struct soc_device_attribute *soc_dev_attr;
> -	void __iomem *exynos_chipid_base;
>  	struct soc_device *soc_dev;
>  	struct device_node *root;
> -	struct device_node *np;
> +	struct regmap *regmap;
>  	u32 product_id;
>  	u32 revision;
> +	int ret;
>  
> -	/* look up for chipid node */
> -	np = of_find_compatible_node(NULL, NULL, "samsung,exynos4210-chipid");
> -	if (!np)
> -		return -ENODEV;
> -
> -	exynos_chipid_base = of_iomap(np, 0);
> -	of_node_put(np);
> -
> -	if (!exynos_chipid_base) {
> -		pr_err("Failed to map SoC chipid\n");
> -		return -ENXIO;
> +	regmap = syscon_regmap_lookup_by_compatible("samsung,exynos4210-chipid");
> +	if (IS_ERR(regmap)) {
> +		pr_err("Failed to get CHIPID regmap\n");
> +		return PTR_ERR(regmap);
>  	}

Following this change, I am now seeing the above error on our Tegra
boards where this driver is enabled. This is triggering a kernel
warnings test we have to fail. Hence, I don't think that you can remove
the compatible node test here, unless you have a better way to determine
if this is a samsung device.

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
