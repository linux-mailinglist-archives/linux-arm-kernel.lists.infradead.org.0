Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2800E1D051E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 04:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OY3vKwakLYo8GCGbLh7nkYPaof7hja1kQz+R0DKy1Lc=; b=BRDbD/6uTXLhxN
	rciPpzawfYXISWkaIN37c1gJuAEpp6yhyy7d1FBbL3YSvKfQZkMvi3VReqOvTMuk0tEYIbtQkaRbd
	n0ywE2Yepta3jy8gZSLdWe00dPCiM6kX0R7t+c0KPsLiMKnaWjp7Uzh5mTGw+HVrOHjUsel13MBvt
	+Nzmaiq3TYCrUAMpTHs9We79xvP1Ui1D7YiFQZhvbaQ5hSd2w+v5hDKfrUpBWfu/OeKDgMoJ/uBke
	4zAzRQ9sMeYxJXkrAq9L9nOw8TcOm079Hh3Hfs0gVvtVtuv8uWSYCiE2sADTUtEVNYm+pwaAFwUd0
	wli/5NuEHTcXbu37OQQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYhKl-0005t6-Tm; Wed, 13 May 2020 02:41:23 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYhKa-0005sg-4P; Wed, 13 May 2020 02:41:13 +0000
Received: by mail-oi1-f194.google.com with SMTP id x7so19259402oic.3;
 Tue, 12 May 2020 19:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vk/gH8NIib/i4WfO/BNqo7XG45YgRMuUKBCFCVNn9K4=;
 b=lRXHB5FDa5XsiJAUKgb/PX5JNUCySdqZge1hV6sUZpNI3oiKIXvGNl9TXxoHKwsQNE
 Mt0OuwD0n435nF+8K2afzMWcsQ+ow9DA0DWX2VuFjJ/67EJzkiYWOOEYEIksgZZjUsnt
 21pB5FmFGLS4h9UR0b0CgkE0+dlUwVf+S5c2P+vz11R9aHNavIxN/gge581GjU0qItjE
 PvZclV3ShG1k7oUqzQqvn+i14oFsgSNSwMUO8GSxCyckupNwPsgXStmfNsAGJ70uuchh
 pQV6Bp/Z+AiCh3hrPn+evOP9FQOqrWzN/qHBasiGpalTueea5OhuXO3mPLYTIJftP5fS
 TKdA==
X-Gm-Message-State: AGi0PuY2kHQZK3a0IqzAuC5feCE7V4LCgNN0twQWTl1+jLJIocVDi7gM
 p5c7TXaLoRTDma97rI4SYA==
X-Google-Smtp-Source: APiQypLSWgq5+Oay+HnD2z30chqUL/969npxbmRPrn1Thwb26z2ngIk97YEqxzAvB6hlSpP74HHRRQ==
X-Received: by 2002:aca:2209:: with SMTP id b9mr15742070oic.117.1589337671421; 
 Tue, 12 May 2020 19:41:11 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j23sm58681otl.64.2020.05.12.19.41.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 19:41:10 -0700 (PDT)
Received: (nullmailer pid 2185 invoked by uid 1000);
 Wed, 13 May 2020 02:41:09 -0000
Date: Tue, 12 May 2020 21:41:09 -0500
From: Rob Herring <robh@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 02/11] dt-bindings: new: add yaml bindings for MediaTek
 Ethernet MAC
Message-ID: <20200513024109.GA29703@bogus>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-3-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505140231.16600-3-brgl@bgdev.pl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_194112_175493_455AAC85 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:02:22PM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This adds yaml DT bindings for the MediaTek Ethernet MAC present on the
> mt8* family of SoCs.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  .../bindings/net/mediatek,eth-mac.yaml        | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
> new file mode 100644
> index 000000000000..7682fe9d8109
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/mediatek,eth-mac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Ethernet MAC Controller
> +
> +maintainers:
> +  - Bartosz Golaszewski <bgolaszewski@baylibre.com>
> +
> +description:
> +  This Ethernet MAC is used on the MT8* family of SoCs from MediaTek.
> +  It's compliant with 802.3 standards and supports half- and full-duplex
> +  modes with flow-control as well as CRC offloading and VLAN tags.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8516-eth
> +      - mediatek,mt8518-eth
> +      - mediatek,mt8175-eth
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3
> +    maxItems: 3
> +
> +  clock-names:
> +    additionalItems: false
> +    items:
> +      - const: core
> +      - const: reg
> +      - const: trans
> +
> +  mediatek,pericfg:
> +    $ref: /schemas/types.yaml#definitions/phandle
> +    description:
> +      Phandle to the device containing the PERICFG register range.

Perhaps say what it is used for?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - mediatek,pericfg
> +  - phy-handle
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/mt8516-clk.h>
> +
> +    ethernet: ethernet@11180000 {
> +        compatible = "mediatek,mt8516-eth";
> +        reg = <0 0x11180000 0 0x1000>;

Default addr and size is 1 cell.

> +        mediatek,pericfg = <&pericfg>;
> +        interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>;
> +        clocks = <&topckgen CLK_TOP_RG_ETH>,
> +                 <&topckgen CLK_TOP_66M_ETH>,
> +                 <&topckgen CLK_TOP_133M_ETH>;
> +        clock-names = "core", "reg", "trans";
> +        phy-handle = <&eth_phy>;
> +        phy-mode = "rmii";
> +
> +        mdio {

Not documented.

> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            eth_phy: ethernet-phy@0 {
> +                reg = <0>;
> +            };
> +        };
> +    };
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
