Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487DBB1BAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 12:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UmjapW/HCFmViwRrDPX4qFEWA8508g0vTX2QcHMhxY=; b=u+2MnaZ7mB3CDt
	WPiAhpPjJJdrcBE+0bmdYMi4zE1svi9uDnN1ESupgh0n5FyplOfiZK7zoUtQdBiShIU0bETkaAPKw
	3Mop9JC4eHyLCd8TquMrgrpXuPkhp7zh1iGdvUDZwUukJmppNezH6TKY510vjDZymyz0qPkuYDFO5
	ql8K7ImpZ9Or6adfQtuQGPt7ZVMkC5pI54mKwetflKItM1Z/kY60Nyg+s0153GnPYOMeX3Q7rSQqq
	K0JH4Xt/507OtUvnfskPqwvlka4t+dECwIdEEUkhxHXDuZkeAfHtoNUYOcSLm4ZJvzH+HsVqRlH9h
	4WuauOFPuIo7IDXEISjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8j1s-0003R7-Rj; Fri, 13 Sep 2019 10:42:16 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8j1Z-0003Oz-EH
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 10:41:59 +0000
Received: by mail-vk1-xa44.google.com with SMTP id j5so5822244vkn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 03:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VzFtOukORn6BTxSSinbhVvnit+eXevFHlnBe06UcHUA=;
 b=f3NLr6fbzNYDtDc9NetNG83qATddX3ST7qNfOKiC7D5A26Lz2W6t+TDvpUxWeoYtT3
 M4aApAZGloRKGHMgH5L8irTiEYBLKD3B/TRtWOrBOlsAjjACHoc4sHORYAgqvS0mL4E7
 t30zdO7NhhgWVnNDKr0/2Bh3D/lnBW2Kv3e4DwIMIDa17R97vTDrnH1O2Okzk0a4Kq+o
 kQ7BLoiH1T9lNsHm2mbS7J+LamF28uuFHwj5hA7c0oM0csUOHIolCIFZAva9Njfv3iIH
 Dtn3ozGFbppAKM4KDwUz8SJW1Z+2yZo2q6DQ2w3yD6hcXQSIQMiQ8gv7iN/j0A0ewzRo
 yIgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VzFtOukORn6BTxSSinbhVvnit+eXevFHlnBe06UcHUA=;
 b=hlq8uqpthIPuxRFpAcXEmw/0lwHwlBcwKBCovVW0eaHlpGPynMCb1Vp8fMUNFwwowk
 AnCXyeC7hdw5fhJqW+bpKOvYZT1iOIdYxooCGLAxF5mQTC5zpT8+kxJIhssWgCJ1XqPl
 /9XtzP6PYsFsuaSow5qXnfS4583Xk2uEvGc9vVi61k/6anz1MN4R5cbcFdRZSz47hNTg
 pkc58r41PR81urqEDTbqslm8MSCU9O7N8VxvhD7HWNbMTxDq4FdNOMrLbe4lKmGdn7nv
 FbF/f3rSO7j57M13EoXCzns5hktZxHIikOBm9u9vCQyTq4Wd5U1gbKq7HQgGbxFLzmub
 vtrA==
X-Gm-Message-State: APjAAAUEFBN5moWkhyaLmiHg7eASlMVSuo8uOQsd+uVM1JqF4zVmqckv
 H6Kf9RJZzw7ucqBRhwu91Ww0PF/5YiIBDRtRhopPvw==
X-Google-Smtp-Source: APXvYqxu3cBj6Axf6oFZHBU9kgVq97krzKOT0Ts3wNrOj22Hb1h0mDeMG74eyOdiEpKHd1mAbLgszYVEJZSRRFRkBo8=
X-Received: by 2002:a1f:410f:: with SMTP id o15mr19922615vka.82.1568371312972; 
 Fri, 13 Sep 2019 03:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190821222421.30242-1-glaroque@baylibre.com>
 <20190821222421.30242-2-glaroque@baylibre.com>
In-Reply-To: <20190821222421.30242-2-glaroque@baylibre.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 13 Sep 2019 16:11:41 +0530
Message-ID: <CAHLCerONjCa4Az7+d_0Qn8X36oOxXEMps++5MnBRdH5QE+aS=g@mail.gmail.com>
Subject: Re: [PATCH v4 1/6] dt-bindings: thermal: Add DT bindings
 documentation for Amlogic Thermal
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_034157_544050_D75E3504 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-amlogic@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 3:54 AM Guillaume La Roque
<glaroque@baylibre.com> wrote:
>
> Adding the devicetree binding documentation for the Amlogic temperature
> sensor found in the Amlogic Meson G12 SoCs.
> the G12A  and G12B SoCs are supported.

Merge the two sentences into a single one?

> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/thermal/amlogic,thermal.yaml     | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> new file mode 100644
> index 000000000000..f761681e4c0d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/amlogic,thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Thermal
> +
> +maintainers:
> +  - Guillaume La Roque <glaroque@baylibre.com>
> +
> +description: Binding for Amlogic Thermal
> +
> +properties:
> +  compatible:
> +      items:
> +        - enum:
> +            - amlogic,g12a-cpu-thermal
> +            - amlogic,g12a-ddr-thermal
> +        - const: amlogic,g12a-thermal
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
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
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
> +                compatible = "amlogic,g12a-cpu-thermal",
> +                             "amlogic,g12a-thermal";
> +                reg = <0xff634800 0x50>;
> +                interrupts = <0x0 0x24 0x0>;
> +                clocks = <&clk 164>;
> +                #thermal-sensor-cells = <0>;
> +                amlogic,ao-secure = <&sec_AO>;
> +        };
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
