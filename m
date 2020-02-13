Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C9215CC69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2adsKgR3xHjw45wDBGecwy/XuJmZ6azopncg24lqniw=; b=P1abJuBsZO1V3S
	PyRBDfv9yH/voU0q5Yaq0DhHkrAikERlU1rNVeWiDXvoaEb+pHsMaXVYgN7IdoWQrn1UhuzeaxNnU
	7ylPWsWa1ipsVq4+xvfTMrD59OqHYgcdczGKtOReOFB9Qy6avsCfi7B1J1hXMDSmWsGuDBY59s4aG
	RuiyiY3JibNFoomnAi4UfVckkNcB/iL73FsWgm7in/Zu+AMAfIQPxeUYPaLnIpL1yI49wSzAgDUvB
	L/mjXUfih1tomiYssxCsqOhmawroJ2L4oDAfR4PL4eIHgg3oMGddrnog270rXobR9eKiYFJUaW/hP
	fGerKB4TAnrLuUDQlzVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2L9m-0000Tn-0O; Thu, 13 Feb 2020 20:32:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2L9f-0000TP-CP
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:32:12 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D00D022314
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 20:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581625931;
 bh=s6hNakGk8DlI2Hml+xfexVBE89u4vI8XO7PqrZIAoig=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kDvVbkYNMl3pzPQ9BQkwn+AbxllHGvFKq53dBK2fOmcYtSqfSCDFISRpHds9UEVYF
 KsdnbS5fUEAcZS/6R/9IDzkXok1dXVoCM3p/7/wmSMxcmGqpiEhFfNLsz80KvozPDt
 Hm38rc64TrS3I8Zu0uUcx4PgsjYLJToWl6GRvNwI=
Received: by mail-qk1-f181.google.com with SMTP id o28so5679397qkj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:32:10 -0800 (PST)
X-Gm-Message-State: APjAAAXD2NqL9lhO3Cbb3z9efMQnvIjtzbyvgcmGQTAR/MupSL9hun8+
 qSThWcKBpdoLAykqngqs2dFazdviFsvHWQsliQ==
X-Google-Smtp-Source: APXvYqy6UPBCM+/cAO8IS299fsQ6zI91H9yLFW9wXNsDzsB5RIzaiAPn6ppjU4UuYJwys2PBtMGp1gyUFULWWr55CeA=
X-Received: by 2002:a37:85c4:: with SMTP id
 h187mr17727937qkd.223.1581625929896; 
 Thu, 13 Feb 2020 12:32:09 -0800 (PST)
MIME-Version: 1.0
References: <20200213124620.34982-1-linus.walleij@linaro.org>
In-Reply-To: <20200213124620.34982-1-linus.walleij@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 13 Feb 2020 14:31:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJqP=DfTBQsshgZBwLaOk1uYtXOvb796Ya1K-UCyG3bCg@mail.gmail.com>
Message-ID: <CAL_JsqJqP=DfTBQsshgZBwLaOk1uYtXOvb796Ya1K-UCyG3bCg@mail.gmail.com>
Subject: Re: [PATCH 1/2] bus: Add DT bindings for Integrator/AP logical modules
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_123211_466431_2FED1D62 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 6:46 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This adds YAML device tree bindings for the Integrator/AP
> logical modules. These are plug-in tiles used typically for
> FPGA prototyping.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../bindings/bus/arm,integrator-ap-lm.yaml    | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
>
> diff --git a/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> new file mode 100644
> index 000000000000..dfabfa466c05
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/arm,integrator-ap-lm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Integrator/AP Logical Module extension bus
> +
> +maintainers:
> +  - Linus Walleij <linusw@kernel.org>
> +
> +description: The Integrator/AP is a prototyping platform and as such has a
> +  site for stacking up to four logical modules (LM) designed specifically for
> +  use with this platform. A special system controller register can be read to
> +  determine if a logical module is connected at index 0, 1, 2 or 3. The logical
> +  module connector is described in this binding. The logical modules per se
> +  then have their own specific per-module bindings and they will be described
> +  as subnodes under this logical module extension bus.
> +
> +properties:
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 1
> +
> +  compatible:
> +    items:
> +      - const: arm,integrator-ap-lm
> +
> +  ranges: true
> +  dma-ranges: true
> +
> +patternProperties:
> +  "^.*@[0-3],[0-9a-f]+$":
> +    description: Nodes on the Logical Module bus represent logical modules
> +      and are named with index,relative-address. The first module is at
> +      0x00000000, the second at 0x10000000 and so on until the top of the
> +      memory of the system at 0xffffffff.

What's the point of the index if the address alone is enough?

> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +    required:
> +      - compatible

'reg' should be required given a unit address is.

> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    external-bus@c0000000 {

Node names should be generic:

bus@...

> +      compatible = "arm,integrator-ap-lm";
> +      #address-cells = <2>;
> +      #size-cells = <1>;
> +      ranges = <0 0x0 0xc0000000 0x10000000>,
> +               <1 0x0 0xd0000000 0x10000000>,
> +               <2 0x0 0xe0000000 0x10000000>,
> +               <3 0x0 0xf0000000 0x10000000>;
> +      dma-ranges = <0 0x0 0xc0000000 0x10000000>,
> +               <1 0x0 0xd0000000 0x10000000>,
> +               <2 0x0 0xe0000000 0x10000000>,
> +               <3 0x0 0xf0000000 0x10000000>;
> +      im-pd1@0,0 {

bus@...

> +        compatible = "simple-bus";
> +        ranges = <0 0 0 0x10000000>;
> +        dma-ranges = <0 0 0 0x10000000>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        uart@c0100000 {

serial@100000

> +          compatible = "arm,pl011", "arm,primecell";
> +          reg = <0x00100000 0x1000>;
> +          interrupts-extended = <&impd1_vic 1>;
> +        };
> +
> +        impd1_vic: interrupt-controller@c3000000 {
> +          compatible = "arm,pl192-vic";
> +          interrupt-controller;
> +          #interrupt-cells = <1>;
> +          reg = <0x03000000 0x1000>;
> +          valid-mask = <0x00000bff>;
> +          interrupts-extended = <&pic 9>;
> +        };
> +      };
> +    };
> +
> +additionalProperties: false
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
