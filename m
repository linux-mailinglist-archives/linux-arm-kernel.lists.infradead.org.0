Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4317CDED7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0my5MiSahSnq0ZF40Fjp4xzfnTYHmJifQtE2vRnX44=; b=Rg7JbC0XdyBCFX
	Sb+fM4L/I0jjawFDNpgpYN5kjBmo+JDAp/Z2llhsJ8Qmy6EKIL70K5iPyFt8FE1sBsrVKmhJWixSX
	/v1AjpU8dhfyeyALlHXlbg3Qv7HjoGqciP3ZVAT7/KHl9zfkNXonek4ViuQOSIIOoAiJK2zsgH52h
	4RFGprMk9iBapd25kNSsKS9g2slso37gv9Fa5CP81RbXc6oFAPfqxJTc7I6+q4F1M9xZY57wURP8N
	vQaxrnE0RsTPVuiXesTRiL1pmoyb5o4E8bUVrQk3HOSmtoPadYc1cBfhC8bFx1FvPbD2JCBmfXNUW
	VgcaVaRPoHHD2C81HOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPyz-0008UI-OF; Mon, 07 Oct 2019 10:11:13 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPyn-0008Rp-4O; Mon, 07 Oct 2019 10:11:03 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 57274240012;
 Mon,  7 Oct 2019 10:10:37 +0000 (UTC)
Date: Mon, 7 Oct 2019 12:10:37 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 00/34] rtc: use devm_platform_ioremap_resource() to
 simplify code
Message-ID: <20191007101037.GE4254@piout.net>
References: <20191006102953.57536-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006102953.57536-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_031101_447823_FD5305B5 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: baruch@tkos.co.il, linux-aspeed@lists.ozlabs.org, linus.walleij@linaro.org,
 patrice.chotard@st.com, paul@crapouillou.net, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, michal.simek@xilinx.com, linux-rtc@vger.kernel.org,
 f.fainelli@gmail.com, khilman@baylibre.com, wens@csie.org,
 jonathanh@nvidia.com, ludovic.desroches@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, joel@jms.id.au, slemieux.tyco@gmail.com,
 alexandre.torgue@st.com, sean.wang@mediatek.com, mripard@kernel.org,
 vz@mleia.com, linux-mediatek@lists.infradead.org, gregory.0xf0@gmail.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 a.zummo@towertech.it, andrew@aj.id.au,
 linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org,
 linux@prisktech.co.nz, mcoquelin.stm32@gmail.com, computersforpeace@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/10/2019 18:29:19+0800, YueHaibing wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> YueHaibing (34):
