Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA0158F95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 03:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvOprs67G6AXwM6aQ3f95b/e7pmwkAC29oNBWmHIhvE=; b=uiNZ/FoitEVV95
	59PhnzuH0V0CGEcA2jOEq3i70lvVebxqu451hKwyVyn7auSqtnVyvAlEAZs2EbtOrSOZqqRFVzxjt
	uHkzOObFFym7axsnaiMYSiuG8/StNto5wg/KVB7hvUpH8L/B19GIlsvCkt+WS8jmA0TjkwbtPW+/O
	eg2rUOeY2l6zvedDn8cpF1svX6BR+IMEKIZ0LyIN2zRY0lpvruEqLRrY3N4iXl+epATrbzS7dOQ51
	T2tpXUn9ddr1pyo9GcpBnKHAFUiW3i7bMtGK5ngB8jZsW0GNO1gGK7SyUhrWYZ6jkERa0x+HYRiqS
	VgjyQhyEkRPmi2/x+1qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgfV7-0001X1-Bm; Fri, 28 Jun 2019 01:16:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgfUs-0001WV-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 01:16:16 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81C0D216E3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 01:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561684573;
 bh=Z9yocx8qQWhLGVeHQQwWu+OcwqV+thBQlAOsCplTlCk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=A1BokdVi10ZhUBO/HUkH3Y4ylk6a6ZBSyja4sDiAtoFTq3CS+UOmoclUJewcAKtvV
 ud48/RJ5R10WnjQBJeaQw5vsMjXmvNOp8nmhJesOK58bXRaIx4cR2bhgBsA2+nv7N0
 WDv0wkzrT7CQAgA+GgUZ1UNUcartqHNWWrb7YkQY=
Received: by mail-qt1-f176.google.com with SMTP id p15so4611783qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 18:16:13 -0700 (PDT)
X-Gm-Message-State: APjAAAVAgCdXQy3/1YM/g6JzFvOH2xxBx10EM7tUZY/xpPlAtF8Yjf0j
 KtVRUH9r49n2S05tLAGGkPlwEJSN4nysj6loZw==
X-Google-Smtp-Source: APXvYqy3SrNqxnKgSsphHt1HwJRh2CjKXy+obFOvY+TpNLf1WKgrdAvAlOo5bMvYt0Olym7oKFynePl1OSb37uMLnUw=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr6010512qth.136.1561684572669; 
 Thu, 27 Jun 2019 18:16:12 -0700 (PDT)
MIME-Version: 1.0
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <945e54f02cc36a543b4c0bfd960475147359f7ff.1561649505.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <945e54f02cc36a543b4c0bfd960475147359f7ff.1561649505.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Jun 2019 19:16:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ0-p2w77OyaN07=DEdMzmUpPmPPMyqYj3jZJX+PV8LiA@mail.gmail.com>
Message-ID: <CAL_JsqJ0-p2w77OyaN07=DEdMzmUpPmPPMyqYj3jZJX+PV8LiA@mail.gmail.com>
Subject: Re: [PATCH v4 02/13] dt-bindings: net: Add a YAML schemas for the
 generic PHY options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_181615_048457_70562EB3 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 9:32 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The networking PHYs have a number of available device tree properties that
> can be used in their device tree node. Add a YAML schemas for those.
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 179 +++++++++-
>  Documentation/devicetree/bindings/net/phy.txt           |  80 +----
>  2 files changed, 180 insertions(+), 79 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/ethernet-phy.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> new file mode 100644
> index 000000000000..81d2016d7232
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> @@ -0,0 +1,179 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/ethernet-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ethernet PHY Generic Binding
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +  - Heiner Kallweit <hkallweit1@gmail.com>
> +
> +# The dt-schema tools will generate a select statement first by using
> +# the compatible, and second by using the node name if any. In our
> +# case, the node name is the one we want to match on, while the
> +# compatible is optional.
> +select:
> +  properties:
> +    $nodename:
> +      pattern: "^ethernet-phy(@[a-f0-9]+)?$"
> +
> +  required:
> +    - $nodename
> +
> +properties:
> +  $nodename:
> +    pattern: "^ethernet-phy(@[a-f0-9]+)?$"
> +
> +  compatible:
> +    oneOf:
> +      - const: ethernet-phy-ieee802.3-c22
> +        description: PHYs that implement IEEE802.3 clause 22
> +      - const: ethernet-phy-ieee802.3-c45
> +        description: PHYs that implement IEEE802.3 clause 45
> +      - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
> +        description:
> +          If the PHY reports an incorrect ID (or none at all) then the
> +          compatible list may contain an entry with the correct PHY ID
> +          in the above form.
> +          The first group of digits is the 16 bit Phy Identifier 1
> +          register, this is the chip vendor OUI bits 3:18. The
> +          second group of digits is the Phy Identifier 2 register,
> +          this is the chip vendor OUI bits 19:24, followed by 10
> +          bits of a vendor specific ID.
> +      - items:
> +          - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
> +          - const: ethernet-phy-ieee802.3-c45
> +
> +  reg:
> +    maxItems: 1
> +    minimum: 0
> +    maximum: 31
> +    description:
> +      The ID number for the PHY.

Mixing array and scalar properties is something we shouldn't be doing,
so I dropped maxItems as that is implied. I have a meta-schema check
for this once a couple of occurrences are fixed in the tree.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
