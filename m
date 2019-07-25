Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB5F75B05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4eZlQP6U3uCz8U0zmuK3irUo46u7Pchl4b6EJXbHo4=; b=j5LFdb87/SeO9M
	z41eG4i8quDY9NmoU1MFplnOfZv0TtAyZroZ58XxkjFG7qtuImdb52UihXTWmublCHVfLxFIMlj7d
	fhUBIczlRy36zFF6lbc9MRUpPymdgtxVCx7PerRmnfXFADdfKq6LTcxqO98B2Yf9alCl+KXB84zz/
	GfZwDY+gtXWDZpHZDyjPg62TgtXiQSD7szk+2ijYflhHftoxsTaSf2hhRcDuHV4I77AI1270AHZ7U
	+XBmv0wzXThdhJQ4H5j0J10kxGinSElCwQALoroIe0W12nGBP3ySqM/EPuViT0yXBjQ083QwEyO1d
	QDqvXAc4YjyQAt+o+NJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmeW-000438-VQ; Thu, 25 Jul 2019 22:56:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqmeE-00041m-Qh; Thu, 25 Jul 2019 22:55:44 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 626AE22BF5;
 Thu, 25 Jul 2019 22:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564095342;
 bh=g812QekVhk9YTdEBM9x7cM1JCaC9kZOURpxH8pDFoBY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Dz09u9S+Y3r70TocpuCA7IhoTLlYKdq7e+lwmbq167Zr4gqovWvCkIFvioJzQc30E
 UExAFN0EUnJRkGN7juvvECfcyT/2dxBkDeevZjvKHHIjF+P3AGjXUkTgj812rRiWOK
 Eqxe4SYbimo13thxamdtxgOCzguesjyhhx+fJq8w=
Received: by mail-qt1-f177.google.com with SMTP id a15so50735846qtn.7;
 Thu, 25 Jul 2019 15:55:42 -0700 (PDT)
X-Gm-Message-State: APjAAAXvC5evuGQNmwOePMsnqNk3dDHgjeuLE+SEm6zB14+jMbjteDX5
 i5YMqitCpyVqGK07jq5c/1H8PkhdxaRQ3nCCGg==
X-Google-Smtp-Source: APXvYqz9DMpk570nuBSorqgYVEjSnP43DJEbGzpTBLg6Vx9QqBo6uQGIKBtq4PAJy2WytaI2Mv9aGYuTo7fmld4NaC4=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr65611308qve.148.1564095341588; 
 Thu, 25 Jul 2019 15:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
 <1564083776-20540-2-git-send-email-clabbe@baylibre.com>
In-Reply-To: <1564083776-20540-2-git-send-email-clabbe@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 25 Jul 2019 16:55:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLbYwRpNWHGkYbomWLMpum_DXW4OjNNRrwTRM=w86dONw@mail.gmail.com>
Message-ID: <CAL_JsqLbYwRpNWHGkYbomWLMpum_DXW4OjNNRrwTRM=w86dONw@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: crypto: Add DT bindings documentation
 for amlogic-crypto
To: Corentin Labbe <clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_155542_901884_10445CC6 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Herbert Xu <herbert@gondor.apana.org.au>, baylibre-upstreaming@groups.io,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 David Miller <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 1:43 PM Corentin Labbe <clabbe@baylibre.com> wrote:
>
> This patch adds documentation for Device-Tree bindings for the
> Amlogic GXL cryptographic offloader driver.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../bindings/crypto/amlogic-gxl-crypto.yaml   | 45 +++++++++++++++++++

Follow the compatible string for the filename: amlogic,gxl-crypto.yaml

>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
>
> diff --git a/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
> new file mode 100644
> index 000000000000..41265e57c00b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual (GPL-2.0 OR BSD-2-Clause) is preferred for new bindings. Not a
requirement though.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/amlogic-gxl-crypto.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic GXL Cryptographic Offloader
> +
> +maintainers:
> +  - Corentin Labbe <clabbe@baylibre.com>
> +
> +properties:
> +  compatible:
> +    oneOf:

Don't need 'oneOf' when there is only 1.

> +      - const: amlogic,gxl-crypto
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
> +  clock-names:
> +    const: blkmv
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    crypto: crypto@c883e000 {
> +        compatible = "amlogic,gxl-crypto";
> +        reg = <0x0 0xc883e000 0x0 0x36>;

This should throw errors because the default size on examples are 1
cell. But validating the examples with the schema only just landed in
5.3-rc1.

> +        interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
> +            <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;

This doesn't match the schema.

> +        clocks = <&clkc CLKID_BLKMV>;
> +        clock-names = "blkmv";
> +    };
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
