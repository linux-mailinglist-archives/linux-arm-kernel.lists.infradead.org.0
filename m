Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE2BFDF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsPm/3mqgfHiiG8TIor4fpPW+SVVnMtMzq8xg4dxnPw=; b=Ec1lazTJ+hdw3f
	duSS+HmptBgWA3jMeSsB0hFxwxsMTnMzIvn4dBljf7spcVyUbbMpLiWvN7tVRLRcHwvGpm3uWzEjg
	HM/KcQMJBfR2kfh2ZTaRU7O15Qpm4Sbx3Q9+CM0q2fzpnB7y/+H5sdyP+6bdbwJXqjWVgPamA1NbA
	wRkxW4XQ4EgmY2V9KJdNFigDilbbRbokZ2j7p754Ygd89u0ZKSfmqRkmQSAXocjf2OtaTm00BWHHT
	HH1oAzCroaaleDSHdJK4D1+JDnberaynGrI2tS2xQDeRhqxPE6ufwdqHoQBzaMT5IJKfNVqBr44Np
	e2hCVm9PFaDx1DTdxJvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVf5-0006Bw-Iv; Tue, 30 Apr 2019 16:31:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVeH-0005PU-Li
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:30:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi2so2186395plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=42TxqEwaxIKdbqbYpo6K4IuBy7auUCN8dCTPz6kwS3Y=;
 b=cjIsh610oGurHp9tgtxwXC0QhmZDrQMZOXT7/Uft9jFisFaTR0aaD5TBLp6+Zp3g20
 iprnt0tglOn2koUfsoDu5ihRT76g5lK+SXafGq4YJEAUc+gSwNUrp45Fs1AyOxV1M3l3
 U6BVlNx4Tq/vbH/0VDDO7IvYWvBKWBMt2jCQlM6cHUC7oAg03Uq9a6b41HSeg6HbhNiy
 bPbpwiC2/d5fuD8ba+KJVF060/e4Ar9p4tqggImpoo9UE9cg38+di2str93Bc+9hDa13
 RWfH6yQNc+Mbz/TQb3qgpYJfCzE3B1JNPLS7Yw/XFj6Nx46P350s1Q/pQwd95+WqZHIr
 pipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=42TxqEwaxIKdbqbYpo6K4IuBy7auUCN8dCTPz6kwS3Y=;
 b=kyYyq1cIzeJHVsW755tUmA3ySsirUkTTiuNe/5DIxR8c/VbqUsomQFyBeoRidP/agj
 rOn5JjTkDchgF2EDENPZ0bB7ujzUEd7g83Ntb0Lb4UqQC+4hlfhigOKV30tpcLNn55dC
 HAVPqVa2zY28Gcbc0I0GuCs27+TmvaJmrBSphRjmR1t+hZdhGb5OCs3mt3GihXfHsAME
 NFwR1j4Y48FY6RACnT9r3AUjVYhV+cNfUckzHDgs4Zvct5izqsy9HbAfQBjnIyX3pGpt
 iBR/m4O2hb6ZEr3MwsoSarzuuEnzLuxhHSNXYa9/r/NDLy1HyCTTh41awyL4aSiowPhK
 gYmQ==
X-Gm-Message-State: APjAAAUXutUb3pkE2uL4C0knByZFvwi9HDrJZm9oW7lBXM6UbgRk1soH
 LjEeOspiwHmr2nvl30KWCM6BKPOCrsZafc+tLnU=
X-Google-Smtp-Source: APXvYqyXab738Odf5A0Sa3zKpysPLC8zk+iApwq2bjCFdw+6+z6x3W1u0YIcG8FPQ0PqkekbJi5ueSxa+seExEzMRaM=
X-Received: by 2002:a17:902:3064:: with SMTP id
 u91mr26845533plb.181.1556641828432; 
 Tue, 30 Apr 2019 09:30:28 -0700 (PDT)
MIME-Version: 1.0
References: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
 <1556556252-22868-2-git-send-email-Frank.Li@nxp.com>
 <20190430105124.GA16204@fuggles.cambridge.arm.com>
