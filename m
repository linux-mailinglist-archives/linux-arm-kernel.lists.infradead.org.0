Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FBCE08B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4cwWIaxgRrvCdwUyu76R7Rfo8qT+T/0dn0B5Yacznw=; b=ev5xuKPAWUAkvX
	bq4y6P9KiGZt5IL1MQGfHlBSsHBhdloeYH2n4CzpMhkRE7CynIdgzbGwrYd+u/JW4AuOI/z4OZTV6
	bW/Xd2vAnwnQsLE6E6Oo/WsXFHZGFIgiwB9RAKEMwRWrzpMMqioLZzJ1GpxudnUSGfHWUXaW4oV7f
	FgndCrvu/nb3Irf9Sl4BG1+h05W0F50DKfNVA5L+HsvZNtACkQrPsPrn97o5idDZnPbyPIqdg0kKY
	d3O/hysU24t5arfUAllG/cE8xsvR/uAAlV7gVoHhTGYYXl31OKYc8YBuK5fntza5GHtDDHwwYX3hl
	8TtOoREshyGIJ5oDNmTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwvi-0006vp-E2; Tue, 22 Oct 2019 16:22:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwvT-0006vO-Hs
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:22:28 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4DCDD80FA;
 Tue, 22 Oct 2019 16:23:01 +0000 (UTC)
Date: Tue, 22 Oct 2019 09:22:23 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
Message-ID: <20191022162223.GU5610@atomide.com>
References: <20191007220540.30690-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007220540.30690-1-aford173@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_092227_638243_E19CC8B3 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 hns@goldelico.com, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, adam.ford@logicpd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Adam Ford <aford173@gmail.com> [191007 15:06]:
> The some in the OMAP3 family have a bandgap thermal sensor, but
> omap2plus has it disabled.
> 
> This patch enables the OMAP3_THERMAL by default like the rest of
> the OMAP family.

Looks like this breaks off mode during idle for omap3, and that's
probably why it never got enabled. The difference in power
consumption during idle is about 7mW vs 32mW for the SoC as
measured from torpedo shunt for main_battery_som.

I think the right fix might be simply to add handling for
CPU_CLUSTER_PM_ENTER to the related thermal driver to disable
it during idle like we have for gpio-omap.c for example.

Regards,

Tony

> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> index 8f1c2b6f9e56..7e14a8c8bb29 100644
> --- a/arch/arm/configs/omap2plus_defconfig
> +++ b/arch/arm/configs/omap2plus_defconfig
> @@ -292,6 +292,7 @@ CONFIG_THERMAL_GOV_FAIR_SHARE=y
>  CONFIG_THERMAL_GOV_USER_SPACE=y
>  CONFIG_CPU_THERMAL=y
>  CONFIG_TI_THERMAL=y
> +CONFIG_OMAP3_THERMAL=y
>  CONFIG_OMAP4_THERMAL=y
>  CONFIG_OMAP5_THERMAL=y
>  CONFIG_DRA752_THERMAL=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
