Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1FC195BDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:05:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3LOwz6HaqT7JJLa8C4i2MHr7NwmhrqaxwQHk4CeiiY=; b=Xj9COYj5tK3loH
	54QXwJz+9aISsaTlitxi+6ZBXNMQaabSmOdztzEu9TPeqD+z6qfgaa6Ehu1Wmu2gim+tWGeIKOu4K
	EXNTe4CcOG5iUiN0opNF2/s8Zg5+ExiWuMGWpQPnCISmaCClDPZtC32Yn1H1aCEiLaNJeQjWuf2Dy
	yLrMo1JWgxfDJRQpgZ4Ix5a/aM77A1IAithg2afVQAIGshf0pHnkZfdvKLjPyxR4NUsgia1ne8nlg
	xcotoBtocXR8COqbMCihmCYoAXzBN2lUvbOiYHSy8Zs8SkGXEF+0wOAg5CFhyPoHUlZuTjWXndkrg
	wFIvCdt147j5IL4TCxrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsPk-0000Ru-1G; Fri, 27 Mar 2020 17:05:00 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsPZ-0000Qf-DT
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:04:50 +0000
Received: by mail-io1-xd43.google.com with SMTP id o3so4993042ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 10:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OKLY8TX9PBKTkw1igDhhrZ1fVl9lcNMkwfQ7KL1HIxA=;
 b=tnykoHw2n3S9fOwdLtVZZtlKip0gSPE8cylLNt1heu7ggdMFbgkq0l6Rk38A4P5oEV
 dCcoDTC+hU/tx629HLHBQCYAxl6VGpA/uNEh2PpSn/oiTcfjcjAk0kfEXmKDAW2lv8I/
 wAs6rsd1FHtjpCji0GVFM3CNkd2t0UoBL+SksWwmXdmTY9iyHD/thM94OJPDqU2GU4us
 4gP8AdM3EOMI9h9skNjoXuLMgUz58KBzgXI96mG4pWNy/YY4TSGi7zG8XICNDOEh80/x
 vIjleBpy3FKkpgV8JpqwBqKZVRBEvkgptJg0midoZRfhf91sOUWXJm89KTuzAb184Dlb
 iVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OKLY8TX9PBKTkw1igDhhrZ1fVl9lcNMkwfQ7KL1HIxA=;
 b=YMQT4P+anwKnr2UL5n/H+5s9Y2bZzii4X418STGIu2Ji63MeQEcduc83RUys4CaKH1
 q+8y3u1yMZ7RtUyZeXs1fbRTbhhWBLvyBROZwGzkn/EMKX1LXdEXf3Xc7CCefWkbma4l
 EHECTwrL87k3mLdGCDtIFEe9GZ4G+gkLbXluSjsbdfk47F9trycYOu2MwcZMn7ZmDCo4
 S1KPDW0gEFO9UL+hiY028xen3SLX9+jFcP5ZTIx71ArVGT+4iRlVGZDHvx0OAFGdVOzJ
 t3cTFn7ZWnWAKIhRVBr6xNqLZEquNd9j+KFWeChy2r3RUGJXTPvQ2w0Io0mDdfDuU5Ph
 6C1Q==
X-Gm-Message-State: ANhLgQ07LatP5VjBrEWog4/gkMEirhiL14n5xU2iXQkBt94kq/4vu9XD
 rNguv0KAID0C7qbXdVNWGO19f+5bAYudl1UWKiQ=
X-Google-Smtp-Source: ADFU+vufDyKMFwwgw+tNEwPgAyzzk95ZFgAPEIGMIb4IOXudF480dQIrfd/lzv15If/QLPsNwfVOpTL5L6O/X8Yozx4=
X-Received: by 2002:a5d:954c:: with SMTP id a12mr6842138ios.25.1585328686840; 
 Fri, 27 Mar 2020 10:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200326174232.23365-1-andrew.smirnov@gmail.com>
