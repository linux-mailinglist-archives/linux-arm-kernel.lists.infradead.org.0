Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C88D7CB47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aoe1dBnRVC8PmFw0LOP6zUY7DNt3MWuRijoJhhsnzPY=; b=EqHvjRgswMavqw
	okOxNU3BOaNnl1n7JSPUpzqeMIILUY0abHSKj3KdnK9eIwDL3slMa7G7Mfmk1J4IMOyehSclUhzcg
	8O6TWe5xrbNpNJVpyklMlg2RYXTMlweljK10YpUxOQNDtEHQ3cAvopZBRjWNa79K0u3dlnqBAE2Cy
	12rM/YO3rzzrUhrsqEA/GuCq4jwcTNj0TJH1Okf0HAVtcjZcZZbEn9ka6iM8d7Vd2QxJrrs8I46Nh
	1k9vs+da3dNVma95r4yXAqxIYAQ6/Gs0Nndw3fYvn/e6A0bzPlLyuPDV5lQVS7CHU3fCgN0Vwi4qU
	KzNxW+59P4m/8WtFA0Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsssz-0006U4-8j; Wed, 31 Jul 2019 17:59:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsssq-0006Sq-Q3; Wed, 31 Jul 2019 17:59:30 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46FE3208E4;
 Wed, 31 Jul 2019 17:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564595968;
 bh=NEcDRzJevd+KIyIuh3CpjR4gF6t3vEc53p0FcWTtLWI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=V+3Cky9w/gnN4kXEMxDWMD5MnHLewZ1pxiIZf6mlIMfgMmoZxtIdr1/REo0Vwtwhq
 nvge4kVCvstMykA5EnaWeOTd3osufFD169n3Wqi/7ghc6YNIo5Su492hpn4AIxh4YE
 eEN//AmMDGNkJW4kZ7qDqyKHbSuItzAfyyA+/hY4=
Received: by mail-qk1-f173.google.com with SMTP id m14so24218215qka.10;
 Wed, 31 Jul 2019 10:59:28 -0700 (PDT)
X-Gm-Message-State: APjAAAUlRL+B3OC8TDl1uG0yV8Pc/DbhOYbxtD0bNqKYYbcr+t0gHgtT
 XIGT4qgolgWliFnMKUS1E61cvkuE1ZEHvuCMxA==
X-Google-Smtp-Source: APXvYqxkCHy8Mu4YbKN2nkHxuSAOaPMHVupqx/C61IqD07sDT2Vj84zboBJUD7SDLxAR33ZQy+yLAkoAgVxagzL0504=
X-Received: by 2002:a05:620a:1447:: with SMTP id
 i7mr83131890qkl.254.1564595967401; 
 Wed, 31 Jul 2019 10:59:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-2-glaroque@baylibre.com>
In-Reply-To: <20190731153529.30159-2-glaroque@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 31 Jul 2019 11:59:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLyhiLkpje8a4Qh5K21s9xU6k1kkR0OtyGPss8=efR5Sg@mail.gmail.com>
Message-ID: <CAL_JsqLyhiLkpje8a4Qh5K21s9xU6k1kkR0OtyGPss8=efR5Sg@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: thermal: Add DT bindings
 documentation for Amlogic Thermal
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_105928_880896_F4F44D6A 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 9:36 AM Guillaume La Roque
<glaroque@baylibre.com> wrote:
>
> Adding the devicetree binding documentation for the Amlogic temperature
> sensor found in the Amlogic Meson G12 SoCs.
> the G12A  and G12B SoCs are supported.
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  .../bindings/thermal/amlogic,thermal.yaml     | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> new file mode 100644
> index 000000000000..f10537ab4c8b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/amlogic,thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Thermal Driver

This is not a driver.

> +
> +maintainers:
> +  - Guillaume La Roque <glaroque@baylibre.com>
> +
> +description: Amlogic Thermal driver
> +
> +properties:
> +  compatible:
> +    oneOf:

oneOf is not necessary as there is only one of.

> +      - items:
> +          - enum:
> +              - amlogic,g12-cpu-thermal
> +              - amlogic,g12-ddr-thermal
> +          - const:
> +              - amlogic,g12-thermal

Please run 'make dt_binding_check'. You'll find this is not valid json-schema.

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
> +  amlogic,ao-secure:
> +    description: phandle to the ao-secure syscon
> +    allOf:
> +     - $ref: /schemas/types.yaml#/definitions/uint32
> +
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - amlogic,ao-secure
> +
> +examples:
> +  - |
> +        cpu_temp: temperature-sensor@ff634800 {
> +                compatible = "amlogic,g12-cpu-thermal",
> +                             "amlogic,g12-thermal";
> +                reg = <0x0 0xff634800 0x0 0x50>;

Examples are built now and this will have an error. The default
address and size cells are 1 for examples, so you either have to
override them or adjust this.

> +                interrupts = <0x0 0x24 0x0>;
> +                clocks = <&clk 164>;
> +                status = "okay";

Don't show status in examples.

> +                #thermal-sensor-cells = <0>;
> +                amlogic,ao-secure = <&sec_AO>;
> +        };
> +...
> \ No newline at end of file
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
