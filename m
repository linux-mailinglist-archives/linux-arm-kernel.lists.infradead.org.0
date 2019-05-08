Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DF21807F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 21:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52bf1mM7DjJ1/f1oD7lB+h10l0u9k3kWc7qnKm0BADo=; b=QqgWTon/ZEhA4o
	BllxnpQ1/jlkd8yVvm+HWPNN5hvjWTNNK97xB6biaIOCpHKeX4SKz0I8JONQ0Gze95tD5Rx+HRlRj
	J52BTFOwqrXO0qStdemXwBC0KZBTa1uJD1ReL1O2BZIQo+J3y33bGWTS9MxZ4LD2pn1J+TvQ7DzPU
	aLhUo3KQpxQyj2gzrDq1AYaqiTksn3XXaa/EBL4dSlSzDMBklihTab/uWt5J2doyGj9U2/SfKOZz2
	22ZnyL+THizkz21S75hI5LItLB6hcJBHMwk37XtaHH0UuTFc+n7/JUWqAu9JrEIV7RJY1aNTgz5t0
	4DgCim6TRmhIlhSwJFCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOSLj-0000z2-8X; Wed, 08 May 2019 19:35:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOSLd-0000yW-Ac
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 19:35:26 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AB942089E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 May 2019 19:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557344123;
 bh=mphS1ZN+kXNeKFWy1pdoLamsdXu3KBM/8iy2Ccq1Jww=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Qis8XcF09odtVtYH48hq892KgXbEy2WFYjgITzLgPd/MhviV3TODGnumc5xgy4zz1
 Dl93P6CJHOMqwvU4+fWCNgxaqCsADXphF/ii+5AYJrk7PyfyGe0oDXYj0EmBVX21Fc
 BvhILC//l4J2vSVC4rCVjprIovyUqdXFlelxVU54=
Received: by mail-qt1-f170.google.com with SMTP id j53so5527472qta.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 12:35:23 -0700 (PDT)
X-Gm-Message-State: APjAAAXXvw9g3D9STm3zvy92SKIPnUXr7MErFyuyWH9HS2mT1TSN2sOu
 Gt4KSWdDtIehxE143e21ax2zPSbF4ZXfQATyGg==
X-Google-Smtp-Source: APXvYqwTXK9BQC3/v8jqMr3QUXehY36ghelKZ/C7r+S4saAFToONVr37WTIeh/DAe2dCDHllum/rv91d81sXjmRd9Dc=
X-Received: by 2002:aed:306c:: with SMTP id 99mr32486801qte.38.1557344122609; 
 Wed, 08 May 2019 12:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <dc84c7e9ce272109052f553a5e050bfe1a09e9d6.1557252411.git-series.maxime.ripard@bootlin.com>
 <d9afb19c32f8b9b2c40c8d4c0c3df74bff0ccf35.1557252411.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <d9afb19c32f8b9b2c40c8d4c0c3df74bff0ccf35.1557252411.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 8 May 2019 14:35:10 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
Message-ID: <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: sound: sun4i-spdif: Document that the
 RX channel can be missing
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_123525_399505_B1C94D1D 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 1:07 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The H3 and compatibles controllers don't have any reception capabilities,
> even though it was never documented as such in the binding before.
>
> Therefore, on those controllers, we don't have the option to set an RX DMA
> channel.
>
> This was already done in the DTSI, but the binding itself was never
> updated. Let's add a special case in the schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - switch to a draft7 conditional
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 45 ++++++++++++++++++++++++++++++++++++---------
>  1 file changed, 36 insertions(+), 9 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
> index 5698e5de5e31..8f1bc1a1af96 100644
> --- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
> @@ -44,15 +44,8 @@ properties:
>        - const: apb
>        - const: spdif
>
> -  dmas:
> -    items:
> -      - description: RX DMA Channel
> -      - description: TX DMA Channel
> -
> -  dma-names:
> -    items:
> -      - const: rx
> -      - const: tx
> +  dmas: true
> +  dma-names: true
>
>    resets:
>      maxItems: 1
> @@ -70,6 +63,40 @@ allOf:
>        required:
>          - resets
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-h3-spdif
> +
> +    then:
> +      properties:
> +        dmas:
> +          maxItems: 1

In this and below, these should get added automatically by
fixup_schema. If not present, we set minItems/maxItems to the size of
the items list. It look like you added support for that, so left over
from before you addressed that for if/then/else?

> +          items:
> +            - description: RX DMA Channel

s/RX/TX/

> +
> +        dma-names:
> +          maxItems: 1
> +          items:
> +            - const: tx
> +
> +    else:
> +      properties:
> +        dmas:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            - description: RX DMA Channel
> +            - description: TX DMA Channel
> +
> +        dma-names:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            - const: rx
> +            - const: tx

I'm really on the fence whether it's worth it to add all this just add
the restrictions based on the compatible. I guess with copy-n-paste
this would be a common error.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
