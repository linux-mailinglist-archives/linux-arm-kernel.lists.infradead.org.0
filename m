Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB2E1577
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eVPs6/bofviwwWmwpSA1aSYMsrwPA2wRI58XfkCETk=; b=iNAKpR61NZ9GSj
	U0zLl9lbUW6SblKCnMLSGXs83NUWT/fly0egvDarc4riguy3m8QlsDeYYGJh7Nhv18p7FnD/yK1b4
	7g7BtKPshVkdcNiDlotGP/Bpkw0KtHU/UDxLO8wuN5Dojdxjb+ZAzLfno3h1JhnTv8jh8jwWb76gi
	I+mh6p6d7LwnITmiE3aFF1fzmYqhmLQyqt3udCSJkLhHTW0kpReY47bhncdH9/gG7Y4j3kFP4z2w6
	dxxSQbG0ce5vqzXzlOv0/zjPVmBb0BONw/7QikoWpvK/bIiH0najyuJLrTsyN5a3sCq9aeHfKSXLI
	tzt6clC7ulXlPTUQEuhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCh3-0001CB-TO; Wed, 23 Oct 2019 09:12:37 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCgs-0001Bn-Gx
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 09:12:28 +0000
Received: by mail-oi1-f196.google.com with SMTP id x3so16766098oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 02:12:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I9e2tdyJ+jhbraDazF6LVEdNxXM3+pxi8NuZ/Hugb5E=;
 b=Oxkh7ELTKm/m2KNMFvFr2W6RT1pEL4720iN7s3JYVPTYTZ7MDRipjh+uoKvn6yKhse
 99FYZmNMNqUuHtxuPc5pfE+ByL4M9kCkWf9JN5oshz5SmwSkKu//yHeYkT5mjeETjyt9
 DVXyhMBvKAMrBac9nKRLmhJOyazS6mNDgEYDPm9l77KF3GuqQuc0uAdDJBXB/ZW8MAGO
 PqzSzY5rKhOHxVmOXAcN/9/biw3gmbEuNRxd/Wb9QdLN1zdx5MWIgHUg3LRfnC/E+EdU
 wktiidxfGbhJrCguizJdIo4nKT1NUNkCDFnB8MsVRYVdixvnToctIJPxjJkREcUfCKHJ
 65hQ==
X-Gm-Message-State: APjAAAX/jgkQDNc6oFm9mMUqRZuEUmOnEdVnsFwbv6b5SAO+jKQU/RJf
 UraioQlpqjpSBrqdOllD/vI1QKAO7HZd1+uWBKI=
X-Google-Smtp-Source: APXvYqzrTSVIDKeg/LSwHPg4nLGUyfseJPmnQLFNA0oSLGOXU5LmtkriLGk3+XW6wYlrIk86X4PP9mA+eeDYjX+jZKw=
X-Received: by 2002:aca:b6c5:: with SMTP id g188mr6925323oif.103.1571821944448; 
 Wed, 23 Oct 2019 02:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191023082423.12569-1-ran.wang_1@nxp.com>
 <20191023082423.12569-3-ran.wang_1@nxp.com>
In-Reply-To: <20191023082423.12569-3-ran.wang_1@nxp.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 23 Oct 2019 11:12:13 +0200
Message-ID: <CAJZ5v0i-gfRTzbDL5SBp_XfOYCkJPENpOjU+Pd3wi5aOjZd1HQ@mail.gmail.com>
Subject: Re: [PATCH v9 3/3] soc: fsl: add RCPM driver
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_021226_567530_486D8C7B 
X-CRM114-Status: GOOD (  33.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Wed, Oct 23, 2019 at 10:24 AM Ran Wang <ran.wang_1@nxp.com> wrote:
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
> Change in v9:
>         - Add kerneldoc for rcpm_pm_prepare().
>         - Use pr_debug() to replace dev_info(), to print message when decide
>           skip current wakeup object, this is mainly for debugging (in order
>           to detect potential improper implementation on device tree which
>           might cause this skip).
>         - Refactor looping implementation in rcpm_pm_prepare(), add more
>           comments to help clarify.
>
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
>  drivers/soc/fsl/rcpm.c   | 148 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 157 insertions(+)
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
> index 0000000..9378073
> --- /dev/null
> +++ b/drivers/soc/fsl/rcpm.c
> @@ -0,0 +1,148 @@
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
> +/**
> + * rcpm_pm_prepare - performs device-level tasks associated with power
> + * management, such as programming related to the wakeup source control.
> + * @dev: Device to handle.
> + *
> + */
> +static int rcpm_pm_prepare(struct device *dev)
> +{
> +       int i, ret, idx;
> +       void __iomem *base;
> +       struct wakeup_source    *ws;
> +       struct rcpm             *rcpm;
> +       struct device_node      *np = dev->of_node;
> +       u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
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
> +                       pr_debug("%s doesn't refer to this rcpm\n", ws->name);

I'm still quite unsure why it is useful to print this message instead
of printing one when the wakeup source does match (there may be many
wakeup source objects you don't care about in principle), but
whatever.

> +                       continue;
> +               }
> +
> +               /* Property "#fsl,rcpm-wakeup-cells" of rcpm node defines the
> +                * number of IPPDEXPCR register cells, and "fsl,rcpm-wakeup"
> +                * of wakeup source IP contains an integer array: <phandle to
> +                * RCPM node, IPPDEXPCR0 setting, IPPDEXPCR1 setting,
> +                * IPPDEXPCR2 setting, etc>.
> +                *
> +                * So we will go thought them and do programming accordngly.
> +                */
> +               for (i = 0; i < rcpm->wakeup_cells; i++) {
> +                       u32 tmp = value[i + 1];
> +                       void __iomem *address = base + i * 4;
> +
> +                       if (!tmp)
> +                               continue;
> +
> +                       /* We can only OR related bits */
> +                       if (rcpm->little_endian) {
> +                               tmp |= ioread32(address);
> +                               iowrite32(tmp, address);
> +                       } else {
> +                               tmp |= ioread32be(address);
> +                               iowrite32be(tmp, address);
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

For the above:

Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
