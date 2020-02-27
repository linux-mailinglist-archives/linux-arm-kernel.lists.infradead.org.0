Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E981724BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QreyJm9Ytp3wnQS7LTwLFbD9DUMxB1kR13Ss9vGMwqY=; b=UpaAefJXOgEXez
	Dl+wkPlwBBxUABYyJDrL2AwSVE86x4kqSki6IYScelB/zmiwcQ0QkjSd+BK+5Mh5XT6Hs5uyh/Xf2
	IICuY1raTHl8VtkZDu3PIXplrdfb127KjXBLZ2GXszFbyX8qw+kYWmC2o84CeTZ3YdowK78Yjko4F
	BNTpwjXR7MMwBJYgAmLt71+jbPUAc5BYk4ZQLWZfZpRqJ5tvZIE0B9jyFuX52ms7qsr8OLKi0uFMs
	mxZhgCJJJTH/npu6VzPJp94z5JqZPkeYf/pCdUKQd5wzYqE4R2PE7Yy5t8xJ+foVEZxuc3ixcnQ15
	/m0dW+pMoFhp4cvM8ijA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mjb-0003E6-NC; Thu, 27 Feb 2020 17:14:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MjR-0003DV-JR
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:13:55 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 200BC246A6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582823633;
 bh=Av9+N9Sw/6yGgD2tCLI1uZRILU83lnh2H3xVVPQcEMs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xiLIVol5DsJ7hut2N0EsAk8d6N/I7JonTjxI10tGT56ITL55xo6Wb7uGZp3rxlMYP
 DMcA2dzJk5bCClMHADhaEnK26kS+Q3upTLYhHTxzGVB8h8gMN5/V4VKASrNud4h1jT
 9lgVXLBPHMIRQXiU5Bzl9Vutrx1/3dNNvVPAT/qU=
Received: by mail-qt1-f179.google.com with SMTP id j23so2801095qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 09:13:53 -0800 (PST)
X-Gm-Message-State: APjAAAXM7IO8PQZ/UfYkFtpOE97Z6RboDa7V+Jw5Lvj/Fc14FTE97ehX
 amirSVyl2IJ4hN76xfUkM6ng19TnE+eY2qH8Ng==
X-Google-Smtp-Source: APXvYqzWwqfR+SoJdd3pUrXUejrHZFu5fqFZ7jqlZyQ/GDLlYmrm1j7psEVj+D73QH5qwTr8ogrjBSus80zaAD3b6II=
X-Received: by 2002:aed:2344:: with SMTP id i4mr202251qtc.136.1582823632167;
 Thu, 27 Feb 2020 09:13:52 -0800 (PST)
MIME-Version: 1.0
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Feb 2020 11:13:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK9SLJKZfGjWu3RCk9Wiof+YdUaMziwOrCw5ZxjMZAq_Q@mail.gmail.com>
Message-ID: <CAL_JsqK9SLJKZfGjWu3RCk9Wiof+YdUaMziwOrCw5ZxjMZAq_Q@mail.gmail.com>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g driver
To: Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_091353_692273_36804994 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 3:52 AM Russell King <rmk+kernel@armlinux.org.uk> wrote:
>
> Add a DT bindings document for the Marvell 10G driver, which will
> augment the generic ethernet PHY binding by having LED mode
> configuration.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  .../devicetree/bindings/net/marvell,10g.yaml  | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/marvell,10g.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/marvell,10g.yaml b/Documentation/devicetree/bindings/net/marvell,10g.yaml
> new file mode 100644
> index 000000000000..da597fc5314d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/marvell,10g.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: GPL-2.0+

Dual license new bindings please:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/marvell,10g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Alaska X family Ethernet PHYs
> +
> +maintainers:
> +  - Russell King <rmk+kernel@armlinux.org.uk>
> +
> +allOf:
> +  - $ref: ethernet-phy.yaml#
> +
> +properties:
> +  marvell,led-mode:
> +    description: |
> +      An array of one to four 16-bit integers to write to the PHY LED
> +      configuration registers.

This is for what to blink or turn on for? I thought we had something
generic for configuring PHY LEDs specifically?

> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint16-array
> +      - minItems: 1
> +        maxItems: 4
> +
> +examples:
> +  - |
> +    ethernet-phy@0 {
> +        reg = <0>;

This needs to be under an 'mdio' node with #address-cells and
#size-cells set correctly.

> +        compatible = "ethernet-phy-ieee802.3-c45";
> +        marvell,led-mode = /bits/ 16 <0x0129 0x095d 0x0855>;
> +    };
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
