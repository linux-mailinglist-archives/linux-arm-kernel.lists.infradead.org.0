Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FB01D68C2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZzcK+vdGH+0IyeOSxvuz5LEKKurQQS+jtEmQSVibTc=; b=PQzLvetTA9H8Rd
	zwDqKu42qS8oRGPt4/qFQ8nkOs28GFzbo9MibTOxZkotwIZtgG6ed+bqdHqLe1d6Yvz2VDpKeBzIH
	Ge7L5BxDIg7o6Uu+c8GEzSMen+qUyLllw5gQNPfXepON89Cw8mej5TQ4wJzH2tYT6iJshF94sv1d9
	vb2T+Qn2eQyBSW/48I4aAlXeHieXNyzeURlaWwfR0fpdr243W/Ic59JChMRH9ossIGGIaLu/JUkO1
	Usu4PYrjwpmGThVf9yXdaWhqhxLxHo2ZVDcm0hxa9WAFiy86SZBBS5isAdDL/P409EN2OBxHUNBYQ
	Bm075T5kraD8nytPF1EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaLs6-0003Hl-SB; Sun, 17 May 2020 16:10:38 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaLry-0003HJ-Eb
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:10:32 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id CAC9440005;
 Sun, 17 May 2020 16:10:27 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <rmk+kernel@armlinux.org.uk>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: add uDPU i2c bus recovery
In-Reply-To: <E1jWGXd-0000Z7-1n@rmk-PC.armlinux.org.uk>
References: <20200506094001.GP1551@shell.armlinux.org.uk>
 <E1jWGXd-0000Z7-1n@rmk-PC.armlinux.org.uk>
Date: Sun, 17 May 2020 18:10:27 +0200
Message-ID: <87eerih79o.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_091030_627364_048A923A 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Vladimir Vid <vladimir.vid@sartura.hr>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied on mvebu/dt64

Thanks,

Gregory


> ---
>  .../boot/dts/marvell/armada-3720-uDPU.dts     | 22 +++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> index 7eb6c1796cef..95d46e8d081c 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> @@ -117,18 +117,36 @@
>  	};
>  };
>  
> +&pinctrl_nb {
> +	i2c1_recovery_pins: i2c1-recovery-pins {
> +		groups = "i2c1";
> +		function = "gpio";
> +	};
> +
> +	i2c2_recovery_pins: i2c2-recovery-pins {
> +		groups = "i2c2";
> +		function = "gpio";
> +	};
> +};
> +
>  &i2c0 {
>  	status = "okay";
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "recovery";
>  	pinctrl-0 = <&i2c1_pins>;
> +	pinctrl-1 = <&i2c1_recovery_pins>;
>  	/delete-property/mrvl,i2c-fast-mode;
> +	scl-gpios = <&gpionb 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpionb 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  };
>  
>  &i2c1 {
>  	status = "okay";
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "recovery";
>  	pinctrl-0 = <&i2c2_pins>;
> +	pinctrl-1 = <&i2c2_recovery_pins>;
>  	/delete-property/mrvl,i2c-fast-mode;
> +	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
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
