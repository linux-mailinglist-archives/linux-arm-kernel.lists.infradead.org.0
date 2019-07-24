Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EF0728CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mqtc1FDcTAFRuRr7nyvzCmFulr1D3xT6kCmsfF2oQ8=; b=SpU36vPYQnGkkR
	o4olYPiRy2AMG0KQSB33CeKMG0hHPFy1rQ/FTKnSYK/wUrmxYzvEWfzdRMGORPkBOSRkUbAqQFl3h
	cRbCsp43uZlLkaWe21/REXZkCMCXRisYBticckERJBAC/HxbFu/ZB4psmgDOSJesXIZ/dWpHiMMLd
	jxe1jtNKjjFfFY2QgPUzjvHiGEjfd/UWi0zT9loldwrYQ8hWC4v/pymem9lcxZVKNHqnT/9/3fMhT
	SQdWQO/QT13c3oqJ0g1yP3amaRd2ECDEyb8FADDdzK6jS5FVXaDKS6X6OIJxHQvgrJiZtPkg3OtHK
	cXexB6ZOlp8OX+BwGqRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBMO-0006wS-TY; Wed, 24 Jul 2019 07:06:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBKX-00065W-Db
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:05:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id f17so40516704wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 00:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SgB/LN6qxAiqZqDXD7MESa7fWo999T9KOe+bNiah86o=;
 b=fUzlEFxNZnKWldkB/3DAtX/BaMGxHoTAiL9k/3WWXLrH8fjFtZjQbroFWwfMrmG2pl
 1VwKV6XUjnRU/gHMh28BtnQVrzUXc2XEQZN7wzfBd8c+u+AaGdMcwrvl/nmJefNe+XOg
 gxXaayL/BxUpZ+Nom8MZLJpb0TeacnqvLBQjm0RpqYcuT8Y/Gj9aBzbD3kaBZPzjzY/L
 JWkF9+AOZWlgy71IXap2b5x2ldWTrVvsMnVs1xOAJm0m+LepYaL2Jh8nwyuUS0NEkyaX
 NFEzAOq82uhHBwknpWHjL9qdIyvF60UDzNycQ0qGQ0b0tfSyQXYfZv9nGlICB2//ofed
 Pwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SgB/LN6qxAiqZqDXD7MESa7fWo999T9KOe+bNiah86o=;
 b=KdRMwuZFW6U0MBw3CenI4wpDzm/nJmj0pYH1AjHqG9mkh3lVghi23ujRohPMZVqJnH
 musHFWy4G5t5QU01C9LntWX1ixX0bfaX5zF1nrTIKSt+rzUxbBC6ZM4WHkkmTzko6Z9L
 BgdaKFoGkwrimoyqgFJNZgWM09It6tfwfddl5dh6d7uZrgkL3lsliYDdjMxc02CkSrE1
 8f54ztoa/kKSe8tYiJ8aAkZJLJPl0pVdYcqgqykYojKIN9A6NUle59MHvL1CHVRkQQdg
 NZRPle7KwHRTFJzqTRglyFz2taP15iEbhq3b4Bia1ycvnPFhh3KbRPcYfnZAX8r5k2SI
 DgCw==
X-Gm-Message-State: APjAAAU1wzrrbT0s/k04ug7d2j14O5hsyYDrQwLuvRY77GlmcbQqG/69
 WZh/5A+3bcPQDBieat8XyVSjJHQAJeWDrXQem0AhTPqgDisldw==
X-Google-Smtp-Source: APXvYqwujrjuUCST+4uHnfpiYapTDsc3Rcz/pOsAMrXR8roxISrHIXdcPXz2AvuYfVD9HHTRiTzbd0DLEH+IWal/aSI=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr71152413wmc.25.1563951889935; 
 Wed, 24 Jul 2019 00:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-4-daniel.baluta@nxp.com>
 <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
