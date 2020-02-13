Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A26115CC73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDUfmeYw1AASA1FTQXcomG/HiLjYdbvMFRSvSFaj+Rs=; b=ZC7wqp8gVE/16G
	7y+wJHyXRqJu4udqPYtoNKDDFIYkg1RdpEQcyLvdlLbS7NeLsa61cTppoPo8AjIoCU8MQbfjY+6Fj
	yP7oQ07ZFFuGoeXEXnVQ/GUNXMuGb3yNnk/7PdMjOsP8c3iMkymqrQguAterUgoLM7qDIUQuY8vaY
	xWuPtnWMKNTsvL6J7bGclnFHFmNRDlB5QRJA7cVBvrGHhDdiAyruoiIReP0Jb67s0WR2fZ05s5KHm
	mmtVXNb0O0Etgumc6uaapZqEm3qNExIRJxqPQlop8ZquGINR32030UZPiBhw2ch7JOcd/B/68t4vw
	n/1Zj8ADopS3YZs8lyUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LEy-0002nv-1P; Thu, 13 Feb 2020 20:37:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LEn-0002nL-Hm
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:37:31 +0000
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 129BD222C2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 20:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581626249;
 bh=9DTtFNcZaXu4QMJd6uAqg1Qx0jAJAyXSH9/VHtiItl4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FI6pU0qZv2fY1l/j/g+EpdVeCO/Y7nGclGTv+GjNb4vQa+o6YYY6JXyWpMVI78Qls
 0zJhnbF4DX5zve41JbZFb5w3YLD1zoStmN9MYzpOomhGb/IW65N78EZqChYx9mFYbA
 4ET7eHn213ginNrzC8Is6QUnfaFDg7xbChHfyIpk=
Received: by mail-qv1-f42.google.com with SMTP id n8so3239770qvg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:37:29 -0800 (PST)
X-Gm-Message-State: APjAAAW8mqzRQ5Kkk81DvtgCSvWM2l3Jo157s29RutBvp2fTJaV1QAsY
 I2e++ZzGMfkkNv5SK3UZ4dIx5+JCTq6cxklCLw==
X-Google-Smtp-Source: APXvYqxWyQbnNkniHcCg/NVqvH2JL0d/czxAJ3SIslwKtjoSDz6KRMwP1vdgQiQllXQ8Pk9rwcSxvd0EZth4O1DRvh4=
X-Received: by 2002:ad4:4511:: with SMTP id k17mr12532838qvu.135.1581626248014; 
 Thu, 13 Feb 2020 12:37:28 -0800 (PST)
MIME-Version: 1.0
References: <20200210092713.279105-1-linus.walleij@linaro.org>
 <20200210092713.279105-7-linus.walleij@linaro.org>
