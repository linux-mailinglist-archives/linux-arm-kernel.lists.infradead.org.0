Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B62133ECA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI+m246KtyJF4GvxGbiYLi0xdSwVpyUCeYLfSypXHfg=; b=mkWd+QjXgiTnGK
	3ItFAuCAobnW0j3RKTY2W1jv+edelpSlVFD57+WnaiMCfmDUYwX55f1RMMPhPUl8s+VstmciqMIXy
	0ZHrQ19Vd0GxSEV2dDhx3MI5odJkHqI858y/PUCq416xGYDMFjMondR4RnifDgXBCbojT1FleGbSN
	fze7H0usdft4b25ygwwVnhkbrv788AaksZQisXb22ddrJdX9pi2xaATMYTtTXSPGj+Tpf/fQ5DJvg
	x8+xoKydLWgmKHbh2D9nOkJ/RFl+ZVf+uvyzrPrM2wmudgnLIehHTupKkmI0aQbebGgp2JNfH7lZc
	dhzFrtECXXsO+sX0NiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip88M-0008Pt-Vw; Wed, 08 Jan 2020 10:00:14 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip888-0008KX-9G
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:00:01 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D5E7EE0009;
 Wed,  8 Jan 2020 09:59:57 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>, Russell King <linux@armlinux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: armada-388-clearfog: add eeprom
In-Reply-To: <21cbe02a2b724c18888322c953e3fdf791b5569b.1577953408.git.baruch@tkos.co.il>
References: <87fb5ab9674efaf5dbf5fed779926eccf248306b.1577953408.git.baruch@tkos.co.il>
 <21cbe02a2b724c18888322c953e3fdf791b5569b.1577953408.git.baruch@tkos.co.il>
Date: Wed, 08 Jan 2020 10:59:57 +0100
Message-ID: <877e22b74y.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_020000_458606_E36FD7BC 
X-CRM114-Status: GOOD (  11.42  )
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

> SolidRun Clearfog Pro rev 2.1 and Clearfog Base rev 1.3 added EEPROM.
> Add DT node for EEPROM description in the .dtsi shared by Clearfog Pro
> and Base.
>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied on mvebu/dt

Thanks,

Gregory
> ---
>  arch/arm/boot/dts/armada-388-clearfog.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/boot/dts/armada-388-clearfog.dtsi b/arch/arm/boot/dts/armada-388-clearfog.dtsi
> index a6edea6f50d1..a0aa1d188f0c 100644
> --- a/arch/arm/boot/dts/armada-388-clearfog.dtsi
> +++ b/arch/arm/boot/dts/armada-388-clearfog.dtsi
> @@ -178,6 +178,12 @@ mikrobus_adc: mcp3021@4c {
>  		compatible = "microchip,mcp3021";
>  		reg = <0x4c>;
>  	};
> +
> +	eeprom@52 {
> +		compatible = "atmel,24c02";
> +		reg = <0x52>;
> +		pagesize = <16>;
> +	};
>  };
>  
>  &i2c1 {
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
