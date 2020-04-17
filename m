Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D171AE4AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9BHElIAZEJIrZ5knpWXh7WS72VSn/jZwz/rRQpu7H8=; b=I+9y+AjQwQ1TUz
	r4GvhUTAAd36373O1xTPs1H9YaUQ3/LbkvWJqoacd/Kmv8i28snWB4/LF6lilQHbQL4k2BQ0dTSSY
	dLSV2UmLyGF9WBczAQrZtj5vCubobdfaeRbeQfNIrNXmp+8rFyrFn89t9IfoFd+P/hVW6S0SmoRiM
	GvJjLA3p0wFuhCN+OGjQ2lpFaXjEsfqU0c4K9Jo4g3p7NUvHjHpghp5rymRr06Oo3mZm4Wrzh/1yf
	y8DiSuy+fzdDNgUlz/W3hr2vuDRKWR99JlOhjADWL6kfas9Cj4UgbqicgJ1cvQRJwVNJpp2VTnTgK
	ycV5EErF6aNe3f8xhOtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVbc-0001m6-FD; Fri, 17 Apr 2020 18:20:48 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVbT-0001kx-2U; Fri, 17 Apr 2020 18:20:39 +0000
Subject: Re: [PATCH v6 09/10] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
To: Alim Akhtar <alim.akhtar@samsung.com>, robh@kernel.org
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181024epcas5p4231ae3dd2598155854e9b7ee52438bcb@epcas5p4.samsung.com>
 <20200417175944.47189-10-alim.akhtar@samsung.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c0760af4-6867-87f6-4abb-cb4079a7c982@infradead.org>
Date: Fri, 17 Apr 2020 11:20:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200417175944.47189-10-alim.akhtar@samsung.com>
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

On 4/17/20 10:59 AM, Alim Akhtar wrote:
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

"&&" has higher precedence than "||", so I'm thinking that line should be

+	depends on SCSI_UFSHCD_PLATFORM && (ARCH_EXYNOS || COMPILE_TEST)

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
