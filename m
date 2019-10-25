Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB28E55BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCAL0/EhMsPx99eIdGBQ2i854/KHIHizvd3Kj7tuCGQ=; b=pWMPlfEUtmNic7
	FMPQLadsMhuZ4c5IkwoPOJKpopznxfaCLYPqmYGVtyicWVyciDRaT5uLN5uFJ+6LrD+Y9diRwwHuQ
	3fQRuFIFyI+Ulviv9Uxwq/9zBYwDjBq2rgavJQLq9/grBbBS1D5f2ZtTGRkc+mgUYGRgVFEafofp1
	Pht5gMKINypYl61MUSP1E7fZQSAjk4nN0v6VnEDZJnmtW6UXaJgclxdjM9xQLv73dbS4bRA/KNnIm
	Gf7s0+5XlKhainz5PXBqipDKFzeNvbo7+rsgsUoYylXjDTFmOseCMbmHZUEuVRDwWMDwF3Aiapfol
	kRsCZEs5ig8fYPPV16Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6x6-0003CX-2j; Fri, 25 Oct 2019 21:16:56 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6wq-0003Bv-Gp; Fri, 25 Oct 2019 21:16:42 +0000
Received: by mail-oi1-f194.google.com with SMTP id n16so263434oig.2;
 Fri, 25 Oct 2019 14:16:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2ob0mgbIZ9FfbUUxJInfeBH4+M1B1T0PuvLRnw558ao=;
 b=lKf6tC37B1HGlCEpjdsw04A85VFTHMv6MksDgcdz56hLd+hyLzDzn9K1+6vyrFaq2g
 MTUXSACgKxSUKnuie0QeUBUp1VWrMJ+zR+Tw/ML9LXhKPJ9DEvh7m7opOPabKli9y2JJ
 lALIHC2T4T51Ra+IXR3kQ/Ca98hKGAn60LY+j3OhPRdensD1LFpRVmijrLS36q+QCGHe
 cek1lnDj3oJgWXPSDPHqSXUS0RI/mV1+xnHJRjJJA+I4g31pC9y8MZgjOn/5p8Rkz9WW
 ObGsiFFd2bydR/YFk5fjU7qz2yF0KEwwd39y/d2RZG3WJeacGfV4eXO5cTY7T0yBivKE
 R8DA==
X-Gm-Message-State: APjAAAWbOZeWi9Oce+ELz3d0hFPyrXMbEsBi1G7PaFfrVA/nViRllDSA
 4aGbq5itjU04kTCyj4XQgmQWq50=
X-Google-Smtp-Source: APXvYqwHwU0Ux4uA/CF9wNerMjPJFEWBUMoPYqh+hsHSr/1CY4O7H/1VhWFahfac5Tz6bTnGpVvp4w==
X-Received: by 2002:a54:478b:: with SMTP id o11mr4581792oic.169.1572038199401; 
 Fri, 25 Oct 2019 14:16:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r14sm1089669otp.23.2019.10.25.14.16.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:16:38 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:16:38 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v2 1/8] dt-bindings: watchdog: realtek: Convert RTD119x
 to schema
Message-ID: <20191025211638.GA28819@bogus>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-2-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191020040817.16882-2-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_141640_561148_61D760CC 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-realtek-soc@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 20, 2019 at 06:08:10AM +0200, Andreas F=E4rber wrote:
> Convert the Realtek watchdog binding to a YAML schema.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  v2: New
>  =

>  .../bindings/watchdog/realtek,rtd119x.txt          | 17 ----------
>  .../bindings/watchdog/realtek,rtd119x.yaml         | 38 ++++++++++++++++=
++++++
>  2 files changed, 38 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/realtek,rt=
d119x.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/realtek,rt=
d119x.yaml
> =

> diff --git a/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.t=
xt b/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.txt
> deleted file mode 100644
> index 05653054bd5b..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -Realtek RTD1295 Watchdog
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -
> -Required properties:
> -
> -- compatible :  Should be "realtek,rtd1295-watchdog"
> -- reg        :  Specifies the physical base address and size of registers
> -- clocks     :  Specifies one clock input
> -
> -
> -Example:
> -
> -	watchdog@98007680 {
> -		compatible =3D "realtek,rtd1295-watchdog";
> -		reg =3D <0x98007680 0x100>;
> -		clocks =3D <&osc27M>;
> -	};
> diff --git a/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.y=
aml b/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.yaml
> new file mode 100644
> index 000000000000..5d92cfdfd046
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/watchdog/realtek,rtd119x.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Realtek RTD1295 Watchdog
> +
> +maintainers:
> +  - Andreas F=E4rber <afaerber@suse.de>
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: realtek,rtd1295-watchdog

You can drop the 'oneOf' here unless you're planning to add another =

entry with 2 compatible strings.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +examples:
> +  - |
> +	watchdog@98007680 {
> +		compatible =3D "realtek,rtd1295-watchdog";
> +		reg =3D <0x98007680 0x100>;
> +		clocks =3D <&osc27M>;
> +	};
> +...
> -- =

> 2.16.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
