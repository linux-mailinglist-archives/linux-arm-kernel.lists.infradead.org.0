Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C353133281
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjF5wfbCMPdQvBMxJVTZtG2NumbkG8Jx+fL0cIp38XE=; b=mzIVM/xw/g957O
	kiE0rkogLNJphscobRzLuJ9e2FWCt2mswgcPlBRgpJ4O9POq68yXrj5Udzoz+Y3FkURtVW5aj4pBZ
	CJAhV2Fu1ssAqEiIzDDPYmSerM2UMxPlMByQzCOxspiCJpBwLj57om0baNz6kijZDEx4aIE06Ye5/
	83363lwy9ouART++nVU31yhwPFXHomn13mtyCFUenQRkz0SxnUeAEfnOuNUZuuhdyT67tcLjKrafb
	JeO8/XSuGvAcUB+azLntW2QbtBI4aASavpTrie9VVyvjRby6UVSGMUc3WZc/iZkqXunXkCGa3q8XT
	dKwV5PjdPvmaaBFMj+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoC5-000475-To; Mon, 03 Jun 2019 14:44:13 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoBx-00046K-21
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:44:06 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 76C5AC000B;
 Mon,  3 Jun 2019 14:43:42 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: Disable AP I2C on Armada-8040-DB
In-Reply-To: <20190521143749.488-1-miquel.raynal@bootlin.com>
References: <20190521143749.488-1-miquel.raynal@bootlin.com>
Date: Mon, 03 Jun 2019 16:43:41 +0200
Message-ID: <87muiyk9uq.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_074405_284597_79DFC728 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Konstantin Porotchkin <kostap@marvell.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel,

> From: Konstantin Porotchkin <kostap@marvell.com>
>
> While AP I2C bus was available to users in early revisions of the SoC,
> this is not the case anymore since eMMC was connected to the AP. Most
> users do not have access to this I2C bus so do not enable it in the
> board device tree.
>
> As there are three I2C buses enabled on this board, add an alias to be
> sure the two other buses keep their initial numbering.
>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> [<miquel.raynal@bootlin.com>: Reword commit message, add alias]
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-db.dts | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> index 9f4f939ab65f..d6e9c014c2f9 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> @@ -27,6 +27,8 @@
>  		ethernet1 = &cp0_eth2;
>  		ethernet2 = &cp1_eth0;
>  		ethernet3 = &cp1_eth1;
> +		i2c1 = &cp0_i2c0;
> +		i2c2 = &cp1_i2c0;
>  	};
>  
>  	cp0_reg_usb3_0_vbus: cp0-usb3-0-vbus {
> @@ -72,11 +74,6 @@
>  	};
>  };
>  
> -&i2c0 {
> -	status = "okay";
> -	clock-frequency = <100000>;
> -};
> -
>  &spi0 {
>  	status = "okay";
>  
> -- 
> 2.19.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
