Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E36BA8654
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gOj2OSkdQSHDmCIgayzbwDrRTZ6NwDQlAImvkTQFT4=; b=Wp8xCuwvQeMLCr
	QhLyb3t4IgRs0N8p7cLstFscrG4BULccXSlSwoNkk34KGLxm6eWmn1kCMbNFR4P5E6mljYgktLyC1
	FrxjR+bExT+ETbPAYWb3D0rFURt6kjj54eIVqA86wXhJ/CqwP9WIq0IuqaX3kI4kPllD9buL9BkgM
	uRtRtGG4n8J4QbUwlhmfuqYWuxJHuao1+Yitaix22xoGU70iWbnbKnIcJIOdOyo3Atm8N1OtSS+sB
	p37hf/lWAiN+xQ2NEyV/Y0IWdNCu+2b9ufQcZQFKY1B081ewg4jGzod+kfjq4sy/73rNwbImVx/q7
	Jl2dtSEjzZ4F2W4cfxmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xkz-0004Kq-1R; Wed, 04 Sep 2019 16:03:41 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xkk-0004KI-TY
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:03:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id 4so9761150pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 09:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HUu7jEYknwWvPxSIww3cGcFcBMCEyjRD/qWIx9TD3dM=;
 b=aXZuvHa1hI0zECNodigCdK/AztketBGpB5KRo99bRJAegKGh23AkFftnjVgCaQaYDV
 r/MAFpjbZKtw9yEBG0/c5KTGKhI4RAykuTQl84poX4lM48t1KTqUSsYBOFHljnO4qmam
 XteiWsbMMNyhozK6Rdt5paMH9GLgojCUbIjRKbMfNQDmCPIzw3DlVI6wSKYqYvkOWA/A
 ag8XUqXeofKviz4dFZpvsV3nGBLYTvOOv38pvtGLJaUEx173EZABiusTJYLp92JpW39J
 OQn62QVMk4ShDqUgPZZArtPwKtwpydm0NbYHM+MHTzTZuELA9GfQ5RFLZWipxWu7w4Yy
 Tltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HUu7jEYknwWvPxSIww3cGcFcBMCEyjRD/qWIx9TD3dM=;
 b=b1HEmxKc6QuGHFrfRziL+HmVAcPL8cBjPzMCuCdtyUrDALYJ8TkPe3az84AbOEDOHL
 SMAAUxfsM87Eg0vDBZe/DFTBbno1gCg+0wnDWHvbHha/ntdg94TcZKU1Fc6P6es9DRT/
 74t79x13GS1gMW6lwu4TaUVAFMXIqnHTDn2odnvQ2JF0e1nPQbzX4FEGvXWUntw9VG7B
 p55AsiAblDrMBBgGHT4PTqMLtbqIPIxGU0QYvDQruqJe4GFd19Mwck50CRjDQ6nWw22F
 nJnHUy2qfwnMXM5xVxwGBrELa8Qryh1jvVOShT6G3/5gigt/aW+0b5bJ3Dl3IPjrv7Yb
 bVxA==
X-Gm-Message-State: APjAAAWisocLaVov7upMvvTk2CZ79eglJn1njvtFdRM+o7i0UcfLQ9O5
 RfIxIM26i/HNQcm+YfgrotBVxeqhPzQDstSJJSAsFA==
X-Google-Smtp-Source: APXvYqyh8FzyyXaEHkm20wLHSSAh7U+934bzlwlLUUm/+rv9EcqnfWWn+NUpe56pQBjtLrshWi/RV1TYMuNAiJdPfH0=
X-Received: by 2002:a17:902:8484:: with SMTP id
 c4mr41196596plo.223.1567613005847; 
 Wed, 04 Sep 2019 09:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190904160039.3350229-1-arnd@arndb.de>
In-Reply-To: <20190904160039.3350229-1-arnd@arndb.de>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 4 Sep 2019 09:03:13 -0700
Message-ID: <CAKwvOd=udH0NLaz_+PbJ4ANyoJ3gGKZ-gsfTJ3xDJOqpsO1y0g@mail.gmail.com>
Subject: Re: [PATCH] bus: imx-weim: remove incorrect __init annotations
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_090326_979709_099D79C1 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Sven Van Asbroeck <thesven73@gmail.com>, Rob Herring <robh@kernel.org>,
 Ilie Halip <ilie.halip@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 9:00 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The probe function is no longer __init, so anything it calls now
> must also be available at runtime, as Kbuild points out when building
> with clang-9:

Thanks for the patch, this has already been addressed in:
https://patchwork.kernel.org/patch/11114307/
https://github.com/ClangBuiltLinux/linux/issues/645

>
> WARNING: vmlinux.o(.text+0x6e7040): Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
> The function weim_probe() references
> the function __init imx_weim_gpr_setup().
> This is often because weim_probe lacks a __init
> annotation or the annotation of imx_weim_gpr_setup is wrong.
>
> WARNING: vmlinux.o(.text+0x6e70f0): Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()
> The function weim_probe() references
> the function __init weim_timing_setup().
> This is often because weim_probe lacks a __init
> annotation or the annotation of weim_timing_setup is wrong.
>
> Remove the remaining __init markings that are now wrong.
>
> Fixes: 4a92f07816ba ("bus: imx-weim: use module_platform_driver()")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> I applied this on top of the patch taht introduced the build error
>
>  drivers/bus/imx-weim.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
> index 79af0c27f5a3..28bb65a5613f 100644
> --- a/drivers/bus/imx-weim.c
> +++ b/drivers/bus/imx-weim.c
> @@ -76,7 +76,7 @@ static const struct of_device_id weim_id_table[] = {
>  };
>  MODULE_DEVICE_TABLE(of, weim_id_table);
>
> -static int __init imx_weim_gpr_setup(struct platform_device *pdev)
> +static int imx_weim_gpr_setup(struct platform_device *pdev)
>  {
>         struct device_node *np = pdev->dev.of_node;
>         struct property *prop;
> @@ -126,10 +126,10 @@ static int __init imx_weim_gpr_setup(struct platform_device *pdev)
>  }
>
>  /* Parse and set the timing for this device. */
> -static int __init weim_timing_setup(struct device *dev,
> -                                   struct device_node *np, void __iomem *base,
> -                                   const struct imx_weim_devtype *devtype,
> -                                   struct cs_timing_state *ts)
> +static int weim_timing_setup(struct device *dev,
> +                            struct device_node *np, void __iomem *base,
> +                            const struct imx_weim_devtype *devtype,
> +                            struct cs_timing_state *ts)
>  {
>         u32 cs_idx, value[MAX_CS_REGS_COUNT];
>         int i, ret;
> --
> 2.20.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904160039.3350229-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
