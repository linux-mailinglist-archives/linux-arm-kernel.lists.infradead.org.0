Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B177819257C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocD5KwKiPL1i0KhNpvFEvsnic/tQS8DywE9i+i5IUn4=; b=IhMy5P1Y9vzKjn
	hJOdtESL+unW12e5gxe5bBVc8iZwo6XZldyH4BepdiIe8c91aBX66XIGZa9FVkg6GdB38nq2RBIjq
	VfDOSHC6nHnndSrrqE+NFUFSH77woKdyB2mDBAC77yIxguCJmJU5irEujRX0dObBzSvRU9HHDz+27
	y75ys0Up+AeqnuYjC8sQcF0vZyEGXTojou2XDr1hKqd5m3qSz3adGF8bvEfMMPWiKfylAivZSgf5k
	jQE+LRazBDgOGVk13Lb4VLIUvoYqTvFdAu1Vo36xvZ7tzkg0pR/g/JulSfU8YaZ8qted+jJWXBuGd
	VZ3TeDV7m0n/eztk4EgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3EY-0003fm-B4; Wed, 25 Mar 2020 10:26:02 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3EP-0003fO-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:25:54 +0000
Received: by mail-ot1-x344.google.com with SMTP id c9so1374314otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 03:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=InLdmn9lfAU6Q8B7xfqxVdVzbUzzV6XbSkNNV60xQyQ=;
 b=nlq+PtHWa9C9USMgmgx0HHVcM1G2xmlF4j55Xdb1gIWEa5hiA7jNhKNZ6ZWU8+wKJq
 MAzzRwM7n057U73SjyOWshvSlPDAky3YJmtzOkmRLTh8MCz7pcLx8xclKqH/eW+hc9vz
 /gnS7rLaZ7c65SM2GrDZkOcsooLtHOUYewdiri7Qzbvsh5KlMx7K6ChJr+zIqZ/dU/p+
 xmYchSaBcPHOiI4GfgdQDqOMAaTU02lZFSkn24XBpMxKuG84+xFE/2Nra+dtZOZ0w2Qh
 oki1HOxwcRLFZXC926VAE5N9+ZlreDrphJL/lZhPIvVx3m6/BXGJcY8Q/uTGhG4Nc9So
 LUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=InLdmn9lfAU6Q8B7xfqxVdVzbUzzV6XbSkNNV60xQyQ=;
 b=j5Y3Q19zsy8wi80+BcrrgLetIRWFWqULhOyJWH5u3NSJHZvERliAe/4TQTYmklkTxQ
 zNwvd3aRsABM58Emo/zQmAgAkwzQzpZBtfDLBPiprDHO/8Y7A8emuvWtT/w8qjYM+eIO
 rWGWDcxWp2TosOjRVPfsTKs/UJSj3SHym8PUgDAAFiEExYPK1Jnj924WIDlMohGpNkdC
 O3B92NUnSnH5GP6r27ZZVBN6iJdZ23euSf+bMWboUd6fV08dudxyhxCxgAfQrS4B4aXt
 PV9EVEce/zR/HOovJZLyNWCcqCYyFYiK+SsiCYuuJPsMEuhOumUkYrmyP9J3SH+M7D57
 lnDg==
X-Gm-Message-State: ANhLgQ2Ie5q75vYvWRzRY3DtMg168J/g2ffFPEAUU/f+Law9a9A8ThZ9
 WUtjwx9p5R4CdTbraV/F795D9goO9NKwq7eJ/TCUtQ==
X-Google-Smtp-Source: ADFU+vsmxg0/ycMBgk1bM3vGA7RzekeO12oNQfii7BDQ++sUGCDR480tenHHojZqGSH9m6u5CEVcNPMZW/Zi9nL0IiU=
X-Received: by 2002:a05:6830:18eb:: with SMTP id
 d11mr1922054otf.243.1585131949147; 
 Wed, 25 Mar 2020 03:25:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200106135715.1159420-1-robert.marko@sartura.hr>
In-Reply-To: <20200106135715.1159420-1-robert.marko@sartura.hr>
From: Robert Marko <robert.marko@sartura.hr>
Date: Wed, 25 Mar 2020 11:25:38 +0100
Message-ID: <CA+HBbNHEetusFNH-8Qmva=2-_HQRRJ33qfBRSudZBVW+vK0tnw@mail.gmail.com>
Subject: Re: [PATCH] ARM: qcom: Add support for IPQ40xx
To: agross@kernel.org, linux@armlinux.org.uk, arnd@arndb.de, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_032553_179913_2855DDBE 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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

On Mon, Jan 6, 2020 at 2:57 PM Robert Marko <robert.marko@sartura.hr> wrote:
>
> From: Christian Lamparter <chunkeey@gmail.com>
>
> Add support for the Qualcomm IPQ40xx SoC in Kconfig.
> Also add its appropriate textofs.
Any blockers on this patch?

Thanks
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
