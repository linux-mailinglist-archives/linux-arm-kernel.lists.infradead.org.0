Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C5035505
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 03:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtX3TL0UaVdyjE/sLAYR/UrQo3lNVL3ZQZtAtQsz9W0=; b=Cz5o43E4jBOl13
	VaPJ5/LgFMtIoXivTzid3CG2S1smknvrwdanH65CoNizZYH0jC6/DFpCbrxKoTl+uGyc07ssW3VUy
	r3zLtLzW8EwoMmd5KTJvJf8xycSVA9j7+gh0hIlmPM37R2rXg48UDhGW5jpm7WSEjcZAL+hL4IMyZ
	XJey1U5BzrhpM21PaKwmgRQsXEfNZ+16zkP+PpA+EFkWSohYxOvCoHPtgeMe9T5gkpjc5DTs9sHCP
	m9ryriZFTsmrwJ3jzVPxtEM0p5cbWHUSACx5FPSy6JF8UbZny53dqjX/Ti4Tswa83D/y11NxsFPUD
	6che0eGqcFvaNm6nPdVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYKm5-0000o5-S1; Wed, 05 Jun 2019 01:31:33 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYKly-0000nB-JM
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 01:31:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DECD921B2A;
 Tue,  4 Jun 2019 21:31:15 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 04 Jun 2019 21:31:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=ZMvsAP7tsZ6FGrkTx8J6BoVyLNN1cS8
 mg7hACEWmNsQ=; b=bmYuQY2vcOZ8Pqh6ZQ8OOr4sgAlXpREa293b3GnrGtNMkRh
 w0O7MUyMw8yCoE7wZbwuWWf8j+eagUg0dgnKi0duy4HhwwJ0TVV8K2cO11lKxhYT
 mU12rQAms3X4NqCQpmaEfWR+BUqtEpEBCMWtgwhoAPszYDlW3DvLALXKgsRi2PIY
 QWE6YkcIINhMQMkMhHRf95QqILl7C/7g654Yc3V9ljn5r4ekFt3QYODYGs6S8dAY
 MHYXGe8QXqP3No79MF0wiyS8Km6fBmZHPkhzNWM/WMtzGlB6NekRQgqf2D/hMCxd
 uPu5y+Q4YpA5zVcdmH0NCx50kNPhlyjP9Z95EPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZMvsAP
 7tsZ6FGrkTx8J6BoVyLNN1cS8mg7hACEWmNsQ=; b=gEOn8Xm09umzuo1HpkPTyr
 mt4Uxs74T3eG76Xz1SmX4ZKlo1I6XAEOvlDmO2mVoVr7nQpLfwC7KxG/64Ue6Rvu
 QqUGh25dnmDCGC1QEjdlWgODFpX23ZIVq/1HMCMRZ8c5ZEIOoOzF71sSy1Z2ppHL
 2uGjd09wHhgzIMNN6bWFdXD6KeKBpbAUBfSdvaXrwAfuPEl8c7zMyp7iObi+VJ7U
 5W+NQKH4mJLDGiDucssdGgxDjWXEKjdpYv+fDsrlWcedTcL3T0JGH+Xth6kK5RMQ
 XvkSCPbn/A3Y3HwjO90Mqa21I9PWNr2GCPpVQF3Qfc7IUWd9Dgh3LfTv2VzE9NsQ
 ==
X-ME-Sender: <xms:YRv3XL_PfUlnH_igpi7qRhujQeGDskeviEx-AHKEfevYS-0DJJqaWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeguddggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:YRv3XKwZkIBuJkrHUczmudGr0toCBoJ0En5RVCrS--VpkhShb_hW8A>
 <xmx:YRv3XHGaF_r7IdVY6_LTMC6sl2IbAgaVnXEP2RGe9KZgwQPueEb-ig>
 <xmx:YRv3XK6IQrVBYFTZOkoBPL4M-Jz2g0tBxXpYGVSneNFLHYDbpN4ynQ>
 <xmx:Yxv3XCf_0V1dbiLxW9uKqENY1uVxxNF_ym6kQUPq33WhCMi9iSzRYQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CECB5E00A1; Tue,  4 Jun 2019 21:31:13 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-650-g74f8db0-fmstable-20190604v3
