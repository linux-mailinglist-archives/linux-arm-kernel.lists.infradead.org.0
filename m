Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4D4116F19
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiieVS4NwclQFrp+hd5CpzwCs/vFsrDrQKjqhuj/iJo=; b=nupa5Pv9QiXw4C
	8O/16BNClpz8A2BGaK7OyUn+OthiWgL6snTWHtAVFxDZeFG9URRKFNLOjr/Jh4mP94y3GWciMQ0mW
	a3EpPwdj4AJ521uCTJOccug1QUUIUVevq5YjOdhbtTY0InOX4SiN87p5yb9uIguifRk70G44zNOak
	4gvHY1fBUNHeRcVPY92JLgQbITij4Lriv/kh1r6mDwvDyEOfLk11+Bc4pqR1KVVEV4/bLWa/gMgGX
	JvY971A3L/IFFg4KH5iWhZWF1//mabRGURQdjUzmMiT9A+XxOrZY6lrS+3TkOtrxvQBzjuRnnRrqb
	zoqK41COdgqibvsmc3VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKBH-0001dl-62; Mon, 09 Dec 2019 14:38:35 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKB9-0001cs-HP
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:38:29 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 3DFECE0012;
 Mon,  9 Dec 2019 14:38:11 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Vid <vladimir.vid@sartura.hr>
Subject: Re: [PATCH 2/2] arm64: dts: uDPU: remove i2c-fast-mode
In-Reply-To: <E1iVvuv-0002sk-Sw@rmk-PC.armlinux.org.uk>
References: <E1iVvuv-0002sk-Sw@rmk-PC.armlinux.org.uk>
Date: Mon, 09 Dec 2019 15:38:10 +0100
Message-ID: <87lfrlh8dp.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063827_709538_9B068574 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Russell King <rmk+kernel@armlinux.org.uk> writes:

> The I2C bus violates the timing specifications when run in fast mode
> on the uDPU, so switch to 100kHz mode.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> index e31813a4f972..2ac1d9ae1e25 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> @@ -119,12 +119,14 @@
>  	status = "okay";
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c1_pins>;
> +	/delete-property/mrvl,i2c-fast-mode;
>  };
>  
>  &i2c1 {
>  	status = "okay";
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2_pins>;
> +	/delete-property/mrvl,i2c-fast-mode;
>  
>  	lm75@48 {
>  		status = "okay";
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
