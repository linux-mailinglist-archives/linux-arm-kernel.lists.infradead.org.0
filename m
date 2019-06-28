Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39425A33A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QG2JlaqITw/3s+0LNgy/fONUdh6Kaq/RZDN6H0XbdW8=; b=mpZ9dxpkeW8RfX
	4I4o8J68yLqrDWCEG4GP07bV/kZODqHUmYKyBMVwvho2MWvuLJmRfx9TIrAMUsFyEyNkf9w2erEFB
	FhGrairXb1vVdGKttUQZc5sSbegtsOVFz58E6Uvp6NNfHXy6KCrMKmwu2R2KlsFih2tyP1tJGZOu4
	iabGvYp3sWoymq3sTi9jnFRRg8e5QWLm8bxBKZwKAR2g2kClR/pMbYo40F6TJjszPya7ibmQaCG6M
	SI4mxHl7UZp9BTw7QNnPfuOnYnqrg8732taZr+xoApJKZ0uXGOPuZTVyQegzN+4O9yJ++pTUHICj0
	beGt6/3aZ/iKeX6EohLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvNG-0000B2-7L; Fri, 28 Jun 2019 18:13:26 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvN1-000093-B2
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:13:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi6so3658971plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 11:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Cn9Q1Wbyl5xIGaCdkoIIaNcFmVQFrY2dwxn3d9BBkHc=;
 b=eag4mvABTu4bMgSKtKRaxm6hxG1BPnj1CEDFDSDsrF6DOjCGrRewpIXSDm7hcqEmzs
 mn+E004mWDj4R879Vf9eY87+iP/Wk2xBwki3jO3juI6uyXY8phyqEjB38IK3ihQKMwMc
 Cd6Llre7Oo/KZXZxjU80RAQo/+53AG/eeK+vmGfTUy39fzItmjufUSdfnyuecNykvLT7
 ztmI8T5bDDvTG2AqW44V6lcm7kOKJs2HrwEU87a23q26iR7Yfzxpm1YAOtsxOXwa6RUk
 moDdV4v+CP9qI3+CevCjHpdLRTZsYlBKjIwkb5sHJ19IF4aHoFmNkJLypftqcz4xfj51
 xVVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Cn9Q1Wbyl5xIGaCdkoIIaNcFmVQFrY2dwxn3d9BBkHc=;
 b=c0k2hbn+5VjFKGXQIfT+pNfxvvOUqH5vzn6/AOchzmg2fKm5vbauhtG8YQnfLalJj/
 HV+LQwrua/baegjygRgkMino0GiZ6q91lTu3ovpWsnqYyerjgSHbFG9YaJDnmt5CyzFd
 GzEsPaLYLYyP1bGTP2dW/l9sHqBB358dsAyNkb7gMoQwDf0hBIFAYtlQ5UuQ9wNn6F4W
 O7dzIZOvd7Bm/g5NxaGot22LYx1Be5g8ZniXqJR8bOKR/xexaCYE76Ae97W4JfM5obYR
 X1ww7goaNeeOCPc8As95nv6JQJ5HePP43loQehccUijJw9e59XokAZIP05kqS7jPGApc
 w4og==
X-Gm-Message-State: APjAAAWnoBKIQ8vyP7hFIcaMWZKhJpU5R+gKteA1hkshSksEAvpXRiKK
 GUO7zsYCmQg8n4YCZ5wSciOS28nKHEViYg==
X-Google-Smtp-Source: APXvYqyO0DxNwIeVEjqqmuJf6WfYaCTaV6owpC43va2Fglh9hukvx/iaKf2dkMByt/m7tQBZXRWWpw==
X-Received: by 2002:a17:902:da4:: with SMTP id
 33mr12037670plv.209.1561745590252; 
 Fri, 28 Jun 2019 11:13:10 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id o14sm2675345pjp.29.2019.06.28.11.13.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 11:13:09 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [RFC/RFT v2 00/14] arm64: g12a: add support for DVFS
In-Reply-To: <20190626090632.7540-1-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
Date: Fri, 28 Jun 2019 11:13:08 -0700
Message-ID: <7hblyhr32j.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_111311_383164_AFFB27C7 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The G12A/G12B Socs embeds a specific clock tree for each CPU cluster :
> cpu_clk / cpub_clk
> |   \- cpu_clk_dyn
> |      |  \- cpu_clk_premux0
> |      |        |- cpu_clk_postmux0
> |      |        |    |- cpu_clk_dyn0_div
> |      |        |    \- xtal/fclk_div2/fclk_div3
> |      |        \- xtal/fclk_div2/fclk_div3
> |      \- cpu_clk_premux1
> |            |- cpu_clk_postmux1
> |            |    |- cpu_clk_dyn1_div
> |            |    \- xtal/fclk_div2/fclk_div3
> |            \- xtal/fclk_div2/fclk_div3
> \ sys_pll / sys1_pll
>
> This patchset adds notifiers on cpu_clk / cpub_clk, cpu_clk_dyn,
> cpu_clk_premux0 and sys_pll / sys1_pll to permit change frequency of
> the CPU clock in a safe way as recommended by the vendor Documentation
> and reference code.
>
> This patchset :
> - introduces needed core and meson clk changes
> - adds support for the G12B second cluster clock measurer ids
> - protects clock measurer from cooncurent measures
> - adds the clock notifiers
> - moves the G12A DT to a common g12a-common dtsi
> - adds the G12A and G12B OPPs
> - enables DVFS on all supported boards
>
> Dependencies:
> - PWM AO input order fix at [1]
> - PWM enhancements from Martin at [2]
>
> Changes since RFT/RFC v1 at [3]:
> - Added EXPORT_SYMBOL_GPL() to clk_hw_set_parent
> - Added missing static to g12b_cpub_clk_mux0_div_ops and g12a_cpu_clk_mux_nb
> - Simplified g12a_cpu_clk_mux_notifier_cb() without switch/case
> - Fixed typo in "this the current path" in g12a.c
> - Fixed G12B dtsi by adding back the sdio quirk
> - Fixed G12A dtsi unwanted sdio quirk removal
> - Fixed various checkpatch errors
>
> [1] https://patchwork.kernel.org/patch/11006835/
> [2] https://patchwork.kernel.org/patch/11006835/
> [3] https://patchwork.kernel.org/cover/11006929/
>
> Neil Armstrong (14):
>   pinctrl: meson-g12a: add pwm_a on GPIOE_2 pinmux
>   clk: core: introduce clk_hw_set_parent()
>   clk: meson: regmap: export regmap_div ops functions
>   clk: meson: eeclk: add setup callback
>   soc: amlogic: meson-clk-measure: protect measure with a mutex
>   soc: amlogic: meson-clk-measure: add G12B second cluster cpu clk
>   clk: meson: g12a: add notifiers to handle cpu clock change
>   clk: meson: g12a: expose CPUB clock ID for G12B
>   arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi
>   arm64: dts: meson-g12-common: add pwm_a on GPIOE_2 pinmux
>   arm64: dts: meson-g12a: add cpus OPP table
>   arm64: dts: meson-g12a: enable DVFS on G12A boards
>   arm64: dts: meson-g12b: add cpus OPP tables
>   arm64: dts: meson-g12b-odroid-n2: enable DVFS

The DT files don't apply cleanly to my tree (v5.3/dt64 branch).  Could
you rebase:

Then I can put into my testing branch, which gets included in 'integ'
and it will be easier for others to test.

Kevin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
