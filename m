Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F06D47A76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 09:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9VAtMurDf2ibj1KGcb2DCX1wG9Twrws3+62wVqd00M=; b=IrsJJ7vfxBL5ET
	Tef5EcNq4hfqqLcA7U8GMklaPsiGSKZTw9sNAiwaHsfuXXTrvDyOFyWkrDUQrjgoKp+HwlXxKuvKh
	B5uPI5O+7Ppf5Qx9FHqsQikq165ASZd5YkZOVycAIR/j6yuaJHL6vH3/Y0SU6LW3U7hDYA4X2YrXG
	QTUOUGyAmDD81pwNIzWnBEqHxfzLLhbZ9I1G6PPf0UdDsui3S0aaXdBVBfL45HnRDDCdTsB8QqHRf
	pHVIFGe5EogL800MaRKvsFh/JSzOuXbvgXNgB987QuSM0p1LXJMbOqcw9b17+HPs6b3CAQyzFDhVX
	hq+7wVmefLZJbQIk+x2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcloc-0003K5-Uk; Mon, 17 Jun 2019 07:12:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcloP-0003Jm-AX
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 07:12:18 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BD29218E0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 07:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560755536;
 bh=auAmcgDb9/BI7xXD6SFrnCeWwfBK8vq66znDTU/qxiE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Qs2uqqAu8v+vqQAIjksCHS2nPH9Zl4cZ+Ai0T1xtiD9snX6vO+jyYNN1d0e0gSq92
 ILe9zqcpQL1wTn5pqSUWgIdYvGceHH+DhjfAkg9ezLxnrQyw9ZIEsEHnQmO1vj6Mfv
 YYur0sZUvJzSPFlG2FUf9dKL3kAPlBNbkQaa7PDc=
Received: by mail-lj1-f179.google.com with SMTP id h10so8223451ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 00:12:15 -0700 (PDT)
X-Gm-Message-State: APjAAAUvXcdT2Qp9JRptxFCt/4YTtuwmrNJIvWKDs9i+bfqBcmR1eI72
 Nt5yCZhzIyxg+dEnzoD3j24hIotEfS9SMEel6hk=
X-Google-Smtp-Source: APXvYqxYdWi6u8+Af9xm4Ixw0NW9S2cn6fHEduei34f452pIJ4bgKmwQXZSGCJoSV5lYo97OVcCtb7ZtQ5e1o/emiPw=
X-Received: by 2002:a2e:94c9:: with SMTP id r9mr12365447ljh.210.1560755534293; 
 Mon, 17 Jun 2019 00:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190614163635.22413-1-enric.balletbo@collabora.com>
 <20190614163635.22413-11-enric.balletbo@collabora.com>
In-Reply-To: <20190614163635.22413-11-enric.balletbo@collabora.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 17 Jun 2019 09:12:03 +0200
X-Gmail-Original-Message-ID: <CAJKOXPetaMmeQyZWVWRUSzbe1pKMweCpUx=phy8QowVQHTrdLA@mail.gmail.com>
Message-ID: <CAJKOXPetaMmeQyZWVWRUSzbe1pKMweCpUx=phy8QowVQHTrdLA@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] arm/arm64: defconfig: Update configs to use the
 new CROS_EC options
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_001217_400502_65D00468 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gwendal@chromium.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Guenter Roeck <groeck@chromium.org>,
 kernel@collabora.com, dtor@chromium.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Simon Horman <horms+renesas@verge.net.au>, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Yannick_Fertr=C3=A9?= <yannick.fertre@st.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Olof Johansson <olof@lixom.net>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 at 18:37, Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Recently we refactored the CrOS EC drivers moving part of the code from
