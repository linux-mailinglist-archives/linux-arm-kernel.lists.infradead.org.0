Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD40165220
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8D3vM1Uu04q63QZ8EkvLoRYKpev2n1G3C8Vzd5gxBc=; b=Ylw0uQ+wnc1aks
	BZ+LMwhDibmtk9DjCIjJ7aSn5wQ2WkYzKhfACVVvWjSm+M1LDgmO31J4cLyUp+2mFolIVsX/Y6ya0
	OnLOa+J2UqBKJegTcvPNSk/DrMir/BzNhVFy1C8hsxVHXXIbKHWiADkpuBKjj3TW8GYSTCUfeYQKa
	TV7Wr7wN/oNXrKIL4AupDreSe0qpv1225baTRVLjezzocmX+du0tRN3ZYz45xLJY2BtGuU9f4WW1z
	7qjDYyWoHszkIR01F0DG8EBHOUGYIG2dyobVjZ4teZth6c5HlZPOQKShQsmzaYDJjhKwfga7ibCtZ
	JoLU5sdKU3Ee4p9Tm4hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XUc-00017b-6Q; Wed, 19 Feb 2020 22:06:54 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4XUU-000177-6W; Wed, 19 Feb 2020 22:06:47 +0000
Received: by mail-ot1-f65.google.com with SMTP id w6so1759064otk.0;
 Wed, 19 Feb 2020 14:06:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=nX8xqwF3vuVz6SMuQkjOYa0QQbZHhMZp1SMRDtGWins=;
 b=j7OJQ/m+pDjcIeUpIl5O6iso68togHGD09cdS5FKZe+ONsug7nSJs3nBF/YQ5+fCbk
 eQ8tw3oAHxNYYrZ/M6i7p0+QiI9pNcXn5kjzADhFtf36fj0Eha/GmGBicaI4QRlB4ytu
 8WUfLim+G/Av87WdDHBbodfnT1E+xX9stFsvHLOgfcqUPoVQM6j4NqtKfeLVmrj+zGHU
 hCax05RIj6bsMN6t4eic2fGog5sBXnHV/zkC85t+sXSAlkX+1YnFjvKwVF0BKInWjWvs
 cEkGMxXw7WSC6l67k+6bWADjPOCI7Rqj1qT9Oiri7M020OYh5ZadPDh7glYPZLqj8lCx
 uYtA==
X-Gm-Message-State: APjAAAXCVxI2UkQ+bt3FrBcf08gh2IYLORHvxq5OkisoXEOfEHS8Z+0K
 rTSNLP+xvwS0uiGeS25mAA==
X-Google-Smtp-Source: APXvYqyzDpAsYbjMChkiOsp8vQqnGzBRtPAhURMvfp0Uf1xlLNMzHvlqRbrPr1aAJf+7mljlZu6F6g==
X-Received: by 2002:a9d:6548:: with SMTP id q8mr19241216otl.356.1582150005300; 
 Wed, 19 Feb 2020 14:06:45 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z10sm406828oih.1.2020.02.19.14.06.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 14:06:44 -0800 (PST)
Received: (nullmailer pid 21809 invoked by uid 1000);
 Wed, 19 Feb 2020 22:06:43 -0000
Date: Wed, 19 Feb 2020 16:06:43 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@protonmail.com>
Subject: Re: [PATCH] dt-bindings: rng: Convert BCM2835 to DT schema
Message-ID: <20200219220643.GA14392@bogus>
References: <20200207231347.2908737-1-nfraprado@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207231347.2908737-1-nfraprado@protonmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_140646_240389_E4B937FF 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 11:14:12PM +0000, N=EDcolas F. R. A. Prado wrote:
> Convert BCM2835/6368 Random number generator bindings to DT schema.
> =

> Signed-off-by: N=EDcolas F. R. A. Prado <nfraprado@protonmail.com>
> ---
> =

> Hi,
> wasn't really clear to me who to add as maintainer for this dt-binding.
> The three names added here as maintainers were based on the get_maintainer
> script and on previous commits on this file.
> Please tell me whether these are the right maintainers for this file or n=
ot.

