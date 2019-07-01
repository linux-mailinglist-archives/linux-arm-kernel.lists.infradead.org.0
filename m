Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407675B93B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxF/MJfclB33eJtpDrKZBKCo2ny3LeCAjBbwMFrmwH0=; b=RBNInmw7iPYfMp
	VAgNAUYFBirdlAXZDpy61/bk0hfSCLBkNG6SLWgoiBtNcOSiaoEWavpxGKuImEcjYjA5SyL69R4U+
	38dedllL88sPkePvBJn2Lv0kdFjaTge1Hg6EiRt260sc6ztdB7AvfatifdrXejc4mwBEX/74nCyju
	WRGkE/PsrVgay77lfjF4JLbOECoZz1641xYOWfV6S/cni/4acjW/TCi9Leofxqj9k1cVJ6BI/1QHc
	k7a+k063LHVFChIkEr+yhRD+4bHUv7X8n6TTywAeiI2hJCcOgjTYgrjLu6/2L/cBn8cz+w794zITE
	HiDTbl6OokSVYL1jriow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtq8-0006M0-Ft; Mon, 01 Jul 2019 10:47:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtq1-0006LF-Im
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:47:11 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x61AktDf015680;
 Mon, 1 Jul 2019 05:46:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561978015;
 bh=xkl2YSQgyzqKuqbU89N6vJgSH9uVy5rur2a274LLpx8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NwYmYqiH3UgHKJrXq/7XQnNew6YC+zoaqBdgWzE1BIesddbvTKMp7Gc9uxzEOtfx3
 cTDmboPaQf6L6xXhEVEIDuNr3X2GB3oy0Cn6okCurZj5oRn9CJtXIZ7W8fUmbQ9Olc
 O7jdhIMbKfFxkUg2zuDQ4dWstSyQjW0whzxaqTKs=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x61AktWn101270
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jul 2019 05:46:55 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 1 Jul
 2019 05:46:54 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 1 Jul 2019 05:46:54 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x61Akp51022662;
 Mon, 1 Jul 2019 05:46:52 -0500
Subject: Re: [PATCH] soc: ti: fix irq-ti-sci link error
To: Arnd Bergmann <arnd@arndb.de>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190617130149.1782930-1-arnd@arndb.de>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <2974ac02-287a-ab46-6716-2b768cca47c3@ti.com>
Date: Mon, 1 Jul 2019 16:16:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617130149.1782930-1-arnd@arndb.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034709_707408_633B49C7 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17/06/19 6:31 PM, Arnd Bergmann wrote:
> The irqchip driver depends on the SoC specific driver, but we want
> to be able to compile-test it elsewhere:
> 
> WARNING: unmet direct dependencies detected for TI_SCI_INTA_MSI_DOMAIN
>   Depends on [n]: SOC_TI [=n]
>   Selected by [y]:
>   - TI_SCI_INTA_IRQCHIP [=y] && TI_SCI_PROTOCOL [=y]
> 
> drivers/irqchip/irq-ti-sci-inta.o: In function `ti_sci_inta_irq_domain_probe':
> irq-ti-sci-inta.c:(.text+0x204): undefined reference to `ti_sci_inta_msi_create_irq_domain'
> 
> Rearrange the Kconfig and Makefile so we build the soc driver whenever
> its users are there, regardless of the SOC_TI option.
> 
> Fixes: 49b323157bf1 ("soc: ti: Add MSI domain bus support for Interrupt Aggregator")
> Fixes: f011df6179bd ("irqchip/ti-sci-inta: Add msi domain support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Looks like this is a side effect of the patch  a6b112b04355b ("arm64: arch_k3:
Fix kconfig dependency warning"). $Patch looks good to me.

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

> ---
>  drivers/soc/Makefile   | 2 +-
>  drivers/soc/ti/Kconfig | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index 524ecdc2a9bb..2ec355003524 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -22,7 +22,7 @@ obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
>  obj-$(CONFIG_SOC_SAMSUNG)	+= samsung/
>  obj-y				+= sunxi/
>  obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
> -obj-$(CONFIG_SOC_TI)		+= ti/
> +obj-y				+= ti/
>  obj-$(CONFIG_ARCH_U8500)	+= ux500/
>  obj-$(CONFIG_PLAT_VERSATILE)	+= versatile/
>  obj-y				+= xilinx/
> diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
> index ea0859f7b185..d7d50d48d05d 100644
> --- a/drivers/soc/ti/Kconfig
> +++ b/drivers/soc/ti/Kconfig
> @@ -75,10 +75,10 @@ config TI_SCI_PM_DOMAINS
>  	  called ti_sci_pm_domains. Note this is needed early in boot before
>  	  rootfs may be available.
>  
> +endif # SOC_TI
> +
>  config TI_SCI_INTA_MSI_DOMAIN
>  	bool
>  	select GENERIC_MSI_IRQ_DOMAIN
>  	help
>  	  Driver to enable Interrupt Aggregator specific MSI Domain.
> -
> -endif # SOC_TI
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