>   rtc: asm9260: use devm_platform_ioremap_resource() to simplify code
>   rtc: rtc-aspeed: use devm_platform_ioremap_resource() to simplify code
>   rtc: brcmstb-waketimer: use devm_platform_ioremap_resource() to
>     simplify code
>   rtc: at91sam9: use devm_platform_ioremap_resource() to simplify code
>   rtc: cadence: use devm_platform_ioremap_resource() to simplify code
>   rtc: coh901331: use devm_platform_ioremap_resource() to simplify code
>   rtc: davinci: use devm_platform_ioremap_resource() to simplify code
>   rtc: digicolor: use devm_platform_ioremap_resource() to simplify code
>   rtc: ds1216: use devm_platform_ioremap_resource() to simplify code
>   rtc: ds1511: use devm_platform_ioremap_resource() to simplify code
>   rtc: ds1553: use devm_platform_ioremap_resource() to simplify code
>   rtc: ep93xx: use devm_platform_ioremap_resource() to simplify code
>   rtc: jz4740: use devm_platform_ioremap_resource() to simplify code
>   rtc: lpc24xx: use devm_platform_ioremap_resource() to simplify code
>   rtc: lpc32xx: use devm_platform_ioremap_resource() to simplify code
>   rtc: meson: use devm_platform_ioremap_resource() to simplify code
>   rtc: mt7622: use devm_platform_ioremap_resource() to simplify code
>   rtc: mv: use devm_platform_ioremap_resource() to simplify code
>   rtc: omap: use devm_platform_ioremap_resource() to simplify code
>   rtc: pic32: use devm_platform_ioremap_resource() to simplify code
>   rtc: rtd119x: use devm_platform_ioremap_resource() to simplify code
>   rtc: s3c: use devm_platform_ioremap_resource() to simplify code
>   rtc: sa1100: use devm_platform_ioremap_resource() to simplify code
>   rtc: spear: use devm_platform_ioremap_resource() to simplify code
>   rtc: stk17ta8: use devm_platform_ioremap_resource() to simplify code
>   rtc: ds1286: use devm_platform_ioremap_resource() to simplify code
>   rtc: st-lpc: use devm_platform_ioremap_resource() to simplify code
>   rtc: stm32: use devm_platform_ioremap_resource() to simplify code
>   rtc: sunxi: use devm_platform_ioremap_resource() to simplify code
>   rtc: tegra: use devm_platform_ioremap_resource() to simplify code
>   rtc: tx4939: use devm_platform_ioremap_resource() to simplify code
>   rtc: vt8500: use devm_platform_ioremap_resource() to simplify code
>   rtc: xgene: use devm_platform_ioremap_resource() to simplify code
>   rtc: zynqmp: use devm_platform_ioremap_resource() to simplify code
> 
>  drivers/rtc/rtc-asm9260.c           | 4 +---
>  drivers/rtc/rtc-aspeed.c            | 4 +---
>  drivers/rtc/rtc-at91sam9.c          | 4 +---
>  drivers/rtc/rtc-brcmstb-waketimer.c | 4 +---
>  drivers/rtc/rtc-cadence.c           | 4 +---
>  drivers/rtc/rtc-coh901331.c         | 4 +---
>  drivers/rtc/rtc-davinci.c           | 4 +---
>  drivers/rtc/rtc-digicolor.c         | 4 +---
>  drivers/rtc/rtc-ds1216.c            | 4 +---
>  drivers/rtc/rtc-ds1286.c            | 4 +---
>  drivers/rtc/rtc-ds1511.c            | 4 +---
>  drivers/rtc/rtc-ds1553.c            | 4 +---
>  drivers/rtc/rtc-ep93xx.c            | 4 +---
>  drivers/rtc/rtc-jz4740.c            | 4 +---
>  drivers/rtc/rtc-lpc24xx.c           | 4 +---
>  drivers/rtc/rtc-lpc32xx.c           | 4 +---
>  drivers/rtc/rtc-meson.c             | 4 +---
>  drivers/rtc/rtc-mt7622.c            | 4 +---
>  drivers/rtc/rtc-mv.c                | 4 +---
>  drivers/rtc/rtc-omap.c              | 4 +---
>  drivers/rtc/rtc-pic32.c             | 4 +---
>  drivers/rtc/rtc-rtd119x.c           | 4 +---
>  drivers/rtc/rtc-s3c.c               | 4 +---
>  drivers/rtc/rtc-sa1100.c            | 4 +---
>  drivers/rtc/rtc-spear.c             | 4 +---
>  drivers/rtc/rtc-st-lpc.c            | 4 +---
>  drivers/rtc/rtc-stk17ta8.c          | 4 +---
>  drivers/rtc/rtc-stm32.c             | 4 +---
>  drivers/rtc/rtc-sunxi.c             | 4 +---
>  drivers/rtc/rtc-tegra.c             | 4 +---
>  drivers/rtc/rtc-tx4939.c            | 4 +---
>  drivers/rtc/rtc-vt8500.c            | 4 +---
>  drivers/rtc/rtc-xgene.c             | 4 +---
>  drivers/rtc/rtc-zynqmp.c            | 5 +----
>  34 files changed, 34 insertions(+), 103 deletions(-)
> 

I've quashed and applied.

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