In-Reply-To: <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 24 Jul 2019 10:04:38 +0300
Message-ID: <CAEnQRZDr+gj_eiESLNbVUVy1rreRE1nnDgtb3g=CjaRF5Aq9Vw@mail.gmail.com>
Subject: Re: [Sound-open-firmware] [PATCH v2 3/5] ASoC: SOF: Add DT DSP device
 support
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_000454_949624_A889B612 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 6:19 PM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
>
>
> > diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
> > index 61b97fc55bb2..2aa3a1cdf60c 100644
> > --- a/sound/soc/sof/Kconfig
> > +++ b/sound/soc/sof/Kconfig
> > @@ -36,6 +36,15 @@ config SND_SOC_SOF_ACPI
> >         Say Y if you need this option
> >         If unsure select "N".
> >
> > +config SND_SOC_SOF_DT
> > +     tristate "SOF DT enumeration support"
> > +     select SND_SOC_SOF
> > +     select SND_SOC_SOF_OPTIONS
> > +     help
> > +       This adds support for Device Tree enumeration. This option is
> > +       required to enable i.MX8 devices.
> > +       Say Y if you need this option. If unsure select "N".
> > +
>
> [snip]
>
> > diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> > index fff64a9970f0..fa35994a79c4 100644
> > --- a/sound/soc/sof/imx/Kconfig
> > +++ b/sound/soc/sof/imx/Kconfig
> > @@ -12,6 +12,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
> >
> >   config SND_SOC_SOF_IMX8
> >       tristate "SOF support for i.MX8"
> > +     select SND_SOC_SOF_DT
>
> This looks upside down. You should select SOF_DT first then include the
> NXP stuff.
>
> >       help
> >             This adds support for Sound Open Firmware for NXP i.MX8 platforms
> >             Say Y if you have such a device.
> > diff --git a/sound/soc/sof/sof-dt-dev.c b/sound/soc/sof/sof-dt-dev.c
> > new file mode 100644
> > index 000000000000..31429bbb5c7e
> > --- /dev/null
> > +++ b/sound/soc/sof/sof-dt-dev.c
> > @@ -0,0 +1,159 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> > +//
> > +// Copyright 2019 NXP
> > +//
> > +// Author: Daniel Baluta <daniel.baluta@nxp.com>
> > +//
> > +
> > +#include <linux/firmware.h>
> > +#include <linux/module.h>
> > +#include <linux/pm_runtime.h>
> > +#include <sound/sof.h>
> > +
> > +#include "ops.h"
> > +
> > +extern struct snd_sof_dsp_ops sof_imx8_ops;
> > +
> > +static char *fw_path;
> > +module_param(fw_path, charp, 0444);
> > +MODULE_PARM_DESC(fw_path, "alternate path for SOF firmware.");
> > +
> > +static char *tplg_path;
> > +module_param(tplg_path, charp, 0444);
> > +MODULE_PARM_DESC(tplg_path, "alternate path for SOF topology.");
> > +
> > +/* platform specific devices */
> > +#if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
> > +static struct sof_dev_desc sof_dt_imx8qxp_desc = {
> > +     .default_fw_path = "imx/sof",
> > +     .default_tplg_path = "imx/sof-tplg",
> > +     .nocodec_fw_filename = "sof-imx8.ri",
> > +     .nocodec_tplg_filename = "sof-imx8-nocodec.tplg",
> > +     .ops = &sof_imx8_ops,
> > +};
> > +#endif
> > +
> > +static const struct dev_pm_ops sof_dt_pm = {
> > +     SET_SYSTEM_SLEEP_PM_OPS(snd_sof_suspend, snd_sof_resume)
> > +     SET_RUNTIME_PM_OPS(snd_sof_runtime_suspend, snd_sof_runtime_resume,
> > +                        NULL)
> > +};
> > +
> > +static void sof_dt_probe_complete(struct device *dev)
> > +{
> > +     /* allow runtime_pm */
> > +     pm_runtime_set_autosuspend_delay(dev, SND_SOF_SUSPEND_DELAY_MS);
> > +     pm_runtime_use_autosuspend(dev);
> > +     pm_runtime_enable(dev);
> > +}
> > +
> > +static int sof_dt_probe(struct platform_device *pdev)
> > +{
> > +     struct device *dev = &pdev->dev;
> > +     const struct sof_dev_desc *desc;
> > +     /*TODO: create a generic snd_soc_xxx_mach */
> > +     struct snd_soc_acpi_mach *mach;
>
> I wonder if you really need to use the same structures. For Intel we get
> absolutely zero info from the firmware so rely on an ACPI codec ID as a
> key to find information on which firmware and topology to use, and which
> machine driver to load. You could have all this information in a DT blob?

Yes. I see your point. I will still need to make a generic structure for
snd_soc_acpi_mach so that everyone can use sof_nocodec_setup function.

Maybe something like this:

struct snd_soc_mach {
  union {
  struct snd_soc_acpi_mach acpi_mach;
  struct snd_soc_of_mach of_mach;
  }
};

and then change the prototype of sof_nocodec_setup.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
