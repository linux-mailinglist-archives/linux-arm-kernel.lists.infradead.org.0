Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAB71A2F09
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6u/4ESQQhdg4Nlq2EsRa5RR31yloJP6QU1JbpBEOZ4=; b=f9MeMN4leLzTJW
	xCPy4a7hTC68rPObof8r0YXQeDgPwJy24C4WaEhFtyO+4h0bmy6Xeb0Hen1e/Lk+4rq2if8QLlZk1
	O65VtmNz3TWAYAPPpDaogGNL6K3K43Tg4JbKxS3nN+omMBUNc9fbSNDWuwLSNEo42zfbMNkXoyOhG
	N/1EFn5Y2lgsflRHX3ybcbCVQDb7aEjX+1tDszOhq8UpfuIBmPJBpoM2QNN/QcKAlvj91fB+0gXej
	KosUW8pCVfc2T3WaGeneOhoTJpblUDnmA+2rTPSLA+H93AVVTWQjNUs18ewvmy7EoXduDG/V5FX1D
	NNy0n1ApWi76X+5LpbFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQNe-0008BA-MB; Thu, 09 Apr 2020 06:09:38 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQNW-0008AJ-8F
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:09:31 +0000
Received: by mail-qt1-x842.google.com with SMTP id m33so1960140qtb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 23:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MxEhGz5UyIPVusyT6gNiVGR9tTVUKwc52tZdZCq8MK0=;
 b=a6Ydmy5JKYTw5OOcKe6O8mQC0kpMXmZ8iP0WuwzotU7b1kni7pBqZQ20c7JNP7LAmr
 0UsXEdQaGYzSF9tebFBJvaQs/By6+7f0Fnuc9K6nfKwtG6rFdMJDSBgkzvyEQIcZNC/d
 sgbgGIeRfl/QeapZ66gJm0yoY6Ss1iuVDPii+rBxeAC0GBuK7qzkDzY73/KfdSGDVC+x
 5irQz7Ls80+3Vf9Z/FfTof+NKJZlCLsE74SdMFSKV58IP0VLHlmuJC8NizNP1L4s0OMF
 R7GnY59c53Zqd2gO4JVqzz1e9anupipR+kVjh0oyGKGr0TpkgW1UyHcTeAagbKwRFRCx
 wcEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MxEhGz5UyIPVusyT6gNiVGR9tTVUKwc52tZdZCq8MK0=;
 b=He8rbfIIb52AGsRFOtZGnEUWjKg5F/ZfgUSreR8QBIt5CYIEaCKNUKkVe8LbzVtU7+
 82He8GAZOoRw2yXeJD0oLdAM+zv1yyv1S/ZTMVBGuWtD8bycsEWy4VkL6p+cE+BknvdY
 vItIITysoZVZ+WVqqbV5iiXl0RdmU751Qzlgd5y79MnQFJMm8P0hfZO6JgPjwhm0Nbjj
 GiPlYPeiaHOkSGi9o+khtbaxgNXYitmYT35GzXBiX0PgRbmn96ck8W57HPtg7G7sMvqm
 dMJl3dEeCyzJqfpvTTQ1LxwL41QUsNozk5MjQZ9lBIJ1mYGxtilgEx9BlzrVqx9sJ6WD
 F14g==
X-Gm-Message-State: AGi0PubzxY4csItjEO1HBQnbMI2BCy65MFEW0sce103HZ5B9Eev2bSdw
 chzLKFzrKQCU+yYThjKi9g62CJyHQBMhM0Js6k0=
X-Google-Smtp-Source: APiQypJDJKVPaiW2osqATHrnNzQrZDeGLTK3uOxKyZ8S4iPvkFtam8Xzjq8h9Aq8GBl72G+WAkd1j1MzyeeAiT6W8xs=
X-Received: by 2002:ac8:888:: with SMTP id v8mr3065428qth.194.1586412567849;
 Wed, 08 Apr 2020 23:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200408160044.2550437-1-arnd@arndb.de>
In-Reply-To: <20200408160044.2550437-1-arnd@arndb.de>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Thu, 9 Apr 2020 14:09:16 +0800
Message-ID: <CABOV4+UocLs3jLi7-vTi8muiFqACVdxH7Td8=U1ABveLnmyCuw@mail.gmail.com>
Subject: Re: [PATCH] [RFC] clk: sprd: fix compile-testing
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_230930_321747_EB989AFF 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zcy33415[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zcy33415[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-team@android.com, sboyd@kernel.org, catalin.marinas@arm.com,
 mturquette@baylibre.com, LKML <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, orson.zhai@unisoc.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, will@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

Thanks for finding out this and fixing it, but we have a minor concern
for changing ARCH_APRD back to bool.

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

After a discussion, we decided to change ARCH_SPRD to tristate, the
idea was that we hope we can simply switch all sprd drivers' configs
(whose default is ARCH_SPRD) to 'm' by setting ARCH_SPRD=m, or switch
all them to 'y' by setting ARCH_SPRD=y, instead of changing them one
by one. This requirement originally came from that Google GKI project
asks all vendor drivers to be built as modules.

Thanks,
Chunyan

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
