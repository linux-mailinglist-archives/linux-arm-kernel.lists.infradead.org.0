Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C32114325
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYZlH/1n3Uz6qgZkYT6IICwgQ5zn14UKG4W5rIhO65k=; b=PVK/oI8uHbSCPG
	BxDgivCVQuvTciV2oghyCxXIoEwpXGBwZF8vyKIScTQqU+rJFEzTe+tWTFhWCXeQHUUHQ8pObTBqb
	F3b4OdsB1CMais/9LOkkk3SEt5fCdVph2Y33Al41oS0OU0LMrozwbm7wYME3pvwNPlexusEWOgmF9
	lpM1+XpCZD9hqq8vNtG/+l8f4YA7kxHQEBalOQqCTk+7LLG8euiLxJc4+ycPIFAwxHQu/Z/ZevsU4
	xbiq0bJSZb7w0IPS6LhmX2J3KZPBwo0xgl6sHo6OIK6EGwEndX2VZFv/6mANg3R0/K5uPVQIoJGeC
	m4bbTvvQxsC5xHfKFkuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsaM-0008UF-R2; Thu, 05 Dec 2019 14:58:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsaF-0008TJ-CP
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:58:25 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCE0824652
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Dec 2019 14:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575557902;
 bh=AuxIhNzVenY1YORsvEg+wFXj6r70v48oXJ1iiIrdDFA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pXVarShPWA1HkuNKryg4YeaoV53ibXTtwYDPHUfdv+ET3MXVauHJJenM6X4SNL8vU
 wB4/Nyaq8Ri/tLoAs0p9NTyaCSHmAazwJ/d0oqvoMTO88+dX1B6NGF4N1OL/Z0kUS8
 sor0Wy2wU8tM/inVIX3LopV2IyAvHmviAXXFJhws=
Received: by mail-qk1-f169.google.com with SMTP id d202so3587410qkb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:58:21 -0800 (PST)
X-Gm-Message-State: APjAAAVZWl5HWgiVsUHWN4hpYiL1GlH19v9UvKh4KNitLogYXznRvj2w
 mdrYR+yakZFL1GdtNuz+OMOKvMNzTW1Ns4uRlg==
X-Google-Smtp-Source: APXvYqwYaD7EYo6dbc77Xi0Q+9jY+nRYZTjhkmZUBgpjkyBCK7tDH4AyGL94U374y0Sk+qHHMLrnQoCPStJBctuP+qo=
X-Received: by 2002:a05:620a:1eb:: with SMTP id
 x11mr9028132qkn.254.1575557900890; 
 Thu, 05 Dec 2019 06:58:20 -0800 (PST)
MIME-Version: 1.0
References: <20191205140809.19413-1-p.paillet@st.com>
In-Reply-To: <20191205140809.19413-1-p.paillet@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Dec 2019 08:58:09 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKzRj_SDUJH60gUpOqUE_cBbT7bwdo5OgK=iUwh_7xo+g@mail.gmail.com>
Message-ID: <CAL_JsqKzRj_SDUJH60gUpOqUE_cBbT7bwdo5OgK=iUwh_7xo+g@mail.gmail.com>
Subject: Re: [PATCH v2] regulator: Convert stm32-pwr regulator to json-schema
To: Pascal Paillet <p.paillet@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_065823_469592_5C31893A 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 8:08 AM Pascal Paillet <p.paillet@st.com> wrote:
>
> Convert the stm32-pwr regulator binding to DT schema format using
> json-schema.
>
> Signed-off-by: Pascal Paillet <p.paillet@st.com>
> ---
> Changes since v1:
> - remove a regulator.yaml reference
> - add /schemas/types.yaml#/definitions/phandle-array for supply

Why? That's wrong as *-supply already has a type definition.

> - fix indent below required
>
>  .../regulator/st,stm32mp1-pwr-reg.txt         | 43 ------------
>  .../regulator/st,stm32mp1-pwr-reg.yaml        | 66 +++++++++++++++++++
>  2 files changed, 66 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
>
> diff --git a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
> deleted file mode 100644
> index e372dd3f0c8a..000000000000
> --- a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -STM32MP1 PWR Regulators
> ------------------------
> -
> -Available Regulators in STM32MP1 PWR block are:
> -  - reg11 for regulator 1V1
> -  - reg18 for regulator 1V8
> -  - usb33 for the swtich USB3V3
> -
> -Required properties:
> -- compatible: Must be "st,stm32mp1,pwr-reg"
> -- list of child nodes that specify the regulator reg11, reg18 or usb33
> -  initialization data for defined regulators. The definition for each of
> -  these nodes is defined using the standard binding for regulators found at
> -  Documentation/devicetree/bindings/regulator/regulator.txt.
> -- vdd-supply: phandle to the parent supply/regulator node for vdd input
> -- vdd_3v3_usbfs-supply: phandle to the parent supply/regulator node for usb33
> -
> -Example:
> -
> -pwr_regulators: pwr@50001000 {
> -       compatible = "st,stm32mp1,pwr-reg";
> -       reg = <0x50001000 0x10>;
> -       vdd-supply = <&vdd>;
> -       vdd_3v3_usbfs-supply = <&vdd_usb>;
> -
> -       reg11: reg11 {
> -               regulator-name = "reg11";
> -               regulator-min-microvolt = <1100000>;
> -               regulator-max-microvolt = <1100000>;
> -       };
> -
> -       reg18: reg18 {
> -               regulator-name = "reg18";
> -               regulator-min-microvolt = <1800000>;
> -               regulator-max-microvolt = <1800000>;
> -       };
> -
> -       usb33: usb33 {
> -               regulator-name = "usb33";
> -               regulator-min-microvolt = <3300000>;
> -               regulator-max-microvolt = <3300000>;
> -       };
> -};
> diff --git a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
> new file mode 100644
> index 000000000000..cc66a7c91260
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/st,stm32mp1-pwr-reg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STM32MP1 PWR voltage regulators
> +
> +maintainers:
> +  - Pascal Paillet <p.paillet@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp1,pwr-reg
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Input supply phandle(s) for vdd input
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +
> +  vdd_3v3_usbfs-supply:
> +    description: Input supply phandle(s) for vdd_3v3_usbfs input
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +
> +patternProperties:
> +  "^(reg11|reg18|usb33)$":
> +    type: object
> +
> +    allOf:
> +      - $ref: "regulator.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pwr@50001000 {
> +      compatible = "st,stm32mp1,pwr-reg";
> +      reg = <0x50001000 0x10>;
> +      vdd-supply = <&vdd>;
> +      vdd_3v3_usbfs-supply = <&vdd_usb>;
> +
> +      reg11 {
> +        regulator-name = "reg11";
> +        regulator-min-microvolt = <1100000>;
> +        regulator-max-microvolt = <1100000>;
> +      };
> +
> +      reg18 {
> +        regulator-name = "reg18";
> +        regulator-min-microvolt = <1800000>;
> +        regulator-max-microvolt = <1800000>;
> +      };
> +
> +      usb33 {
> +        regulator-name = "usb33";
> +        regulator-min-microvolt = <3300000>;
> +        regulator-max-microvolt = <3300000>;
> +      };
> +    };
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
