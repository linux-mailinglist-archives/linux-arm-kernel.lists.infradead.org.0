Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBB81A33E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w7TKFxg1OC5Ar6ZCjbqOxRe1lZ8WfXnhp7A4CoUHQE=; b=W6dkkuoZA7pyYe
	Zj494ozUd9cZhuGS4dWwpbDbY8edQs4PBQ2jbpDOEsS4UkhGO/iG1dsCcsfy6ZeNq2cTirsRduAO0
	XucSsAENDuulykKJbSYfaDxzRL2Vnmj1XrxoLsnDNXhG6G4Zhob2hJr04Nz77w7Crcs2VhTrN9GW3
	dL0Dzrp1f+hCGZrG/hws3qUqzRWZfbOVNeCh14lHePesbd+HdPd7eUkr5H4lFBEeqSaHrOMlJscUn
	FKwPWMyuvwdosGYjpuVtf76IwVFx9hYcafp+oOT/3+MDt7MuryphwcZMAtuxHxw8o/XqPsT/mpYTa
	k5eT1EsGWZXZB/O/qTqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMW52-0005Hr-99; Thu, 09 Apr 2020 12:14:48 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMW4t-0005G3-Uw; Thu, 09 Apr 2020 12:14:41 +0000
Received: by mail-ed1-f67.google.com with SMTP id de14so13010465edb.4;
 Thu, 09 Apr 2020 05:14:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gjEM13EEF7k1kbQW2kuKohhF4C6T/w7Fwh7P4gFdLqA=;
 b=A0gtQIPcrrG1yi17KapywcfadFFC8/SbiGbdRk4ZYvhKHTEQJojcbTWGJFGFz7b+yK
 7AdQFeDf5IbQFblbO/DjQUPQ93xXz3tHyM/onfycuEi2IxqOrKewUzcD5qpURTNfELKV
 RhLHjPeW7Vzt2dRVDtdl9lJ9I06XQ1zNlWE2JrEQp6GeDA0/5nIctBCkSKPwKeM4Ococ
 lZF+6e1e1k/o+1733USnVEUnewzbFy5XAOFzGqn1geJZ4G2BObSBk8AfcONo553U3cbK
 dImM3y2WG5y1+LNFqliaKFYx9x9N7m8N7XXtbWeiqEkAy8p7de/NzP4IrttJ0i4LgfXW
 hfxg==
X-Gm-Message-State: AGi0PuZfqXVK9nbH5o29x4J0P5VdR04y9345g/HBFRT/T09aWLwpGJhO
 FYdZHvT9hJIBgW0w2jxC0vg=
X-Google-Smtp-Source: APiQypLiKWNSVqSQqzEU1uEC5Rj3p/l7GJLgM9883/Bzide7ODn4Zj6pkixK6wZWrnVqtCwUfOA5sQ==
X-Received: by 2002:a50:ee82:: with SMTP id f2mr10974652edr.208.1586434476649; 
 Thu, 09 Apr 2020 05:14:36 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id a17sm3035898edj.53.2020.04.09.05.14.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Apr 2020 05:14:35 -0700 (PDT)
Date: Thu, 9 Apr 2020 14:14:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [RFC PATCH v2 4/6] arm64: dts: pwm: replace flag 0 with
 PWM_NOFLAGS
Message-ID: <20200409121432.GA802@kozik-lap>
References: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
 <20200405192246.3741784-5-oleksandr.suvorov@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200405192246.3741784-5-oleksandr.suvorov@toradex.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_051440_002756_90F10FF5 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Kever Yang <kever.yang@rock-chips.com>, Soeren Moch <smoch@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 devicetree@vger.kernel.org, Nick Xie <nick@khadas.com>,
 Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrius =?utf-8?B?xaB0aWtvbmFz?= <andrius@stikonas.eu>,
 Igor Opaniuk <igor.opaniuk@toradex.com>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 05, 2020 at 10:22:44PM +0300, Oleksandr Suvorov wrote:
> The raw value '0' in the 3rd cell of the "pwms" property means there are
> no flags to be set.
> 
> This patch converts '0' flag into PWM_NOFLAGS.
> 
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> ---
> 
> Changes in v2:
> - Use PWM_NOFLAGS instead of PWM_POLARITY_NORMAL to avoid possible
>   conflict with enum pwm_polarity in <linux/pwm.h>. Also, this name
>   reflects the sense of this value more precisely.
> 
>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts      | 2 +-
>  arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts       | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-axg-s400.dts             | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi                 | 1 +
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi          | 1 +
>  arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts          | 5 +++--
>  arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts            | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts         | 5 +++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi    | 4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts       | 4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts       | 7 ++++---
>  arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi        | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gx.dtsi                  | 1 +
>  arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts       | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts     | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi           | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi       | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi          | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts       | 3 ++-
>  .../boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts    | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 2 +-
>  .../arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi      | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts      | 5 +++--
>  arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts         | 3 ++-
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi         | 4 +++-
>  arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts     | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts           | 7 ++++---
>  arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi      | 3 ++-

I understand you are going to push it through arm-soc, so:
For Exynos:
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Otherwise if you expect individual maintainers to pick it up, please
split per architecture.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
