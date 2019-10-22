Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5C5E008C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 11:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMDEuwcwiYW9nFXS+rq/ZXrUb5/7KoCk1QDtTgIt/m4=; b=jqhkZE+59tXxRb
	WV1uLaUMSqAO25kcD6qaMLzCyDRPFH7eCUoR9OYX43hm8xfiGsv0JZsl+QrRHcEnQesS86TZL+EzZ
	VJu+Sf9Ye1kwUf+0YWEGalr0uVsCPG73u99HL/pUbRW9FO5GD7f85TZqx43qB1t+AIwQKxLQOBKYc
	j3/wEs/DzaEO5BwGoJfJrC1uMOS001+hjTrQrp42z/2tViJ5SpQpcTfFfuciURt895Q+szaWQNsOM
	AoYGcTVofpHoHxxf+1vhx77XL2mBSz4+T5DktdlMDduagAyTsGwCiDMXDsRsuxn659gOyONkTmhSE
	W2jdr7rGFvDC/YJ1FJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqJR-0001ki-F5; Tue, 22 Oct 2019 09:18:45 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqJE-0001jr-EL
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 09:18:34 +0000
Received: by mail-oi1-f196.google.com with SMTP id s71so695193oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 02:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nuz84DmbVNqkBwZM2dSH7bNPNbMKWhjIIPtW7H0YPbs=;
 b=SGX7Bm1VRzgNzEFYU6DY+4NDIzyzpsigW8C02i6XT5s5MZoU4Fmi8rULma0B4YIQJm
 xy3xS8zEhfiJS8rV41IbqVasgczPtBuzFcEh1AZVu16Ob1d2Alj6UOoj5sLkaWymXrvG
 LhEtZ4UYflGCokmmuu11X/Py5mxGF45SScbt+RbuU2ObCTk3tQm1CH180PVPtGepOIai
 UOolgzzlnTgVyfONrQMRiSLzMW1xmyHiv5Iu7nhWnA13w5M1ivm3SaZzgr2fmGj+878D
 AIxe7+9nRwxg4ya7e8UmrJiAa2ddae4dpjh029ZQ+95BePaJin4ycVmcClpec3KGBKPF
 u4QQ==
X-Gm-Message-State: APjAAAWQfUrr1xRu0k5tyTyFFpve61lVlrTawyoM8AJyE8uLnCRp/P4r
 2dKkooTZTvY2u7GXn2xjtKQxPMg3pnhRPL/3e+s=
X-Google-Smtp-Source: APXvYqwwDlsgGkAn9HrCd8VV+9jpvEy0YfjvtOplz9BjtCnFCm2kwmx5+01G/UWl5wByWCylJuSaEQxiHp/YzPN/6bE=
X-Received: by 2002:aca:b6c5:: with SMTP id g188mr2084579oif.103.1571735910539; 
 Tue, 22 Oct 2019 02:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191022075123.17057-1-ran.wang_1@nxp.com>
 <20191022075123.17057-3-ran.wang_1@nxp.com>