> the MFD subsystem to the platform chrome subsystem. During this change
> we needed to rename some config options, so, update the defconfigs
> accordingly.
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
>
> Changes in v2: None
>
>  arch/arm/configs/exynos_defconfig   | 4 +++-
>  arch/arm/configs/multi_v7_defconfig | 6 ++++--
>  arch/arm/configs/pxa_defconfig      | 4 +++-
>  arch/arm64/configs/defconfig        | 6 ++++--
>  4 files changed, 14 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
> index c95c54284da2..03448fba569f 100644
> --- a/arch/arm/configs/exynos_defconfig
> +++ b/arch/arm/configs/exynos_defconfig
> @@ -154,7 +154,9 @@ CONFIG_CPU_THERMAL=y
>  CONFIG_THERMAL_EMULATION=y
>  CONFIG_WATCHDOG=y
>  CONFIG_S3C2410_WATCHDOG=y
> -CONFIG_MFD_CROS_EC=y
> +CONFIG_MFD_CROS_EC_DEV=y
> +CONFIG_CHROME_PLATFORMS=y
> +CONFIG_CROS_EC=y
>  CONFIG_CROS_EC_I2C=y
>  CONFIG_CROS_EC_SPI=y
>  CONFIG_MFD_MAX14577=y

If you want to take it through mfd, arm-soc or other tree:
For Exynos:
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Otherwise I could take exynos/multi_v7/arm64 changes but split per arm v7/v8.

Best regards,
Krzysztof


> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 6b748f214eae..9fe783abf3c5 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -510,10 +510,12 @@ CONFIG_MFD_BCM590XX=y
>  CONFIG_MFD_AC100=y
>  CONFIG_MFD_AXP20X_I2C=y
>  CONFIG_MFD_AXP20X_RSB=y
> -CONFIG_MFD_CROS_EC=m
> +CONFIG_MFD_CROS_EC_DEV=m
> +CONFIG_CHROME_PLATFORMS=y
> +CONFIG_CROS_EC=m
>  CONFIG_CROS_EC_I2C=m
>  CONFIG_CROS_EC_SPI=m
> -CONFIG_MFD_CROS_EC_CHARDEV=m
> +CONFIG_CROS_EC_CHARDEV=m
>  CONFIG_MFD_DA9063=m
>  CONFIG_MFD_MAX14577=y
>  CONFIG_MFD_MAX77686=y
> diff --git a/arch/arm/configs/pxa_defconfig b/arch/arm/configs/pxa_defconfig
> index 07ebbdce3645..e335b986cf70 100644
> --- a/arch/arm/configs/pxa_defconfig
> +++ b/arch/arm/configs/pxa_defconfig
> @@ -394,7 +394,9 @@ CONFIG_SA1100_WATCHDOG=m
>  CONFIG_MFD_AS3711=y
>  CONFIG_MFD_BCM590XX=m
>  CONFIG_MFD_AXP20X=y
> -CONFIG_MFD_CROS_EC=m
> +CONFIG_MFD_CROS_EC_DEV=m
> +CONFIG_CHROME_PLATFORMS=y
> +CONFIG_CROS_EC=m
>  CONFIG_CROS_EC_I2C=m
>  CONFIG_CROS_EC_SPI=m
>  CONFIG_MFD_ASIC3=y
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4d583514258c..b5bba5f04082 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -430,8 +430,7 @@ CONFIG_MFD_ALTERA_SYSMGR=y
>  CONFIG_MFD_BD9571MWV=y
>  CONFIG_MFD_AXP20X_I2C=y
>  CONFIG_MFD_AXP20X_RSB=y
> -CONFIG_MFD_CROS_EC=y
> -CONFIG_MFD_CROS_EC_CHARDEV=m
> +CONFIG_MFD_CROS_EC_DEV=y
>  CONFIG_MFD_EXYNOS_LPASS=m
>  CONFIG_MFD_HI6421_PMIC=y
>  CONFIG_MFD_HI655X_PMIC=y
> @@ -631,8 +630,11 @@ CONFIG_VIRTIO_BALLOON=y
>  CONFIG_VIRTIO_MMIO=y
>  CONFIG_XEN_GNTDEV=y
>  CONFIG_XEN_GRANT_DEV_ALLOC=y
> +CONFIG_CHROME_PLATFORMS=y
> +CONFIG_CROS_EC=y
>  CONFIG_CROS_EC_I2C=y
>  CONFIG_CROS_EC_SPI=y
> +CONFIG_CROS_EC_CHARDEV=m
>  CONFIG_COMMON_CLK_RK808=y
>  CONFIG_COMMON_CLK_SCPI=y
>  CONFIG_COMMON_CLK_CS2000_CP=y
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
