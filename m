Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39A6712F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAnFXrCQWYXtJBbfDhx+U8VSyQys9qouXaPmZaqFW0E=; b=Sc38WR/FpCU2Hw
	IhQYmmhH0G2ABL1YfJMqhldfK3Ri1SrhBWTQ41wmNuj+VWDEy/CPbZux6O2X1ME4ZlXDXY1NQPa1b
	DVB4Y8/jfo0RbUAfOtMFucqnxbPGgKMNtevd6QIU6MIK7RsMBxqTOD/pfv6HkaiivL92pLHDR0cRL
	p+V+BEFvWlCyU5q1nfm6y3vk3fctpLud1dszm16l8ruDot51pHXhGZWqzWdpp/cGr7MbsPrhTLzkX
	Kbwr37sKgoV9lknGlCnkHGlTq4EojLUBiomm+gIdXDK4qtwj7pCySvymyFJTd5V2nyJkaeZ5883+g
	lSHdCWv4/BYRjNp8qbQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppJb-0005aF-2g; Tue, 23 Jul 2019 07:34:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppJM-0005Zn-Qd
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:34:14 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A01F2251A;
 Tue, 23 Jul 2019 07:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563867252;
 bh=jAakv2t5/++AhA0rABvLwtPxoCfyUmpv9jO6/OImrK4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wu+HIYREnYMnHzdX9eXfK366q3oE47vNPZO13JYDlevfMWhDaigzHLfH0gPgAvx9c
 TaAqXEvyMSeKeEh+D+zQ2SxVMmUoEkzGSxW2eK01IssHCkqjl96DX+XcV9lZBqYV6k
 M69jGYuFZ/rgApKTLCGx9iSRhc4Hg1/ekuhcjlwU=
Date: Tue, 23 Jul 2019 15:33:43 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: fix SAI compatible
Message-ID: <20190723073342.GG15632@dragon>
References: <20190717095436.28154-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717095436.28154-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_003412_875095_A97B911A 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
 NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Daniel for comment.

On Wed, Jul 17, 2019 at 11:54:36AM +0200, Lucas Stach wrote:
> The i.MX8M SAI block is not compatible with the i.MX6SX one, as the
> register layout has changed due to two version registers being added
> at the beginning of the address map. Remove the bogus compatible.
> 
> Fixes: 8c61538dc945 "arm64: dts: imx8mq: Add SAI2 node"

The format should be the following.  I can fix it when applying though.

Fixes: 8c61538dc945 ("arm64: dts: imx8mq: Add SAI2 node")

Shawn

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 9326bd4150a3..0c533c66b340 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -718,8 +718,7 @@
>  
>  			sai2: sai@308b0000 {
>  				#sound-dai-cells = <0>;
> -				compatible = "fsl,imx8mq-sai",
> -					     "fsl,imx6sx-sai";
> +				compatible = "fsl,imx8mq-sai";
>  				reg = <0x308b0000 0x10000>;
>  				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clk IMX8MQ_CLK_SAI2_IPG>,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
