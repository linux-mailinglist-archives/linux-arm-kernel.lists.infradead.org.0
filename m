Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D147CB0B14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ja2cyGEfIKJRzX0Z9WKvZsv0rs1trpIY4013oeE2jrM=; b=q7hmwh+/RWK1Oz
	VIpVCZZQTbKFjqcq59T3XIq63DndZPEcpX2N7boN7oi4UkLMutGG5BtPZ2DcX93BO1P48B3C2kn/w
	o2MLvrlY5/03CEXuvUu5UBU5qFJ+/LojjVakJaq8ObjFgnqiY4bEHs/F9vDWSV7pqOtzLWptBlVcP
	qMG/lVSFzIJi69ZGiJf/CrmLTziRWH/tQJO6hWMENMZB0dcqF+y3wIKyMkXAxPA2eBoUTp8hAWtcr
	dgw6m4YyLkPb6tuDpZ9ICvpPRKEStNSoRWM/vNjdLna0Sb7Os66O6498N3mTV8zRmjU7pjUHfREDP
	UHOcoFXctA9e6WvhnFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LEw-0000Gi-2o; Thu, 12 Sep 2019 09:18:10 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LEJ-0000Fy-Ie
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:17:33 +0000
Received: by mail-qt1-f193.google.com with SMTP id o12so28797239qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3v9vNWScPyFQpJOj2uC5NrtlNxn+puyxlyM0L6NxVxI=;
 b=tpEftexTzJ7l2ujLjI+gDCvnFoUVaqG9wDdzbfu0kzWkEHx6m2XEJzl3+QBykpRhNy
 M4xrdkxu5DwyCzyF4FF0M26c1nP9Hbtp/137+sGn20RLZkFrh+yE4F2oIoAljY7j3qG3
 kp3+cNDqGZlprZc6kjIidU73YdVCQ61JVUEi++gVDeHh0yQGXA/OSVS9omKCceAygaqN
 Tdy0CChJCsaZ+s6YxBf9Rx3MRmgDzbMCrSkNMiz4TG/0KiMiwWG5URfs8NcKMhVmd80a
 yZgzrAXNdpjylq2pp13V902xrPshVBJhIH6hYYFnytiESfHNL5aIklYbJ7uL7cADU7oV
 JUdA==
X-Gm-Message-State: APjAAAVqMKew1xBJ/VK4qmUe0M+hokA58kp/vYa1pyPWQY1RwKZskody
 FGmA8P3L9mkQEmydgG+mr0PaB++A1wq8lpcAF8w=
X-Google-Smtp-Source: APXvYqy+bZ/IsdWGG/lweYHMToFo2NNHZpONP/kd5+jqUDDglfiDRhLYrs6Ayjqcx3vUQ5sGnAv8u0JP9HHxRjVMY+w=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr39336977qts.304.1568279850382; 
 Thu, 12 Sep 2019 02:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <8f539b28c25d22b8f515c131cd6b24c309f7ca90.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <8f539b28c25d22b8f515c131cd6b24c309f7ca90.1568239378.git.amit.kucheria@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 12 Sep 2019 11:17:14 +0200
Message-ID: <CAK8P3a3u8KhgaqoK0=2CXBs0HMh0fuN-ANvvQtSrWQm0J6xnvw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: Kconfig: Fix VEXPRESS driver dependencies
To: Amit Kucheria <amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_021731_698552_FA183104 
X-CRM114-Status: GOOD (  14.60  )
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
>
> Push various VEXPRESS drivers behind ARCH_VEXPRESS dependency so that it
> doesn't get enabled by default on other platforms.
>
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/bus/Kconfig           | 2 +-
>  drivers/clk/versatile/Kconfig | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index d80e8d70bf10..b2b1beee9953 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -166,7 +166,7 @@ config UNIPHIER_SYSTEM_BUS
>
>  config VEXPRESS_CONFIG
>         bool "Versatile Express configuration bus"
> -       default y if ARCH_VEXPRESS
> +       depends on ARCH_VEXPRESS
>         depends on ARM || ARM64
>         depends on OF

Removing the 'default y' breaks existing defconfig files,

Adding the 'depends on ARCH_VEXPRESS' unnecessarily limits
compile-testing. I'd rather extend it to other architectures than
limit it to builds that have vexpress enabled.

> diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> index ac766855ba16..826750292c1e 100644
> --- a/drivers/clk/versatile/Kconfig
> +++ b/drivers/clk/versatile/Kconfig
> @@ -5,8 +5,8 @@ config ICST
>  config COMMON_CLK_VERSATILE
>         bool "Clock driver for ARM Reference designs"
>         depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> -               ARCH_VERSATILE || ARCH_VEXPRESS || ARM64 || \
> -               COMPILE_TEST
> +               ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
> +       depends on ARM64

It's definitely wrong to limit this to 64 bit.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
