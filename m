Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4628E44392
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O14SMQbiCc5n0IlXf1PNR3DSOOPyW3gskCLDDQmk/N8=; b=ADOnbTOhGbfJ/8
	KAgpY1Zecq64dW83GG6yhXteU/PAbA+rtjtX1eyYzhIVSi3YkhjtNKv1Cx1hMZoedeScffb6Zyx88
	S/DaglBoBWt0Uy4yf01GQ5sgJ4jmWnQmY8P4n3UMvnJcbnwyI9cN0sTfu3iw7eOWFXcgB6y0JDdUQ
	nWl1hIECQCXZja9fIE62N0MM3IT/ka3OLS1qaJG45bEhppQm96iQ1vQC3x/jgRlIEnIKfQTOWqe64
	T8D8//1m2TDf4RJse42dqEww1rbTz6O0jT+hTmrOa+CDWSF33lWVProAkhibE50PVvhocoskMLie9
	i465LhVw7fN5ooXazoAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSdG-0007bm-5D; Thu, 13 Jun 2019 16:31:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZo-000315-5L
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:27:50 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31418217D6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 16:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560443267;
 bh=oV2s9OvDzFbumuIeb7Lf7dWw56Ci8qRJMtz31+CbcR8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0g20sUa6gG5Ghso7T4zlKrrud19bAEapVbAqMvlvYsP36YDy/Ffp0lewXWfThNo+7
 XZ2olPF/QgB0KqosjYiWyjWC7j2Kr20Q0dGdc0yH3Tv3Cq7SJ0GgEcxhefmNKRHSI+
 31AY78M+FjZKoLTsbUUNvBEXgXIuIlvToGBcFAJE=
Received: by mail-qk1-f169.google.com with SMTP id t8so9470354qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:27:47 -0700 (PDT)
X-Gm-Message-State: APjAAAVySu390mqhTLaIQgfKxq12qwTu+msricJKtUpn8czmweW1YL5u
 scCJNPVtdARRNzuYkvU9C6FzAn/l2T8ulCX/IA==
X-Google-Smtp-Source: APXvYqyv5Q4f2sdZ2jMIg1qfLyRT+puBlW4iPdzSH/fycI/GGkkXhyCnnFEILrmwTIUcYvdReWn2zPq7W89rs+2d8Ls=
X-Received: by 2002:a37:a6c9:: with SMTP id
 p192mr74021946qke.184.1560443266367; 
 Thu, 13 Jun 2019 09:27:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190613132012.14202-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190613132012.14202-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Jun 2019 10:27:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJWGxf+gSZtXpDDjL0Na5hzpPe+rY6f7NLQYD5NHU=FYQ@mail.gmail.com>
Message-ID: <CAL_JsqJWGxf+gSZtXpDDjL0Na5hzpPe+rY6f7NLQYD5NHU=FYQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: Add YAML schemas for the generic
 NVMEM bindings
