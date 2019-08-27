Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E4C9EFBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghfvToEA1u6K/ly9spxF66pxLsd4uPOaJjTYktW4OUU=; b=KOPCm8kN/RvQRE
	Gu15ZS+FAuaZJo5c5Qx7sn5QXQ5vc5Q/gkFsX9C7fBSqQSAe9vYF3pFgfyEqZOn7FKjvQZmDFhwYQ
	03Layp7iAWxyTqLlAuB27lERIfmRx/+Brjga9o9ksMDLoUrX8OtzDx23Fv5AaWdd++tRdddbpZJ9v
	70XS+EZUoe5kzX3Sa1snut0PjyozXaOz8y7RA6HwgAUxKRohfqrE+E7pGq1Hv51D82Pn+38EhSVgz
	IwKxcDh5Tqsj6aTwQzWbEVKbVDXrGNGYKzSXTt8yn7s4RHxvQSexSHqnP5UDmUz7C0q1JSgWh0Hqz
	ZIfh13RYMffppi0Sd98Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2e1q-0002RU-1y; Tue, 27 Aug 2019 16:09:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2e1h-0002R8-EU
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:08:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id n9so12960903pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 09:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wCLtDL9jGX/Zx5p4hJqqfPWUMhnwlxTC9vpxw/XksH0=;
 b=uTmfQyq/Wkk1gZ7481aq3UHJE2ZxDzjrHUyYDQMObXjOadhmxDq5Y5V+e/7EPDDAeT
 t7MJ/hmq4eHO37ajW6ioT2Aa7Pdn0YkCKZplPTtZgtUyPP4IG0Ka30XHbPXq8Xn2NClv
 raN1D9no4UjdZ/7okGzS3sYIwd6zY/hDDEDfSSAHnqUJDJvi+z92lNdh9TZTzrPbCAhc
 1+M/6v39VPkPPJ49kDGkErgba+GELjeSNkh4/KdEBB9UNVhN4HVsRkw5YM69qQhD7doa
 sH3lsrr6L3u8okIp07ZnKHqCnDiZ0cgIA8uHoZIabFfEQoekypMjVnqA7WLiuzL6w18W
 RXqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wCLtDL9jGX/Zx5p4hJqqfPWUMhnwlxTC9vpxw/XksH0=;
 b=YjDTGXx0SOl3qB1t/DWmi800gyVMN5DbU9Ca42y6+Bn05hyi68tuQWwVJt7Eux0XS8
 /ZugQWQWxedvCmevUqL4JMRGRbbhSRl5F30JS5gaz3kOmwT/nnCBvU+B7drQARCcH7Gr
 2N24gLiB7nFIGVrvVEcYoeLubNXuC6ULsvzwiAGp7vQXJVsxASFUonx94uKyvFnlZqL1
 gkLJXPmv2wr7iqRhN17iTVTMqCVxlWq0VRfpOpuPpq2x+PFppWyZNMHZvy8+aCb/SFu3
 SEPILlTJnxuubYAZYABO1T6XZj/8uWht3UQgkoBdAfcFy/96By459qcBExCngbfm++uX
 0tuA==
X-Gm-Message-State: APjAAAUKt/xPS6tnfFtDQYxfCJG/z/CgJc7Wh897BY925b5CJd9d6b4U
 ih5Iko796QcVkspodoRjzooO4A==
X-Google-Smtp-Source: APXvYqwsi6y8ZJOqDpN2UOOCj1Ddq1uMFMOCyvB7AxZMsoXn1GBeg6/36H03jejQzsNeowN0NvZm6g==
X-Received: by 2002:a62:ce0e:: with SMTP id y14mr27196287pfg.73.1566922136363; 
 Tue, 27 Aug 2019 09:08:56 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y188sm16120592pfb.115.2019.08.27.09.08.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:08:55 -0700 (PDT)
Date: Tue, 27 Aug 2019 09:10:45 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] arm/arm64: defconfig: Update configs to use the new
 CROS_EC options
Message-ID: <20190827161045.GC26807@tuxbook-pro>
References: <20190827154851.10486-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827154851.10486-1-enric.balletbo@collabora.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_090857_497759_24E81C2A 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gwendal@chromium.org, kernel@collabora.com,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, groeck@chromium.org,
 Leonard Crestez <leonard.crestez@nxp.com>, lee.jones@linaro.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-samsung-soc@vger.kernel.org,
 Anson Huang <Anson.Huang@nxp.com>, Will Deacon <will@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Robert Jarzmik <robert.jarzmik@free.fr>, soc@kernel.org,
 linux-tegra@vger.kernel.org, Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yannick Fertr? <yannick.fertre@st.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 27 Aug 08:48 PDT 2019, Enric Balletbo i Serra wrote:

