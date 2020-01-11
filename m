Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457221382D3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 19:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sxedgbx2OyxEooVfhXqOtYjOnT1yZwFw5tNDGJFuvos=; b=SgvoEpjloPeJ4S
	fCZoGFaiOt1zOXpc7OdLhOTFPmaJ+fV4v33LYS/gbaplNg21gtg6t4DalWSGhkIMp5A+ennRsQTOz
	2NNtXvgfqdR9l5HNV9aoZ6q2zpk0mBX9TWtaJKgoq3uqQp1AiyWvy2CiyqgwtBX0mFxT23WkT3l6u
	n63+XYdUFGAuVAPoD4oCy6MH1iYJP4tIvtWT3aSkYBvIET/3FiYeOOGZ1kUlSUA937jMONKllEjbD
	BG5IubWCR+tljZS6xApjlDqpfmz8gb4UZBpedOZmw4tXIQ30/ZAW/y0w4pMkQbD0HCqu/c4KZgzsM
	HsQ3SVJF4CC7C8wBMAFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqLC5-0000rT-MW; Sat, 11 Jan 2020 18:09:05 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqLBv-0000qW-1p
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 18:08:56 +0000
Received: by mail-io1-xd42.google.com with SMTP id k24so5471476ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Jan 2020 10:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LxEfZVuKcxp3lKlqmcOPSjzFzX8DHgPZfgnHNhakRIk=;
 b=uXf7aj4uxzdtK98Be7+5fY9hUHyvziolk+Bu3NXJ9VScPYkbhgVDSvI9ZbgCZivl8H
 ntFR95w/cNgy6ZOR+3DMyWhLVs9NuoC98owtR8tV6jtr4lQsG19LHCuvFysqXyMXEzc0
 Ehc2TGAYOstpt2ManacsW+S1tokHSaqkikyTeq2ASqUWSxfXeWVAnxzGCm1GXXtbeAOj
 34mSD88BnGgCU/priJG/utUt1b8bnF/A0FFkYf3gGUxu3a8SAwBxpHkyEXOgXmkkgJa0
 +GWWtt3iS2jBZbW5qbAP2/NVvjkbCeFUW3s9Kyt1LQm494fqs9pTt+OWHu+HgnuWVmz3
 rR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LxEfZVuKcxp3lKlqmcOPSjzFzX8DHgPZfgnHNhakRIk=;
 b=BT33PL94D6jM3M3oNCJwXmY9fCoSTY9zU6UyYuKXN+S/yBuRONwDA0Ieikz1k5zjwP
 vBYrP5PW76RJco49k5HGEgpz++eNFOxzYOGHN0pZRstfhpC9XDeBLzpboU0xGjUcelSE
 Sm997my3KtbTsjd7Cp3UgejkOrQzRIML7BoLEgDHuVoUWZ+pQc4Am+s+f3mk1wPDEvxw
 tkD9S4cH5guNLiIl+VDXDpRG4Z+/ob3Xn0eFh8sgIqdtPefRIdY3itLEUA9W6kK0zbAR
 uVtgSkRmEx2k48ILIBROE9uD4EjfBUtFBA/x3OEbD0m/rgSHKuzAQ0kEqTQ+OXUp/hgs
 +uew==
X-Gm-Message-State: APjAAAU4A9SPHuh8K7A4rxHQ9hJEa5uzDT+gDcjFQmydB0tNsrma4NQk
 aDwgQHL/h8loKfKJNKoNF2IdaPbdNoWhGEDVVyk=
X-Google-Smtp-Source: APXvYqzCj23bUTd0TfMnW5RxTPfgpVC+rKfdgos2E1GVp0devff9RGnkC3LcLyqJnsaC92pMz3Tqc2qko1y5sonQCLo=
X-Received: by 2002:a6b:c410:: with SMTP id y16mr6781848ioa.18.1578766133521; 
 Sat, 11 Jan 2020 10:08:53 -0800 (PST)
MIME-Version: 1.0
References: <20191228171904.24618-1-tiny.windzz@gmail.com>
 <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
 <CAEExFWtkPBhqT-wteE0_bC=QqaTyuvAcj_4SMOLjYAdc6p4tkg@mail.gmail.com>
 <CAGb2v673PM_3QazNWBKYd=4pumyyyE3XFmwa4LY7qFt2=QwEVQ@mail.gmail.com>
In-Reply-To: <CAGb2v673PM_3QazNWBKYd=4pumyyyE3XFmwa4LY7qFt2=QwEVQ@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 12 Jan 2020 02:08:42 +0800
Message-ID: <CAEExFWtaeiX0bq6VO5294w8vCtnnNDDB0HA_nvR19adg=KFANQ@mail.gmail.com>
Subject: Re: [PATCH] thermal: sun8i: Add hwmon support
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_100855_101858_76C9497F 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 11:15 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Jan 7, 2020 at 12:14 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > HI Chen-Yu.
> >
> > On Mon, Jan 6, 2020 at 12:32 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > >
> > > On Sun, Dec 29, 2019 at 1:19 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
> > > >
> > > > Expose sun8i thermal as a HWMON device.
> > > >
> > > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > > ---
> > > >  drivers/thermal/sun8i_thermal.c | 6 ++++++
> > > >  1 file changed, 6 insertions(+)
> > > >
> > > > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > > > index 23a5f4aa4be4..619e75cb41b0 100644
> > > > --- a/drivers/thermal/sun8i_thermal.c
> > > > +++ b/drivers/thermal/sun8i_thermal.c
> > > > @@ -20,6 +20,8 @@
> > > >  #include <linux/slab.h>
> > > >  #include <linux/thermal.h>
> > > >
> > > > +#include "thermal_hwmon.h"
> > > > +
> > > >  #define MAX_SENSOR_NUM 4
> > > >
> > > >  #define FT_TEMP_MASK                           GENMASK(11, 0)
> > > > @@ -477,6 +479,10 @@ static int sun8i_ths_register(struct ths_device *tmdev)
> > > >                                                              &ths_ops);
> > > >                 if (IS_ERR(tmdev->sensor[i].tzd))
> > > >                         return PTR_ERR(tmdev->sensor[i].tzd);
> > > > +
> > > > +               if (devm_thermal_add_hwmon_sysfs(tmdev->sensor[i].tzd))
> > > > +                       dev_warn(tmdev->dev,
> > > > +                                "Failed to add hwmon sysfs attributes\n");
> > >
> > > Maybe you want a hard failure instead?
> >
> > I don't quite understand what you mean.
> > What do you think should be done?
>
> Return an error instead of just printing a warning.

Sometimes, even if hwmon fails to add, it can still work as a thermal driver.
At this time, I don't really want to interrupt the registration of the
thermal driver.

Anyone else's opinion here?

Yours,
Ynagtao

>
> ChenYu
>
> > MBR,
> > Yangtao
> >
> > >
> > > ChenYu
> > >
> > > >         }
> > > >
> > > >         return 0;
> > > > --
> > > > 2.17.1
> > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