Whoever knows the h/w ideally, not who is going to apply patches.

> =

> This patch was tested with:
> make ARCH=3Darm DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/rng/b=
rcm,bcm2835.yaml dt_binding_check

You also need to make sure without DT_SCHEMA_FILES set everything is =

fine. That tests the example against all schemas.

> make ARCH=3Darm DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/rng/b=
rcm,bcm2835.yaml dtbs_check
> =

> Thanks,
> N=EDcolas
> =

>  .../devicetree/bindings/rng/brcm,bcm2835.txt  | 40 ------------
>  .../devicetree/bindings/rng/brcm,bcm2835.yaml | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 40 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm2835.txt
>  create mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm2835.ya=
ml
> =

> diff --git a/Documentation/devicetree/bindings/rng/brcm,bcm2835.txt b/Doc=
umentation/devicetree/bindings/rng/brcm,bcm2835.txt
> deleted file mode 100644
> index aaac7975f61c..000000000000
> --- a/Documentation/devicetree/bindings/rng/brcm,bcm2835.txt
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -BCM2835/6368 Random number generator
> -
> -Required properties:
> -
> -- compatible : should be one of
> -	"brcm,bcm2835-rng"
> -	"brcm,bcm-nsp-rng"
> -	"brcm,bcm5301x-rng" or
> -	"brcm,bcm6368-rng"
> -- reg : Specifies base physical address and size of the registers.
> -
> -Optional properties:
> -
> -- clocks : phandle to clock-controller plus clock-specifier pair
> -- clock-names : "ipsec" as a clock name
> -
> -Optional properties:
> -
> -- interrupts: specify the interrupt for the RNG block
> -
> -Example:
> -
> -rng {
> -	compatible =3D "brcm,bcm2835-rng";
> -	reg =3D <0x7e104000 0x10>;
> -	interrupts =3D <2 29>;
> -};
> -
> -rng@18033000 {
> -	compatible =3D "brcm,bcm-nsp-rng";
> -	reg =3D <0x18033000 0x14>;
> -};
> -
> -random: rng@10004180 {
> -	compatible =3D "brcm,bcm6368-rng";
> -	reg =3D <0x10004180 0x14>;
> -
> -	clocks =3D <&periph_clk 18>;
> -	clock-names =3D "ipsec";
> -};
> diff --git a/Documentation/devicetree/bindings/rng/brcm,bcm2835.yaml b/Do=
cumentation/devicetree/bindings/rng/brcm,bcm2835.yaml
> new file mode 100644
> index 000000000000..b1621031721e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/brcm,bcm2835.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rng/brcm,bcm2835.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BCM2835/6368 Random number generator
> +
> +maintainers:
> +  - Stefan Wahren <stefan.wahren@i2se.com>
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +  - Herbert Xu <herbert@gondor.apana.org.au>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,bcm2835-rng
> +      - brcm,bcm-nsp-rng
> +      - brcm,bcm5301x-rng
> +      - brcm,bcm6368-rng
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description: phandle to clock-controller plus clock-specifier pair

No need to redefine a common property.

> +    maxItems: 1
> +
> +  clock-names:
> +    const: ipsec
> +
> +  interrupts:
> +    description: specify the interrupt for the RNG block

Same here.

> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    rng {
> +        compatible =3D "brcm,bcm2835-rng";
> +        reg =3D <0x7e104000 0x10>;
> +        interrupts =3D <2 29>;
> +    };
> +
> +  - |
> +    rng@18033000 {
> +        compatible =3D "brcm,bcm-nsp-rng";
> +        reg =3D <0x18033000 0x14>;
> +    };
> +
> +  - |
> +    random: rng@10004180 {

Drop the label.

> +        compatible =3D "brcm,bcm6368-rng";
> +        reg =3D <0x10004180 0x14>;
> +
> +        clocks =3D <&periph_clk 18>;
> +        clock-names =3D "ipsec";
> +    };
> -- =

> 2.25.0
> =

> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
