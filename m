Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F0D19E357
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 09:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IqewOBtytcokphhTlX6NJhNU/URbvfptb6xjqNS/q4=; b=Ln3TJNBHooP+vS
	6HHruVwsVW6/NHbc3rti1hTNmuNjVoa+szz3vUbrjTYZpSEd7e5Hhb7oyANevkXWaB8eXO9LGhRi9
	qVgwpIyCrzEw5KWiqrvkZkvdzj4UugaCNCs8/F3sWgymtnnpnJStu6c/ZCDNSmM0aQVZhek+4oDi+
	nCsuDO6xSi1PW7LK4wBjPjjMkcAQnt6/tXdyzie5Mz+O3AWhJXOaTBiIYrjGI8jMh+jYG07tYlrm5
	pNZANKZpSJ5QybokaPoP3YSfSyHAX3BrSxAcz0j9CcOZBthw0m1/CETpwdwQjzzzqq8eRjzf7Vgyd
	99fJJvm5d0DlumoUAvDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKdHE-00054q-VI; Sat, 04 Apr 2020 07:31:36 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKdH7-00053m-K7
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 07:31:31 +0000
Received: by mail-vs1-xe42.google.com with SMTP id x206so6498963vsx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 00:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PM54+TAF+g/S8Jdu48v4vdALgU1uHmqD41DlN+nN2GQ=;
 b=U/z7FaYgCxrifjRMbUMuNc48xDQkG1azVQ1qAqD5C7gQ2BC0+SFLokHqrseBZoS9BZ
 HhrCnBVjIlsNzTSk4g9jfL9JJz+m5CKI+s5CrxslyKnjLoTsEBG8QO2itdwefQVPu7Sh
 RWs2OJabHZCg++IlG5djjUt5kNFHWUOxPGGHY1AUmooXc5/Kvu95qNG/RJNI1bp408I1
 rv4YucMhPRAVJiiew6KxAcltBjYQn1wwVVPeylGsfx2YHhAuDgZgIaV+C9Eq+6VzjDvp
 i2sBU69P9pmQehnOz4LSQCQfw45G1MRqFniKV+pNE9TYCEJv2jY/nLd6aPv16oy5YDpy
 UvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PM54+TAF+g/S8Jdu48v4vdALgU1uHmqD41DlN+nN2GQ=;
 b=iZMMB2YJEMYz65AgAW/iQZ4E4UVpC39jsdWY+UfVgazA3ugQR4oIcu52xDtJGGPF+h
 c62kX1ynFpcugQfzjTDw3KC2lgfNnThqkydOt1Keh+hfRjEzZcUuvit4kvzMgUk2Lusv
 4vkxhGw3BFSnBg6yhQdzefo7aYXAzwCp4oo9EbyD8fnZxNrOAiHtjQsAN3MH4H86QoPB
 LTiBTCWqOoecoCg3ZaaQWcA6guzp5JUzDo8Sfco+y0nGizjm0Jnj5lJeqE+J1AjxTbua
 NkekGr13BfbUnBSAwQgxJNMto+CYDft6s82Qi8SiTm/MeW9W/y36BEhKee6WcLv9PTH1
 z0Xw==
X-Gm-Message-State: AGi0PubEMT/inwWie0IBbdvGaYPdD5OPdg0sr4SUSwe3br3+rMPs7F1q
 3uKlERL4xeAtlHMuTUk/SI+qlWvj4C/weoAZuTR4Mw==
X-Google-Smtp-Source: APiQypIu/alTBXDgKITDXBctny47stbSvo55Own/Vu8y0I7bxK1KHmvt7pgNCgb+JQCSxYjPHiy+3AH9i6i2tnOhjmE=
X-Received: by 2002:a67:69d5:: with SMTP id e204mr8446240vsc.159.1585985488361; 
 Sat, 04 Apr 2020 00:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200331075356.19171-1-j-keerthy@ti.com>
 <20200331075356.19171-2-j-keerthy@ti.com>
In-Reply-To: <20200331075356.19171-2-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Sat, 4 Apr 2020 13:00:00 +0530
Message-ID: <CAHLCerPrmsMU3uVwQGXfZAsWkgxiG+1M136f6uuWgwB4EF2uGg@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_003129_656272_B591BA3A 
X-CRM114-Status: GOOD (  16.28  )
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

On Tue, Mar 31, 2020 at 1:24 PM Keerthy <j-keerthy@ti.com> wrote:
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
> ---
>
> Changes in v5:
>
>   * Added Reviewed-by: Rob Herring <robh@kernel.org>
>
>  .../bindings/thermal/ti,am654-thermal.yaml    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> new file mode 100644
> index 000000000000..d241b65d6072
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
> +  - "#thermal-sensor-cells"
> +  - compatible
> +  - reg
> +  - power-domains
> +

A nit-pick: arrange the required properties in order they're listed above.

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
