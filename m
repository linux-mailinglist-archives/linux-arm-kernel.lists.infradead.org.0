Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34DA11C9FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:58:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=svNAIEVhKaizn0QC989HaTPEf5ofB7AaI7rV83YO7Mk=; b=HBMrotDKQGzs0zzIAs9UjXKcib
	TNKk+25ZtuA/y5uHXsjXHDoPJ/Qet4waHOyGoLvL6M3aqn3Huxcl1ahGVAuRFbYMgnoQ3NHAZMX7K
	nPlHkYy2z0fq+D3uqvOd92heizNdRNxNRAAMWIbLf/aOporBKQa+Rq7oOaIOMrF0wunoqGmpF8HuW
	A/+jD4WSC2BV+0sGRBD2qENOAlabUuBzx9P9xwHUqX/g87wGxF4iB7V8bpEOqmVfAJHD/yHcY8Yzg
	ktFTvk0toZmuumSgBcQGotPJAOhFpp3cRaHLuB+hBLG32gnT1RGKDk8zT6QH0sQ+uAZYGr6UQ94Fs
	M9vB9sEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLEG-0008Jf-CI; Thu, 12 Dec 2019 09:57:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLE0-0008Hx-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 09:57:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so1759648wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 01:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=gx1Mdi7/CFmOT7RiIEVg3kQRBdQoHiJa4CnAd9qCJmg=;
 b=yd5bVEFtgIODavE5Wy5kl2EwUKPgntf/ynutV1/iuGWUD7bN9CmysWNJgtp9Bs3vVf
 bLKRuIOtbxscxmKQ5AoUrdctD3vjekNCRBG20Z+21i36dxmQjJB/kqpJqM4j1IXiVrHV
 zdgK0zjx2IJXCdHzkWC4Srs79kGXf7TVq6kSzAU1yPNnVlB/hdCu/RuOOAYwqI0jFs9J
 uyHCMuKtD3XZ6Ymbz+aL/YawKQkgEXAmQybExIjwVLXb0+TmAuwCLWKsOCNi/1ON8PGZ
 cQP6rBl5ZNcF8PU0F29ZGw+9Ze1ZBnASA1cVQ4X37+jSlUKGtkv9rT0Lv/9/tf9PjGuv
 j0RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=gx1Mdi7/CFmOT7RiIEVg3kQRBdQoHiJa4CnAd9qCJmg=;
 b=at7jlsLCJgeBx/pVu8ZOBKK3r8I2lQnNdjFtpS+j4yr7UgTq/T1G3GNyh/2BIvCxre
 3nLiOaS9K8NHiYUWk2G5dgiIcu4l5EPhk8uv7i50JSrWFHkriehBgQhboK4TLF6uOdg0
 pkFWJ06ljh2ala2x96bz3OjhRDsqVTFtPl709CoM8qy3Ql13judZcG4kWJ0kwVoVMwHV
 rb5OZ7JKgtTu4eCKl3jDHYD4ZeCcM27/Z5hx9GtsGKR2T4TVlwUHgX/tJMlL4w1RH7mX
 tkrQTQt6ynJU/ov0u+aNW55NO5YBwsiJ3A00uuTLibrzgrmreDR20QbhfV/ozzCr3DY7
 KIkQ==
X-Gm-Message-State: APjAAAUzw0m+G66IBWYngfVXNTqk6rxozjbf5Om82KGH1jsH3NJiNoOr
 oRddzCpM4cqtUrKARvHlDNb0qQ==
X-Google-Smtp-Source: APXvYqwk4QDlI0ODXXgdLTi/EXbqG6DwiTR8OW5NiylFbyhT0VLdogLil3eQ5czc90Dbh6YAj+YurA==
X-Received: by 2002:a1c:541b:: with SMTP id i27mr5740102wmb.137.1576144653403; 
 Thu, 12 Dec 2019 01:57:33 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id k19sm5248320wmi.42.2019.12.12.01.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 01:57:32 -0800 (PST)
References: <20191206074052.15557-1-jian.hu@amlogic.com>
 <20191206074052.15557-2-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4 1/6] dt-bindings: clock: meson: add A1 PLL clock
 controller bindings
In-reply-to: <20191206074052.15557-2-jian.hu@amlogic.com>
Date: Thu, 12 Dec 2019 10:57:31 +0100
Message-ID: <1jblsdlvck.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_015736_297478_1BD03287 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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


On Fri 06 Dec 2019 at 08:40, Jian Hu <jian.hu@amlogic.com> wrote:

> Add the documentation to support Amlogic A1 PLL clock driver,
> and add A1 PLL clock controller bindings.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,a1-pll-clkc.yaml   | 59 +++++++++++++++++++
>  include/dt-bindings/clock/a1-pll-clkc.h       | 16 +++++
>  2 files changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> new file mode 100644
> index 000000000000..7feeef5abf1b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> @@ -0,0 +1,59 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */

Rob commented on the above in v1 and it remains unaddressed

> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
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
> +    - enum:
> +        - amlogic,a1-pll-clkc
> +  "#clock-cells":
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +clocks:
> +  minItems: 2
> +  maxItems: 2
> +  items:
> +   - description: Input xtal_fixpll
> +   - description: Input xtal_hifipll
> +
> +clock-names:
> +  minItems: 2
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