In-Reply-To: <20200326174232.23365-1-andrew.smirnov@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Fri, 27 Mar 2020 10:04:37 -0700
Message-ID: <CAFXsbZou9DJn2dwVkXYBCqu2vU4TOD0xiW-h=zF15tgbWzBNTg@mail.gmail.com>
Subject: Re: [PATCH] ARM: vf610: report soc info via soc device
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_100449_482494_27E6BA06 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cphealy[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-imx@nxp.com, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On a VF610 Vybrid:

Tested-by: Chris Healy <cphealy@gmail.com>

On Thu, Mar 26, 2020 at 10:42 AM Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
>
> The patch adds plumbing to soc device info code necessary to support
> Vybrid devices. Use case in mind for this is CAAM driver, which
> utilizes said API.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-imx@nxp.com
> ---
>  arch/arm/mach-imx/cpu.c        | 16 ++++++++++
>  arch/arm/mach-imx/mach-vf610.c | 53 ++++++++++++++++++++++++++++++++++
>  arch/arm/mach-imx/mxc.h        |  6 ++++
>  3 files changed, 75 insertions(+)
>
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index 06f8d64b65af..e3d12b21d6f6 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -172,6 +172,22 @@ struct device * __init imx_soc_device_init(void)
>                 ocotp_compat = "fsl,imx7ulp-ocotp";
>                 soc_id = "i.MX7ULP";
>                 break;
> +       case MXC_CPU_VF500:
> +               ocotp_compat = "fsl,vf610-ocotp";
> +               soc_id = "VF500";
> +               break;
> +       case MXC_CPU_VF510:
> +               ocotp_compat = "fsl,vf610-ocotp";
> +               soc_id = "VF510";
> +               break;
> +       case MXC_CPU_VF600:
> +               ocotp_compat = "fsl,vf610-ocotp";
> +               soc_id = "VF600";
> +               break;
> +       case MXC_CPU_VF610:
> +               ocotp_compat = "fsl,vf610-ocotp";
> +               soc_id = "VF610";
> +               break;
>         default:
>                 soc_id = "Unknown";
>         }
> diff --git a/arch/arm/mach-imx/mach-vf610.c b/arch/arm/mach-imx/mach-vf610.c
> index 9c929b09310c..565dc08412a2 100644
> --- a/arch/arm/mach-imx/mach-vf610.c
> +++ b/arch/arm/mach-imx/mach-vf610.c
> @@ -3,11 +3,63 @@
>   * Copyright 2012-2013 Freescale Semiconductor, Inc.
>   */
>
> +#include <linux/of_address.h>
>  #include <linux/of_platform.h>
> +#include <linux/io.h>
> +
>  #include <linux/irqchip.h>
>  #include <asm/mach/arch.h>
>  #include <asm/hardware/cache-l2x0.h>
>
> +#include "common.h"
> +#include "hardware.h"
> +
> +#define MSCM_CPxCOUNT          0x00c
> +#define MSCM_CPxCFG1           0x014
> +
> +static void __init vf610_detect_cpu(void)
> +{
> +       struct device_node *np;
> +       u32 cpxcount, cpxcfg1;
> +       unsigned int cpu_type;
> +       void __iomem *mscm;
> +
> +       np = of_find_compatible_node(NULL, NULL, "fsl,vf610-mscm-cpucfg");
> +       if (WARN_ON(!np))
> +               return;
> +
> +       mscm = of_iomap(np, 0);
> +       of_node_put(np);
> +
> +       if (WARN_ON(!mscm))
> +               return;
> +
> +       cpxcount = readl_relaxed(mscm + MSCM_CPxCOUNT);
> +       cpxcfg1  = readl_relaxed(mscm + MSCM_CPxCFG1);
> +
> +       iounmap(mscm);
> +
> +       cpu_type = cpxcount ? MXC_CPU_VF600 : MXC_CPU_VF500;
> +
> +       if (cpxcfg1)
> +               cpu_type |= MXC_CPU_VFx10;
> +
> +       mxc_set_cpu_type(cpu_type);
> +}
> +
> +static void __init vf610_init_machine(void)
> +{
> +       struct device *parent;
> +
> +       vf610_detect_cpu();
> +
> +       parent = imx_soc_device_init();
> +       if (parent == NULL)
> +               pr_warn("failed to initialize soc device\n");
> +
> +       of_platform_default_populate(NULL, NULL, parent);
> +}
> +
>  static const char * const vf610_dt_compat[] __initconst = {
>         "fsl,vf500",
>         "fsl,vf510",
> @@ -20,5 +72,6 @@ static const char * const vf610_dt_compat[] __initconst = {
>  DT_MACHINE_START(VYBRID_VF610, "Freescale Vybrid VF5xx/VF6xx (Device Tree)")
>         .l2c_aux_val    = 0,
>         .l2c_aux_mask   = ~0,
> +       .init_machine   = vf610_init_machine,
>         .dt_compat      = vf610_dt_compat,
>  MACHINE_END
> diff --git a/arch/arm/mach-imx/mxc.h b/arch/arm/mach-imx/mxc.h
> index 2bfd2d59b4a6..48e6d781f15b 100644
> --- a/arch/arm/mach-imx/mxc.h
> +++ b/arch/arm/mach-imx/mxc.h
> @@ -33,6 +33,12 @@
>  #define MXC_CPU_IMX7D          0x72
>  #define MXC_CPU_IMX7ULP                0xff
>
> +#define MXC_CPU_VFx10          0x010
> +#define MXC_CPU_VF500          0x500
> +#define MXC_CPU_VF510          (MXC_CPU_VF500 | MXC_CPU_VFx10)
> +#define MXC_CPU_VF600          0x600
> +#define MXC_CPU_VF610          (MXC_CPU_VF600 | MXC_CPU_VFx10)
> +
>  #define IMX_DDR_TYPE_LPDDR2            1
>
>  #ifndef __ASSEMBLY__
> --
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
