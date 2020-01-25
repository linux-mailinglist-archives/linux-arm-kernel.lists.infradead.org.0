Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4198B149741
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 19:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRHhSekxvxiaH0Hvd13Ct+NqoMjoFRjtCl8esAENYIE=; b=bLd6GBcrvvXqM5
	eMt0ZOvecyT6lMJQ7nwus/dZ1yT8gXYH2c6OCgpxO/wKRhVF8MMAe4GRonw7UixOxZXdKO0GYiPkD
	KfajrXTwJkeO8NqNqLCuTwUcn5O3B71+I8UeVWaBEg5xAlh6GmzyHAUa3oMBa5j2f78IdySqgBsTG
	jvvNpwxe8SP3baKNHBu6LqeT2pRhRBR/WMvSRXWfodz+eX4uMwvGmBtYK+kJm25hsjxZznf9YDgqp
	aK0rCmXA21WiR0KoR5M9JSbRVQ9q7hQkWzvgpSnhRyefdz3l+CYUkTcrSHDIwiyMmRMJgiDCaiN1x
	JnbvwBL2u/acZx1gJjZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivQT3-0005qt-Q1; Sat, 25 Jan 2020 18:47:37 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivQSu-0005qa-Hy
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 18:47:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id a142so1296232oii.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 10:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dwr5wEgyI6r7yMWIPAUlrmvqitDKlBJiaf02I2Mddbw=;
 b=M7+EYbDAe3hHS/gXFtMoBskrcNWGl7KRIzDqMSKUk3pTmT79Tbb2Sj/AlYKEf8a09x
 Q4oQwMnvh0oRsRhcqYGtcv6jC2jVTWHC9sibHNmv3nR8BJoiIt0hBV/svDPQSlZOgkNS
 YUKmk9cb0HtS0U3Vb74DcvWyhBL6WVvbO0Gje/q9qgWSEJtFfsnQfPAZXr4vTko16Qyz
 Gg7RKBZ9NRE74JElsPyCIzU1lrjg6Ab0pPuhHDQcjbi2av0LygJhPcGHEadQTbyZJ7eW
 +Jgb8642Ryl6lZ1Jy/qiEqyv/3pXA6geJCEXJsADkd2fQJMiM8sX1VT91fAlPQhn44PK
 ytdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dwr5wEgyI6r7yMWIPAUlrmvqitDKlBJiaf02I2Mddbw=;
 b=igalhjNvD87ChRE4sGIV2NPMCiPLRzuKP/sgm7L28ggUXzlgM1vhl+MmaFVp54fToL
 6y+c9FkgH/OmpO6rgXLlgVuv49+tRO7bs7DtkfAKZ9daCSUuwp3ytVMdBES10XsyS4Ip
 n+IFtOnouf40yIOsjGme5omI1P1K4PD7jkrXCX1+28jnSATHtFGUNUGwqIuVybcY7r64
 mPYguLrhCBgOtvLZEOaL2y/HDeCZ0rujA0BT2ahFvAC4VB51HFWik9F7h/UxSjhyxkyN
 XQ+7iEU62pYqvY3xb3Zdu2PE/dY9ek5rKLETYVLAZxJt9DTsT/WSKUPKY6qcSNxruMP9
 RWRw==
X-Gm-Message-State: APjAAAXY2HQfGhbI8cC+0PCnu35USVNVOLdNDufTP6U8xcktXN8JBIrs
 3pNlc3I8FvgUikVWC+QcAeYzXLqkqd85Sb3eElbEVA==
X-Google-Smtp-Source: APXvYqzh6zwF4V/4YC8nD0Z2BwGlUY2V6zx66khSkcx5xyg4E6vBVGg2CySKloqHurCXKSqwt/0CuBMYclaiMu3Wj2M=
X-Received: by 2002:aca:1c0d:: with SMTP id c13mr2963496oic.44.1579978041452; 
 Sat, 25 Jan 2020 10:47:21 -0800 (PST)
MIME-Version: 1.0
References: <20200106135715.1159420-1-robert.marko@sartura.hr>
In-Reply-To: <20200106135715.1159420-1-robert.marko@sartura.hr>
From: Robert Marko <robert.marko@sartura.hr>
Date: Sat, 25 Jan 2020 19:47:10 +0100
Message-ID: <CA+HBbNEjV=4GcEqXwm3A_v9nVWvVbVA9FyGvL3qYra1-Geppxw@mail.gmail.com>
Subject: Re: [PATCH] ARM: qcom: Add support for IPQ40xx
To: agross@kernel.org, linux@armlinux.org.uk, arnd@arndb.de, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_104728_655224_98E7DCF8 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: John Crispin <john@phrozen.org>, Luka Perkov <luka.perkov@sartura.hr>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Any issues that are preventing merging of this patch?

Cheers

On Mon, Jan 6, 2020 at 2:57 PM Robert Marko <robert.marko@sartura.hr> wrote:
>
> From: Christian Lamparter <chunkeey@gmail.com>
>
> Add support for the Qualcomm IPQ40xx SoC in Kconfig.
> Also add its appropriate textofs.
>
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> Signed-off-by: John Crispin <john@phrozen.org>
> Tested-by: Robert Marko <robert.marko@sartura.hr>
> Cc: Luka Perkov <luka.perkov@sartura.hr>
> ---
>  arch/arm/Makefile          | 1 +
>  arch/arm/mach-qcom/Kconfig | 5 +++++
>  2 files changed, 6 insertions(+)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index db857d07114f..3db642722af0 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -152,6 +152,7 @@ textofs-$(CONFIG_PM_H1940)      := 0x00108000
>  ifeq ($(CONFIG_ARCH_SA1100),y)
>  textofs-$(CONFIG_SA1111) := 0x00208000
>  endif
> +textofs-$(CONFIG_ARCH_IPQ40XX) := 0x00208000
>  textofs-$(CONFIG_ARCH_MSM8X60) := 0x00208000
>  textofs-$(CONFIG_ARCH_MSM8960) := 0x00208000
>  textofs-$(CONFIG_ARCH_MESON) := 0x00208000
> diff --git a/arch/arm/mach-qcom/Kconfig b/arch/arm/mach-qcom/Kconfig
> index ecbf3c4eb878..1772eccb5caf 100644
> --- a/arch/arm/mach-qcom/Kconfig
> +++ b/arch/arm/mach-qcom/Kconfig
> @@ -12,6 +12,11 @@ menuconfig ARCH_QCOM
>
>  if ARCH_QCOM
>
> +config ARCH_IPQ40XX
> +       bool "Enable support for IPQ40XX"
> +       select CLKSRC_QCOM
> +       select HAVE_ARM_ARCH_TIMER
> +
>  config ARCH_MSM8X60
>         bool "Enable support for MSM8X60"
>         select CLKSRC_QCOM
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
