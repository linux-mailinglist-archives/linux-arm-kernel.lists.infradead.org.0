Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192EC1A1CA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 09:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGC9RiKoWWJ8ZG/wNat3wdVeEWKNNQifhPXheS4mDkg=; b=Z/xyo1zVlhK+wT
	9dyXvhH1az3Kg0/23OZY6tbiJhzoUl8xS4cpOO/gCLqAaCgHJl84vufNlMeBmOjU1TmzQCnJXFq1g
	OkEsSJyJZpv5umPf6NN/vOWTKydDFSuzeokrl8YD/1Rw+hlBZK5PDjqUq1ueroNRyzLcGNO6C/zNE
	CtQrOjnOXvV5UIfbBqhBACHyJQjgslWIHfe/SLbIKp7V/weffpr5yhqHZ4WvN9j2gH1dn4kEstnBD
	dNG6x1TXAZ7x9vRK2OTdtimKg5xdWOgg0+HcPsBqaRgOTLsB3BfxUPvx2CdFrdEzsZjSLh7oARQIm
	me8Tx1NkCkyNZRFUHIng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5AG-00078W-P2; Wed, 08 Apr 2020 07:30:24 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5AA-00076t-52
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 07:30:19 +0000
Received: by mail-vs1-xe42.google.com with SMTP id s10so4090554vsi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 00:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OD0elTcRIMFole7OUjT/DPArTHrKmfnpdtzqT2CbEcI=;
 b=GNlgSOyiQVP/6vjJXE5Rs4MFQbMsECQtEYiSwZIozcKyRs9mM4wRwjT22otR46/bpO
 ugZ0Iyn1HrM55Y5B+2Z2FQuJBHYxKWKO8FWDVeOxDerfhaPBbEyyOJk3Y10aDHk0TjAW
 PLJA7f6mYqIA9YTyjPORzo870AqyXh6ywRbcQ/3f9Leq5QMxdDAgAIoeLt76D3gdwqJ9
 3MNqNWCByDkHGQ7MTsliT4ScHxUkOr+sD0/eP1A8bnbGa+gsLo4/1hFICx9OnlRnjcGc
 iqIBMnR9TSOEDIp0jJukL+HTyhqGnhOv0GFgZcf0UYNRRluNUWJ6WdujUSDa63WYSgCS
 /hdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OD0elTcRIMFole7OUjT/DPArTHrKmfnpdtzqT2CbEcI=;
 b=NhaPQE09ThzHvQqmUCuSy9Xw7MTHp2So1BBQYZ8gCooMa34xzgDCFyyFVJyXc2RVH8
 XIhaUv0V1gmfEHtmp5XeCyEs9KZXMDWH5qzWZf60wW0UxFO68FQhjFvwG4Ft+f8/VGQG
 r9PwmuE9S+RKKSj/Sp6V77dpDNUYvRqkL6Z2EnRjUYhLOW7fP9CRzWvHnGdz/qK8M3F0
 TIEgJjLGdZH4EIbFzht7/bvakULNyyuo3TmOA0CSqHi4p4gqspjsip56lZflJrXRfyhD
 sip8jzvlHZN6rb2zn1ZOuTr9NtFI/hgYLBi+7/wPcUKZeP9H3lIsYSzBXo1K2iX3EuKD
 /eKw==
X-Gm-Message-State: AGi0PuahYvZgQSmT/vqzxwVTtqdIPmbD4fqy0dK8bYWg+iJvsXVcpkSG
 dQ4oiR5KzVqkpt6VPAzmg7y9lNFZfUgRY5jTexIezA==
X-Google-Smtp-Source: APiQypJT4BDwUnwGDmpI1r6J0epGgiyiPB5hfa/7yBBHYhqblfZim4j2sA6EX0KF68n7dcnpUQxer/An5Kt5MflCHmU=
X-Received: by 2002:a67:4242:: with SMTP id p63mr1661875vsa.159.1586331012758; 
 Wed, 08 Apr 2020 00:30:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <20200407055116.16082-2-j-keerthy@ti.com>
In-Reply-To: <20200407055116.16082-2-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 8 Apr 2020 13:00:00 +0530
Message-ID: <CAHLCerOYfG4eifkWdecJ49cSx05pgDwc30L3zZuu0d9dVQN-AQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_003018_193710_D723EA60 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 11:21 AM Keerthy <j-keerthy@ti.com> wrote:
>
> Add VTM bindings documentation. In the Voltage Thermal
> Management Module(VTM), K3 AM654 supplies a voltage
> reference and a temperature sensor feature that are gathered in the band
> gap voltage and temperature sensor (VBGAPTS) module. The band
> gap provides current and voltage reference for its internal
> circuits and other analog IP blocks. The analog-to-digital
> converter (ADC) produces an output value that is proportional
> to the silicon temperature.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>
> Changes in v6:
>
>   * Reordered the properties to match the order of definition.
>
>  .../bindings/thermal/ti,am654-thermal.yaml    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> new file mode 100644
> index 000000000000..25b9209c2e5d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/ti,am654-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments AM654 VTM (DTS) binding
> +
> +maintainers:
> +  - Keerthy <j-keerthy@ti.com>
> +
> +properties:
> +  compatible:
> +    const: ti,am654-vtm
> +
> +  reg:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  "#thermal-sensor-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - power-domains
> +  - "#thermal-sensor-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +    vtm: thermal@42050000 {
> +        compatible = "ti,am654-vtm";
> +        reg = <0x0 0x42050000 0x0 0x25c>;
> +        power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
> +        #thermal-sensor-cells = <1>;
> +    };
> +
> +    mpu0_thermal: mpu0_thermal {
> +        polling-delay-passive = <250>; /* milliseconds */
> +        polling-delay = <500>; /* milliseconds */
> +        thermal-sensors = <&vtm0 0>;
> +
> +        trips {
> +                mpu0_crit: mpu0_crit {
> +                        temperature = <125000>; /* milliCelsius */
> +                        hysteresis = <2000>; /* milliCelsius */
> +                        type = "critical";
> +                };
> +        };
> +    };
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
