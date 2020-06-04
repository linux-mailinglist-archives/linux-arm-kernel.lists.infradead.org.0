Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD491EE758
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i52knLlQGKKoGjTqgnDorjMexidltObvpnoR/TWGm2Q=; b=p86UfgN27WBK8x
	Q7Be/ot55PYnRuCOKPNIg6KMwDpPH4o2XnXl71/hs+n0MJeWyA93WUHgNTYYgi1LUQYj/tk9D4iZa
	F6fRsMCeuWbujJwziVBa/AObV05w7IBv/Q9KuZoVfrZLxzb/685olBjqi+NzIqOCjD008ZY1Du1zS
	YVpcQOjlTQIovw0sp88hIYRm3fkmoVYFxwKIOQZDXlDeW4PhcOxBYfAzMKrXSUgMmEaSdNPA/CDG3
	wfn+cPpcakokXFjSwnD3lo+py2ziFr0DM7mnlP5zqWfS5EimqKCvOL02lPGz4nvnx/6OtJ5FR8qOH
	wy4pHuVatj4QN1wfqC5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrRr-0007u4-6W; Thu, 04 Jun 2020 15:06:27 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrRh-0007rf-MW; Thu, 04 Jun 2020 15:06:17 +0000
Subject: Re: [PATCH] regulator: mt6360: Add support for MT6360 regulator
To: Gene Chen <gene.chen.richtek@gmail.com>, matthias.bgg@gmail.com
References: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <4135d264-6758-301a-0f19-ba2f229301c3@infradead.org>
Date: Thu, 4 Jun 2020 08:06:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
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
Cc: gene_chen@richtek.com, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 cy_huang@richtek.com, benjamin.chao@mediatek.com, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/4/20 12:06 AM, Gene Chen wrote:
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index f4b72cb..05a3b14 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -680,6 +680,16 @@ config REGULATOR_MT6358
>  	  This driver supports the control of different power rails of device
>  	  through regulator interface.
>  
> +config REGULATOR_MT6360
> +	tristate "MT6360 SubPMIC Regulator"
> +	depends on MFD_MT6360
> +	select CRC8
> +	help
> +	  Say Y here to enable MT6360 regulator support.
> +	  This is support MT6360 PMIC/LDO part include

	  This supports the MT6300 PMIC/LDO part, which includes

> +	  2-channel buck with Thermal Shutdown and Overlord Protection

	                              is that      Overload  ?
Yes, it could be Overlord.

> +	  6-channel High PSRR and Low Dropout LDO.
> +
>  config REGULATOR_MT6380
>  	tristate "MediaTek MT6380 PMIC"
>  	depends on MTK_PMIC_WRAP


-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
