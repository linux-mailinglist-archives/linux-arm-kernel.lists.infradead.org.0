Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2D51CD03A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 05:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlL1kXNeQkVTHWRNp+oky6zQUnj6tbMqJfZGxBJ/tfI=; b=B7QPb4e87FUbgw
	vXwn7JBwSqLoAKKxFqUlQS1Y7QziwfNFnCUOqbcL2RG9CNi/pg69DG1f5gaz6TPNSaNx3Gu91J3R6
	Wn2gv5ExpEfPva9U4DeNB85z5E2dHte34M+OpQPcSUBK0d9IGMFkvg1kF2nTLtSwgQbR+hem3n1g/
	BiLoEWIaoJdS4lE19zGqqKEhPBO0/sNorbdP3slLjgZEZNF5p9mUn33K6gM5VfchMeMKfHlftX9+X
	a0lGZ+UbV61lXYSJ4WxPci+s5XtxYnikX1BYNnCUxWdXpJmX8RYG7YH0IG8eEOxmS8+bs24CnJ64d
	eNU+A1ORUZJm15yikt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXysj-0000Ma-HD; Mon, 11 May 2020 03:13:29 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXysN-0000Bd-BT; Mon, 11 May 2020 03:13:07 +0000
Subject: Re: [PATCH v8 09/10] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
To: Alim Akhtar <alim.akhtar@samsung.com>, robh@kernel.org
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021409epcas5p3b78fe59669f13ffae481b57a944da675@epcas5p3.samsung.com>
 <20200511020031.25730-10-alim.akhtar@samsung.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <80a387eb-2325-caab-6754-6d94daeeabac@infradead.org>
Date: Sun, 10 May 2020 20:13:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200511020031.25730-10-alim.akhtar@samsung.com>
Content-Language: en-US
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
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/10/20 7:00 PM, Alim Akhtar wrote:
> diff --git a/drivers/scsi/ufs/Kconfig b/drivers/scsi/ufs/Kconfig
> index e2005aeddc2d..cc7e29c8c24f 100644
> --- a/drivers/scsi/ufs/Kconfig
> +++ b/drivers/scsi/ufs/Kconfig
> @@ -160,3 +160,15 @@ config SCSI_UFS_BSG
>  
>  	  Select this if you need a bsg device node for your UFS controller.
>  	  If unsure, say N.
> +
> +config SCSI_UFS_EXYNOS
> +	bool "EXYNOS specific hooks to UFS controller platform driver"
> +	depends on SCSI_UFSHCD_PLATFORM && ARCH_EXYNOS || COMPILE_TEST

Since && has higher precedence than ||, I am thinking that this should be

	depends on SCSI_UFSHCD_PLATFORM && (ARCH_EXYNOS || COMPILE_TEST)

> +	select PHY_SAMSUNG_UFS
> +	help
> +	  This selects the EXYNOS specific additions to UFSHCD platform driver.
> +	  UFS host on EXYNOS includes HCI and UNIPRO layer, and associates with
> +	  UFS-PHY driver.
> +
> +	  Select this if you have UFS host controller on EXYNOS chipset.
> +	  If unsure, say N.


-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
