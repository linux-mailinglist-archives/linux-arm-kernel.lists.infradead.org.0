Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB15B0B38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mgql4XbloPvyiTZtV01QmQpCrWph9qFqOP/jiwD9VeA=; b=AOygL8sF5XzBfo
	Rd233wZ/VJMRrTEhnbLwc9wpsnlE37UxtfgrwzzyEQPfgaIer5Iq9JJDbKnsh4/9cnABRGJi0O+Id
	0j9xfroZHSq9F3OsjwuXaqTjqtCt5pC+RPN2jsq0RhXUmOecg4DvgxRQFl5vzOVYE6VZ6ssOPEslv
	3mruW0xBDIBVsW7aShBfdJMAwbcUiTzSOet1TIMvK6AbRA4WxpmBWN3u6lNuaKMjYMt+3arOjaVs1
	W4hWYiTQTHNzcTdIdT/5Fg62J8nJXYqMrf+er3m2fXS97WlfDurr3btasCuyShqhblo/YPE5XO7X9
	aSWYzAsPuysRVo+dQ1Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LHu-0002mA-Es; Thu, 12 Sep 2019 09:21:14 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LHd-0002lE-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:20:58 +0000
Received: by mail-qt1-f196.google.com with SMTP id r15so28728049qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:20:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wRDYUjKUnISknWjGCczes9hGkwqyTHO80MEJ0z8YQtY=;
 b=Oy+nI5pw3UKNCrXXDu42v08hRfsMhIlc9RPscedKPqprWaeAJ7sPrM8ZntS5qP1yQo
 YXsyyKu5GjyXsnUkDupWYrnosTz7Uu5nILsTS2CcVW1RlAV8c/uPB0oE93fhY+EJJV4f
 sp9hwzr0+E4349Rr0fuavhhPkGD7J0KVTFR1MZPXgSjRZ89KFmPo6sLmQ1KGuHWSDiRV
 x+l3aE3RuG7jqktewt/NkwiiuknTVVEkOIO8m8hJATpOZWBGht0ltIKjxMQs1n5TOf/1
 KfsMVaisu2Q1jI8y8OOuEqZDfHuJ57pZUfoTZPk2rnr399hJKf/WiZbsNRq9nd9uMxhM
 AGfQ==
X-Gm-Message-State: APjAAAVTH5OY/jvLq1bQxn/Ae4pqvHHFUgYU1mUDAhV8rS2/so8dra/D
 VRpHmvS2qDJT8tHFUavGqefmKQfAKgDE7MX5M2I=
X-Google-Smtp-Source: APXvYqzIZpZevxkIY7u/NjBuiRRepDTUv3VktIMHvRReV0o7vKFBYD1g+Z4j/ghfdNx8/vtpVnjJa6+Xucy5Y8gWc+s=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr39493926qtn.204.1568280056233; 
 Thu, 12 Sep 2019 02:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <21b9dd0bf0bbc80b69bc81a7efb88243e4981c56.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <21b9dd0bf0bbc80b69bc81a7efb88243e4981c56.1568239378.git.amit.kucheria@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 12 Sep 2019 11:20:40 +0200
Message-ID: <CAK8P3a2O80CqJMQ-_0ve82iGMJuZqY4S7q_kAwcXhYX9h3gcuw@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: Kconfig: Fix BRCMSTB driver dependencies
To: Amit Kucheria <amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_022057_515366_A688ED75 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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
 Linux PM list <linux-pm@vger.kernel.org>,
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
> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index 1851112ccc29..d80e8d70bf10 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -22,6 +22,7 @@ config ARM_CCI400_PORT_CTRL
>
>  config BRCMSTB_GISB_ARB
>         bool "Broadcom STB GISB bus arbiter"
> +       depends on ARCH_BRCMSTB
>         depends on ARM || ARM64 || MIPS
>         default ARCH_BRCMSTB || BMIPS_GENERIC
>         help

This breaks MIPS configurations that need this driver, and
it breask compile-testing on non-ARM/MIPS targets.

> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index 651b763f80cd..6f0b1ed1a05a 100644
> --- a/drivers/power/reset/Kconfig
> +++ b/drivers/power/reset/Kconfig
> @@ -59,6 +59,7 @@ config POWER_RESET_BRCMKONA
>
>  config POWER_RESET_BRCMSTB
>         bool "Broadcom STB reset driver"
> +       depends on ARCH_BRCMSTB
>         depends on ARM || ARM64 || MIPS || COMPILE_TEST
>         depends on MFD_SYSCON
>         default ARCH_BRCMSTB || BMIPS_GENERIC

Same here and below.

> diff --git a/drivers/soc/bcm/Kconfig b/drivers/soc/bcm/Kconfig
> index 648e32693b7e..5a8ff33241ae 100644
> --- a/drivers/soc/bcm/Kconfig
> +++ b/drivers/soc/bcm/Kconfig
> @@ -24,6 +24,7 @@ config RASPBERRYPI_POWER
>
>  config SOC_BRCMSTB
>         bool "Broadcom STB SoC drivers"
> +       depends on ARCH_BRCMSTB
>         depends on ARM || ARM64 || BMIPS_GENERIC || COMPILE_TEST
>         select SOC_BUS
>         help

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
