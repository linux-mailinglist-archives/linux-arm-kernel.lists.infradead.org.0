Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02553DA72B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qn7WorSSvLE8c0OHUcKAe41DWt4ZRv7mZpDofgRJLM0=; b=RettogcSz5Q6NNP65Y+ry5TkA
	X0PcF1gUdNxdXCRUF407awQC3kyD0Iv3rLcfe6AritEcG+XTOb8NXFDPW8f4PlEsPwKoflYQYxS4M
	7knlrfqK6b5GKK2o9gUQIxKn+lSunVnA2TLxrtoz2W3EqCvCQwuaXZnkV2quHWO8kCRE1Ql7cexA7
	opbkhUwc+h83utqWSE0SlxBUzGrsi7OggaEpNV/jKCm67/dcU7gAApk/vEmR68iQt0nbOjrd8RX73
	hobWwYeHmsCOjnlarKDrgsMsj961ZgLiFGIYOzKN1I8/Z8CllhdE8KKDnhliaU86lQSfYwjdOVKbm
	A2473RpEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL14g-0007b9-Nh; Thu, 17 Oct 2019 08:23:58 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL14W-0007aO-BZ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:23:51 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iL14J-0002NX-Lg; Thu, 17 Oct 2019 10:23:35 +0200
To: Daode Huang <huangdaode@hisilicon.com>
Subject: Re: [PATCH] use =?UTF-8?Q?devm=5Fplatform=5Fioremap=5Fresource=28?=
 =?UTF-8?Q?=29=20for=20irqchip=20drivers?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 17 Oct 2019 09:23:34 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1571296423-208359-1-git-send-email-huangdaode@hisilicon.com>
References: <1571296423-208359-1-git-send-email-huangdaode@hisilicon.com>
Message-ID: <9bbcce19c777583815c92ce3c2ff2586@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: huangdaode@hisilicon.com, jason@lakedaemon.net,
 andrew@lunn.ch, gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
 tglx@linutronix.de, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 nm@ti.com, t-kristo@ti.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_012349_951621_E90506FB 
X-CRM114-Status: GOOD (  10.32  )
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
Cc: nm@ti.com, andrew@lunn.ch, jason@lakedaemon.net,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 alexandre.torgue@st.com, mcoquelin.stm32@gmail.com, ssantosh@kernel.org,
 tglx@linutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-17 08:13, Daode Huang wrote:
> From: Daode Huang <huangdaode@hislicon.com>
>
> Use the new helper that wraps the calls to platform_get_resource()
> and devm_ioremap_resource() together
>
> Signed-off-by: Daode Huang <huangdaode@hislicon.com>
> ---
>  drivers/irqchip/irq-mvebu-icu.c   | 3 +--
>  drivers/irqchip/irq-mvebu-pic.c   | 3 +--
>  drivers/irqchip/irq-stm32-exti.c  | 3 +--
>  drivers/irqchip/irq-ti-sci-inta.c | 3 +--
>  drivers/irqchip/irq-ts4800.c      | 3 +--
>  5 files changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/irqchip/irq-mvebu-icu.c
> b/drivers/irqchip/irq-mvebu-icu.c
> index 547045d..ddf9b0d 100644
> --- a/drivers/irqchip/irq-mvebu-icu.c
> +++ b/drivers/irqchip/irq-mvebu-icu.c
> @@ -357,8 +357,7 @@ static int mvebu_icu_probe(struct platform_device 
> *pdev)
>
>  	icu->dev = &pdev->dev;
>
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	icu->base = devm_ioremap_resource(&pdev->dev, res);
> +	icu->base = devm_platform_ioremap_resource(pdev, res);

void __iomem *devm_platform_ioremap_resource(struct platform_device 
*pdev,
                                              unsigned int index)

What could possibly go wrong? I'd suggest you start compiling (and 
possibly
testing) the code you change before sending patches...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