To: Maxime Ripard <maxime.ripard@bootlin.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092748_292884_1CEFAB96 
X-CRM114-Status: GOOD (  28.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 7:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The nvmem providers and consumers have a bunch of generic properties that
> are needed in a device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bindings/nvmem/nvmem-consumer.yaml        | 45 +++++++++
>  .../devicetree/bindings/nvmem/nvmem.txt       | 81 +---------------
>  .../devicetree/bindings/nvmem/nvmem.yaml      | 93 +++++++++++++++++++
>  3 files changed, 139 insertions(+), 80 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
>  create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem.yaml
>
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
> new file mode 100644
> index 000000000000..c48b74733b68
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0

Looks like Srinivas is the sole author of nvmem.txt. Srinivas, okay if
we license this dual GPL2/BSD-2-Clause? Really, that's a decision for
Linaro.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/nvmem-consumer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVMEM (Non Volatile Memory) Consumer Device Tree Bindings
> +
> +maintainers:
> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> +
> +select: true
> +
> +properties:
> +  nvmem:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      List of phandle to the nvmem providers.
> +
> +  nvmem-cells:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      List of phandle to the nvmem data cells.
> +
> +  nvmem-names:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description:
> +      Names for the each nvmem provider.
> +
> +  nvmem-cell-names:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description:
> +      Names for each nvmem-cells specified.
> +
> +dependencies:
> +  nvmem-names: [ nvmem ]
> +  nvmem-cell-names: [ nvmem-cells ]
> +
> +examples:
> +  - |
> +    tsens {
> +        /* ... */
> +        nvmem-cells = <&tsens_calibration>;
> +        nvmem-cell-names = "calibration";
> +    };
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.txt b/Documentation/devicetree/bindings/nvmem/nvmem.txt
> index fd06c09b822b..46a7ef485e24 100644
> --- a/Documentation/devicetree/bindings/nvmem/nvmem.txt
> +++ b/Documentation/devicetree/bindings/nvmem/nvmem.txt
> @@ -1,80 +1 @@
> -= NVMEM(Non Volatile Memory) Data Device Tree Bindings =
> -
> -This binding is intended to represent the location of hardware
> -configuration data stored in NVMEMs like eeprom, efuses and so on.
> -
> -On a significant proportion of boards, the manufacturer has stored
> -some data on NVMEM, for the OS to be able to retrieve these information
> -and act upon it. Obviously, the OS has to know about where to retrieve
> -these data from, and where they are stored on the storage device.
> -
> -This document is here to document this.
> -
> -= Data providers =
> -Contains bindings specific to provider drivers and data cells as children
> -of this node.
> -
> -Optional properties:
> - read-only: Mark the provider as read only.
> -
> -= Data cells =
> -These are the child nodes of the provider which contain data cell
> -information like offset and size in nvmem provider.
> -
> -Required properties:
> -reg:   specifies the offset in byte within the storage device.
> -
> -Optional properties:
> -
> -bits:  Is pair of bit location and number of bits, which specifies offset
> -       in bit and number of bits within the address range specified by reg property.
> -       Offset takes values from 0-7.
> -
> -For example:
> -
> -       /* Provider */
> -       qfprom: qfprom@700000 {
> -               ...
> -
> -               /* Data cells */
> -               tsens_calibration: calib@404 {
> -                       reg = <0x404 0x10>;
> -               };
> -
> -               tsens_calibration_bckp: calib_bckp@504 {
> -                       reg = <0x504 0x11>;
> -                       bits = <6 128>
> -               };
> -
> -               pvs_version: pvs-version@6 {
> -                       reg = <0x6 0x2>
> -                       bits = <7 2>
> -               };
> -
> -               speed_bin: speed-bin@c{
> -                       reg = <0xc 0x1>;
> -                       bits = <2 3>;
> -
> -               };
> -               ...
> -       };
> -
> -= Data consumers =
> -Are device nodes which consume nvmem data cells/providers.
> -
> -Required-properties:
> -nvmem-cells: list of phandle to the nvmem data cells.
> -nvmem-cell-names: names for the each nvmem-cells specified. Required if
> -       nvmem-cells is used.
> -
> -Optional-properties:
> -nvmem  : list of phandles to nvmem providers.
> -nvmem-names: names for the each nvmem provider. required if nvmem is used.
> -
> -For example:
> -
> -       tsens {
> -               ...
> -               nvmem-cells = <&tsens_calibration>;
> -               nvmem-cell-names = "calibration";
> -       };
> +This file has been moved to nvmem.yaml and nvmem-consumer.yaml.
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> new file mode 100644
> index 000000000000..65ef2dbbb2a9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/nvmem.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVMEM (Non Volatile Memory) Device Tree Bindings
> +
> +maintainers:
> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> +
> +description: |
> +  This binding is intended to represent the location of hardware
> +  configuration data stored in NVMEMs like eeprom, efuses and so on.
> +
> +  On a significant proportion of boards, the manufacturer has stored
> +  some data on NVMEM, for the OS to be able to retrieve these
> +  information and act upon it. Obviously, the OS has to know about
> +  where to retrieve these data from, and where they are stored on the
> +  storage device.
> +
> +properties:
> +  $nodename:
> +    pattern: "^(eeprom|efuse|nvram)(@.*|-[0-9a-f])*$"
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  read-only:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Mark the provider as read only.
> +
> +patternProperties:
> +  "^.*@[0-9a-f]+$":
> +    type: object
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +        description:
> +          Offset and size in bytes within the storage device.
> +
> +      bits:
> +        maxItems: 1
> +        items:
> +          items:
> +            - minimum: 0
> +              maximum: 7
> +              description:
> +                Offset in bit within the address range specified by reg.
> +            - minimum: 1
> +              description:
> +                Size in bit within the address range specified by reg.
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
> +examples:
> +  - |
> +      qfprom: qfprom@700000 {

The node name doesn't match what you specified above. Unfortunately,
the schema checking of examples added won't catch this or anything
that causes select to fail to match. I'd really like to fix that, but
don't have any ideas yet.

Otherwise, with that and any license change:

Reviewed-by: Rob Herring <robh@kernel.org>

> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +
> +          /* ... */
> +
> +          /* Data cells */
> +          tsens_calibration: calib@404 {
> +              reg = <0x404 0x10>;
> +          };
> +
> +          tsens_calibration_bckp: calib_bckp@504 {
> +              reg = <0x504 0x11>;
> +              bits = <6 128>;
> +          };
> +
> +          pvs_version: pvs-version@6 {
> +              reg = <0x6 0x2>;
> +              bits = <7 2>;
> +          };
> +
> +          speed_bin: speed-bin@c{
> +              reg = <0xc 0x1>;
> +              bits = <2 3>;
> +          };
> +      };
> +
> +...
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
