Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D3B68235
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 04:25:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8Sbru04YnWBs0QqUI2S5Oz9Gl/Jj85+z3uMubp05Fg=; b=j27MbPYhwDeE4N
	mx+sGw8HooUMtAg0KwOTUVa7NeFlKQtvHyaFmvvDNJu2DiJ7J14awcG5HMtBQUZ0IWcoo2iN0+cgI
	30EhHf5u2Ay5fldp/4hSgbJAg3IYTED5u0Ca6Fs1oSXuDKPw/WOVQblsji66GmXv5edtf6s5SHvoX
	ZyCOUbTS+i5y4u7Smv1VNrkUhJi9XRs/M7OuYelXkhjXqaaeQQ2u2iXWayR+w7+ug1tqKs9MbzzTb
	j10gv670woKqdKj48X/LAYeG2l16TIkMbrRprKCqWMHGA+TUnXZXMrKNWAhipS3AdGIgfs2DlDfRR
	oGNThVaTSMvumgY+YHxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmqg0-00025p-8J; Mon, 15 Jul 2019 02:25:16 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmqfp-0000yZ-3A
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 02:25:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 069CC2168;
 Sun, 14 Jul 2019 22:24:58 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 14 Jul 2019 22:24:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=00zoTVROvxcCRZfuc+kLyg0UtigAI/x
 bsJPy243TfLs=; b=fHpRPwICa67kCO89BAwoHx1yyUSOgjITPsuHoXz6lbrw9kG
 /z8U+42Pa6f2mezVuaSbN3TmZDvIjmuRpDZbFgHwnAaMROJ44oeMI7j9ncaM4ZkP
 zxK3wcI1L1NAj5OxE06GBqI+rev07sAezzz43dvH2SUx4FlaJbrC1FOJq6jbavzW
 AcikbwWb8+U6GwoumxqrWuIGp0NAODVAUvCcWEbrRnJr+wJIJq61z92NNji5U17o
 SV1/XlXNckli7WqDkLl1XD9XOY3wx1200xPyb87TrAoS4dzi19NhmJO2VPQ7DrDz
 oitdKEREAX2/FYG9c3GDQukMfTPF4p1WIBRIvbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=00zoTV
 ROvxcCRZfuc+kLyg0UtigAI/xbsJPy243TfLs=; b=z2aeZBA5VmrOvZ3cGXcy+g
 O6DLd8lgULbaYvv2rSnN1FRnqHUIKy1bEENY/KHmDp7LFlHForjT2jQmVZt+1bzl
 ujbj91Jln3DmlnGpCfYyrLuWad0S7mPKh4P3JDP6EH2BJEW4UNE87Ry213lBJs/T
 9ZtAcRu+2hxt5C/msG675AxIMahImu1DWa1toxMyNC80swauhdTXR21I+kqHVGTZ
 KEbSczMUM1hfnxQwAanYYPWfRL8gqZSmwkGslVy4gFowCIYYkhkzCgRJLX+90+9y
 n0RFABy4xpaWifz9td+t9yYCF1EvFUkRb5PWFGEOyNYOcX0xYtU6U3J/Nb9UGHJg
 ==
X-ME-Sender: <xms:-eMrXU54XSNslOJlbKdqw8zHwUCkLik-pxvgXnIR7OpKkBbyDvb9-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrheejgdefudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:-eMrXQvfAmTA9LEiTnANuwjVYb4WzTH6THbrPy__IqM1ADMFDpWgeA>
 <xmx:-eMrXRum6CMDp-TB5OMFULIZvHCOMV6_5fBX2wfoh0nzClPNe0pieA>
 <xmx:-eMrXYuzFuR-Po6RzCknBU-Ixh7VdIUUCfSRMjInr1AefPEhLmFfIg>
 <xmx:-eMrXSulcM1yTrA5R3F2qUopJbHtaPW5UFy3TyzLrIDnMlfi4Xvslg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3A8EFE00CC; Sun, 14 Jul 2019 22:24:57 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <56d7603a-c1b9-4893-871d-2aee17329e40@www.fastmail.com>
In-Reply-To: <1562962440-15908-1-git-send-email-hongweiz@ami.com>
References: <1562962440-15908-1-git-send-email-hongweiz@ami.com>
Date: Mon, 15 Jul 2019 11:55:06 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Hongwei Zhang" <hongweiz@ami.com>, "Joel Stanley" <joel@jms.id.au>,
 "Linus Walleij" <linus.walleij@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3 v2] dt-bindings: gpio: aspeed: Add SGPIO support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_192505_431934_714103A9 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Hongwei,

On Sat, 13 Jul 2019, at 05:44, Hongwei Zhang wrote:
> Add bindings to support SGPIO on AST2400 or AST2500.
> 
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> ---
>  .../devicetree/bindings/gpio/sgpio-aspeed.txt      | 43 ++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> 
> diff --git a/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt 
> b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> new file mode 100755
> index 0000000..3ae2b79
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> @@ -0,0 +1,43 @@
> +Aspeed SGPIO controller Device Tree Bindings
> +-------------------------------------------
> +
> +Required properties:
> +- compatible		: Either "aspeed,ast2400-sgpio" or "aspeed,ast2500-sgpio"
> +
> +- #gpio-cells 		: Should be two
> +			  - First cell is the GPIO line number
> +			  - Second cell is used to specify optional
> +			    parameters (unused)
> +
> +- reg			: Address and length of the register set for the device
> +- gpio-controller	: Marks the device node as a GPIO controller.
> +- interrupts		: Interrupt specifier (see interrupt bindings for
> +			  details)
> +
> +- interrupt-controller	: Mark the GPIO controller as an 
> interrupt-controller
> +
> +- nr-gpios		: number of GPIO pins to serialise. (should be multiple of 
> 8, up to 80 pins)
> +			  if not specified, defaults to 80.

This appears to be a statement about the driver implementation, but bindings
documents are about describing hardware. Reading the datasheet it actually
appears the ASPEED SGPIO hardware comes up in what is "technically" a
forbidden state (equivalent to `nr-gpios = <0>;`), though the device is also
disabled at this point, so it's probably moot. The point is the true default
value from a hardware perspective is 0, not 80, so if we're going to talk about
default values, 0 would be more appropriate. However:

You've also listed nr-gpios under the "Required properties" header, but the
description suggests it's optional. It's either one or the other, please lets be
clear about it. On that front, lets make it nr-gpios *not* optional (i.e. make it
required) thus force the specification of how many SGPIOs we want to emit
on the bus. This value is coupled to the platform design, so I don't think
there's ever a scenario where we want nr-gpios to take a default value.

> +
> +- clocks               : A phandle to the APB clock for SGPM clock 
> division
> +
> +- bus-frequency	: SGPM CLK frequency, if not specified defaults to 1 
> MHz

Again here with the default value - SGPM CLK period is derived from PCLK by
the expression `period = PCLK * 2 *(GPIO254[31:16] + 1)`, where GPIO254's
initialisation state is `GPIO254[31:16] = 0`, which gives a default SGPM bus
frequency of PCLK / 2. This is likely not going to be 1MHz (more like ~12MHz).

Lets just make the property required. That way we avoid any ambiguity about
the bus frequency and thus don't need words about defaults that turn out to
be about the driver, not about the hardware.

Finally, when updating patches in response to feedback, please send the full
series again, and bump the series version number. That way people can review
a coherent set of patches and not have to hunt around and (fail to) collate the
correct combination. It makes it easier to say "Reviewed-by:" on your patches :)

Cheers,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