In-Reply-To: <20191022075123.17057-3-ran.wang_1@nxp.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 22 Oct 2019 11:18:18 +0200
Message-ID: <CAJZ5v0jdy+4ZRci2LWsb7vPTQ8Yyb7S0CF2C92zhBXg_xe67ug@mail.gmail.com>
Subject: Re: [PATCH 3/3] soc: fsl: add RCPM driver
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_021832_486619_3D97B306 
X-CRM114-Status: GOOD (  32.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Li Biwen <biwen.li@nxp.com>,
 Huang Anson <anson.huang@nxp.com>, Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 9:52 AM Ran Wang <ran.wang_1@nxp.com> wrote:
>
> The NXP's QorIQ Processors based on ARM Core have RCPM module
> (Run Control and Power Management), which performs system level
> tasks associated with power management such as wakeup source control.
>
> This driver depends on PM wakeup source framework which help to
> collect wake information.
>
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Change in v8:
>         - Adjust related API usage to meet wakeup.c's update in patch 1/3.
>         - Add sanity checking for the case of ws->dev or ws->dev->parent
>           is null.
>
> Change in v7:
>         - Replace 'ws->dev' with 'ws->dev->parent' to get aligned with
>         c8377adfa781 ("PM / wakeup: Show wakeup sources stats in sysfs")
>         - Remove '+obj-y += ftm_alarm.o' since it is wrong.
>         - Cosmetic work.
>
> Change in v6:
>         - Adjust related API usage to meet wakeup.c's update in patch 1/3.
>
> Change in v5:
>         - Fix v4 regression of the return value of wakeup_source_get_next()
>         didn't pass to ws in while loop.
>         - Rename wakeup_source member 'attached_dev' to 'dev'.
>         - Rename property 'fsl,#rcpm-wakeup-cells' to '#fsl,rcpm-wakeup-cells'.
>         please see https://lore.kernel.org/patchwork/patch/1101022/
>
> Change in v4:
>         - Remove extra ',' in author line of rcpm.c
>         - Update usage of wakeup_source_get_next() to be less confusing to the
> reader, code logic remain the same.
>
> Change in v3:
>         - Some whitespace ajdustment.
>
> Change in v2:
>         - Rebase Kconfig and Makefile update to latest mainline.
>
>  drivers/soc/fsl/Kconfig  |   8 +++
>  drivers/soc/fsl/Makefile |   1 +
>  drivers/soc/fsl/rcpm.c   | 133 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 142 insertions(+)
>  create mode 100644 drivers/soc/fsl/rcpm.c
>
> diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig
> index f9ad8ad..4918856 100644
> --- a/drivers/soc/fsl/Kconfig
> +++ b/drivers/soc/fsl/Kconfig
> @@ -40,4 +40,12 @@ config DPAA2_CONSOLE
>           /dev/dpaa2_mc_console and /dev/dpaa2_aiop_console,
>           which can be used to dump the Management Complex and AIOP
>           firmware logs.
> +
> +config FSL_RCPM
> +       bool "Freescale RCPM support"
> +       depends on PM_SLEEP
> +       help
> +         The NXP QorIQ Processors based on ARM Core have RCPM module
> +         (Run Control and Power Management), which performs all device-level
> +         tasks associated with power management, such as wakeup source control.
>  endmenu
> diff --git a/drivers/soc/fsl/Makefile b/drivers/soc/fsl/Makefile
> index 71dee8d..906f1cd 100644
> --- a/drivers/soc/fsl/Makefile
> +++ b/drivers/soc/fsl/Makefile
> @@ -6,6 +6,7 @@
>  obj-$(CONFIG_FSL_DPAA)                 += qbman/
>  obj-$(CONFIG_QUICC_ENGINE)             += qe/
>  obj-$(CONFIG_CPM)                      += qe/
> +obj-$(CONFIG_FSL_RCPM)                 += rcpm.o
>  obj-$(CONFIG_FSL_GUTS)                 += guts.o
>  obj-$(CONFIG_FSL_MC_DPIO)              += dpio/
>  obj-$(CONFIG_DPAA2_CONSOLE)            += dpaa2-console.o
> diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c
> new file mode 100644
> index 0000000..3ed135e
> --- /dev/null
> +++ b/drivers/soc/fsl/rcpm.c
> @@ -0,0 +1,133 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// rcpm.c - Freescale QorIQ RCPM driver
> +//
> +// Copyright 2019 NXP
> +//
> +// Author: Ran Wang <ran.wang_1@nxp.com>
> +
> +#include <linux/init.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/of_address.h>
> +#include <linux/slab.h>
> +#include <linux/suspend.h>
> +#include <linux/kernel.h>
> +
> +#define RCPM_WAKEUP_CELL_MAX_SIZE      7
> +
> +struct rcpm {
> +       unsigned int    wakeup_cells;
> +       void __iomem    *ippdexpcr_base;
> +       bool            little_endian;
> +};
> +

Please add a kerneldoc comment describing this routine.

> +static int rcpm_pm_prepare(struct device *dev)
> +{
> +       int i, ret, idx;
> +       void __iomem *base;
> +       struct wakeup_source    *ws;
> +       struct rcpm             *rcpm;
> +       struct device_node      *np = dev->of_node;
> +       u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
> +
> +       rcpm = dev_get_drvdata(dev);
> +       if (!rcpm)
> +               return -EINVAL;
> +
> +       base = rcpm->ippdexpcr_base;
> +       idx = wakeup_sources_read_lock();
> +
> +       /* Begin with first registered wakeup source */
> +       for_each_wakeup_source(ws) {
> +
> +               /* skip object which is not attached to device */
> +               if (!ws->dev || !ws->dev->parent)
> +                       continue;
> +
> +               ret = device_property_read_u32_array(ws->dev->parent,
> +                               "fsl,rcpm-wakeup", value,
> +                               rcpm->wakeup_cells + 1);
> +
> +               /*  Wakeup source should refer to current rcpm device */
> +               if (ret || (np->phandle != value[0])) {
> +                       dev_info(dev, "%s doesn't refer to this rcpm\n",
> +                                       ws->name);

IMO printing this message is not useful in general, because it looks
like you just want to skip wakeup sources that aren't associated with
rcpm devices.

Maybe use pr_debug() to print it?  Or maybe use pr_debug() to print a
message if you have found a suitable device?  Wouldn't that be more
useful?

> +                       continue;
> +               }
> +

It would be good to add a comment explaining what the code below does
here.  Or explain that in the function's kerneldoc comment.

> +               for (i = 0; i < rcpm->wakeup_cells; i++) {

It looks like 'tmp' can be defined in this block.

And I would store the value of value[i+1] in tmp upfront, that is

u32 tmp = value[i+1];

> +                       /* We can only OR related bits */
> +                       if (value[i + 1]) {

Also I would do

if (!tmp)
        continue;

to reduce the indentation level.

> +                               if (rcpm->little_endian) {
> +                                       tmp = ioread32(base + i * 4);
> +                                       tmp |= value[i + 1];
> +                                       iowrite32(tmp, base + i * 4);

So it is sufficient to do

tmp |= ioread32(base + i * 4);
iowrite32(tmp, base + i * 4);

here and analogously below.

You may as well define

void __iomem *address = base + i * 4;

and use it everywhere in this block instead of the (base + I * 4) expression.

> +                               } else {
> +                                       tmp = ioread32be(base + i * 4);
> +                                       tmp |= value[i + 1];
> +                                       iowrite32be(tmp, base + i * 4);
> +                               }
> +                       }
> +               }
> +       }
> +
> +       wakeup_sources_read_unlock(idx);
> +
> +       return 0;
> +}
> +
> +static const struct dev_pm_ops rcpm_pm_ops = {
> +       .prepare =  rcpm_pm_prepare,
> +};
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
