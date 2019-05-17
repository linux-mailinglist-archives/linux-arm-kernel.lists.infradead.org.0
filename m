Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF51021565
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYAGZwoKknde2FLhVeQoBHLhBdJVyK8yG0ZCXCcZgwY=; b=jzgbs0GO46hw24
	g3tPGUInzcwtGBgSmgC9l76j/pMkNzpL6uztSZkBwkoSxVcpZw6lbgdFw3HyR8E9VFoP4tLldMud0
	fcl+4tW02SKud65fsyIyD/6C/94KbZbQvzkcgzmpJeFNlaCkH1o+rrU9FV3kSZ8qSUNGmenc2irV5
	Afxt0ONKE5z1mbQ6lIKe5UIN2Z1FuaaDO5jHrGb66g2/rYrXMCJJtCv5rxlhAyH56vlSQDqa1VhnE
	FCdyaGzTotdrU+vN3S2vpy5+3YQq7Jol4PkeQwnjzQjzdgng+1w/Izy9XFe5B+STiCt/lZU0kn+bi
	EI3xltztT0CsfPRiyY4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYKS-0003lx-Ko; Fri, 17 May 2019 08:35:00 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYKJ-0003bA-Ea
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 08:34:53 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id DA8604000F;
 Fri, 17 May 2019 08:34:40 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Ash Hughes <sehguh.hsa@gmail.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: armada: netgear-rn104: Add LCD to RN104 dts.
In-Reply-To: <20190517001705.GA5451@ash-clevo.lan>
References: <20190517001705.GA5451@ash-clevo.lan>
Date: Fri, 17 May 2019 10:34:39 +0200
Message-ID: <87v9y9zdgg.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_013451_642546_75E67BB2 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ash Hughes,

> Adds the LCD on the rn104 to its dts file.
>
Looks good,

Applied on mvebu/dt

Thanks,

Gregory

> Signed-off-by: Ash Hughes <sehguh.hsa@gmail.com>
> ---
>  arch/arm/boot/dts/armada-370-netgear-rn104.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm/boot/dts/armada-370-netgear-rn104.dts b/arch/arm/boot/dts/armada-370-netgear-rn104.dts
> index 9fd1cb9f4992..85e2e9e27a9f 100644
> --- a/arch/arm/boot/dts/armada-370-netgear-rn104.dts
> +++ b/arch/arm/boot/dts/armada-370-netgear-rn104.dts
> @@ -143,6 +143,20 @@
>  		};
>  	};
>  
> +	auxdisplay {
> +		compatible = "hit,hd44780";
> +		data-gpios = <&gpio1 25 GPIO_ACTIVE_HIGH>,
> +				<&gpio1 26 GPIO_ACTIVE_HIGH>,
> +				<&gpio1 27 GPIO_ACTIVE_HIGH>,
> +				<&gpio1 29 GPIO_ACTIVE_HIGH>;
> +		enable-gpios = <&gpio1 24 GPIO_ACTIVE_HIGH>;
> +		rs-gpios = <&gpio1 22 GPIO_ACTIVE_HIGH>;
> +		rw-gpios = <&gpio1 23 GPIO_ACTIVE_HIGH>;
> +		backlight-gpios = <&gpio1 21 GPIO_ACTIVE_LOW>;
> +		display-height-chars = <2>;
> +		display-width-chars = <16>;
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  		pinctrl-0 = <&backup_button_pin
> -- 
> 2.21.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
