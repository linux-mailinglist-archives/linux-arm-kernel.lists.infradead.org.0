Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9AB487B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iETSPagICvb1xPq1veih3noKHr/i/Uja2bEPFlT/3VY=; b=Jz+AC90SOQFyhV
	5XS4jdxfWBXbXqVThTesuiv+b95JBEN/oTnzaTzuZgbF8ngyZYNVpyzMluaVEKB9q84ZjrA+Y2U8D
	6QDjy/Qr63Gt7zX/pVEiDEma46jRxE4tBSBklD9/WUpe8ukV/HK6jLDw6JuRHrnjI13QtJsbMB+AK
	I/stGDb5ObDFiMqzlpr7b0pgVXI+pm6SoLWKaTZnCDWbUZ4RnMo61GabIwxrf6Y3ZSAOI9uxg9O6g
	9Oq7/B0JJGHHCUO3HLPHa91fPUf5lPmeT1IhJ9psupNQLo3VeO3IL6bnZGwBFBa/eDr0wJrDEG2yU
	STDB1Nk9OgWSikGmJU2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctox-0004VB-2Z; Mon, 17 Jun 2019 15:45:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctoe-0003r4-8U
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:45:05 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HFipSq091402;
 Mon, 17 Jun 2019 10:44:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560786291;
 bh=McgqI3mDBBahPgI7AYaJFbF+RYWPhclsx1BVQphtdss=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=tGZ39ZzusXUIC2LOEMo6l1t/H/cuu47XY3JhCagVn/SHGDqiskMsCG/5aLqGs7Oz/
 AoaFtY8aYXKKz3N0lwp+wIcg25wa9QMRSJ52Y2Q8hgMj3PODs25N+uxhClXaZeqxG1
 EvKShXPUzIyfITQapeWr2zzAHRQOLZEqszxdkqwE=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HFipq0126827
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 10:44:51 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 10:44:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 10:44:50 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HFio7i120698;
 Mon, 17 Jun 2019 10:44:50 -0500
Date: Mon, 17 Jun 2019 10:43:42 -0500
From: Nishanth Menon <nm@ti.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] soc: ti: fix irq-ti-sci link error
Message-ID: <20190617154342.n2tre474cfyvraw3@kahuna>
References: <20190617130149.1782930-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617130149.1782930-1-arnd@arndb.de>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_084504_406938_7C4CCD6F 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, linux-kernel@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Tony Lindgren <tony@atomide.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15:01-20190617, Arnd Bergmann wrote:
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
> -- 
> 2.20.0
> 

	Looks fine to me. Lokesh?

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
