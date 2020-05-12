Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F731D0184
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzeadpkPlnVBAEj7ARD1OPDCH9EDZIjf41nVKjJIh3U=; b=X4VaAFHfJDktgS
	zYhxyZlr2IxKRPRaeUk1iXxwsAEY2xHUalqeqIkIOLoKYXW+Ss0PU8B+YzXji/2IjTvHTStCA59gK
	DvXqse4ckNov2r9L0gCJUrjPJKnlSSAtlLT11tCpWDo0r9HNqjt9H4q2gtSA6UPGyJoVPye5GIwiq
	6frBhu28Y9pSgFKS+WhJApOrBRpgL2fpFkAsrgyaG0YJSoADc45ZPp89Il1uSmbHGTOLCRcW9HIie
	EVwsrfNPfjGN4/nZs0dzptJreRwU2vmKa1v/B+LHe4kQVGjCdcvgm5kWqP/J0U2I7wDnHQzj7sAWP
	AIvoZZ6v9REaLy54NQHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYczp-0006YC-Aw; Tue, 12 May 2020 22:03:29 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYczd-0006Ux-Al; Tue, 12 May 2020 22:03:20 +0000
Received: by mail-ot1-f65.google.com with SMTP id j4so11821290otr.11;
 Tue, 12 May 2020 15:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MUwPbwoCw7AWkOjfbYkkLEEsldhhBednze2KVALn6gg=;
 b=UmfEoYC7qdydmeVho7sx829ojFAsk6iS16zv6qe32JrHvgaEQVVmxpq2nqCGqODi9i
 icbCaKLPI8aiGT2fglvNq5PNNlOn4P3gHwXria92iOPgjaePTWHjQxDrjbDwBN2SeASV
 5PhqbXia6roNbPJ/Drx882lNIUIpZZp5Lv+ZLSYXk4sgct0NzZ4zYQXFDGU3cLkdZTlc
 FGGQyYsSbSsealKv145REkD0iCRkH8nHkXoe5vrrmE1Te++tLGXB9jvogjbtHFtP8MFb
 KFaiurUW06ZKXXgnqpraT33iS3hqho5dpqOmYigcxq6G9oo2AgrGqZol2gMnQXaXNt5J
 mbYg==
X-Gm-Message-State: AGi0Pua07+1+dxjTa+TpAmVWZHFUk0Q6Zf6v+1PpnyTierHFHbqnGFOM
 1zJqPrjmqltgmuhahRHB2A==
X-Google-Smtp-Source: APiQypJgSZbfY16yL5q4Va7ckktZ2np41KwS/08QmNxY59XKZdbVclDoACFX2ieFTq/+LTS07P9ekg==
X-Received: by 2002:a9d:6847:: with SMTP id c7mr17918699oto.159.1589320996371; 
 Tue, 12 May 2020 15:03:16 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j47sm2689110oof.11.2020.05.12.15.03.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:03:15 -0700 (PDT)
Received: (nullmailer pid 13443 invoked by uid 1000);
 Tue, 12 May 2020 22:03:14 -0000
Date: Tue, 12 May 2020 17:03:14 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: meson8b-usb2: Convert to json-schema
Message-ID: <20200512220314.GA28996@bogus>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
 <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_150317_366454_6B79CED5 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 vkoul@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 01:47:47PM +0200, Martin Blumenstingl wrote:
> Now that we have the DT validation in place, let's convert the device
> tree bindings for the Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2
> PHY over to a YAML schema.
> 
> While here, also add the fallback compatible string
> "amlogic,meson-gxbb-usb2-phy" which is already used in
> arch/arm/boot/dts/meson{,8,8b}.dtsi.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../phy/amlogic,meson8b-usb2-phy.yaml         | 61 +++++++++++++++++++
>  .../bindings/phy/meson8b-usb2-phy.txt         | 28 ---------
>  2 files changed, 61 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
> new file mode 100644
> index 000000000000..c2fe8c08d99e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/amlogic,meson8b-usb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2 PHY
> +
> +maintainers:
> +  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +            - amlogic,meson8-usb2-phy
> +            - amlogic,meson8b-usb2-phy

Needs 2 more spaces indent.

> +          - const: amlogic,meson-mx-usb2-phy
> +      - const: amlogic,meson-gxbb-usb2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: usb_general
> +      - const: usb
> +
> +  resets:
> +    minItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  phy-supply:
> +     description:

Wrong indentation.

> +       Phandle to a regulator that provides power to the PHY. This
> +       regulator will be managed during the PHY power on/off sequence.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#phy-cells"

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +    usb-phy@c0000000 {
> +      compatible = "amlogic,meson-gxbb-usb2-phy";
> +      reg = <0xc0000000 0x20>;
> +      resets = <&reset_usb_phy>;
> +      clocks = <&clk_usb_general>, <&reset_usb>;
> +      clock-names = "usb_general", "usb";
> +      phy-supply = <&usb_vbus>;
> +      #phy-cells = <0>;
> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
