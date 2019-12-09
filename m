Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6845B116F14
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSXWhTzf4erEebjtbyYcaL38XWv5WiEiy3WQc2Wr5kA=; b=blx9uZNkzagn9x
	Pv2lpUtO8hd4TVC91uYfWm2iJqNDB9CAxSmpS8YrA73o208OYn5ljP1nQdBN2G+mc3ez6k9IJkGb5
	3yJ7IBFLsRgQC4/Un59cJ4aWUWcass9X3Isei46jsuckqmda/HEZO6oWm+o7TCUBUd5GCzHdaTyWR
	tns3lU9teVpSMFC65CUHE8xqfLN36lgdRXglKu7/VgYwWkz/E8B6VHSEfi8VibqsuW0wwCexWkPPu
	RE81RWKvzGQdIYESCBtyKVV3DUk8DKZYJ9OaQxpo2pZ8LXNLxaL5v/qlnjaPxUtNG2QyaGNGvKQWC
	Exat9mOTYNjTrzCS2k6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKAo-0001Om-9h; Mon, 09 Dec 2019 14:38:06 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKAf-0001O7-TE
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:38:00 +0000
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id BFCC1200024;
 Mon,  9 Dec 2019 14:37:50 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Vid <vladimir.vid@sartura.hr>
Subject: Re: [PATCH 1/2] arm64: dts: uDPU: fix broken ethernet
In-Reply-To: <E1iVvuq-0002sd-KR@rmk-PC.armlinux.org.uk>
References: <E1iVvuq-0002sd-KR@rmk-PC.armlinux.org.uk>
Date: Mon, 09 Dec 2019 15:37:50 +0100
Message-ID: <87o8whh8e9.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063758_811648_DC6813EA 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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

> The uDPU uses both ethernet controllers, which ties up COMPHY 0 for
> eth1 and COMPHY 1 for eth0, with no USB3 comphy.  The addition of
> COMPHY support made the kernel override the setup by the boot loader
> breaking this platform by assuming that COMPHY 0 was always used for
> USB3.  Delete the USB3 COMPHY definition at platform level, and add
> phy specifications for the ethernet channels.
>
> Fixes: bd3d25b07342 ("arm64: dts: marvell: armada-37xx: link USB hosts with their PHYs")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> index bd4aab6092e0..e31813a4f972 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> @@ -143,6 +143,7 @@
>  	phy-mode = "sgmii";
>  	status = "okay";
>  	managed = "in-band-status";
> +	phys = <&comphy1 0>;
>  	sfp = <&sfp_eth0>;
>  };
>  
> @@ -150,11 +151,14 @@
>  	phy-mode = "sgmii";
>  	status = "okay";
>  	managed = "in-band-status";
> +	phys = <&comphy0 1>;
>  	sfp = <&sfp_eth1>;
>  };
>  
>  &usb3 {
>  	status = "okay";
> +	phys = <&usb2_utmi_otg_phy>;
> +	phy-names = "usb2-utmi-otg-phy";
>  };
>  
>  &uart0 {
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
