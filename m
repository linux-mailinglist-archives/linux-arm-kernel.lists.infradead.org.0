Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19351133EC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHmhC2UBFScDciuzKPj27PLF2oNZFcvmLIqU9Q34k4I=; b=hjIsUJpxonizh/
	nTlQuxRziPxvsAnaSvOZreFV3dbb90CmYBgthJDKrmzq6rTPapa8tAeNnJrzJ333fbyEDqil0Ns0U
	7jHYj7DW3pfOuBolOEvpB00krcuxb3T59HOSGgOdfZl7GQIbUSwZXZajQ1+/9MGnOO+GQrkjaR301
	5TG40QZN96Ey9nFNJ2vpfOlfpD1sL55D8PFiK0svtg2q1BaOC8x0/dq8qynOrw19nVrL1J7ch+2Vu
	JgouEmeq2Xyt5yxZQTuT5pGeuvLrvHrslZlMFE3Ng/T+q+RhVKj3ufvPGWdexUXP4BhEoLIkp1zLO
	hIUUrRJJduCU9ZN3HPbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip87z-00086u-Gl; Wed, 08 Jan 2020 09:59:51 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip87o-00084b-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:59:42 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 8C9BDE000E;
 Wed,  8 Jan 2020 09:59:38 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>, Russell King <linux@armlinux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: armada-38x-solidrun-microsom: add eeprom
In-Reply-To: <f584a160873781c122242fefd11b752ab8882eab.1577953408.git.baruch@tkos.co.il>
References: <87fb5ab9674efaf5dbf5fed779926eccf248306b.1577953408.git.baruch@tkos.co.il>
 <f584a160873781c122242fefd11b752ab8882eab.1577953408.git.baruch@tkos.co.il>
Date: Wed, 08 Jan 2020 10:59:38 +0100
Message-ID: <87a76yb75h.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_015940_965886_FCEB8EA7 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dennis Gilmore <dennis@ausil.us>, Baruch Siach <baruch@tkos.co.il>,
 Aditya Prayoga <aditya@kobol.io>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baruch,

> SolidRun Armada 38x SOM rev 2.1 added EEPROM. Add DT node for EEPROM
> description.
>
> Cc: Dennis Gilmore <dennis@ausil.us>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied on mvebu/dt

Thanks,

Gregory
> ---
>  arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi b/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
> index cd39312fb50d..363ac4238859 100644
> --- a/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
> +++ b/arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi
> @@ -76,6 +76,12 @@ &i2c0 {
>  	pinctrl-0 = <&i2c0_pins>;
>  	pinctrl-names = "default";
>  	status = "okay";
> +
> +	eeprom@53 {
> +		compatible = "atmel,24c02";
> +		reg = <0x53>;
> +		pagesize = <16>;
> +	};
>  };
>  
>  &pinctrl {
> -- 
> 2.24.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
