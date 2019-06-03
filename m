Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4423320A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooDZMv31+oaD7Bjw9N14+vW3Nui3A0AyVC4TLnPRn8Y=; b=WCHs67ILQ+phUe
	rpCbGkPtem5MobjOs+PRkrVdDo5UCD86DVMipG86V+BR4vrTkYoidDuAMY8fClIu3mMgaSms687jx
	/pHsUvWVkrwcSUc6ULz96PcbNmc8FEQ701XTSFAn8dZp206JWDGw6BAHeEJrWQsUMOqn4hRz/5ALl
	6LlKwRrPnYcGEAs6XbW4Z2dSvWm4uI7nnB8LsG0gSdDKMEjrr79BqFIqYs87FtST1z43Gomwx6HES
	0s6hNfwCwnH5pfeVSYrlTRym08SqyjJvYzOXicjCkTS8T2z6Jgsi8eouO2NF5VnNzhJsYjBZTZNJn
	yexaEMOEIDAa1/kzoVjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnsI-0003ed-90; Mon, 03 Jun 2019 14:23:46 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnsB-0003e1-D5
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:23:41 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9B1111C0010;
 Mon,  3 Jun 2019 14:23:23 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: marvell: clearfog-gt-8k: set SFP power
 limit
In-Reply-To: <27f5b086099cd8b7573b3ea9aa77f95fb1b3398f.1558325301.git.baruch@tkos.co.il>
References: <9cb7837edf96d5a0d41b4ef67c635695e92f1a21.1558325301.git.baruch@tkos.co.il>
 <27f5b086099cd8b7573b3ea9aa77f95fb1b3398f.1558325301.git.baruch@tkos.co.il>
Date: Mon, 03 Jun 2019 16:23:23 +0200
Message-ID: <87v9xmkask.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_072339_591040_D863FD19 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Baruch Siach <baruch@tkos.co.il>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Baruch Siach <baruch@tkos.co.il> writes:

> The Clearfog GT-8K board is capable of supplying power up to 2W to SFP
> modules. Make that explicit in the device-tree. Without this property
> current kernel does not allow SFP modules that require more than 1W.
>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
> v2: Fix power measure scale (RMK)
> ---
>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> index 9143aa13ceb1..f275d9420d5b 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> @@ -63,6 +63,7 @@
>  		tx-disable-gpio = <&cp1_gpio1 29 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&cp0_sfp_present_pins &cp1_sfp_tx_disable_pins>;
> +		maximum-power-milliwatt = <2000>;
>  	};
>  
>  	leds {
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
