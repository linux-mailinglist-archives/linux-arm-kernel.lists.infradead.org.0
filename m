Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094AE137170
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:37:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tBcitEU3kLfeSaYFpxXQbc2HbYJpse86xE5nxgJUsow=; b=TxzVZbWfMU5H3aHpfE9LMIX+yh
	L/wFJmVMCpK8eiwzB/mHHPLO+OirGHtUbdrf6RHtGOjDXNsm6ecpd1OQGx+gHQscc5hHJlydwkp4J
	HE7kyqxYzQYl0YwFVwZ4UifhgW9uXjlLJVWqtD2PjSq/rZcponxaKZ/cdJKpqIJsj41frdXmKV97j
	q4OabU+GCvQ24RECiH3/k/Dz2OH4WB0RYcniGWMQbgFn7b1BghCzgryAHjipABGr+rGRBaz2RTh81
	wZzQ/2zwWnHzyzQ0qDrZdBN5wyh9VFePZSdovQ50ffpPGbHWxfj03koP+PUfEpGIzGxNtB0CE0mgy
	yG98nHsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwLZ-0007Pb-Ki; Fri, 10 Jan 2020 15:37:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwLN-0007OO-MU
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:37:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so2444819wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 07:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=pEddeOiXJFcjUAbR7H9RaoBSbQx3hSBx3dFhHIC3P9A=;
 b=vRay9pvF3Zmr+rpl6zT5EZiGH0qGpBk8haDxTuGjq30RxDXk29mHCiY/1I6BmPe/s0
 6oCiokpUOrptCo5UKbfe1R45I8H85IKWEa/krQUDtvQrVnyp3ThoHIMQmya/HxNjNhx9
 dyeLepzaVDmRjEFT4YjqE8RJj+jZVDRqU/KZ8IvcsjfvS+AIWgvOCysh/huOUmmhTdpA
 7WCsf9iN4DEc3UaCWGOn2Dg9HmvYl7g0r3QnorYAthcjA7ZgvWFhwhxWpESaMpdCz0Oz
 Z15wbsGKjP6FazqS3yuA/hoe1BbFenY98F9HnJAP4YWlbLnw/iMcH+Ef7cRXVXjwG/u+
 mKog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=pEddeOiXJFcjUAbR7H9RaoBSbQx3hSBx3dFhHIC3P9A=;
 b=tj1eY42PZM0iBwctDMW5TL6Vw7dSsOmO1I5bjIcCUoTgdor4wlw3Hl7p/nGCdwmgdA
 awJh+eibXd+xACpE0+FOyNNBrPEoPwZPcHEaOnRLibJ3sY+Mgn0I6hPnm5aD68Uvcy8B
 aRcxP3HgUNT161FK3QJ9vEnlezWR69WVsnTKmlUwJ8BQMFP2JWT9jkF2xfv9MJNqVH6b
 hxLvZb9ENM53QO9odUDPWfgdFYqFAawH11svyVpjFaWkTuBd1VrjWqg/KLRQibomEEe0
 VR1+46OeJ/UUUCU0xEQTV9ItwzsgakzQ2zu/1RAk3DnvV1gUKmXDWGmZu6/ty+AAzH9G
 0NxA==
X-Gm-Message-State: APjAAAWUE7B87gqVXHK3V8KQ9l2KAxAiu6A/cFFdTXd5jV9G+kXBJ+Gb
 UayknWaaqixmZvMSZTssnsCVGA==
X-Google-Smtp-Source: APXvYqzc2nGXd7108Ds+0oMWW/Y8cJyrznk+PHcBCjP73lPCIDH7xnnVC1cTGqjJbnfhtg//qCC3KQ==
X-Received: by 2002:a1c:4454:: with SMTP id r81mr4959259wma.117.1578670619718; 
 Fri, 10 Jan 2020 07:36:59 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s16sm2586587wrn.78.2020.01.10.07.36.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 07:36:59 -0800 (PST)
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-2-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: clock: meson: add A1 PLL clock
 controller bindings
In-reply-to: <20191227094606.143637-2-jian.hu@amlogic.com>
Date: Fri, 10 Jan 2020 16:36:58 +0100
Message-ID: <1jftgnz5k5.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_073701_737330_E0056B4E 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 27 Dec 2019 at 10:46, Jian Hu <jian.hu@amlogic.com> wrote:

Please read Documentation/devicetree/writing-schema.rst, run the test and
make the necessary correction.

> Add the documentation to support Amlogic A1 PLL clock driver,
> and add A1 PLL clock controller bindings.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,a1-pll-clkc.yaml   | 54 +++++++++++++++++++
>  include/dt-bindings/clock/a1-pll-clkc.h       | 16 ++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> new file mode 100644
> index 000000000000..7a327bb174b8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/clock/amlogic,a1-pll-clkc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson A/C serials PLL Clock Control Unit Device Tree Bindings
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +  - Jian Hu <jian.hu@jian.hu.com>
> +
> +properties:
> +  compatible:
> +    const: amlogic,a1-pll-clkc
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +clocks:
> +  maxItems: 2
> +  items:
> +   - description: Input xtal_fixpll
> +   - description: Input xtal_hifipll
> +
> +clock-names:
> +  maxItems: 2
> +  items:
> +     - const: xtal_fixpll
> +     - const: xtal_hifipll
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clkc_pll: pll-clock-controller@7c80 {
> +                compatible = "amlogic,a1-pll-clkc";
> +                reg = <0 0x7c80 0 0x18c>;
> +                #clock-cells = <1>;
> +                clocks = <&clkc_periphs CLKID_XTAL_FIXPLL>,
> +                         <&clkc_periphs CLKID_XTAL_HIFIPLL>;
> +                clock-names = "xtal_fixpll", "xtal_hifipll";
> +    };
> diff --git a/include/dt-bindings/clock/a1-pll-clkc.h b/include/dt-bindings/clock/a1-pll-clkc.h
> new file mode 100644
> index 000000000000..58eae237e503
> --- /dev/null
> +++ b/include/dt-bindings/clock/a1-pll-clkc.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#ifndef __A1_PLL_CLKC_H
> +#define __A1_PLL_CLKC_H
> +
> +#define CLKID_FIXED_PLL				1
> +#define CLKID_FCLK_DIV2				6
> +#define CLKID_FCLK_DIV3				7
> +#define CLKID_FCLK_DIV5				8
> +#define CLKID_FCLK_DIV7				9
> +#define CLKID_HIFI_PLL				10
> +
> +#endif /* __A1_PLL_CLKC_H */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
