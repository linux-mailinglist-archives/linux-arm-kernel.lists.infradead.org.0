Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFCCAB711
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 13:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PN++ClS3pZYC86fbYt9kp4/H25EQx2qMttanAnEDnck=; b=Jzoy8UXQjKmUIa
	WIrJ53oHvCPg6m59lwXssGt128CxLgqnNVUMNKkKDldBmk9m673Aow3flpvbK4ycCFDifFAP6hJ0Q
	ELmHi6DHsBfErzJ/mxoN/s65Wv2qe6Tk/erdL4i4GZwXzGD3MmMNLiFdTsgW+tyhnNDluWvkKDqzo
	e7sWYwnvm0MAV8NijIV7SOKMZIg0VZH5ep/yGpGEqt73yLcXQR1OAZexxvKtl+NyFxbW3ISPPAaZr
	kR/KfZSqTjCTA/GAnXkThiET+qZfdhaipig3r1fLJ6BwcLUKQol6AWJUlZYZOx+BLQ6x2WLKY8mIh
	l20cy5frRC1XFisfs6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6CJl-0001GF-AU; Fri, 06 Sep 2019 11:22:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6CJf-0001Fo-CU
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 11:22:12 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1E53214E0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 11:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567768930;
 bh=mg99oI+JAJRgOVGK0d9QISsA9MAMLQqI02NbOGEQzS0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xqPEko4gNB6Qww5nhNh3trZMAvgeNUlvX2TvCc2Cxm5pY4GAGJql2e2bCHvBpfxgh
 IvsADZKZ7mn+NNs9KCLbMHNpXvMG5U/GVq1I4oPk62+H2p+sKjAX/JUwBggQ2veDu/
 M6aMZNn6ZO6+YHZ+LAC9WTfYHI5CU3bSbYBvs2LQ=
Received: by mail-qk1-f171.google.com with SMTP id q203so5253961qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 04:22:10 -0700 (PDT)
X-Gm-Message-State: APjAAAX8rw85GCGO6y8m2JsCTxlsKHPe87MD6vZkgvNY3vXb/uDZQpxe
 63LzNXaiTo+wrtKsEX0zn6A/Db+QlH0oV+0sow==
X-Google-Smtp-Source: APXvYqw0tyW6e/VjzrDh9l4ZyzZyXcdsfoH3EhwvjibGd2tVCeD+byw7fNjSy65tsEeFd57L9GTaHj9MhkzLk7xwMiY=
X-Received: by 2002:a37:682:: with SMTP id 124mr7922990qkg.393.1567768929792; 
 Fri, 06 Sep 2019 04:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190906111435.5706-1-horms+renesas@verge.net.au>
In-Reply-To: <20190906111435.5706-1-horms+renesas@verge.net.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 6 Sep 2019 12:21:58 +0100
X-Gmail-Original-Message-ID: <CAL_JsqLvU4=kaQ-nSwMuh4VXX67U5URZAPvVJohfKzQsQdFTrA@mail.gmail.com>
Message-ID: <CAL_JsqLvU4=kaQ-nSwMuh4VXX67U5URZAPvVJohfKzQsQdFTrA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: renesas: Convert 'renesas,
 prr' to json-schema
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_042211_469329_638DF39F 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 12:14 PM Simon Horman <horms+renesas@verge.net.au> wrote:
>
> Convert Renesas Product Register bindings documentation to json-schema.
>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> ---
> Based on v5.3-rc1
> Tested using:
>   make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/renesas,prr.yaml
> ---
>  .../devicetree/bindings/arm/renesas,prr.txt        | 20 ------------
>  .../devicetree/bindings/arm/renesas,prr.yaml       | 36 ++++++++++++++++++++++
>  2 files changed, 36 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.txt b/Documentation/devicetree/bindings/arm/renesas,prr.txt
> deleted file mode 100644
> index 08e482e953ca..000000000000
> --- a/Documentation/devicetree/bindings/arm/renesas,prr.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -Renesas Product Register
> -
> -Most Renesas ARM SoCs have a Product Register or Boundary Scan ID Register that
> -allows to retrieve SoC product and revision information.  If present, a device
> -node for this register should be added.
> -
> -Required properties:
> -  - compatible: Must be one of:
> -    "renesas,prr"
> -    "renesas,bsid"
> -  - reg: Base address and length of the register block.
> -
> -
> -Examples
> ---------
> -
> -       prr: chipid@ff000044 {
> -               compatible = "renesas,prr";
> -               reg = <0 0xff000044 0 4>;
> -       };
> diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.yaml b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> new file mode 100644
> index 000000000000..9df003041456
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/renesas,prr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas Product Register
> +
> +maintainers:
> +  - Geert Uytterhoeven <geert+renesas@glider.be>
> +  - Magnus Damm <magnus.damm@gmail.com>
> +
> +description: |
> +  Most Renesas ARM SoCs have a Product Register or Boundary Scan ID
> +  Register that allows to retrieve SoC product and revision information.
> +  If present, a device node for this register should be added.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +        - const: "renesas,prr"
> +        - const: "renesas,bsid"

enum is better than oneOf+const and drop the quotes. oneOf/allOf/anyOf
result in terrible error messages.

> +  reg:
> +    items:
> +      - description: Base address and length of the register block.

That's what 'reg' *always* is... Just 'maxItems: 1' is sufficient when
there is only 1 entry.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    prr: chipid@ff000044 {
> +        compatible = "renesas,prr";
> +        reg = <0 0xff000044 0 4>;
> +    };
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
