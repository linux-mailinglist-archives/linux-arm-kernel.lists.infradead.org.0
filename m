Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5241B5DFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34I8sBJHq2aDN2hmjRTlb40RrBQHjU669E7dDy5drNs=; b=ftW/DmQ/CKFyEM
	MQjN8RBbDZxM60V61bpyidr8vcwpuCrtbU5c4cbSjAQZ4GAbjGXXW3lgrXcQlG5qh1juKMZK2W3F6
	+spua3Oa16Bl/xIb4IAbMNr+PK4S49oxV3WMpXAq60aDr52Z8AUCkafx+SAaqGIVjfQd7xHhsrJpr
	O8yfmnZPl5hlnomHZnLN7pcffkykHXnJWXIEVt+LQWpz7iofHhZYTRrbE/oGPhl16F2myaB5dAjBO
	36DUQprCgnBSe+H978hD7RGz+jvUm9iHcpoj0/W5zB3jb7MFMMGhIoF5nvDVtNJdYHXcSskT/8/h2
	Tdk9pPwv9Pz4v3Uq1v3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRczW-00064h-4n; Thu, 23 Apr 2020 14:38:14 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRczH-00063c-P3
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:38:01 +0000
Received: by mail-vk1-xa41.google.com with SMTP id n207so1780350vkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 07:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ug3KiCtaYc2Wm8ungvIjXJGgMkxsZrDe9mGUGvcX/Bo=;
 b=zWPu+z3h95PnKcJptjma7DrUfqzD6ETQeNhRoBAIDiGfv6tyoZVVI5fLdYPE24Bg9W
 iXquNUsFq/pKpxjBjLor4OZRCT6EwKAMSeYSePz7lJOnV9IyAhl6gx7uK3arMMbKkr+P
 VFN3NH3Ee4vJPGPmYyJKj4L5utnLkGqkc2dV33JyM7cnY+rSjvD3/RQh8CuVcM9ce17Y
 1B6ZVHSbtKvUDSADHKXLWBSWkYduBUMI4s+fayyoETdw60pDj7xlgn4kAL5qLw474YwA
 q8LQurPtvHiUV5XqCOVIIwaSmj0subdwxJ+8agVAHS+SmcfevzNMJmNm3D/M9h3jcPp7
 I6Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ug3KiCtaYc2Wm8ungvIjXJGgMkxsZrDe9mGUGvcX/Bo=;
 b=QrO+vm5X4AH0Kq5gW1pdlEunnb/Dj7hlq2XyzeyPO6xAbm4sBwPzCfVYzR+FOKIImg
 f7f2y3Cm1GMSLQUND65D/6jVvqYX7kK1OeVIzxDir5Cf5C7TnWf2jYNA6dWWNWWAruJ0
 V4DvF2GeHXW3NKEqGPLEzy/j/hzk6gVicspv9UxHKs0M73Oc5NPG6Msd5m9V31FIgIdv
 zjQSOxNnH7Sj6FjXRTtY5taN4Pilbq7Qg+5A95YshMMxYJjpURXoOmqDacQPFAioxu+h
 bEk9hBGqYZXh361b/iqohzU4hUUtXxkbrAIbSjAQcgK3nceWj/11WtOMEcYrnRSMJwLK
 zgeQ==
X-Gm-Message-State: AGi0Pua/Ou/ufJL8w0Qa67nT+LdZV6zTfxChmsSFgwGWsXYv4eDs6xWG
 n6DjnYyghWzHUzzLhcfwbw042qGBUN8/P3KZbqYKsQkk
X-Google-Smtp-Source: APiQypJ7U6znxJCGvIjdiEDJKmyx8voqZXUHTKPQxiRWpWkQibyxKowhF3MORyevpBPSV+VXgHmkCg5/K3uHw44EK24=
X-Received: by 2002:a1f:ce86:: with SMTP id e128mr3761286vkg.86.1587652678214; 
 Thu, 23 Apr 2020 07:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <1587650406-20050-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587650406-20050-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 23 Apr 2020 20:07:35 +0530
Message-ID: <CAHLCerP3jGUZC+i2i6CEYhOtBjLYKAPe7M0bKUs1b5oQEsdfEg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_073759_817746_D13F5FCF 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, Linux PM list <linux-pm@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, linux@rempel-privat.de,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <Linux-imx@nxp.com>,
 kernel@pengutronix.de, Zhang Rui <rui.zhang@intel.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 7:38 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> i.MX8 SoCs DTS file needs system control macro definitions, so move them
> into dt-binding headfile.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Why am I seeing multiple versions of the same series?

You need to squash this series so that the swapping of the header file
happens in a single patch otherwise compilation will break with only
patch 1 applied.

