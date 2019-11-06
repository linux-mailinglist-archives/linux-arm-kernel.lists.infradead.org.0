Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFC4F0DE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:42:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/AByvKpDultJp98PqJGOsmk0tk0WyBzBeweTzJUjIs=; b=fxpiVUuoMBX7Yt
	2lck4DvKxYN/pk1ylzx3BLRnMqqG0P/MhO3Wq8dmrsY9T4IPsd0H63HiHeNjHTthLNPhXD3xVMbI+
	i7GKt0cBbtP45jWvC3+2x+dLemCeZbmTfDmx6X6opJpql/4SmVcku+6x0lgowyfEZmgw7MM9CY4vs
	Ai43i0PPD9kPWzozJLQfWbytMMetg5k2kExeFoukRO5eQ1zb24v1riHvg4/JwgybZqtp3RGjG+ctO
	xmWTGIRkHFf4k3sFz930xFgEJkh8Q1i4b7MEqpduJ2a53oZJm36dnHUhr9XPxyO859y7Z0fVLiOga
	RFeWHZSho+n/wUNSVnzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSD8x-0000Q0-U2; Wed, 06 Nov 2019 04:42:07 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSD8k-0000Ly-FC; Wed, 06 Nov 2019 04:41:56 +0000
Received: by mail-oi1-f193.google.com with SMTP id l202so19812184oig.1;
 Tue, 05 Nov 2019 20:41:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kExrcIwewO5meaE9ViSZ9PEk4wNZBD0E9gb/qgrKUcI=;
 b=ZKug/OVShp6cXAXp/B47CrHpaheOk6odeWjroznxtL5wKR3vRVceIfc2eu/4unRpGU
 yTOeCVovimkgaGTY4OAY4aXIiu0i5BXFz776+VRM/AgAnFzut5DCFNaAQjzYubLLLoEu
 lDSC9TN/ARsIrFRgdQlbSd6FeOzA0OlsbcFEDm2WnWsYKuJ2muQbrV83BToulVtWGRyA
 DadFD9ErBrlMeqbpA3Y3h9pfU6Npr7+tUTRPfbAZRgGYtBeQBFpcbTBnTU2Shvzsmw+A
 l3r3wBeoHCq/11irQaMYMJezzW26S8ygg2aOvZ/IZgngM3Qb+9q1thYFdvfhyhWmpxo6
 43DA==
X-Gm-Message-State: APjAAAVPhm4TdsVVnVsiq+++rQvVQSl2+jVuEsVLWyYidPGS/Fo7IzRy
 etL30R+zBGt0FQN0o+DlRvsba3Q=
X-Google-Smtp-Source: APXvYqxmk7nxkZvyzvyIdu53qhvNJePeZ1ZjaB/WVSemAb5HsQboL1nEWJcM17/eP/f5e7eko5Xxgw==
X-Received: by 2002:aca:f543:: with SMTP id t64mr498893oih.89.1573015313469;
 Tue, 05 Nov 2019 20:41:53 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 21sm6216231oin.26.2019.11.05.20.41.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:41:52 -0800 (PST)
Date: Tue, 5 Nov 2019 22:41:52 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 01/11] dt-bindings: soc: Add Realtek RTD1195 chip info
 binding
Message-ID: <20191106044152.GA23224@bogus>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-2-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103013645.9856-2-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_204154_523839_1E46E469 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 03, 2019 at 02:36:35AM +0100, Andreas F=E4rber wrote:
> Define a binding for RTD1195 and later SoCs' chip info registers.
> Add the new directory to MAINTAINERS.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Note: The binding gets extended compatibly later for up to three reg ent=
ries.
>  =

>  .../bindings/soc/realtek/realtek,rtd1195-chip.yaml | 32 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/realtek/realtek=
,rtd1195-chip.yaml
> =

> diff --git a/Documentation/devicetree/bindings/soc/realtek/realtek,rtd119=
5-chip.yaml b/Documentation/devicetree/bindings/soc/realtek/realtek,rtd1195=
-chip.yaml
> new file mode 100644
> index 000000000000..565ad2419553
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/realtek/realtek,rtd1195-chip.=
yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/realtek/realtek,rtd1195-chip.yam=
l#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Realtek RTD1195 chip identification
> +
> +maintainers:
> +  - Andreas F=E4rber <afaerber@suse.de>
> +
> +description: |
> +  The Realtek SoCs have some registers to identify the chip and revision.
> +
> +properties:
> +  compatible:
> +    const: "realtek,rtd1195-chip"

Don't need quotes.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg

Add here:

additionalProperties: false

> +
> +examples:
> +  - |
> +    chip-info@1801a200 {
> +        compatible =3D "realtek,rtd1195-chip";
> +        reg =3D <0x1801a200 0x8>;
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f33adc430230..5c61cf5a44cb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2188,6 +2188,7 @@ L:	linux-realtek-soc@lists.infradead.org (moderated=
 for non-subscribers)
>  S:	Maintained
>  F:	arch/arm64/boot/dts/realtek/
>  F:	Documentation/devicetree/bindings/arm/realtek.yaml
> +F:	Documentation/devicetree/bindings/soc/realtek/
>  =

>  ARM/RENESAS ARM64 ARCHITECTURE
>  M:	Geert Uytterhoeven <geert+renesas@glider.be>
> -- =

> 2.16.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
