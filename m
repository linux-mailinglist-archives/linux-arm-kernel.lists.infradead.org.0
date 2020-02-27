Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9424F170F57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VELb49qLkBKD1Amte3BScDBkX1fhhYm1rauIRPSpqT4=; b=u58Yt+elIK5s1L
	z/eMoJtmgnsSqzoEG0+rF23bg1r5eiOiUUXVrq7xup27yfA666gKGiGwOF9v/MqsFzQDKP6LN+bc5
	DVApz8msP0TzxEpR2fKaRhqLLmYPond58cmYMPcjykuI3Ul+9E7GrssGKSzhQQtntVbS07b4jKwWG
	l03UBKChK5NaXVltinaJmlVJNlfDQwx3OMqmlNkOxTxzkxy4mxWYh7x5xPD//Wtjk/zDzMSMWHUZf
	RaXsOzH00UgZeijcHKi8P9qIO2BVPmwVXivSnHbglG46qmemlG3477jqCj2ZdXYsEocOp/24qA7LG
	oEo1O6ZIg4VcDhhHSthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7AQE-0001ih-Dc; Thu, 27 Feb 2020 04:05:14 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7APu-0001i7-Mt
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 04:04:56 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01R44L0D022388
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Feb 2020 22:04:24 -0600
Message-ID: <26dccd7310f07c6dfe322ba0ea5dd1a980007563.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 27 Feb 2020 15:04:20 +1100
In-Reply-To: <20200226230346.672-8-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-8-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_200454_937333_F4D497DB 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add device tree binding documentation for aspeed usb-vhub driver.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> ---
>  No change in v2/v3/v4:
>    - the patch is added to the patch series since v4.
> 
>  .../bindings/usb/aspeed,usb-vhub.yaml         | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> new file mode 100644
> index 000000000000..6ebae46641e5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +# Copyright (c) 2020 Facebook Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/aspeed,usb-vhub.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED USB 2.0 Virtual Hub Controller
> +
> +maintainers:
> +  - Felipe Balbi <balbi@kernel.org>

Actually I mantain that one, so make this Benjamin Herrenschmidt <
benh@kernel.crashing.org>. Felipe is the overall maintainer of the USB
gadget subsystem afaik.

> +description: |+
> +  The ASPEED USB 2.0 Virtual Hub Controller implements 1 set of USB Hub
> +  register and several sets of Device and Endpoint registers to support
> +  the Virtual Hub's downstream USB devices.
> +
> +  Supported number of devices and endpoints vary depending on hardware
> +  revisions. AST2400 and AST2500 Virtual Hub supports 5 downstream devices
> +  and 15 generic endpoints, while AST2600 Virtual Hub supports 7 downstream
> +  devices and 21 generic endpoints.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-usb-vhub
> +      - aspeed,ast2500-usb-vhub
> +      - aspeed,ast2600-usb-vhub
> +
> +  reg:
> +    maxItems: 1
> +    description: Common configuration registers
> +
> +  clocks:
> +    maxItems: 1
> +    description: The Virtual Hub Controller clock gate
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  aspeed,vhub-downstream-ports:
> +    description: Number of downstream ports supported by the Virtual Hub
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  aspeed,vhub-generic-endpoints:
> +    description: Number of generic endpoints supported by the Virtual Hub
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - aspeed,vhub-downstream-ports
> +  - aspeed,vhub-generic-endpoints
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    vhub: usb-vhub@1e6a0000 {
> +            compatible = "aspeed,ast2500-usb-vhub";
> +            reg = <0x1e6a0000 0x300>;
> +            interrupts = <5>;
> +            clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pinctrl_usb2ad_default>;
> +    };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