> ---
>  include/dt-bindings/firmware/imx/rsrc.h | 84 +++++++++++++++++++++++++++++++++
>  include/linux/firmware/imx/sci.h        |  1 -
>  include/linux/firmware/imx/types.h      | 65 -------------------------
>  3 files changed, 84 insertions(+), 66 deletions(-)
>  delete mode 100644 include/linux/firmware/imx/types.h
>
> diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
> index 4e61f64..51906b9 100644
> --- a/include/dt-bindings/firmware/imx/rsrc.h
> +++ b/include/dt-bindings/firmware/imx/rsrc.h
> @@ -547,4 +547,88 @@
>  #define IMX_SC_R_ATTESTATION           545
>  #define IMX_SC_R_LAST                  546
>
> +/*
> + * Defines for SC PM CLK
> + */
> +#define IMX_SC_PM_CLK_SLV_BUS          0       /* Slave bus clock */
> +#define IMX_SC_PM_CLK_MST_BUS          1       /* Master bus clock */
> +#define IMX_SC_PM_CLK_PER              2       /* Peripheral clock */
> +#define IMX_SC_PM_CLK_PHY              3       /* Phy clock */
> +#define IMX_SC_PM_CLK_MISC             4       /* Misc clock */
> +#define IMX_SC_PM_CLK_MISC0            0       /* Misc 0 clock */
> +#define IMX_SC_PM_CLK_MISC1            1       /* Misc 1 clock */
> +#define IMX_SC_PM_CLK_MISC2            2       /* Misc 2 clock */
> +#define IMX_SC_PM_CLK_MISC3            3       /* Misc 3 clock */
> +#define IMX_SC_PM_CLK_MISC4            4       /* Misc 4 clock */
> +#define IMX_SC_PM_CLK_CPU              2       /* CPU clock */
> +#define IMX_SC_PM_CLK_PLL              4       /* PLL */
> +#define IMX_SC_PM_CLK_BYPASS           4       /* Bypass clock */
> +
> +/*
> + * Defines for SC CONTROL
> + */
> +#define IMX_SC_C_TEMP                       0U
> +#define IMX_SC_C_TEMP_HI                    1U
> +#define IMX_SC_C_TEMP_LOW                   2U
> +#define IMX_SC_C_PXL_LINK_MST1_ADDR         3U
> +#define IMX_SC_C_PXL_LINK_MST2_ADDR         4U
> +#define IMX_SC_C_PXL_LINK_MST_ENB           5U
> +#define IMX_SC_C_PXL_LINK_MST1_ENB          6U
> +#define IMX_SC_C_PXL_LINK_MST2_ENB          7U
> +#define IMX_SC_C_PXL_LINK_SLV1_ADDR         8U
> +#define IMX_SC_C_PXL_LINK_SLV2_ADDR         9U
> +#define IMX_SC_C_PXL_LINK_MST_VLD           10U
> +#define IMX_SC_C_PXL_LINK_MST1_VLD          11U
> +#define IMX_SC_C_PXL_LINK_MST2_VLD          12U
> +#define IMX_SC_C_SINGLE_MODE                13U
> +#define IMX_SC_C_ID                         14U
> +#define IMX_SC_C_PXL_CLK_POLARITY           15U
> +#define IMX_SC_C_LINESTATE                  16U
> +#define IMX_SC_C_PCIE_G_RST                 17U
> +#define IMX_SC_C_PCIE_BUTTON_RST            18U
> +#define IMX_SC_C_PCIE_PERST                 19U
> +#define IMX_SC_C_PHY_RESET                  20U
> +#define IMX_SC_C_PXL_LINK_RATE_CORRECTION   21U
> +#define IMX_SC_C_PANIC                      22U
> +#define IMX_SC_C_PRIORITY_GROUP             23U
> +#define IMX_SC_C_TXCLK                      24U
> +#define IMX_SC_C_CLKDIV                     25U
> +#define IMX_SC_C_DISABLE_50                 26U
> +#define IMX_SC_C_DISABLE_125                27U
> +#define IMX_SC_C_SEL_125                    28U
> +#define IMX_SC_C_MODE                       29U
> +#define IMX_SC_C_SYNC_CTRL0                 30U
> +#define IMX_SC_C_KACHUNK_CNT                31U
> +#define IMX_SC_C_KACHUNK_SEL                32U
> +#define IMX_SC_C_SYNC_CTRL1                 33U
> +#define IMX_SC_C_DPI_RESET                  34U
> +#define IMX_SC_C_MIPI_RESET                 35U
> +#define IMX_SC_C_DUAL_MODE                  36U
> +#define IMX_SC_C_VOLTAGE                    37U
> +#define IMX_SC_C_PXL_LINK_SEL               38U
> +#define IMX_SC_C_OFS_SEL                    39U
> +#define IMX_SC_C_OFS_AUDIO                  40U
> +#define IMX_SC_C_OFS_PERIPH                 41U
> +#define IMX_SC_C_OFS_IRQ                    42U
> +#define IMX_SC_C_RST0                       43U
> +#define IMX_SC_C_RST1                       44U
> +#define IMX_SC_C_SEL0                       45U
> +#define IMX_SC_C_CALIB0                     46U
> +#define IMX_SC_C_CALIB1                     47U
> +#define IMX_SC_C_CALIB2                     48U
> +#define IMX_SC_C_IPG_DEBUG                  49U
> +#define IMX_SC_C_IPG_DOZE                   50U
> +#define IMX_SC_C_IPG_WAIT                   51U
> +#define IMX_SC_C_IPG_STOP                   52U
> +#define IMX_SC_C_IPG_STOP_MODE              53U
> +#define IMX_SC_C_IPG_STOP_ACK               54U
> +#define IMX_SC_C_SYNC_CTRL                  55U
> +#define IMX_SC_C_OFS_AUDIO_ALT              56U
> +#define IMX_SC_C_DSP_BYP                    57U
> +#define IMX_SC_C_CLK_GEN_EN                 58U
> +#define IMX_SC_C_INTF_SEL                   59U
> +#define IMX_SC_C_RXC_DLY                    60U
> +#define IMX_SC_C_TIMER_SEL                  61U
> +#define IMX_SC_C_LAST                       62U
> +
>  #endif /* __DT_BINDINGS_RSCRC_IMX_H */
> diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
> index 17ba4e4..3fa418a 100644
> --- a/include/linux/firmware/imx/sci.h
> +++ b/include/linux/firmware/imx/sci.h
> @@ -11,7 +11,6 @@
>  #define _SC_SCI_H
>
>  #include <linux/firmware/imx/ipc.h>
> -#include <linux/firmware/imx/types.h>
>
>  #include <linux/firmware/imx/svc/misc.h>
>  #include <linux/firmware/imx/svc/pm.h>
> diff --git a/include/linux/firmware/imx/types.h b/include/linux/firmware/imx/types.h
> deleted file mode 100644
> index 8082110..0000000
> --- a/include/linux/firmware/imx/types.h
> +++ /dev/null
> @@ -1,65 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0+ */
> -/*
> - * Copyright (C) 2016 Freescale Semiconductor, Inc.
> - * Copyright 2017~2018 NXP
> - *
> - * Header file containing types used across multiple service APIs.
> - */
> -
> -#ifndef _SC_TYPES_H
> -#define _SC_TYPES_H
> -
> -/*
> - * This type is used to indicate a control.
> - */
> -enum imx_sc_ctrl {
> -       IMX_SC_C_TEMP = 0,
> -       IMX_SC_C_TEMP_HI = 1,
> -       IMX_SC_C_TEMP_LOW = 2,
> -       IMX_SC_C_PXL_LINK_MST1_ADDR = 3,
> -       IMX_SC_C_PXL_LINK_MST2_ADDR = 4,
> -       IMX_SC_C_PXL_LINK_MST_ENB = 5,
> -       IMX_SC_C_PXL_LINK_MST1_ENB = 6,
> -       IMX_SC_C_PXL_LINK_MST2_ENB = 7,
> -       IMX_SC_C_PXL_LINK_SLV1_ADDR = 8,
> -       IMX_SC_C_PXL_LINK_SLV2_ADDR = 9,
> -       IMX_SC_C_PXL_LINK_MST_VLD = 10,
> -       IMX_SC_C_PXL_LINK_MST1_VLD = 11,
> -       IMX_SC_C_PXL_LINK_MST2_VLD = 12,
> -       IMX_SC_C_SINGLE_MODE = 13,
> -       IMX_SC_C_ID = 14,
> -       IMX_SC_C_PXL_CLK_POLARITY = 15,
> -       IMX_SC_C_LINESTATE = 16,
> -       IMX_SC_C_PCIE_G_RST = 17,
> -       IMX_SC_C_PCIE_BUTTON_RST = 18,
> -       IMX_SC_C_PCIE_PERST = 19,
> -       IMX_SC_C_PHY_RESET = 20,
> -       IMX_SC_C_PXL_LINK_RATE_CORRECTION = 21,
> -       IMX_SC_C_PANIC = 22,
> -       IMX_SC_C_PRIORITY_GROUP = 23,
> -       IMX_SC_C_TXCLK = 24,
> -       IMX_SC_C_CLKDIV = 25,
> -       IMX_SC_C_DISABLE_50 = 26,
> -       IMX_SC_C_DISABLE_125 = 27,
> -       IMX_SC_C_SEL_125 = 28,
> -       IMX_SC_C_MODE = 29,
> -       IMX_SC_C_SYNC_CTRL0 = 30,
> -       IMX_SC_C_KACHUNK_CNT = 31,
> -       IMX_SC_C_KACHUNK_SEL = 32,
> -       IMX_SC_C_SYNC_CTRL1 = 33,
> -       IMX_SC_C_DPI_RESET = 34,
> -       IMX_SC_C_MIPI_RESET = 35,
> -       IMX_SC_C_DUAL_MODE = 36,
> -       IMX_SC_C_VOLTAGE = 37,
> -       IMX_SC_C_PXL_LINK_SEL = 38,
> -       IMX_SC_C_OFS_SEL = 39,
> -       IMX_SC_C_OFS_AUDIO = 40,
> -       IMX_SC_C_OFS_PERIPH = 41,
> -       IMX_SC_C_OFS_IRQ = 42,
> -       IMX_SC_C_RST0 = 43,
> -       IMX_SC_C_RST1 = 44,
> -       IMX_SC_C_SEL0 = 45,
> -       IMX_SC_C_LAST
> -};
> -
> -#endif /* _SC_TYPES_H */
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
