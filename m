Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CAB124380
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 10:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CBJdHrPIlJJTrIdGX7+4yrRXcU1dABZP/ZWTQdXHyKQ=; b=Zh9nM/XZiV5u7cc0/r68L5r/S
	AvQ3kwat8YNOso2LdNCS/qkZfrj7AjrLdCzglTaRubHA7drb3gZBWv/DKxRdZkAZ9i6eAqkID5a+s
	vsFzYAr7kPQ5C41Lt296ipiLeRIUjgzT+9hGrLGNqQ3moZRfkT303+++AgwrH0y3gweiA1XbbiyoZ
	HchyZ5ngduzpC/Bb4wU/DJx03FQzYwRe1eqFQ51Otv4tyr+EZ6h9yd6Li7QBLvK8NvxLhP22aufOt
	5wgcb9e931rAfOrL28b6Eqp8XXZ+nifhLJzIRMGp7tTQZ9ZZ5bWomQOSahS7mXm8d/3jzDpdheo4t
	rKgI0SUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVpT-00075s-L2; Wed, 18 Dec 2019 09:41:15 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVpL-00075V-K8
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 09:41:08 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihVpB-0004Mi-LQ; Wed, 18 Dec 2019 10:40:57 +0100
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 3/3] drivers/irqchip: enable INTMUX interrupt controller
 driver
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 09:40:57 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1576653615-27954-4-git-send-email-qiangqing.zhang@nxp.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576653615-27954-4-git-send-email-qiangqing.zhang@nxp.com>
Message-ID: <30431cce4c9e59ab11043c991493c368@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: qiangqing.zhang@nxp.com, tglx@linutronix.de,
 jason@lakedaemon.net, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, shengjiu.wang@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fugang.duan@nxp.com,
 aisheng.dong@nxp.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_014107_802652_D714FFA6 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, fugang.duan@nxp.com,
 jason@lakedaemon.net, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, aisheng.dong@nxp.com, tglx@linutronix.de,
 shawnguo@kernel.org, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-18 07:20, Joakim Zhang wrote:
> Enable INTMUX interrupt controller driver for i.MX platforms.
>
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/irqchip/Kconfig  | 6 ++++++
>  drivers/irqchip/Makefile | 1 +
>  2 files changed, 7 insertions(+)
>
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index ba152954324b..7e2b1e9d0b45 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -457,6 +457,12 @@ config IMX_IRQSTEER
>  	help
>  	  Support for the i.MX IRQSTEER interrupt multiplexer/remapper.
>
> +config IMX_INTMUX
> +	def_bool y if ARCH_MXC
> +	select IRQ_DOMAIN
> +	help
> +	  Support for the i.MX INTMUX interrupt multiplexer.
> +
>  config LS1X_IRQ
>  	bool "Loongson-1 Interrupt Controller"
>  	depends on MACH_LOONGSON32
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index e806dda690ea..af976a79d1fb 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -100,6 +100,7 @@ obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
>  obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
>  obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
>  obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
> +obj-$(CONFIG_IMX_INTMUX)		+= irq-imx-intmux.o
>  obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
>  obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
>  obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o

Please merge this with the previous patch, it doesn't really warrant
a separate patch.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
