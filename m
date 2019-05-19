Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAE32284D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 20:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjOtf8G25TD1W1fDi8s8iGmwRAT3ZRYStEfiblA4wk0=; b=h7K+BDLuIy5uS7
	8zuwo0tZcQpkoY0Jk7j/AuiSvzuasAX5imAg1nv+bKK5fOIbSftod8Rho5Dr8IFwZZUo19ux/Kvrv
	EhVq+tcGwzvEyUgc6YhueHiABQNTEyrANMec/QI/N3ni3om3RPYalL7hx/TdAgYrmg0bIyGmyyYFy
	GvoO56NMtfWQjaKOeF4nYwiDQGK/6RfT2r7Fh816N9zZE40Grx+JcObojfq8krhjHR7xZMFOACOTO
	hLN+sdMLDt7Jn1Uv6yxlP/JrlO86aWQr4tqI/qzFMr+xCCYdfIe/6x0zZYPRVfkTnYqUQ1IcSAX40
	xuh3wN3HEt2vzS4BoVzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQSv-0004f7-23; Sun, 19 May 2019 18:23:21 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQSl-0004cM-Ip
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 18:23:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kRfmMQaSymPH3oDrDypxfkA2ydNKAvS+EtBSvpYafBI=; b=aUmEJY86/1CxF48Tg/N7UZ45O
 SBD2Gwsh2Dd76qdqoqnwZli2yPRO6lBo7XyE+8GLQYV5EaFAC0eJAuEz7zdbMdFTpGNbJ15C82auA
 12aZ8aaUsuFfEuz5mKhg4Fa2QRYIF/rkiRnZPEoGAZjIB6PYmMPUmyssPnYkukw9NZstbqGp6qiwF
 tqbHTN3IBFW1mXpOJW+bYZpR2ceT+yeWiZThve1ltNl10MfbMf4hhjEpgKkgmldamzrX1uYG2jCEm
 r27iu3r7dtNBfzHuIbzbmPYSxndd4+9XdhcNL8YVOWvnAK+LkMSe66OdYdb6lvDWObJiiVk1jNJvk
 QMszeTwpw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52516)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hSQQa-00062a-VK; Sun, 19 May 2019 19:20:57 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hSQQX-0004Cf-UD; Sun, 19 May 2019 19:20:53 +0100
Date: Sun, 19 May 2019 19:20:53 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH 2/2] arm64: dts: marvell: clearfog-gt-8k: set SFP power
 limit
Message-ID: <20190519182053.anqoet5peeda7xtn@shell.armlinux.org.uk>
References: <202cfd4a4c01edef9cbb04fae96d588e115dfeeb.1558257666.git.baruch@tkos.co.il>
 <a79d8f55eab7ed551ea4e052478b04a107e771c1.1558257666.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a79d8f55eab7ed551ea4e052478b04a107e771c1.1558257666.git.baruch@tkos.co.il>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_112312_058035_8021C795 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 19, 2019 at 12:21:06PM +0300, Baruch Siach wrote:
> The Clearfog GT-8K board is capable of supplying power up to 2A to SFP
> modules. Make that explicit in the device-tree. Without this property
> current kernel does not allow SFP modules that require more than 1A.

I do hope you're aware that current is not the same thing as power!
You say above "2A" which is a current, but the maximum power figure
below is "2W".  Given that modules are supplied with 3.3V, and
Power = Voltage x Current, this really doesn't work out!

Please can you correct both of your patches for accuracy in this
regard, thanks.

> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
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
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
