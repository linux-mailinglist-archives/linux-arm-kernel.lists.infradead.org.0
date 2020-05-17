Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928AC1D6B33
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIRkN2sSuEcf8VxgXyzHldr2K1ySSPbVS7PWnyVkCRs=; b=Uv/TKqT+9379q9
	fzbqD+5Ovxp+S8xHlsJTPXJWIuhgmIkdkxjh44LYBBcac+ea2EMF3Ec39kuObf/jMeEfL4nUBCZ5Y
	FSduF4JIYY7NcfATq5Dfp41RlVsHPL8jwJYQ50ErYXDrUcc88yK/P/IlqowxxXMb+J7uB8VM5iPV1
	z3LaE8oO2tLW7W9Ua2Sp1WKef4d4lRPFDqxYjX76i9KPEUr50rZfdHBNOOYzzzmr2YSuba9cWcZfq
	FIlryc7qLZV51wnZ3Js3j7eLSa7/8Zd9nkXXFe7JtiOSnjGzl4ljko6EjQDD3Ow/VKzb8NYU+q8wK
	dNVApAwedu41FZFMANtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaMWm-0000pM-Kg; Sun, 17 May 2020 16:52:40 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaMWc-0000kg-E3
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:52:32 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E6DC8E0006;
 Sun, 17 May 2020 16:52:17 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: "Brian J. Tarricone" <brian@tarricone.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: kirkwood: ReadyNAS NV+v2: Add LCD panel
In-Reply-To: <20200425192820.2499185-1-brian@tarricone.org>
References: <20200425142736.GC1095011@lunn.ch>
 <20200425192820.2499185-1-brian@tarricone.org>
Date: Sun, 17 May 2020 18:52:17 +0200
Message-ID: <875zcuh5by.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_095230_617303_A97300F5 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, "Brian J. Tarricone" <brian@tarricone.org>,
 jason@lakedaemon.net, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Brian,

> The NV+ v2 has a WH1602 LCD panel (which is just a rebranded HD44780),
> similar to the Netgear RN104, just with different GPIO assignments.
>
> Signed-off-by: Brian J. Tarricone <brian@tarricone.org>


Applied on mvebu/dt

Thanks,

Gregory

> ---
>  .../boot/dts/kirkwood-netgear_readynas_nv+_v2.dts  | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts b/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts
> index 8cc8550242ef..b13aee570804 100644
> --- a/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts
> +++ b/arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dts
> @@ -113,6 +113,20 @@ sata@80000 { /* Connected to Marvell 88SM4140 SATA port multiplier */
>  		};
>  	};
>  
> +	auxdisplay {
> +		compatible = "hit,hd44780";
> +		data-gpios = <&gpio0 17 GPIO_ACTIVE_HIGH>,
> +				<&gpio1 1 GPIO_ACTIVE_HIGH>,
> +				<&gpio1 3 GPIO_ACTIVE_HIGH>,
> +				<&gpio1 17 GPIO_ACTIVE_HIGH>;
> +		enable-gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
> +		rs-gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
> +		rw-gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
> +		backlight-gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
> +		display-height-chars = <2>;
> +		display-width-chars = <16>;
> +	};
> +
>  	gpio-leds {
>  		compatible = "gpio-leds";
>  		pinctrl-0 = < &pmx_led_blue_power &pmx_led_blue_backup
> -- 
> 2.26.2
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
