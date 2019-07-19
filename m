Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDD26EBAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 22:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnJmvZFJC9iPheSMVG5ZhiN5xh+G44NXGSyeQbruaXw=; b=Cm1c7xUyuHRpME
	QXEW+Ib6aruYm8B/WJqnYzmjcdXHVaRxEhxdtMBsNXiMwdEi9TK/cThvY79LnIML1ZJmpBD9iBopm
	BCNuK1XH6sCqzJEdA2r2tixbYWpSa+vzLwM2JxFvrez8MEMUWJZORdYc7vTtvljNDL/T5yVgHN4oH
	rTfvxU2lU3gw6UEmcIKNltbCaw8CIHqwY+QsPzeGS1sIo7GIQnRQXqM/YsHOZ9w/nxFxbHk7NY8zN
	9qof/JkNWziw/O4NbHswWkMsU0vANW1bdXQZn42FCFuA9f3aBxRo0YxQDnSDBAU7yVsp3t5ZxQVr2
	PdE/avmTyKFc72bDN98w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoZeL-0007qE-FK; Fri, 19 Jul 2019 20:38:41 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoZe7-0007pN-Iu
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 20:38:29 +0000
X-AuditID: ac1060b2-3fdff70000003a7d-d3-5d322a4365dd
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 AD.8C.14973.34A223D5; Fri, 19 Jul 2019 16:38:27 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 19 Jul 2019 16:38:24 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: <hongweiz@ami.com>, Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: dt-bindings: gpio: aspeed: Add SGPIO support 
Date: Fri, 19 Jul 2019 16:37:24 -0400
Message-ID: <1563568644-10392-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563394325-15941-1-git-send-email-hongweiz@ami.com>
References: <1563394325-15941-1-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrGLMWRmVeSWpSXmKPExsWyRiBhgq6zllGswdyFsha7LnNYfJl7isVi
 /pFzrBa/z/9ltpjyZzmTxabH11gtmlefY7bYPP8Po8XlXXPYLJZev8hk0br3CLsDt8fV9l3s
 HmvmrWH0eH+jld3j4sdjzB6bVnWyedy5tofNY/OSeo/zMxYyenzeJBfAGcVlk5Kak1mWWqRv
 l8CVcWw9S8ENuYqVz24yNjDOluhi5OSQEDCReLr4J2sXIxeHkMAuJonuExeZIJzDjBKr755i
 BKliE1CT2Lt5DlhCRKCJUeJt02cwh1lgBZNE87Q37CBVwgJmEm8mnGQDsVkEVCXOrF7JCmLz
 CjhIdJ5rZYbYJydx81wnmM0p4Cgx+eU8MFsIqObN02NMEPWCEidnPmEBsZkFJCQOvngBVSMr
 cevQYyaIOQoSz/ses0xgFJiFpGUWkpYFjEyrGIUSS3JyEzNz0ssN9RJzM/WS83M3MULiYtMO
 xpaL5ocYmTgYDzFKcDArifDefqkfK8SbklhZlVqUH19UmpNafIhRmoNFSZx35ZpvMUIC6Ykl
 qdmpqQWpRTBZJg5OqQZGYXNpDvuN5RdiYoOenjvHVrb9X7Fv8IzT82acjtSboHD2/Jmzsra5
 r3p7P1SvnKPE4hwU9vTjRdtPFWzX/QoF/fr3mUen9YhYzlyzs3fK5NczPa9/O/Kr7d5UZv62
 DwrX7TidK9Qa91xjMO/8X8Pk8nWN2vurX/jSXqfo/E37yCryvX/eun4dJZbijERDLeai4kQA
 krwKtHkCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_133827_691320_0E8A98A8 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Andrew,

Thanks for reviewing and please see my inline comments.

--Hongwei

> From:	Andrew Jeffery <andrew@aj.id.au>
> Sent:	Wednesday, July 17, 2019 9:48 PM
> To:	Hongwei Zhang; Joel Stanley; Linus Walleij; devicetree@vger.kernel.org
> Cc:	Rob Herring; Mark Rutland; Bartosz Golaszewski; linux-aspeed@lists.ozlabs.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-gpio@vger.kernel.org
> Subject:	Re: [PATCH 2/3 v4] dt-bindings: gpio: aspeed: Add SGPIO support
> 
> The subject is largely correct, but please see the discussion on the driver patch about how to clean up 
> the [PATCH ...] prefix.
> 
> On Thu, 18 Jul 2019, at 05:42, Hongwei Zhang wrote:
> > Add bindings to support SGPIO on AST2400 or AST2500.
> > 
> > Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> > ---
> >  .../devicetree/bindings/gpio/sgpio-aspeed.txt      | 55 ++++++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> >  create mode 100644 
> > Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> > b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> > new file mode 100644
> > index 0000000..2d6305e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
> > @@ -0,0 +1,55 @@
> > +Aspeed SGPIO controller Device Tree Bindings
> > +-------------------------------------------
> > +
> > +This SGPIO controller is for ASPEED AST2500 SoC, it supports up to 80
> > full
> > +featured Serial GPIOs. Each of the Serial GPIO pins can be programmed
> > to
> > +support the following options:
> > +- Support interrupt option for each input port and various interrupt
> > +  sensitivity option (level-high, level-low, edge-high, edge-low)
> > +- Support reset tolerance option for each output port
> > +- Directly connected to APB bus and its shift clock is from APB bus
> > clock
> > +  divided by a programmable value.
> > +- Co-work with external signal-chained TTL components 
> > +(74LV165/74LV595)
> > +
> > +
> > +Required properties:
> > +
> > +- compatible		: Either "aspeed,ast2400-sgpio" or "aspeed,ast2500-sgpio"
> > +
> > +- #gpio-cells 		: Should be two
> > +			  - First cell is the GPIO line number
> > +			  - Second cell is used to specify optional
> > +			    parameters (unused)
> > +
> > +- reg			: Address and length of the register set for the device
> > +- gpio-controller	: Marks the device node as a GPIO controller
> > +- interrupts		: Interrupt specifier (see interrupt bindings for
> > +			  details)
> > +
> > +- interrupt-controller	: Mark the GPIO controller as an 
> > interrupt-controller
> > +
> > +- nr-gpios		: number of GPIO pins to serialise. 
> > +			  (should be multiple of 8, up to 80 pins)
> 
> Please change the property name to "ngpios", as per the generic GPIO bindings[1].
> 
> [1] 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindi
> ngs/gpio/gpio.txt?h=v5.2#n141

done

> 
> Cheers,
> 
> Andrew
> 
> > +
> > +- clocks                : A phandle to the APB clock for SGPM clock 
> > division
> > +
> > +- bus-frequency		: SGPM CLK frequency
> > +
> > +
> > +The sgpio and interrupt properties are further described in their
> > respective bindings documentation:
> > +
> > +- Documentation/devicetree/bindings/sgpio/gpio.txt
> > +- 
> > +Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
> > +
> > +  Example:
> > +	sgpio: sgpio@1e780200 {
> > +		#gpio-cells = <2>;
> > +		compatible = "aspeed,ast2500-sgpio";
> > +		gpio-controller;
> > +		interrupts = <40>;
> > +		reg = <0x1e780200 0x0100>;
> > +		clocks = <&syscon ASPEED_CLK_APB>;
> > +		interrupt-controller;
> > +		nr-gpios = <8>;
> > +		bus-frequency = <12000000>;
> > +	};
> > --
> > 2.7.4
> > 
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
