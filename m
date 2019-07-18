Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544396C4AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 03:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aOxV8MeXTLQuAoc/tkojtJquqEdYaxZIBz4yQOXqrU=; b=AjPv2345w+tYPR
	pA6mh+uQqSYC7yPv5g+OUM1xHVlSplJopsTB6PFVKV3GuD7Pbjbo5RPkI9tELIAjj18RBeg9DWyi7
	HLEpEFfkVHkEyiuZBLws6MNG1LZEzKfdyRwrQ8tgvw9SYji2I6vDUw96omC6HvAgMdB1h0dTvQwcV
	xD9PN4tAL0hToDdfMP6kdFVmgdJj3PxVSsubKpgN6RexsQvWYsw2MuzDPukUMd2SENynd4aCseOJ+
	NVHswyl4Fs7WqxDKouGZYYlrGMWMHmI3XLWz/uX7gG8AErGGfzmTWfcV7r3qNer7mAOX4X2amAu/w
	++LVvE/EivWZq+Ad3yCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvXE-00025P-Jx; Thu, 18 Jul 2019 01:48:40 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvWz-00022w-Dr
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 01:48:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BD7FF2942;
 Wed, 17 Jul 2019 21:48:23 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 17 Jul 2019 21:48:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=FDtAha3aM/d7uySbVX6vDZnPDLMPpkQ
 a4d+2z+nDkSw=; b=mRG+7PMfIT+vCcwHo0gdhqnL4lMvsLsNLq65jw6Q6pbUTb+
 u12le5/HXSk6FLw+pspOYBp1nMpPWdPTAbrZAlZJ33yuY6b/fOefBwjxmNI+rRrJ
 mCVY8EwTXBbXobAdtB3iZpA24y4QME3ApQmhBfeoxP9UnEU1NYWy4htADuvr36rG
 wxZB6oE+ZwE1m+wZgcosCwaVyD2mloWWZYWNn84djblf1bjJEIGgYxE6qeXj1K6U
 4xr9HAG1zLUj+BQ78R6dNfOzkJTyndSpu0v7t/ui8C2EkttkNDeVD/8GUVWIVW4n
 m3Sn4R9ZIEo+GAESQEWqxVxWSMEDJhECIxfDAVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=FDtAha
 3aM/d7uySbVX6vDZnPDLMPpkQa4d+2z+nDkSw=; b=Tm7whVMvkVnMhjx7wSeVwg
 NmZLxtcINIEt+TvTc/Yse+AWv58Qzg3bgV3Gc8ywxNu8LX1jp/o10XnPnep+AFy1
 vKFIxhemFb71uNunnPEb0vwBvd+J2M5rLa8o/RitCYq/6T2iDLYx2Ylj7NvPDaxP
 5OXdQbAR3xZ2aXilTUO5rYs1OPF0mKXYqnyJkZy+eF+r1K39hdbYV3+PSM6JbpYA
 uwnKpO226esrlEdVzWjMFaUKqBavVXGwBKZaULu4+QkR5IW5xnyA0+4DExKfaT6i
 jZC1fBjnUTei0jhzgZkxkKDmB/PuR5A7D6bE/GLIL/T2LnRyWLR6iO5/nDaIMyHg
 ==
X-ME-Sender: <xms:5s8vXdK5zURUKobPB6VxEAlu0IO77MFnRoBvJDSRFxvuy4KwhM_toA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrieeggdeglecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepkhgvrhhnvghlrdhorhhgnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgv
 fiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:5s8vXXy-0vpsWkOw3eYGa4hc7Kadwe8o2-UgtEwHV5-C27O5PUAkeQ>
 <xmx:5s8vXVUS6Ynnx8mqEFsgnwx9FHrmzA7EERgzZFwqM77hVDGdUFS19g>
 <xmx:5s8vXUmNmjvoKr2WmhBxnuhYxOKOfxp5qLTBwNeuy3OfPHnu1zrEYA>
 <xmx:588vXTm4qUFyCosHKHr7T6nADc1lutgBpHEG2TgZbddTwYeDiB2LGw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 470C0E03EA; Wed, 17 Jul 2019 21:48:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <f1a91695-e02b-4ec4-9bf4-0bd97ac2ffc4@www.fastmail.com>
In-Reply-To: <1563394325-15941-1-git-send-email-hongweiz@ami.com>
References: <1563394325-15941-1-git-send-email-hongweiz@ami.com>
Date: Thu, 18 Jul 2019 11:18:29 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Hongwei Zhang" <hongweiz@ami.com>, "Joel Stanley" <joel@jms.id.au>,
 "Linus Walleij" <linus.walleij@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3 v4] dt-bindings: gpio: aspeed: Add SGPIO support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_184825_620878_E6D23D2C 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The subject is largely correct, but please see the discussion on the driver patch
about how to clean up the [PATCH ...] prefix.

On Thu, 18 Jul 2019, at 05:42, Hongwei Zhang wrote:
> Add bindings to support SGPIO on AST2400 or AST2500.
> 
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> ---
>  .../devicetree/bindings/gpio/sgpio-aspeed.txt      | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> 
> diff --git a/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt 
> b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> new file mode 100644
> index 0000000..2d6305e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> @@ -0,0 +1,55 @@
> +Aspeed SGPIO controller Device Tree Bindings
> +-------------------------------------------
> +
> +This SGPIO controller is for ASPEED AST2500 SoC, it supports up to 80 
> full 
> +featured Serial GPIOs. Each of the Serial GPIO pins can be programmed 
> to 
> +support the following options:
> +- Support interrupt option for each input port and various interrupt 
> +  sensitivity option (level-high, level-low, edge-high, edge-low)
> +- Support reset tolerance option for each output port
> +- Directly connected to APB bus and its shift clock is from APB bus 
> clock
> +  divided by a programmable value.
> +- Co-work with external signal-chained TTL components (74LV165/74LV595)
> +
> +
> +Required properties:
> +
> +- compatible		: Either "aspeed,ast2400-sgpio" or "aspeed,ast2500-sgpio"
> +
> +- #gpio-cells 		: Should be two
> +			  - First cell is the GPIO line number
> +			  - Second cell is used to specify optional
> +			    parameters (unused)
> +
> +- reg			: Address and length of the register set for the device
> +- gpio-controller	: Marks the device node as a GPIO controller
> +- interrupts		: Interrupt specifier (see interrupt bindings for
> +			  details)
> +
> +- interrupt-controller	: Mark the GPIO controller as an 
> interrupt-controller
> +
> +- nr-gpios		: number of GPIO pins to serialise. 
> +			  (should be multiple of 8, up to 80 pins)

Please change the property name to "ngpios", as per the generic GPIO
bindings[1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/gpio/gpio.txt?h=v5.2#n141

Cheers,

Andrew

> +
> +- clocks                : A phandle to the APB clock for SGPM clock 
> division
> +
> +- bus-frequency		: SGPM CLK frequency
> +
> +
> +The sgpio and interrupt properties are further described in their 
> respective bindings documentation:
> +
> +- Documentation/devicetree/bindings/sgpio/gpio.txt
> +- Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
> +
> +  Example:
> +	sgpio: sgpio@1e780200 {
> +		#gpio-cells = <2>;
> +		compatible = "aspeed,ast2500-sgpio";
> +		gpio-controller;
> +		interrupts = <40>;
> +		reg = <0x1e780200 0x0100>;
> +		clocks = <&syscon ASPEED_CLK_APB>;
> +		interrupt-controller;
> +		nr-gpios = <8>;
> +		bus-frequency = <12000000>;
> +	};
> -- 
> 2.7.4
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