In-Reply-To: <20190430105124.GA16204@fuggles.cambridge.arm.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Tue, 30 Apr 2019 11:30:17 -0500
Message-ID: <CAHrpEqTqf2TFjrgdbu8RpYY6RKeJdX2Sz7yj+0-k5hE1gUCJ8w@mail.gmail.com>
Subject: Re: [PATCH V9 2/4] drivers/perf: imx_ddr: Add ddr performance counter
 support
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_093030_394543_05EBDE9D 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lznuaa[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 5:51 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Mon, Apr 29, 2019 at 04:44:32PM +0000, Frank Li wrote:
> > diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> > new file mode 100644
> > index 0000000..087d75a
> > --- /dev/null
> > +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> > @@ -0,0 +1,589 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2017 NXP
> > + * Copyright 2016 Freescale Semiconductor, Inc.
> > + */
> > +
> > +#include <linux/init.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/io.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_address.h>
> > +#include <linux/of_device.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/perf_event.h>
> > +#include <linux/slab.h>
> > +
> > +#define COUNTER_CNTL         0x0
> > +#define COUNTER_READ         0x20
> > +
> > +#define COUNTER_DPCR1                0x30
> > +
> > +#define CNTL_OVER            0x1
> > +#define CNTL_CLEAR           0x2
> > +#define CNTL_EN                      0x4
> > +#define CNTL_EN_MASK         0xFFFFFFFB
> > +#define CNTL_CLEAR_MASK              0xFFFFFFFD
> > +#define CNTL_OVER_MASK               0xFFFFFFFE
> > +
> > +#define CNTL_CSV_SHIFT               24
> > +#define CNTL_CSV_MASK                (0xFF << CNTL_CSV_SHIFT)
> > +
> > +#define EVENT_CYCLES_ID              0
> > +#define EVENT_CYCLES_COUNTER 0
> > +#define NUM_COUNTERS         4
> > +
> > +#define to_ddr_pmu(p)                container_of(p, struct ddr_pmu, pmu)
> > +
> > +#define DDR_PERF_DEV_NAME    "ddr_perf"
>
> This is far too generic. Please make it something like "imx8_ddr_perf_pmu".
>
> > +static int ddr_perf_probe(struct platform_device *pdev)
> > +{
> > +     struct ddr_pmu *pmu;
> > +     struct device_node *np;
> > +     void __iomem *base;
> > +     struct resource *iomem;
> > +     char *name;
> > +     char *hpname;
> > +     int num;
> > +     int ret;
> > +     int irq;
> > +
> > +     iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +     base = devm_ioremap_resource(&pdev->dev, iomem);
> > +     if (IS_ERR(base))
> > +             return PTR_ERR(base);
> > +
> > +     np = pdev->dev.of_node;
> > +
> > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > +     if (!pmu)
> > +             return -ENOMEM;
> > +
> > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > +
> > +     platform_set_drvdata(pdev, pmu);
> > +
> > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "ddr%d", num);
> > +     if (!name)
> > +             return -ENOMEM;
> > +
> > +     hpname = devm_kasprintf(&pdev->dev, GFP_KERNEL,
> > +                             "perf/imx/ddr%d:online", num);
> > +     if (!hpname)
> > +             return -ENOMEM;
> > +
> > +     pmu->cpu = raw_smp_processor_id();
> > +     ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, hpname, NULL,
> > +                                      ddr_perf_offline_cpu);
>
> This doesn't seem right to me. My understanding of the cpuhp mechanism
> is that you register a single multi-instance state as part of driver
> initialisation, and then add an instance for each device you probe.
> That means you don't need to kasprintf the callback name as you are above --
> you can just use DDR_PERF_DEV_NAME instead.
>
> Please see how other perf drivers manage this on my for-next/perf branch.
>
> > +
> > +     if (ret < 0) {
> > +             dev_err(&pdev->dev, "cpuhp_setup_state_multi failed\n");
> > +             goto ddr_perf_err;
> > +     }
> > +
> > +     pmu->cpuhp_state = ret;
> > +
> > +     /* Register the pmu instance for cpu hotplug */
> > +     cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> > +
> > +     ret = perf_pmu_register(&pmu->pmu, name, -1);
>
> Again, the string you're passing in here is too generic. I suggest taking
> DDR_PERF_DEV_NAME and adding "_%d" to the end to paste in your 'num'
> identifier.
>
> Sorry if this feels like pedantry, but this gets exposed to userspace
> via sysfs, so we need to be careful with the namespace.

imx8_ddr_perf_pmu is too long to use.  how about imx_ddr%d?

best regards
Frank Li

>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
