Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33751116F2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:39:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHR9VpBDx7VHAiUMFinZlWNpiPKlkBoSOirV3cyOclw=; b=fJEVuzOJxq0B0j
	lcT3LVv2C3fXrJdps4xrZpQ/dwh685L/o/ij/HQjN6KjFFeMLGmAQhKGP+is0dNQ8IA4HklMYogw6
	MFmmTV++yYlVGsnVGwvKBSqcboKknxcKGNOHaj2EdbFVeG4nfa12V1BrKEMZMBfbv6jAjKaP4kn9E
	ZckcFh7s7Op5FY1uA/ba0sq+YferbI+ax2ttHccz03M0X4OK1FiWbeuBV4HMBURajZJF+XuC3voM9
	A2VlbMD0+Uixe2Od3j7JQm2eRQVVc73e0g0PSK4a+zTon9pWr9ZZeUeeKgvQPT2JU+MsmVxZLAOwt
	T+ICh22ci8EqiBvyuAMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKBl-000261-QJ; Mon, 09 Dec 2019 14:39:05 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKBW-0001wz-Lo
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:38:52 +0000
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 9A5F224000A;
 Mon,  9 Dec 2019 14:38:41 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Vid <vladimir.vid@sartura.hr>
Subject: Re: [PATCH] arm64: dts: uDPU: SFP cages support 3W modules
In-Reply-To: <E1iXCMq-00040q-Bm@rmk-PC.armlinux.org.uk>
References: <E1iXCMq-00040q-Bm@rmk-PC.armlinux.org.uk>
Date: Mon, 09 Dec 2019 15:38:41 +0100
Message-ID: <87immph8cu.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063850_922922_8093DD9D 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

> The SFP cages are designed to support up to 3W modules, such as G.hn,
> G.fast and MoCA modules. Although there is no way for such modules to
> declare to software that they consume 3W, we document in DT that this
> is the designed power level for these cages.
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
> index 2ac1d9ae1e25..7eb6c1796cef 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> @@ -69,6 +69,7 @@
>  		mod-def0-gpio = <&gpiosb 3 GPIO_ACTIVE_LOW>;
>  		tx-disable-gpio = <&gpiosb 4 GPIO_ACTIVE_HIGH>;
>  		tx-fault-gpio = <&gpiosb 5 GPIO_ACTIVE_HIGH>;
> +		maximum-power-milliwatt = <3000>;
>  	};
>  
>  	sfp_eth1: sfp-eth1 {
> @@ -78,6 +79,7 @@
>  		mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
>  		tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
>  		tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
> +		maximum-power-milliwatt = <3000>;
>  	};
>  };
>  
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