> Recently we refactored the CrOS EC drivers moving part of the code from
> the MFD subsystem to the platform chrome subsystem. During this change
> we needed to rename some config options, so, update the defconfigs
> accordingly.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Gwendal Grignou <gwendal@chromium.org>
> Tested-by: Gwendal Grignou <gwendal@chromium.org>

Can we make the entries in the generic arm64 defconfig modules?

Regards,
Bjorn

> ---
> Dear all,
> 
> This is basically a resend of [1] in order to get patch into the arm-soc
> patchwork and can be merged independently of the series. The patch was
> originally sent as part of the these series [2] but as defconfig changes
> often cause merge conflicts the maintainers prefer to have this merged
> through the arm-soc tree. My bad was not including the soc ML from the
> begining, so sorry about that.
> 
> Thanks,
>  Enric
> 
> [1] https://lkml.org/lkml/2019/8/23/518
> [2] https://lkml.org/lkml/2019/8/23/475
> 
>  arch/arm/configs/exynos_defconfig   | 6 +++++-
>  arch/arm/configs/multi_v7_defconfig | 6 ++++--
>  arch/arm/configs/pxa_defconfig      | 4 +++-
>  arch/arm/configs/tegra_defconfig    | 2 +-
>  arch/arm64/configs/defconfig        | 6 ++++--
>  5 files changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
> index 2e6a863d25aa..d29029f534ec 100644
> --- a/arch/arm/configs/exynos_defconfig
> +++ b/arch/arm/configs/exynos_defconfig
> @@ -154,7 +154,11 @@ CONFIG_CPU_THERMAL=y
>  CONFIG_THERMAL_EMULATION=y
>  CONFIG_WATCHDOG=y
>  CONFIG_S3C2410_WATCHDOG=y
> -CONFIG_MFD_CROS_EC=y
> +CONFIG_MFD_CROS_EC_DEV=y
> +CONFIG_CHROME_PLATFORMS=y
> +CONFIG_CROS_EC=y
> +CONFIG_CROS_EC_I2C=y
> +CONFIG_CROS_EC_SPI=y
>  CONFIG_MFD_MAX14577=y
>  CONFIG_MFD_MAX77686=y
>  CONFIG_MFD_MAX77693=y
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 6a40bc2ef271..0e9e70badf88 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -511,10 +511,12 @@ CONFIG_MFD_BCM590XX=y
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
> index 787c3f9be414..635bf7dec53c 100644
> --- a/arch/arm/configs/pxa_defconfig
> +++ b/arch/arm/configs/pxa_defconfig
> @@ -393,7 +393,9 @@ CONFIG_SA1100_WATCHDOG=m
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
> diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
> index 8f5c6a5b444c..061037012335 100644
> --- a/arch/arm/configs/tegra_defconfig
> +++ b/arch/arm/configs/tegra_defconfig
> @@ -147,7 +147,7 @@ CONFIG_SENSORS_LM95245=y
>  CONFIG_WATCHDOG=y
>  CONFIG_TEGRA_WATCHDOG=y
>  CONFIG_MFD_AS3722=y
> -CONFIG_MFD_CROS_EC=y
> +CONFIG_MFD_CROS_EC_DEV=y
>  CONFIG_MFD_MAX8907=y
>  CONFIG_MFD_STMPE=y
>  CONFIG_MFD_PALMAS=y
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0e58ef02880c..c4df1999fe0d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -457,8 +457,7 @@ CONFIG_MFD_ALTERA_SYSMGR=y
>  CONFIG_MFD_BD9571MWV=y
>  CONFIG_MFD_AXP20X_I2C=y
>  CONFIG_MFD_AXP20X_RSB=y
> -CONFIG_MFD_CROS_EC=y
> -CONFIG_MFD_CROS_EC_CHARDEV=m
> +CONFIG_MFD_CROS_EC_DEV=y
>  CONFIG_MFD_EXYNOS_LPASS=m
>  CONFIG_MFD_HI6421_PMIC=y
>  CONFIG_MFD_HI655X_PMIC=y
> @@ -668,8 +667,11 @@ CONFIG_VIRTIO_BALLOON=y
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
