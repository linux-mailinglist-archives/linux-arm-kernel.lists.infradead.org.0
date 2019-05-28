Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4454C2C729
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pu6uB5o2VQNGIpPM5NxK05mtP2DdpybhehiH3MdWe6U=; b=UZR2sICacnN7Wm
	EtxUrXuk2WY5AlPTJ0h7We8ZthKhfx0J+KfhX2zJ++dNN8w6cKJVoeXQM8PIUa9NVaTpF9bNOjQcq
	fzPw6CMxM0KjYb+MydSfD17k395fw47zmBNP5bzzFYkkVy+MjlB/9rXheug5FJBRI9AVbP62N/OCE
	LO4qXuPGtXjABUbWk5FucYvvjgMwqnkzmwz9SXeHhiKpbeUnBbjMPI7iNcXJzJjw5KCSUak/QSYhS
	5Q+ktSEGaNNMlvMDAucDtV/I2Xxw5YaQjDrqKHEu320pSjD5D3TIGhMJ52HK6Ic4Ay7D7RehHM9x8
	JeTmcVEfIvtSinZp5IgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbht-00072h-65; Tue, 28 May 2019 12:59:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbhn-00071V-6F
 for linux-arm-kernel@bombadil.infradead.org; Tue, 28 May 2019 12:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HbSrTVkTKBqdvJbLrVRBfPckPWJ6j7nLG2UxYwC6wGI=; b=gTWB50NFISRgHLYq7nP0tLSBS9
 mmZ/tuoqJJINQj0GOsem9zqrmDC4JAvAN9IDphqmxyEK79t9XRckzaw2KRzqOhvQB9JCfXXAvzgIg
 XEUe50yyhI1MNruOQmiRZPYmjODRYBgRHvrRGX1ILGSGZAOyWcZKCeyzC0r517OVEIbSUVGlXXkQt
 MmkLzFgAKJbykmW+F+pNueB4L9LoJR5KZjwPQHycvJ0igZqxdc8hO/V2CE67p4Mdy3VOx8Ej03qIE
 pYJPE7NA0v+qDq2l5hRx/S4t3NvxOHut4qclIRACrD0AZaaLiuqx7PGRktXeoJ6gitdfdBPyNZ/V0
 4E47lBnw==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbhj-0003wO-J4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:59:49 +0000
Received: from aptenodytes (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7D3D2240011;
 Tue, 28 May 2019 12:58:58 +0000 (UTC)
Message-ID: <2b671c1f0734177a6283407f753403473b70f5bc.camel@bootlin.com>
Subject: Re: [linux-sunxi] [RESEND PATCH] ARM: dts: sun7i: olimex-lime2:
 Enable ac and power supplies
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: plaes@plaes.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu
 Tsai <wens@csie.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Tue, 28 May 2019 14:58:57 +0200
In-Reply-To: <20190528063544.17408-1-plaes@plaes.org>
References: <20190528063544.17408-1-plaes@plaes.org>
Organization: Bootlin
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_085947_734434_949D8160 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: linux-sunxi@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, 2019-05-28 at 09:35 +0300, Priit Laes wrote:
> Lime2 has battery connector so enable these supplies.

Out of curiosity, what is reported to userspace when no battery is
attached?

Looks good otherwise:
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Priit Laes <plaes@plaes.org>
> ---
>  arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
> index 9c8eecf4337a..9001b5527615 100644
> --- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
> +++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
> @@ -206,6 +206,14 @@
>  
>  #include "axp209.dtsi"
>  
> +&ac_power_supply {
> +	status = "okay";
> +};
> +
> +&battery_power_supply {
> +	status = "okay";
> +};
> +
>  &reg_dcdc2 {
>  	regulator-always-on;
>  	regulator-min-microvolt = <1000000>;
> -- 
> 2.11.0
> 
-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
