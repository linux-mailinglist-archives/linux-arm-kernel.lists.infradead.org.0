Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BE5B0B26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7OXL8YYPFlsL2KyxExxQv59fSnzqiSLBHSq0wkw6Ew=; b=ueYZqZ/t64kWhl
	NF/DCgVq9rfTUwwYuyZ96YZWkG+g6T+f7tZ3jajHhO4tMkLexy6YcgDRl4yZKtfNChY5Az/1ZR8vr
	k0DXeLx0ORFPmSUZA8AGEo5rf6bVXagiwWzkJSfi7LoJBy9FGPtoNzGFdEdW4RIRyVyrYEt/3rbE2
	3WgMPI/j+nV9JNGV5G6RcHEmUljvU/GvtOaXhT8k1k6iTBhS96pB1iN9sgIiSY45XR4uzm+oWOqh5
	0OmLeT2DHlK66Bt3Xa8QVo547BCFjHwl4WrQxcTI9MEi2V+Xwgv90lkJuut/W7roFAK/7NUpugVfm
	qMOWNhMCUd5J5ObiXt0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LGa-0000yL-Hq; Thu, 12 Sep 2019 09:19:52 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LGA-0000xv-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:19:27 +0000
Received: by mail-qt1-f193.google.com with SMTP id u9so2756472qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/EEX7046EyQX+dgnwukMDo53SMY+ASxsTkaNPVYvx58=;
 b=orVW9ZVoDD/tRTOo7DyuZOlp+1ih7luOu/XTsgquIY9H/V4JIKQQ2jk8gXMXRo8trm
 /QkjYBFyB2YG+UPpfzE7cN7MgewxS/sJq7sJjZH5VVZJ+UHMsmrIpebBVYDUOQHRJvLu
 gWMjhdNtu7dpP2IYsiPpLdwkXbl3ppZ6C6dGZBAcs+BXib9+wJIpaqpT0wmp1zW9loNa
 F5dj347xb0CwBwB2qcUX7bVw8J8+YNGBUaCcy1YC8eTMprdetA3q16LyEEn12WF1KDzh
 zXPI0jcbQ0o3lCW8truvC49JKv5WTz9kT3vTAtnjn0r7VmwX2dSmJQTTXqpHWHgVsn5T
 wnSw==
X-Gm-Message-State: APjAAAWbjSXebrnCJf6fTCVJC5EU85HtezpHNFOutccz1Qds4yO6bKTu
 rHi+qasg6zQ6KLMK4DkJHR7K7zM0c2xS72UOh94=
X-Google-Smtp-Source: APXvYqxc9h25eFxwD6FF26I9C2UvbFHea+FAz5jrXWYXKHKodElhIHAuiEDujG9bSdmHQyIXfwwVsVbgEgxQPoPvjYY=
X-Received: by 2002:a0c:e0c4:: with SMTP id x4mr25828053qvk.176.1568279964901; 
 Thu, 12 Sep 2019 02:19:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <79755cb29b8c23709e346b5dd290481a36627648.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <79755cb29b8c23709e346b5dd290481a36627648.1568239378.git.amit.kucheria@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 12 Sep 2019 11:19:09 +0200
Message-ID: <CAK8P3a1K-Cj53RBAvXiGoeqJsymLmH0A3i-b-cE9tZ9PhwO0XQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: Kconfig: Fix EXYNOS driver dependencies
To: Amit Kucheria <amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_021926_125400_7B2D97D9 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm-soc <arm@kernel.org>,
 Mark Brown <broonie@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 12:19 AM Amit Kucheria <amit.kucheria@linaro.org> wrote:

> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 9b2790d3f18a..bdf164a7a7c5 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -194,6 +194,7 @@ config COMMON_CLK_ASPEED
>
>  config COMMON_CLK_S2MPS11
>         tristate "Clock driver for S2MPS1X/S5M8767 MFD"
> +       depends on ARCH_EXYNOS
>         depends on MFD_SEC_CORE || COMPILE_TEST
>         ---help---
>           This driver supports S2MPS11/S2MPS14/S5M8767 crystal oscillator

This breaks compile-testing on non-ARM targets.

> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index b57093d7c01f..a4c4f01343fd 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -797,6 +797,7 @@ config REGULATOR_S2MPA01
>
>  config REGULATOR_S2MPS11
>         tristate "Samsung S2MPS11/13/14/15/S2MPU02 voltage regulator"
> +       depends on ARCH_EXYNOS
>         depends on MFD_SEC_CORE
>         help
>          This driver supports a Samsung S2MPS11/13/14/15/S2MPU02 voltage

Same here. What you could do instead is add

        depends on ARCH_EXYNOS || COMPILE_TEST

to MFD_SEC_CORE, this would then propagate to these
two drivers as well.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
