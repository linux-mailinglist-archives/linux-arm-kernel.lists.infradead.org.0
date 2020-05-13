Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB921D2052
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 22:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6iAPXxoVCMUt80+DJRUp7R3Q5AiGsC9/WP70py8vt4=; b=WzZLRo2h8Ylz5i
	rMpNcZGqNlCTY+2xGqNbw+qbNQ8kHwOB8coPSosGAhDGXG/5iFfTWZzHwS2Bu/m41dbqUOvEteiQa
	Kn9hgRki5fOsUnKED5TiBhsNzsVinQmfMpYTPTTRh3gVzYAcssOGz3TZ3LneHcWitZ4SvhDfyiJzP
	9qb7U/UjlioYnY71YtJyTurWYpwtp4NHnAI4E9yRv7jEZV7fdWPHV4OIz/Jw54sqOdjeLc330FZ7F
	ILaeK/tQTB1LttXMlnQmpRMQfyUSKCd/fhutVaOsYgrJjVVlv7FlUo8bXj6jkRWGW7/uej4yHbbS3
	WcOxvEiyCfVFXSXepOIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyB4-0001ui-0P; Wed, 13 May 2020 20:40:30 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyAv-0001tm-JW; Wed, 13 May 2020 20:40:23 +0000
Received: from mail-qv1-f53.google.com ([209.85.219.53]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MwfrG-1jBMXz0GJ0-00y9eD; Wed, 13 May 2020 22:40:17 +0200
Received: by mail-qv1-f53.google.com with SMTP id l3so606610qvo.7;
 Wed, 13 May 2020 13:40:16 -0700 (PDT)
X-Gm-Message-State: AOAM532SdQqE+M+LzPEt8bDD+UJFr0OfP9LuTo+mjnsRu5qUNe74/UdS
 YQzXZWElazWzQVIbuEr+qpRbYXY/LJGeXRGVQo0=
X-Google-Smtp-Source: ABdhPJyu/xX11FWdClo6HWSu4TpgBMlV8v9Pi4w77fA3SXjBu1Qa2OHWtCpV7yTatT8fuCfnCBk283iywb7jOe+dkPQ=
X-Received: by 2002:a05:6214:3f0:: with SMTP id
 cf16mr1579766qvb.4.1589402415719; 
 Wed, 13 May 2020 13:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200513170132.1446-1-robert.jarzmik@free.fr>
In-Reply-To: <20200513170132.1446-1-robert.jarzmik@free.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 13 May 2020 22:39:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3E=Fq6ZXLkeQgufeJCP0gZiN1uXA2J=HzpH3D49GOMXQ@mail.gmail.com>
Message-ID: <CAK8P3a3E=Fq6ZXLkeQgufeJCP0gZiN1uXA2J=HzpH3D49GOMXQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: pxa: remove Compulab pxa2xx boards
To: Robert Jarzmik <robert.jarzmik@free.fr>
X-Provags-ID: V03:K1:Uu/yBZz6G2qJ8MrwCyvfYpWm5Hyp1YrZIC+neyQwogVLzVzHCs5
 E27YlD7g3uGShn8yX61/8xdImllEA4IAGuP23g/w9Z3DbHHJPCGp22/CFyD4075WXAvkA0Z
 ycYEJ8Exya6WU0omn1gnuUdfWXpMBz4V/KXdu0CVHYpGhQL2ZlfUe1wYRYrcFQkYw1SrZTU
 80VnNGfaQEQ1tqwJ+K+PA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RKNsOtfE3xI=:44VCvbEXLjC2cTGguwxBZJ
 yteFcl19XC8a5dSsSeeCdeWQx1CEf7FDFJP7357iYvR7pTiC6+jk9ui68qbaL4UQLID8YCHjM
 AERtl65O18axS0+2G/uiWjueP8d0sS1dwm6pHH3CLB+Kj4ZyZRFZ7jZ/8/Qt6OVoaRfWiPbi6
 XE/vOVFUDS7fw3LF9hJuibYgmeulHj7WcHMZ4l/Ma52Pi0W9JwvVKqncRKJvDUIJAx9J2Lgjs
 v2l2da6S7yTfJCoJEFjNVqTU+vtwwTjASQ2Ry2gWqv51FdryIPU96SKRt4w7kAqYhmF/TOObH
 SbHtVzPZeZuW8MmyXYhQQdySI1M0/py7QGCQVgewA0ZBh5LoFSoMnqbrhiYuNNTcV5EVa/psE
 tXo2mMIQMsTyPWx9x2TtqNgeQH5xtvbAn5IG3vRxO1I3GjQw3OANgcCc5lfk3LZRqaiH16okd
 S7qnw6/Cf1xoXAcykPXO0ePERGBC0tcvK2RKZzDpTxK6AzN9fykG1nq1DbpwxpokZFwYguH05
 qd+R1IdjSVsRl/a9Tb3ISZAtNHykyXqoBD2OBM5nKcsiQJlCQZmRzmwaE8vHshW+UbrlrCJKQ
 BgzdWZ1lkmeRrz6Z7KHlFhiCLOEGJf0d0SpucffqXFez6bPgrGxFSsfZ4fVdMIhWy80g8NAla
 TsFOGFSkiwSbpFLpPCIijWdQHa4Cf90vYiZjh6Ws0bM4b+Cyi8UFLnnUHuVlZTZCinxwa/REa
 6Q7y2gezlujB9JqZaAHKtv7QmdxDR4PyLXrB286zuiWxlGcYCCJn9rVUvEBlQsgHj40tdt8ZB
 pwZAxt7beFTDD7THTNJXozWrdj0NgnLB+2IXZHtmn/ohkk0ZVI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_134021_931446_1A8FE89C 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, igor <igor@compulab.co.il>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, Mike Rapoport <mike@compulab.co.il>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 7:01 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
>
> As these boards have no more users nor testers, and patching them has
> become a burden, be that because of the PCI part or the MTD NAND
> support, let's remove them.
>
> The cm-x300 will for now remain and represent Compulab boards at its
> best in the PXA department.
>
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Thanks for taking care of this!

I went through the patch looking for additional code that has become obsolete:

> diff --git a/arch/arm/configs/pxa_defconfig b/arch/arm/configs/pxa_defconfig
> index b817c57f05f1..e6559e3350e6 100644
> --- a/arch/arm/configs/pxa_defconfig
> +++ b/arch/arm/configs/pxa_defconfig
> @@ -38,8 +38,6 @@ CONFIG_MACH_ARCOM_ZEUS=y
>  CONFIG_MACH_BALLOON3=y
>  CONFIG_MACH_CSB726=y
>  CONFIG_CSB726_CSB701=y
> -CONFIG_MACH_ARMCORE=y
> -CONFIG_MACH_EM_X270=y
>  CONFIG_MACH_EXEDA=y

CONFIG_MACH_EXEDA should be removed here as well, it refers
to part of em-x270.c

Similarly, the whole em_x270_defconfig can be removed.

> diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
> index f60bc29aef68..8931a2424676 100644
> --- a/arch/arm/mach-pxa/Kconfig
> +++ b/arch/arm/mach-pxa/Kconfig
> @@ -123,19 +123,6 @@ config CSB726_CSB701
>         bool "Enable support for CSB701 baseboard"
>         depends on MACH_CSB726
>
> -config MACH_ARMCORE
> -       bool "CompuLab CM-X255/CM-X270 modules"
> -       select ARCH_HAS_DMA_SET_COHERENT_MASK if PCI
> -       select IWMMXT
> -       select HAVE_PCI
> -       select NEED_MACH_IO_H if PCI

Now arch/arm/mach-pxa/include/mach/io.h is unused and
can be removed.

With MACH_ARMCORE gone, the MTD_NAND_CM_X270 and
PCI_HOST_ITE8152 become impossible to select, and
a part of PCMCIA_PXA2XX (pxa2xx_cm_x2xx_cs.c) becomes
unused.

FB_MBX can still be selected, but there are no boards defining
the platform data any more, so I'd like to remove that as well.

> -       select PXA25x
> -       select PXA27x
> -
> -config MACH_EM_X270
> -       bool "CompuLab EM-x270 platform"
> -       select PXA27x
> -
>  config MACH_EXEDA
>         bool "CompuLab eXeda platform"
>         select PXA27x

MACH_EXEDA here is also obsolete, and I'd probably want to
update the SND_PXA2XX_SOC_EM_X270 dependencies in the
same patch.

It would make sense to rename it in theory, but it's probably
easier to leave it as it is aside from the dependency.

> -static struct spi_board_info spi_board_info[] __initdata = {
> -       [0] = {
> -               .modalias       = "rtc-max6902",
> -               .max_speed_hz   = 1000000,
> -               .bus_num        = 1,
> -               .chip_select    = 0,

Another last reference, so we can remove that the corresponding driver.

> -static struct platform_device cmx270_rtc_device = {
> -       .name           = "v3020",
> -       .num_resources  = ARRAY_SIZE(cmx270_v3020_resource),
> -       .resource       = cmx270_v3020_resource,
> -       .id             = -1,
> -       .dev            = {
> -               .platform_data = &cmx270_v3020_pdata,
> -       }
> -};

This is now only used in cm-x300, so it has to stay for now.

> -static struct spi_board_info cm_x270_spi_devices[] __initdata = {
> -       {
> -               .modalias               = "libertas_spi",
>-               .max_speed_hz           = 13000000,

Same here, there is still one more user left (MACH_ZIPIT2), though
at some point that might get removed if we decide to drop the handhelds
with 32MB RAM or less.  That is probably something to be left for
another time, but I see that pxa_defconfig produces a 9.5MB kernel
image, so this is getting rather tight, and 32MB wasn't much when this
got added in 2010.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
