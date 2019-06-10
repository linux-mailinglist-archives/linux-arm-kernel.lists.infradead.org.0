Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B9F3BEBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zY9QC/nc/JkXIgm6nfS6g7bfP9D4esJLYUHe6GRfc/4=; b=j/1iZNnKxjEM8d
	di0O33KQqkZMSImXIzMuuK2MElOfM5SbAUR/QoY9gZH/uU9aL5YszakgkH9fFut80yVSgfHXpkXZO
	QGsIrv4xdIADvSIkgqX9RrN2H0T02gXEt4Y5pS9AHnfEV6CcQkYVwXZoYW7PB8pMxfaRHFozta6Go
	zUQJfiDwFVkaNi0qL+L2UVxjkj9JhlZ+HbRkaeO3tLEtAEClNqWw5JFkyOqOuSI7TgQI1TVyINKdX
	STcbLQUILK5jOjJG9DiBU+EoNdDw16Qz6jGOqgPcRGBW+sVxzAsTPEKVAQFgGCWF+puYrp/1qxDqa
	IcG21WzX7eNwx6HIyt7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRwC-0000q8-KN; Mon, 10 Jun 2019 21:34:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haRvy-0000pZ-Gj
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 21:34:33 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 089422145D
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560202470;
 bh=xMebwXN/GyhYMfdhbhet847rcu4ugo4s/W4NmLf4QGA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xW0RscP4Ye3TeBt6dOmAo64LuKklTzINsgA8cyr/x4SVHe58NbHfhZYurQfRAo9c8
 ANfCOyxY2V8wVZiPvyZGkB0CpRJnoYDmTc/v/BwYM9gIBCDgkvNFTPfO749i42P6V6
 aM3700j7M8jjiR+SUp9wapGJVVtTS8A0m7Wqc8rc=
Received: by mail-qk1-f170.google.com with SMTP id d15so6367468qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 14:34:30 -0700 (PDT)
X-Gm-Message-State: APjAAAVCpM9FHDw/wqJPwq8FLC1gYMeZEQL0Z62U/Jt1gZzQgbPC1ti/
 DlKPEG8KhIzFLmxA80R7GCfduSqLITahr/0RFA==
X-Google-Smtp-Source: APXvYqwEL3h29iXdplMxo5T/6pDbEAgdZMpmSvMeSRlAfzhBpz2hp3K4ui6kh2oY/xuHwaiAoEipkNAxEcwIm5L27Yc=
X-Received: by 2002:ae9:f801:: with SMTP id x1mr14738098qkh.151.1560202469249; 
 Mon, 10 Jun 2019 14:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190605122936.11972-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190605122936.11972-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 15:34:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKC7uP0J14A8_CvPhbZkoSRNWSpS1ee+Q4sG013jY=JeQ@mail.gmail.com>
Message-ID: <CAL_JsqKC7uP0J14A8_CvPhbZkoSRNWSpS1ee+Q4sG013jY=JeQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_143431_659842_3C9BEC7E 
X-CRM114-Status: GOOD (  18.43  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 6:29 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../i2c/allwinner,sun6i-a31-p2wi.yaml         | 71 +++++++++++++++++++
>  .../bindings/i2c/i2c-sun6i-p2wi.txt           | 41 -----------
>  2 files changed, 71 insertions(+), 41 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-sun6i-p2wi.txt
>
> diff --git a/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
> new file mode 100644
> index 000000000000..780a33080140
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/allwinner,sun6i-a31-p2wi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A31 P2WI (Push/Pull 2 Wires Interface) Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0

These 2 are covered by i2c-controller.yaml, right?

> +
> +  compatible:
> +    const: allwinner,sun6i-a31-p2wi
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
> +  resets:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    minimum: 1
> +    maximum: 6000000
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - resets
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false
> +
> +examples:
> +  - |
> +    p2wi@1f03400 {

i2c@...

That should fail on the schema (I need to get the schema checking of
examples finished.)

> +      compatible = "allwinner,sun6i-a31-p2wi";
> +      reg = <0x01f03400 0x400>;
> +      interrupts = <0 39 4>;
> +      clocks = <&apb0_gates 3>;
> +      clock-frequency = <6000000>;
> +      resets = <&apb0_rst 3>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      axp221: pmic@68 {
> +        compatible = "x-powers,axp221";
> +        reg = <0x68>;
> +      };
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
