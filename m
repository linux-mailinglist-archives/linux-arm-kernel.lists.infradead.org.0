Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B890CDC2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vXD0woqTwBDIqUk3LPUvG5nHlR9Pq/r/NLd+nOPZm7M=; b=LXbFxsjrp3IaMK2giSjWZ/H6BP
	pS32/nWzUIqiIIKgGlBGKa3CMWbWeOU8Td8EmlD+axtW9F3e8s3yK/UzrJ1nIZCebibt+Zi/U40b5
	3iw31WxQ3Z35dpNmH6w/O2fZ27eKtZJTudmEKo77gTdud7rayBvWvadxiHpd3+U3FQZQ+5gRGzJJN
	rpd6lCeQnaM2ORrPktzLxiyqFAKTh2SDTT7q9pf/3+rliuTPPk3vohzF6cHGKZqRGmdobxMFTWlh9
	/fBo0XhcytrjzdGvKkHF8BXnHtIxJjgYljxuhWL7YEj1r0tSqcxViynkIt9O6a7yiqsiPQJElfMqd
	JTU04m6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHN60-0000lV-Hl; Mon, 07 Oct 2019 07:06:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHN5v-0000lA-7X
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:06:12 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE97422475
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  7 Oct 2019 07:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570431970;
 bh=8sW/Eg/VYWUda4EhYFmrvqzQ7MKg2MNc3wIOjrczV4U=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=Qk/+5g5Wq8zUXSUYr1l4rxDkOzI9ACN3zF36YRTiJ1XqzNvsi+KHYXrjmb30fwamU
 h0Tq5bJnkthn7olqepQjD99tOnNnpiHMJ3L+QLUdKgRTujvLg4KCYC8Q3Sb0W2kRtz
 ZZlCHdZQWlSF96KWX6ejOmJwHiTeCrAcPCXcemqc=
Received: by mail-lf1-f45.google.com with SMTP id q12so3484200lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 00:06:09 -0700 (PDT)
X-Gm-Message-State: APjAAAW53nlk47Csd1JQ7DwocIX/toJTkZRi/8fiLy9Fp+KpUjZsZKRw
 0LsIjm6jju7R5omRuKiQ9vjc1SL9O6EhKYLTDAw=
X-Google-Smtp-Source: APXvYqxAfuauMSQ3WZV1NyYj9PyUVq7AtJqvDHhNdltqqFqN36OPpfEhQ8BKMosonlhMTVdoCco8OINcb6EQinzQB0A=
X-Received: by 2002:ac2:4853:: with SMTP id 19mr15582682lfy.69.1570431967954; 
 Mon, 07 Oct 2019 00:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191004150040.5833-1-krzk@kernel.org>
In-Reply-To: <20191004150040.5833-1-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 7 Oct 2019 09:05:56 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdgsTTmNs+Q5_sshZQSvCMBge9jkNh0=L6F4VewEeXxbg@mail.gmail.com>
Message-ID: <CAJKOXPdgsTTmNs+Q5_sshZQSvCMBge9jkNh0=L6F4VewEeXxbg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: multi_v7_defconfig: Enable options for boards
 with Exynos SoC
To: Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, 
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, 
 Olof Johansson <olof@lixom.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_000611_310772_0B901C59 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 4 Oct 2019 at 17:00, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Sync with exynos_defconfig and enable following options for Samsung
> Exynos SoC based boards:
> 1. NFC_S3FWRN5_I2C (with NFC stack): Samsung S3FWRN5 NCI NFC Controller,
>    used for example on Exynos5433 (if booted in 32-bit mode),
> 2. S3C2410_WATCHDOG: watchdog driver used on S3C, S5P and Exynos SoCs,
> 3. REGULATOR_S2MPA01: Samsung S2MPA01 regulators driver present on
>    Exynos5260 RexNos REX-RED board,
> 4. SND_SOC_ARNDALE: sound support on Arndale boards,
> 5. EXYNOS_IOMMU: IOMMU driver used on all Exynos SocS,,
> 6. EXTCON_MAX14577, EXTCON_MAX77693 and EXTCON_MAX8997: extcon drivers
>    for handling micro USB on mobile Samsung boards (Trats, Trats2,
>    Rinato),
> 7. PHY_EXYNOS5250_SATA: SATA phy for Exynos5250 present on Arndale and
>    SMDK5250 boards.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> SND_SOC_ARNDALE is in progress (not yet applied)
> ---
>  arch/arm/configs/multi_v7_defconfig | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 198de8e36d92..7f7978dba8ab 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -168,6 +168,14 @@ CONFIG_MAC80211=m
>  CONFIG_RFKILL=y
>  CONFIG_RFKILL_INPUT=y
>  CONFIG_RFKILL_GPIO=y
> +CONFIG_NFC=m
> +CONFIG_NFC_DIGITAL=m
> +CONFIG_NFC_NCI=m
> +CONFIG_NFC_NCI_SPI=m
> +CONFIG_NFC_NCI_UART=m
> +CONFIG_NFC_HCI=m
> +CONFIG_NFC_SHDLC=y
> +CONFIG_NFC_S3FWRN5_I2C=m
>  CONFIG_PCIEPORTBUS=y
>  CONFIG_PCI_MVEBU=y
>  CONFIG_PCI_TEGRA=y
> @@ -491,12 +499,12 @@ CONFIG_BCM2835_THERMAL=m
>  CONFIG_BRCMSTB_THERMAL=m
>  CONFIG_ST_THERMAL_MEMMAP=y
>  CONFIG_UNIPHIER_THERMAL=y
> -CONFIG_WATCHDOG=y
>  CONFIG_DA9063_WATCHDOG=m
>  CONFIG_XILINX_WATCHDOG=y
>  CONFIG_ARM_SP805_WATCHDOG=y
>  CONFIG_AT91SAM9X_WATCHDOG=y
>  CONFIG_SAMA5D4_WATCHDOG=y
> +CONFIG_S3C2410_WATCHDOG=m
>  CONFIG_DW_WATCHDOG=y
>  CONFIG_DAVINCI_WATCHDOG=m
>  CONFIG_ORION_WATCHDOG=y
> @@ -581,6 +589,7 @@ CONFIG_REGULATOR_QCOM_RPM=y
>  CONFIG_REGULATOR_QCOM_SMD_RPM=m
>  CONFIG_REGULATOR_RK808=y
>  CONFIG_REGULATOR_RN5T618=y
> +CONFIG_REGULATOR_S2MPA01=m
>  CONFIG_REGULATOR_S2MPS11=y
>  CONFIG_REGULATOR_S5M8767=y
>  CONFIG_REGULATOR_STM32_BOOSTER=m
> @@ -711,6 +720,7 @@ CONFIG_SND_SOC_SAMSUNG_SMDK_WM8994=m
>  CONFIG_SND_SOC_SMDK_WM8994_PCM=m
>  CONFIG_SND_SOC_SNOW=m
>  CONFIG_SND_SOC_ODROID=m
> +CONFIG_SND_SOC_ARNDALE=m
>  CONFIG_SND_SOC_SH4_FSI=m
>  CONFIG_SND_SOC_RCAR=m
>  CONFIG_SND_SOC_STI=m
> @@ -933,7 +943,7 @@ CONFIG_BCM2835_MBOX=y
>  CONFIG_ROCKCHIP_IOMMU=y
>  CONFIG_TEGRA_IOMMU_GART=y
>  CONFIG_TEGRA_IOMMU_SMMU=y
> -CONFIG_REMOTEPROC=y

This appeared here by mistake. It's wrong.

I'll send v2.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