In-Reply-To: <20200210092713.279105-7-linus.walleij@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Feb 2020 14:37:16 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLf=DMpiUYskJtUBYuuDx_0QQfy2noB3mQL=CyF1Hpy3Q@mail.gmail.com>
Message-ID: <CAL_JsqLf=DMpiUYskJtUBYuuDx_0QQfy2noB3mQL=CyF1Hpy3Q@mail.gmail.com>
Subject: Re: [PATCH 6/7] dt-bindings: arm: Add Versatile Express and Juno YAML
 schema
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_123729_633123_5C3FFD31 
X-CRM114-Status: GOOD (  25.48  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 3:27 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This implements the top-level schema for the ARM Versatile
> Express and Juno platforms.
>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../bindings/arm/arm,vexpress-juno.yaml       | 118 ++++++++++++++++++
>  1 file changed, 118 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
> new file mode 100644
> index 000000000000..f22edf66b622
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
> @@ -0,0 +1,118 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,vexpress-juno.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Versatile Express and Juno Boards Device Tree Bindings
> +
> +maintainers:
> +  - Sudeep Holla <sudeep.holla@arm.com>
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description: |+
> +  ARM's Versatile Express platform were built as reference designs for exploring
> +  multicore Cortex-A class systems. The Versatile Express family contains both
> +  32 bit (Aarch32) and 64 bit (Aarch64) systems.
> +
> +  The board consist of a motherboard and one or more daughterboards (tiles). The
> +  motherboard provides a set of peripherals. Processor and RAM "live" on the
> +  tiles.
> +
> +  The motherboard and each core tile should be described by a separate Device
> +  Tree source file, with the tile's description including the motherboard file
> +  using an include directive. As the motherboard can be initialized in one of
> +  two different configurations ("memory maps"), care must be taken to include
> +  the correct one.
> +
> +  When a new generation of boards were introduced under the name "Juno", these
> +  shared to many common characteristics with the Versatile Express that the
> +  "arm,vexpress" compatible was retained in the root node, and these are
> +  included in this binding schema as well.
> +
> +  The root node indicates the CPU SoC on the core tile, and this
> +  is a daughterboard to the main motherboard. The name used in the compatible
> +  string shall match the name given in the core tile's technical reference
> +  manual, followed by "arm,vexpress" as an additional compatible value. If
> +  further subvariants are released of the core tile, even more fine-granular
> +  compatible strings with up to three compatible strings are used.
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: CoreTile Express A9x4 (V2P-CA9) has 4 Cortex A9 CPU cores
> +          in MPCore configuration in a test chip on the core tile. See ARM
> +          DUI 0448I. This was the first Versatile Express platform.
> +        items:
> +          - const: arm,vexpress,v2p-ca9
> +          - const: arm,vexpress
> +      - description: CoreTile Express A5x2 (V2P-CA5s) has 2 Cortex A5 CPU cores
> +          in a test chip on the core tile. It is intended to evaluate NEON, FPU
> +          and Jazelle support in the Cortex A5 family. See ARM DUI 0541C.
> +        items:
> +          - const: arm,vexpress,v2p-ca5s
> +          - const: arm,vexpress
> +      - description: Coretile Express A15x2 (V2P-CA15) has 2 Cortex A15 CPU
> +          cores in a MPCore configuration in a test chip on the core tile. See
> +          ARM DUI 0604F.
> +        items:
> +          - const: arm,vexpress,v2p-ca15
> +          - const: arm,vexpress
> +      - description: CoreTile Express A15x4 (V2P-CA15, HBI-0237A) has 4 Cortex
> +          A15 CPU cores in a test chip on the core tile. This is the first test
> +          chip called "TC1".
> +        items:
> +          - const: arm,vexpress,v2p-ca15,tc1
> +          - const: arm,vexpress,v2p-ca15
> +          - const: arm,vexpress
> +      - description: Coretile Express A15x2 A7x3 (V2P-CA15_A7) has 2 Cortex A15
> +          CPU cores and 3 Cortex A7 cores in a big.LITTLE MPCore configuration
> +          in a test chip on the core tile. See ARM DDI 0503I.
> +        items:
> +          - const: arm,vexpress,v2p-ca15_a7
> +          - const: arm,vexpress
> +      - description: LogicTile Express 20MG (V2F-1XV7) has 2 Cortex A53 CPU
> +          cores in a test chip on the core tile. See ARM DDI 0498D.
> +        items:
> +          - const: arm,vexpress,v2f-1xv7,ca53x2
> +          - const: arm,vexpress,v2f-1xv7
> +          - const: arm,vexpress
> +      - description: Arm Versatile Express Juno "r0" (the first Juno board,
> +          V2M-Juno) was introduced as a vehicle for evaluating big.LITTLE on
> +          AArch64 CPU cores. It has 2 Cortex A57 CPU cores and 4 Cortex A53
> +          cores in a big.LITTLE configuration. It also features the MALI T624
> +          GPU. See ARM document 100113_0000_07_en.
> +        items:
> +          - const: arm,juno
> +          - const: arm,vexpress
> +      - description: Arm Versatile Express Juno r1 Development Platform
> +          (V2M-Juno r1) was introduced mainly aimed at development of PCIe
> +          based systems. Juno r1 also has support for AXI masters placed on
> +          the TLX connectors to join the coherency domain. Otherwise it is the
> +          same configuration as Juno r0. See ARM document 100122_0100_06_en.
> +        items:
> +          - const: arm,juno-r1
> +          - const: arm,vexpress
> +      - description: Arm Versatile Express Juno r2 Development Platform
> +          (V2M-Juno r2). It has the same feature set as Juno r0 and r1. See
> +          ARM document 100114_0200_04_en.
> +        items:
> +          - const: arm,juno-r2
> +          - const: arm,vexpress
> +
> +  arm,hbi:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: This indicates the ARM HBI (Hardware Board ID), this is
> +      ARM's unique board model ID, visible on the PCB's silkscreen.
> +
> +  arm,vexpress-site:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: Site

Site?

Any constraints? 2^32 - 1 is valid?

> +
> +required:
> +  - compatible
> +  - arm,hbi
> +
> +...
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
