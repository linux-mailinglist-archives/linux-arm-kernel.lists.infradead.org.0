Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9983B5E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8z6vmmjHHiNnoBnmU1xAkySlYuXmZ6GWFXYerleIY1Q=; b=tv3KcntcCChXIU
	vR0zIh56fuevOMqhcwB4f1gRLfLEoynjh8rJgi8Ilz8BIokVHavSOAOufcXEim23nxuXHM5fommH7
	rTfrs7DjFd7NMVY7O7rwLMLXWx+0vRAVTkwGLEDSMtJwipyZeh/3t5UoShlCwPNJXMETA9OsNFrKD
	iiB3E/KJlIjVGrmvjERk+2KzOQ0cyAWE2TF9jIdciaK7dIx6xm/TV/QocnnfIokHsqLsGa9U/tiBU
	LyFKEA/ULjxbB2GBrVYzKowggZV4zdEWeilZKwkaGMQ0KvlT/3RT3TWw2H38+Rp3uv/zLS541Q9op
	zoJWOxasTOOCeREg/psg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKD5-0000Ez-KO; Mon, 10 Jun 2019 13:19:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haKCt-0000EO-5i
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:19:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3C0C344;
 Mon, 10 Jun 2019 06:19:25 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A58933F557;
 Mon, 10 Jun 2019 06:19:23 -0700 (PDT)
Date: Mon, 10 Jun 2019 14:19:21 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Abel Vesa <abelvesa@gmail.com>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Message-ID: <20190610131921.GB14647@lakrids.cambridge.arm.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610121346.15779-1-abel.vesa@nxp.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_061927_256486_2A68D074 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bai Ping <ping.bai@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 03:13:44PM +0300, Abel Vesa wrote:
> This is another alternative for the RFC:
> https://lkml.org/lkml/2019/3/27/545
> 
> This new workaround proposal is a little bit more hacky but more contained
> since everything is done within the irq-imx-gpcv2 driver.
> 
> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
> handler and registers instead a wrapper which calls in the 'hijacked' 
> handler, after that calling into EL3 which will take care of the actual
> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.

IIUC from last time [1,2], this erratum affects all interrupts
targetting teh idle CPU, not just IPIs, so even if the bodge is more
self-contained, it doesn't really solve the issue, and there are still
cases where a CPU will not be woken from idle when it should be (e.g.
upon receipt of an LPI).

IIUC, Marc, Lorenzo, and Rafael [1,2,3] all thought that that this was
not worthwhile. What's changed?

Thanks,
Mark.

[1] https://lkml.org/lkml/2019/3/28/197
[2] https://lkml.org/lkml/2019/3/28/203
[3] https://lkml.org/lkml/2019/3/28/198

> 
> I also have the patches ready for TF-A but I'll hold on to them until I see if
> this has a chance of getting in.
> 
> Abel Vesa (2):
>   irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ ERR11171
>   arm64: dts: imx8mq: Add idle states and gpcv2 wake_request broken
>     property
> 
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 20 +++++++++++++++
>  drivers/irqchip/irq-imx-gpcv2.c           | 42 +++++++++++++++++++++++++++++++
>  2 files changed, 62 insertions(+)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
