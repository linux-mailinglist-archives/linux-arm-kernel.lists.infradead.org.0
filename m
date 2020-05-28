Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ABE1E54BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kX5DQGfW8PJzqfQp2kmXKWnuTIfdislUuDTaTyEhV2Y=; b=tnghL6MNdPdXT0
	4AQ6zDq8q/vg3uGSPd7t3weZd336isX5XnkaOhPDN+D3x2yrGXxGMYdnwVTwbSQqM7wc5w4BwzTO8
	7srddtH8ubNWK0i3/GY4mqIcx+VSjH6f0L6WMfvWIe4pZA/AyVq3vB1F05LF5v3e6sGtALDJfWJyM
	1DlIWrf5PnTUDvbUAav/jNyDyEKaISx5yW6t8JyRC3Ok1bFjbnzzd5pOS3Q8P3NkN7xpfXEvCpgLi
	zu0HJua4Hsrc4P9IiVrMOWYqh6mYfpmfBlEcii7xtjh2n2wtIJ652t9Cakz4DrDDiJLXh0ETcJMMQ
	grZJBUsOA9hnPcqqzGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je9Of-0000mU-Qi; Thu, 28 May 2020 03:39:57 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je9OU-0000lu-ND
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 03:39:48 +0000
X-Originating-IP: 86.202.110.81
Received: from localhost (lfbn-lyo-1-15-81.w86-202.abo.wanadoo.fr
 [86.202.110.81])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0F3A8FF806;
 Thu, 28 May 2020 03:39:41 +0000 (UTC)
Date: Thu, 28 May 2020 05:39:41 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: sparx5: Add hwmon temperature sensor
Message-ID: <20200528033941.GQ3972@piout.net>
References: <20200513134140.25357-1-lars.povlsen@microchip.com>
 <20200513134140.25357-3-lars.povlsen@microchip.com>
 <20200528022931.GA3238321@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528022931.GA3238321@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_203946_888882_8BD8031B 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, Lars Povlsen <lars.povlsen@microchip.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 27/05/2020 20:29:31-0600, Rob Herring wrote:
> On Wed, May 13, 2020 at 03:41:39PM +0200, Lars Povlsen wrote:
> > This adds a hwmon temperature node sensor to the Sparx5 SoC.
> > 
> > Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> > ---
> >  arch/arm64/boot/dts/microchip/sparx5.dtsi | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
> > index f09a49c41ce19..b5f2d088af30e 100644
> > --- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
> > +++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
> > @@ -233,5 +233,11 @@ i2c1: i2c@600103000 {
> >  			clock-frequency = <100000>;
> >  			clocks = <&ahb_clk>;
> >  		};
> > +
> > +		tmon0: tmon@610508110 {
> > +			compatible = "microchip,sparx5-temp";
> > +			reg = <0x6 0x10508110 0xc>;
> 
> These nodes are all very odd with a couple of registers spread out at 
> randomish addresses. DT nodes should roughly correlate to h/w blocks, 
> not sets of registers for a driver like this seems to be.
> 

The DT nodes correlates to HW block, this and the previous families of
SoCs were designed with packed registers. There is no padding between HW
block registers.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
