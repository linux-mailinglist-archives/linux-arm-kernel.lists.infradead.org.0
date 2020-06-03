Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6EB1ECC56
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=az4bVAFYFhdhZPPYxnRPjpL+rHElI2kcUKUAIewhAz0=; b=YgP2w6VgcDDrpg
	FpLuwLYW+YVPBPv7Gtebw3G9GOs3N4pnXK8F7Vdr9Gcg4OM2PlltN7An21n18uiTgCLR4zqwHojEy
	sA6VJC3EU8ICPlebhihq1btlXq+jWC9b5s2gRu4Wa2AqWTk+QNA4cbPBDJUHcuAp6F52uAvySJyJo
	NTAode1ro1ggNNQ6KmFV5O+yol9tLgGYFLHeb89HrJVGSaLDlON3AutU1p8/u4AdcwvvVeW1LZqkb
	d378MKhEqEyMJTgbiT+OQaet5UbUcduIMX10Cs72U2GKgnN+7ryCKyqrc2zxDp7rOyMqzTBnVpNen
	SLccCDLzLpX97QVcJTlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPX0-0001G8-BD; Wed, 03 Jun 2020 09:17:54 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPWt-0001FW-6L
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:17:48 +0000
Received: by mail-qt1-x843.google.com with SMTP id g18so1379659qtu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 02:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=84iaa6ox5weH7kefZdUhLMHC+fH+BOKw3QcA2B/VmwY=;
 b=WvfWywp49Q714kxln+0+02WSqRP8wSpnNGiuDnpd+unfvOxdjThdcruD9b5rvKrQ9A
 KUvvsDPLb88ujZNbNSZcZ30zZNYNilcRuzvUTYZy9eDBQ4ToL82B9FHGIxoltgg1SdqO
 NEwvXzSadMFQwW4Am8pVQHo133JHkgZASzQNipoTowtHlZ0JWxcWgfSly0GKM0u8zid1
 unSgCpNmme60GsRbMy3tCfs7/gyljmFtX/IMnx+mouQJY8KPUKO0twYUjo767QuWpWbZ
 LnhQI8aFMQfHZqo6TYU5Etz0LKH8LcaawyYrRsFfXUh4k5DHPjDzitGGpj0usXwbm08G
 pcng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=84iaa6ox5weH7kefZdUhLMHC+fH+BOKw3QcA2B/VmwY=;
 b=NlWv4lzNq+2xfR5Biu/QWCfzGnJnsJH9Ql7fO22YHfVI2XmqDdSKUeO89t6O1/TfpY
 5KAth0yPYHexGCflSsrb26wZHW/xbS2NFCOGauoePOmpfAwf2BAzClgYCoHx6DfSORbk
 Fopq397cwSE6/iqjRSDEdziXMDuhFF1VIx0ockxaidw0Eo89A/VRBsAh85zOAEvY33jI
 J9XqNpY9NxcKzWK+lmlT079ER3yaWRaqfYXfvC6VxPgCKB5imAm1VjkHYdqEO6KUIeLa
 o8Tj5dYnUchXaZBi3JnEqHj9H3jZnvA1amCzd/tksISRK+u8TFx0CIqHqqINy628vEyl
 YOLQ==
X-Gm-Message-State: AOAM532+tQRjlAOY+OqhrhEMfBgPbG5xj9rqaYQ2EGSmWydIibOLYHs2
 38+26E28twgh3uW76eyekWzFa3oAmU3INqhCYOQ=
X-Google-Smtp-Source: ABdhPJzTpwCjvdBNmr/2AurTsBqmgDRRKdUKkL/Y4n9mpC9/kMnCGqC9klUkvGW1xqFqbxX66ajpJHlxLVYO6sbk4Qc=
X-Received: by 2002:ac8:260b:: with SMTP id u11mr31717479qtu.380.1591175865574; 
 Wed, 03 Jun 2020 02:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200408160044.2550437-1-arnd@arndb.de>
In-Reply-To: <20200408160044.2550437-1-arnd@arndb.de>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Wed, 3 Jun 2020 17:17:34 +0800
Message-ID: <CABOV4+WerpJqsy0-uBPBZfpnDaPn56fn0Zvv1aMUJJSjEqGhAQ@mail.gmail.com>
Subject: Re: [PATCH] [RFC] clk: sprd: fix compile-testing
To: Arnd Bergmann <arnd@arndb.de>, sboyd@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_021747_235703_779D259E 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zcy33415[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
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
Cc: catalin.marinas@arm.com, Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>, Chunyan Zhang <chunyan.zhang@unisoc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, will@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 2:57 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> I got a build failure with CONFIG_ARCH_SPRD=m when the
> main portion of the clock driver failed to get linked into
> the kernel:
>
> ERROR: modpost: "sprd_pll_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_comp_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_clk_probe" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_clk_regmap_init" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
> ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
> ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
>
> This is a combination of two trivial bugs:
>
> - A platform should not be 'tristate', it should be a 'bool' symbol
>   like the other platforms, if only for consistency, and to avoid
>   surprises like this one.
>
> - The clk Makefile does not traverse into the sprd subdirectory
>   if the platform is disabled but the drivers are enabled for
>   compile-testing.
>
> Fixing either of the two would be sufficient to address the link failure,
> but for correctness, both need to be changed.
>
> Fixes: 2b1b799d7630 ("arm64: change ARCH_SPRD Kconfig to tristate")
> Fixes: d41f59fd92f2 ("clk: sprd: Add common infrastructure")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Hi,

This patch seems not been applied to next branch? I haven't seen it on
linux-next.
Arnd, can you please pick it to your tree.
In case you need my ack:
Acked-by: Chunyan Zhang <chunyan.zhang@unisoc.com>

Thanks,
Chunyan

> ---
>  arch/arm64/Kconfig.platforms | 2 +-
>  drivers/clk/Makefile         | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 55d70cfe0f9e..3c7e310fd8bf 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -248,7 +248,7 @@ config ARCH_TEGRA
>           This enables support for the NVIDIA Tegra SoC family.
>
>  config ARCH_SPRD
> -       tristate "Spreadtrum SoC platform"
> +       bool "Spreadtrum SoC platform"
>         help
>           Support for Spreadtrum ARM based SoCs
>
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index f4169cc2fd31..60e811d3f226 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -105,7 +105,7 @@ obj-$(CONFIG_CLK_SIFIVE)            += sifive/
>  obj-$(CONFIG_ARCH_SIRF)                        += sirf/
>  obj-$(CONFIG_ARCH_SOCFPGA)             += socfpga/
>  obj-$(CONFIG_PLAT_SPEAR)               += spear/
> -obj-$(CONFIG_ARCH_SPRD)                        += sprd/
> +obj-y                                  += sprd/
>  obj-$(CONFIG_ARCH_STI)                 += st/
>  obj-$(CONFIG_ARCH_STRATIX10)           += socfpga/
>  obj-$(CONFIG_ARCH_SUNXI)               += sunxi/
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
