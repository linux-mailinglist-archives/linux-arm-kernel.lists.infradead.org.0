Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8FB4BBFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYFIEPrhgSKiYk82UxZGATuTYWpRZkuIrZrXTECOHIc=; b=aCoxwCV9Ga8MKm
	dqj7hx+5SwWmCPlpRJumANP+Q6MYlmI2umo7XzePJePreNbral6GDf88yC2aI4FEVWfHBu5HaIVtT
	ZRA58n0aeKdfMXpBnAVmfG23b+7flshW12atYRPqEG319pU7hXh8EJltRw3EC/9AqkSCM/ahRRj9b
	60TlGZ9sR2awQX63r6ZylMQIZyX4XRsCzuhj7LPsdeCist8RWSQwHahn564wpBve3/ixjJZt4TV7Y
	B/HxkvXrV4I+21oftmsFvmRRHyUz7JLFSKt+899WIqsIoqXGOiojwzcAIYf4BIIJ3AwxvNeVy3ypk
	+lveE2F37/NY5FL3FkTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbrQ-0001yi-MN; Wed, 19 Jun 2019 14:46:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbrF-0001yG-VP
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:46:43 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D53721881
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560955601;
 bh=ybVW7Ea5eMfZg+bToe1PcrWBxJTqfPTPZQ35pTPG7h4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZzUwgQGkvk0bBDa2uRT/zR74u7nL2T25/qTALzzZADu6+sV93WrM6REYlJw1kQFtE
 HkeRAKjQYkEm+W5fJMYLgui2FKCdjvgMdjJHMsqg82p41ZW47pMylujCsT+bcr/Jko
 FioKfD/f3GZuW6jMkoGxLVe+gDSTSHr9KjyZtnqY=
Received: by mail-qt1-f173.google.com with SMTP id a15so20182273qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:46:41 -0700 (PDT)
X-Gm-Message-State: APjAAAU6JKUynV+T++GXHEWpr1QWIA6HT+TPJ2Y/mK07jHz8on3VAlfL
 1dRHx+eYig01aPrO8DVjBVY2tSRToI7KVD6IpQ==
X-Google-Smtp-Source: APXvYqxsL55tBpnh7d1D58N3IolGY5fTDOQVrJmdjfIwoxLtWxuN1egPqybHkL3wTo4GaEANYh8XHiHR9+TvMpfENos=
X-Received: by 2002:aed:3f10:: with SMTP id p16mr41487170qtf.110.1560955600704; 
 Wed, 19 Jun 2019 07:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <e7c13fc3c4e287df6292dbee27ae1caeca0c06c4.1560937626.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <e7c13fc3c4e287df6292dbee27ae1caeca0c06c4.1560937626.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 08:46:28 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+A+jspyCpu9USL6FQ9y5qL_yqYS=DTE=aM5YzyeZwd0w@mail.gmail.com>
Message-ID: <CAL_Jsq+A+jspyCpu9USL6FQ9y5qL_yqYS=DTE=aM5YzyeZwd0w@mail.gmail.com>
Subject: Re: [PATCH v3 06/16] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_074642_039132_8D24734E 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Jun 19, 2019 at 3:48 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch our Allwinner A10 EMAC controller binding to a YAML schema to enable
> the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Switch from the deprecated phy property to phy-handle
> ---
>  Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt      | 19 -------------------
>  2 files changed, 55 insertions(+), 19 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt
>
> diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
> new file mode 100644
> index 000000000000..2ff9e605cd26
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/allwinner,sun4i-a10-emac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 EMAC Ethernet Controller Device Tree Bindings
> +
> +allOf:
> +  - $ref: "ethernet-controller.yaml#"
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  compatible:
> +    const: allwinner,sun4i-a10-emac
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  allwinner,sram:
> +    description: Phandle to the device SRAM
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - phy-handle

Doesn't this throw an error if not listed in properties?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
