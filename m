Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDB81261C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EoqtkyQZz65GGZyVQY53of4zhzE6ZcKnj0imH3MaV0Y=; b=KHoKWohjbXRzmTIayUEKj+5gQ
	//IF5h2SAECUarlwrdWVyzWEB3HE+uzXuiqMNBjRcyTBL6Fh0t4QuGhZUH6KMCDif13PyVKH491vY
	4jjFxoEkApWnjHaFEbnUU86bwBCNN2mFSjiBLlwsAK1I/c3Y09qsvfqLvGQHrg3TNbACj2FHPZ6Kq
	v6631Ugy1yTp8VE6Ilb8rIgoffiRcCCahWndE2korJa0zRfAktrsKl89Y10mwDcHggW42qEuQz3vW
	t0S39tFIehKu8vY+wiQrNzKGKY1I1z1LF5ugUqRwKywRFMtxHytK0TvfvLoADB9lrxI2TD7dGzFWE
	uz+3feasw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuhe-0008LB-CN; Thu, 19 Dec 2019 12:14:50 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihuhU-0008KH-7N
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 12:14:41 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihuhJ-00076z-VD; Thu, 19 Dec 2019 13:14:29 +0100
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V2 0/2] irqchip: add NXP INTMUX interrupt controller
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 19 Dec 2019 12:14:29 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1576750865-14442-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1576750865-14442-1-git-send-email-qiangqing.zhang@nxp.com>
Message-ID: <f80a236884aeba78dfa45596dcb20255@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: qiangqing.zhang@nxp.com, tglx@linutronix.de,
 jason@lakedaemon.net, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org, fugang.duan@nxp.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_041440_409050_485C80B9 
X-CRM114-Status: GOOD (  13.58  )
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
Cc: mark.rutland@arm.com, fugang.duan@nxp.com, jason@lakedaemon.net,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, tglx@linutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-19 10:21, Joakim Zhang wrote:
> Hi Marc,
>
>    Registering domain for each channel is indeed a bit unreasonable, 
> I have
> changed the driver to support only one channel (channel 0 by default) 
> as
> muti-channels is designed to route interrupt to different cores. The 
> fixed
> channel is enough for us.

But that's not what the HW does, right? Next time, you will post
the patches that enabled multiple channels, and the interrupt specifier
will have to change, which will impact all existing DTs.

So please do the right thing from the start. Add channel selection to
the interrupt specifier. Pick the right irq domain with a .select()
callback, and your driver will magically work.

Thanks,

         M.

>   Thanks for your kindly review.
>
> ChangeLog:
> V1->V2:	*squash patches:
> 		drivers/irqchip: enable INTMUX interrupt controller driver
>  		drivers/irqchip: add NXP INTMUX interrupt multiplexer support
> 	*remove properity "fsl,intmux_chans", only support channel 0 by
> 	default.
> 	*delete two unused macros.
> 	*align the various field in struct intmux_data.
> 	*turn to spin lock _irqsave version.
> 	*delete struct intmux_irqchip_data
> 	*disable interrupt in probe stage and clear pending status in remove
> 	stage
>
> Joakim Zhang (2):
>   dt-bindings/irq: add binding for NXP INTMUX interrupt multiplexer
>   drivers/irqchip: add NXP INTMUX interrupt multiplexer support
>
>  .../interrupt-controller/fsl,intmux.txt       |  28 ++
>  drivers/irqchip/Kconfig                       |   6 +
>  drivers/irqchip/Makefile                      |   1 +
>  drivers/irqchip/irq-imx-intmux.c              | 240 
> ++++++++++++++++++
>  4 files changed, 275 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
>  create mode 100644 drivers/irqchip/irq-imx-intmux.c

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