Mime-Version: 1.0
Message-Id: <b4ba9af9-9d6d-45fa-8552-3aad5258352a@www.fastmail.com>
In-Reply-To: <1559685212-15857-1-git-send-email-hongweiz@ami.com>
References: <1559685212-15857-1-git-send-email-hongweiz@ami.com>
Date: Wed, 05 Jun 2019 11:01:13 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Hongwei Zhang" <hongweiz@ami.com>, "Joel Stanley" <joel@jms.id.au>,
 "Linus Walleij" <linus.walleij@linaro.org>,
 "Rob Herring" <robh+dt@kernel.org>, "Mark Rutland" <mark.rutland@arm.com>
Subject: Re: [PATCH 1/3 linux dev-5.1 v2] ARM: dts: aspeed: Add SGPM pinmux
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_183126_781254_61689146 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 5 Jun 2019, at 07:23, Hongwei Zhang wrote:
> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
> supporting SGPIO in AST2500 SoC.
> 
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt | 2 +-
>  drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c                   | 4 ++++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git 
> a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt 
> b/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
> index 3b7266c..8f1c5c4 100644
> --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
> @@ -84,7 +84,7 @@ NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4 NDTR1 NDTR2 
> NDTR3 NDTR4 NRI1 NRI2
>  NRI3 NRI4 NRTS1 NRTS2 NRTS3 NRTS4 OSCCLK PEWAKE PNOR PWM0 PWM1 PWM2 
> PWM3 PWM4
>  PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 RXD1 RXD2 RXD3 RXD4 SALT1 
> SALT10
>  SALT11 SALT12 SALT13 SALT14 SALT2 SALT3 SALT4 SALT5 SALT6 SALT7 SALT8 
> SALT9
> -SCL1 SCL2 SD1 SD2 SDA1 SDA2 SGPS1 SGPS2 SIOONCTRL SIOPBI SIOPBO 
> SIOPWREQ
> +SCL1 SCL2 SD1 SD2 SDA1 SDA2 SGPM SGPS1 SGPS2 SIOONCTRL SIOPBI SIOPBO 
> SIOPWREQ
>  SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1CS1 SPI1DEBUG SPI1PASSTHRU SPI2CK 
> SPI2CS0
>  SPI2CS1 SPI2MISO SPI2MOSI TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 
> TXD1 TXD2
>  TXD3 TXD4 UART6 USB11BHID USB2AD USB2AH USB2BD USB2BH USBCKI 
> VGABIOSROM VGAHS
> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c 
> b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
> index 187abd7..0c89647 100644
> --- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
> @@ -577,6 +577,8 @@ SS_PIN_DECL(N3, GPIOJ2, SGPMO);
>  SIG_EXPR_LIST_DECL_SINGLE(SGPMI, SGPM, SIG_DESC_SET(SCU84, 11));
>  SS_PIN_DECL(N4, GPIOJ3, SGPMI);
>  
> +FUNC_GROUP_DECL(SGPM, R2, L2, N3, N4);
> +
>  #define N5 76
>  SIG_EXPR_LIST_DECL_SINGLE(VGAHS, VGAHS, SIG_DESC_SET(SCU84, 12));
>  SIG_EXPR_LIST_DECL_SINGLE(DASHN5, DASHN5, SIG_DESC_SET(SCU94, 8));
> @@ -2127,6 +2129,7 @@ static const struct aspeed_pin_group 
> aspeed_g5_groups[] = {
>  	ASPEED_PINCTRL_GROUP(SD2),
>  	ASPEED_PINCTRL_GROUP(SDA1),
>  	ASPEED_PINCTRL_GROUP(SDA2),
> +	ASPEED_PINCTRL_GROUP(SGPM),
>  	ASPEED_PINCTRL_GROUP(SGPS1),
>  	ASPEED_PINCTRL_GROUP(SGPS2),
>  	ASPEED_PINCTRL_GROUP(SIOONCTRL),
> @@ -2296,6 +2299,7 @@ static const struct aspeed_pin_function 
> aspeed_g5_functions[] = {
>  	ASPEED_PINCTRL_FUNC(SD2),
>  	ASPEED_PINCTRL_FUNC(SDA1),
>  	ASPEED_PINCTRL_FUNC(SDA2),
> +	ASPEED_PINCTRL_FUNC(SGPM),
>  	ASPEED_PINCTRL_FUNC(SGPS1),
>  	ASPEED_PINCTRL_FUNC(SGPS2),
>  	ASPEED_PINCTRL_FUNC(SIOONCTRL),
> -- 
> 2.7.4
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
