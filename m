Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCBB79CE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 01:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtPj3m/BRyDiGYHaXhVHuoVKkt104iBdAZWUjrJc2O4=; b=B1XVPIDbsyRt3h
	BFGM2pj8BkmMYvmZN15DjkQWo5/jkq3o03G+h/boVIWWwWJ9jG3hIP/q1a0H952N5aNShj2a1zDuS
	3UxtwQYenKRmMLgp5zYBAN6QcaiR3AwzjRzOZeixOp2JhMqeWmL99eRXgVMZxA7X3Gl9sKq/ZBmpM
	XUzR9xH+mC6pBEN2CCM021Q31Lnf+PjsOHgKe8GM4Hr1BhGrokpWxyi+NCIQ1IGJYYUd42TCQQMlW
	RpQp9WV3FAU/ImS8lg+fSXAcSTrP6rMeImrYyxxt+MlHOpKTPQLyzzGCX91bICHkbPUg+tDUxBDz1
	bw+k9LAfIEAMXQmGEXiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsFD5-0005H4-7C; Mon, 29 Jul 2019 23:37:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsFCu-0005Gd-D6
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 23:37:33 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5D39216C8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 23:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564443451;
 bh=1qfSx+UsNMVlps6cSiR+Fnt7FDGRR1/iLTnDFyMcZUA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jY/kR7aYsvzGjePWSBWU1HZSgQVZSTJVa4kURbXxRC1hxgI3BhwGrz3TiOP7HyC02
 S3ZHlRUVebzVtesX/QoafRNxvkEDsc1dM5fWhNKSHAuy5nWFYqawNMUJgp6u15rAK3
 xl+4fDVdmCoNFixRMYwVv3JNUm+KgH/DHzxkzG+A=
Received: by mail-qk1-f169.google.com with SMTP id d15so45277299qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 16:37:31 -0700 (PDT)
X-Gm-Message-State: APjAAAXI/Mv4eiIepdzVma5ZoA5de+I3bSyBi+1eVVRYciyTpiv5G+1w
 0cbPJn2m+tEA0OZPoWXNgLdhdWFXXQTTrT2E0A==
X-Google-Smtp-Source: APXvYqx10EVolBe1nZc74TUTVuzkzQVea8UaThML/DaB+Laxs522U+FPo5bibjFkeIeUlaR3zWKjRDi9Ct5/EhcD1OM=
X-Received: by 2002:a37:6944:: with SMTP id e65mr68650213qkc.119.1564443450862; 
 Mon, 29 Jul 2019 16:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190729043926.32679-1-andrew@aj.id.au>
 <20190729043926.32679-2-andrew@aj.id.au>
In-Reply-To: <20190729043926.32679-2-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 17:37:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLytwfsoyS6TSnpPgTjRTOR0TeQwroX21AHqj3A1mPJ5Q@mail.gmail.com>
Message-ID: <CAL_JsqLytwfsoyS6TSnpPgTjRTOR0TeQwroX21AHqj3A1mPJ5Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: net: Add aspeed,ast2600-mdio binding
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_163732_479001_95852306 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Florian Fainelli <f.fainelli@gmail.com>, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, David Miller <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 10:39 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST2600 splits out the MDIO bus controller from the MAC into its own
> IP block and rearranges the register layout. Add a new binding to
> describe the new hardware.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../bindings/net/aspeed,ast2600-mdio.yaml     | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml b/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
> new file mode 100644
> index 000000000000..fa86f6438473
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/aspeed,ast2600-mdio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED AST2600 MDIO Controller
> +
> +maintainers:
> +  - Andrew Jeffery <andrew@aj.id.au>
> +
> +description: |+
> +  The ASPEED AST2600 MDIO controller is the third iteration of ASPEED's MDIO
> +  bus register interface, this time also separating out the controller from the
> +  MAC.
> +

Should have a:

allOf:
  - $ref: "mdio.yaml#"

> +properties:
> +  compatible:
> +    const: aspeed,ast2600-mdio
> +  reg:
> +    maxItems: 1
> +    description: The register range of the MDIO controller instance

> +  "#address-cells":
> +    const: 1
> +  "#size-cells":
> +    const: 0

Then you can drop these 2.

> +
> +patternProperties:
> +  "^ethernet-phy@[a-f0-9]$":
> +    properties:
> +      reg:
> +        description:
> +          The MDIO bus index of the PHY

And this.

> +      compatible:
> +        enum:
> +          - ethernet-phy-ieee802.3-c22
> +          - ethernet-phy-ieee802.3-c45

This isn't specific to ASpeed either and is already covered by
ethernet-phy.yaml.

So that means none of the child node schema is needed here.

> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +examples:
> +  - |
> +    mdio0: mdio@1e650000 {
> +            compatible = "aspeed,ast2600-mdio";
> +            reg = <0x1e650000 0x8>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            status = "okay";

Don't show status in examples.

> +
> +            ethphy0: ethernet-phy@0 {
> +                    compatible = "ethernet-phy-ieee802.3-c22";
> +                    reg = <0>;
> +            };
> +    };
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
