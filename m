Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAB48CB7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTCFbu+NGJldYdk84N+qONmnfJiQis+bQJR0S/+GOLE=; b=XDVdhAcLFOjCfD
	6BEgHiyhRDPYD7asNp9UMcyWvs85flcyCm1sSeL9N9GqDu6ccVNge/A5s4et6G3MtKXJEh/O4wFZ3
	2dIsKGrJgUmvNGnQ8a8gzB34dfHxfS90MxxqC7UqAg1DCaTz1tvHvrkJcpii7vpjccPaigz96NU66
	1qoyIUX1OPMn+lVnaCw6zhsPcyETdM2lmKKW4k8jk/M+mYVDu9mdnNnogPIHrNR8kw8cEThIR4WXu
	m1qeYlLWurJH9wD8esoiTTQHs/nSBHWL4RSuH7taC6xhqcKRZksFFt+Kw5dJMbkUfywnuSOC5dbLK
	l5/rp3U1b7J3YapRl0Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmKW-0005E0-Uh; Wed, 14 Aug 2019 06:00:17 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmKC-0005DG-T7
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 05:59:59 +0000
Received: from sapphire.tkos.co.il (unknown [192.168.100.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id E16B74404F8;
 Wed, 14 Aug 2019 08:59:46 +0300 (IDT)
Date: Wed, 14 Aug 2019 08:59:45 +0300
From: Baruch Siach <baruch@tkos.co.il>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2 1/2] arm64: dts: fsl: add support for Hummingboard Pulse
Message-ID: <20190814055945.jc5heqnryczpxxq7@sapphire.tkos.co.il>
References: <48ba74b2dca636f8c0ad1287017193b7eb91a5d1.1565286513.git.baruch@tkos.co.il>
 <20190809044754.r4f4y3hi7rkjbfpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809044754.r4f4y3hi7rkjbfpa@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225957_188408_F7391182 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Jon Nettleton <jon@solid-run.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

On Fri, Aug 09, 2019 at 06:47:54AM +0200, Marco Felsch wrote:
> On 19-08-08 20:48, Baruch Siach wrote:
> > From: Jon Nettleton <jon@solid-run.com>
> > 
> > The SolidRun Hummingboard Pulse carrier board carries the SolidRun
> > i.MX8MQ based SOM.
> > 
> > Notably missing is PCIe support that depends on analog PLLOUT clock.
> > Current imx clk driver does not support this clock.
> > 
> > Signed-off-by: Jon Nettleton <jon@solid-run.com>
> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---

[...]

> > +#include "imx8mq-sr-som.dtsi"
> > +
> > +/ {
> > +	model = "SolidRun i.MX8MQ HummingBoard Pulse";
> > +	compatible = "solidrun,hummingboard-pulse", "fsl,imx8mq";
> > +
> > +	chosen {
> > +		stdout-path = &uart1;
> > +	};
> 
> Do we need that node? In case of barebox this is only relevant to the
> barebox dts.

This is a standard DT property that describes the boot console. Most other dts 
files have it.

[...]

> > +&iomuxc {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_hog>;
> > +
> > +	pinctrl_hog: hoggrp {
> > +		fsl,pins = <
> > +			/* MikroBus Analog */
> > +			MX8MQ_IOMUXC_NAND_DATA05_GPIO3_IO11		0x41
> > +			/* MikroBus Reset */
> > +			MX8MQ_IOMUXC_SAI2_RXD0_GPIO4_IO23		0x41
> > +			/*
> > +			 * The following 2 pins need to be commented out and
> > +			 * reconfigured to enable RTS/CTS on UART3
> > +			 */
> > +			/* MikroBus PWM */
> > +			MX8MQ_IOMUXC_ECSPI1_MISO_GPIO5_IO8		0x41
> > +			/* MikroBus INT */
> > +			MX8MQ_IOMUXC_ECSPI1_SS0_GPIO5_IO9		0x41
> > +		>;
> > +	};
> 
> Sorry for asking but whats a MikroBus?

This is a common IO form factor and pinout from MikroElektronika.

  https://www.mikroe.com/mikrobus

> > +&uart1 { /* console */
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_uart1>;
> > +	assigned-clocks = <&clk IMX8MQ_CLK_UART1>;
> > +	assigned-clock-parents = <&clk IMX8MQ_CLK_25M>;
> > +	assigned-clock-rates = <25000000>;
> 
> It seems that the clock parent reordering apply always if someone is
> using this SoM. So should we do the reordering also for uart2/3 here?

I'm not following you here. Why do you think we need the clock definition for 
uart2/uart3 here in the SOM .dtsi?

baruch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
