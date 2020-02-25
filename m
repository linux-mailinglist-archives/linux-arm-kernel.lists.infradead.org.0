Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CF516EC1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:07:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqhawJIKB15Rql5vRH0uQj4XrUmiBAchijtXGrnrel0=; b=GzVqI8hhlpj5Bu
	QFRj1hPvjLXCJyuFG5WhYEiyWWuWaylQgjN6e+tJRwmo07pNe4GTV2qBPKEB1hDCk+rJ4D2RJz2G2
	ytKXBZkUBandc236BiDNiM4PhVg0NBFhw53LQRHIFaXxWwda9Jpc0mzKU5s2TZeY3h3S2pqi7Kjbo
	ZKbHZjJg/Om5zb8NtwIO99gBlmx0EmALI4vbbDGki0oL1cVyRmpu9hwGTa4msTMQr0ILMwrErVJWS
	ibHF/c1WHkr1jhKLjGtQQ0rDIgKCtRHXsj70SdkLA8vVlNrllsry4h+ga4c/x16qJCck6MnrMBcwF
	S5vE6pgacPkYTaBQpaBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dgA-0004cK-Dl; Tue, 25 Feb 2020 17:07:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dfv-0004bW-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:07:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id h8so131730iob.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wDkYDOLSno1jtW2CWfmCP76IG3dvTgmOGWMf5lLcdww=;
 b=A9gL/+syFfZTVNEi31XUynXOd0KnibYpeBpUB7lqcmCTUSVrICaZs0OkQgKBvIaB4w
 E8hMl4/yFW/gH7q2wyx3MhHjMO1pGi3GP51sMdNc4K2dUtZmJRr0Za9qHp9l5Dq/VpWS
 857KPyh+pS3WJP2AXkniPZgotPTQdNY0LxFZUP/mn5mutO3oVbt+NUjHEowVqL4UFG/E
 2e/oDW6rE11+FxI8oVk0tFXpV3Y5+fDsMRSax1S5zTLGh6ljKzOiS3yX+/2vNfPeJBb5
 TbWcJZPtyn2qV7z6MYJjGc/5/j/Xw/HImpHFCVb0Mld5ak1x/ysrXv3sMQRdtfnyweTd
 ULcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wDkYDOLSno1jtW2CWfmCP76IG3dvTgmOGWMf5lLcdww=;
 b=qHIfDuxZMUwQ2P+/Xtle6Nl/bplM0+xAplocUtSO63KIcCEZjCQvOANxNBF1RWtgMb
 Cb/p39y1dxQHLDo1Qatv0IgUroAGtdp0an4zvZYfsDLX/rADPSAU3dHHtzjg0k+K+SvQ
 Qi0qkwPGojdspo2AzFevXmI2uZFpiZMaG8uf0j7fP28FbCACz7Pt3JGUH2XFzcIcp+iF
 9fe1Wl+wiVC8FblMRLWY6QmOIicoWxOI1u8Z7asZ9WCFykzlWqXNqrwqa6BNU7c1glCc
 ShBuzliF6lhoET7z9RDF/4oaF6er9MjKJoKNxmmXIgm24oTHqkDikHhn4uh3VqT160fY
 b+rw==
X-Gm-Message-State: APjAAAUu4uilA/6/vxU0gAhJgjdfkh2dXZgUzmuxUAKb8MrY2iEh0+Gt
 1MWzsPmAK873CJNAtV4uFGHWvFwTYEK8bmfwzQgefAQS
X-Google-Smtp-Source: APXvYqxh+hLeSVtGRXYPqSUmTR//Aea0cTyMPSK9uUG2QetcVXRqrgpF/TV/fQD69QV4auRe1/cUhdfZ6y6V1oOg04E=
X-Received: by 2002:a6b:4e13:: with SMTP id c19mr67073iob.58.1582650433111;
 Tue, 25 Feb 2020 09:07:13 -0800 (PST)
MIME-Version: 1.0
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-4-mike.leach@linaro.org>
 <20200214231706.GD20024@xps15>
 <CAJ9a7VhmRLm8BS4rAOnZL202zXg7rpeTH454y=bbSurH8WG6sA@mail.gmail.com>
In-Reply-To: <CAJ9a7VhmRLm8BS4rAOnZL202zXg7rpeTH454y=bbSurH8WG6sA@mail.gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 25 Feb 2020 10:07:02 -0700
Message-ID: <CANLsYkx+hX9MaJc3xqk-AqmUdKPJDGrO-fQH_a4d-Bn4FifSOQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] coresight: Add generic sysfs link creation
 functions.
To: Mike Leach <mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_090716_030171_B93AA75C 
X-CRM114-Status: GOOD (  31.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Feb 2020 at 08:46, Mike Leach <mike.leach@linaro.org> wrote:
>
> Hi Mathieu,
>
> On Fri, 14 Feb 2020 at 23:17, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > On Tue, Feb 11, 2020 at 10:58:05AM +0000, Mike Leach wrote:
> > > To allow the connections between coresight components to be represented
> > > in sysfs, generic methods for creating sysfs links between two coresight
> > > devices are added.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > ---
> > >  drivers/hwtracing/coresight/Makefile          |   3 +-
> > >  drivers/hwtracing/coresight/coresight-priv.h  |   4 +
> > >  drivers/hwtracing/coresight/coresight-sysfs.c | 124 ++++++++++++++++++
> > >  include/linux/coresight.h                     |  20 +++
> > >  4 files changed, 150 insertions(+), 1 deletion(-)
> > >  create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c
> > >
> > > diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
> > > index 0e3e72f0f510..19497d1d92bf 100644
> > > --- a/drivers/hwtracing/coresight/Makefile
> > > +++ b/drivers/hwtracing/coresight/Makefile
> > > @@ -2,7 +2,8 @@
> > >  #
> > >  # Makefile for CoreSight drivers.
> > >  #
> > > -obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
> > > +obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o \
> > > +                        coresight-platform.o coresight-sysfs.o
> > >  obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
> > >                                            coresight-tmc-etf.o \
> > >                                            coresight-tmc-etr.o
> > > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > > index 1cad642f27aa..a4a658d46045 100644
> > > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > > @@ -153,6 +153,10 @@ struct coresight_device *coresight_get_sink_by_id(u32 id);
> > >  struct list_head *coresight_build_path(struct coresight_device *csdev,
> > >                                      struct coresight_device *sink);
> > >  void coresight_release_path(struct list_head *path);
> > > +int coresight_add_sysfs_link(struct coresight_sysfs_link *info);
> > > +void coresight_remove_sysfs_link(struct coresight_sysfs_link *info);
> > > +int coresight_create_conns_sysfs_group(struct coresight_device *csdev);
> > > +void coresight_remove_conns_sysfs_group(struct coresight_device *csdev);
> > >
> > >  #ifdef CONFIG_CORESIGHT_SOURCE_ETM3X
> > >  extern int etm_readl_cp14(u32 off, unsigned int *val);
> > > diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
> > > new file mode 100644
> > > index 000000000000..17d565941e5e
> > > --- /dev/null
> > > +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> > > @@ -0,0 +1,124 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Copyright (c) 2019, Linaro Limited, All rights reserved.
> > > + * Author: Mike Leach <mike.leach@linaro.org>
> > > + */
> > > +
> > > +#include <linux/device.h>
> > > +#include <linux/kernel.h>
> > > +
> > > +#include "coresight-priv.h"
> > > +
> > > +/*
> > > + * Connections group - links attribute.
> > > + * Count of created links between coresight components in the group.
> > > + */
> > > +static ssize_t nr_links_show(struct device *dev,
> > > +                          struct device_attribute *attr,
> > > +                          char *buf)
> > > +{
> > > +     struct coresight_device *csdev = to_coresight_device(dev);
> > > +
> > > +     return scnprintf(buf, PAGE_SIZE, "%d\n", csdev->nr_links);
> > > +}
> > > +static DEVICE_ATTR_RO(nr_links);
> > > +
> > > +static struct attribute *coresight_conns_attrs[] = {
> > > +     &dev_attr_nr_links.attr,
> > > +     NULL,
> > > +};
> > > +
> > > +static struct attribute_group coresight_conns_group = {
> > > +     .attrs = coresight_conns_attrs,
> > > +     .name = "connections",
> > > +};
> > > +
> > > +/*
> > > + * Create connections group for CoreSight devices.
> > > + * This group will then be used to collate the sysfs links between
> > > + * devices.
> > > + */
> > > +int coresight_create_conns_sysfs_group(struct coresight_device *csdev)
> > > +{
> > > +     int ret = 0;
> > > +
> > > +     if (!csdev)
> > > +             return -EINVAL;
> > > +
> > > +     ret = sysfs_create_group(&csdev->dev.kobj, &coresight_conns_group);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     csdev->has_conns_grp = true;
> >
> > The only place coresight_create_conns_sysfs_group() is used is in
> > coresight_register() where an error is returned to driver probe() functions if
> > an error occurs.  Have you found places where csdev->has_conns_grp is needed?
> > If not please remove.
> >
>
> There is a sequence of calls in coresight_register() which occur after
> the coresight_create_conns_sysfs_group() -
> any one of which may throw an error resulting in an immediate
> coresight_unregister() and hence
> coresight_release_platform_data() => coresight_remove_conns_sysfs_group().
> There is also an alternate path through coresight_register() which
> also results in coresight_release_platform_data() occurring before we
> have created the group.
> The flag ensures that both paths clean up the sysfs connection data
> correctly and safely.

I see the real problem is with the WARN() that is thrown in
sysfs_remove_group() when a group has not been created, and we can't
have that.  I think what you did is fine.

Mathieu

>
> Regards
>
> Mike
>
> > > +     return ret;
> > > +}
> > > +
> > > +void coresight_remove_conns_sysfs_group(struct coresight_device *csdev)
> > > +{
> > > +     if (!csdev)
> > > +             return;
> > > +
> > > +     if (csdev->has_conns_grp) {
> > > +             sysfs_remove_group(&csdev->dev.kobj, &coresight_conns_group);
> > > +             csdev->has_conns_grp = false;
> > > +     }
> > > +}
> > > +
> > > +int coresight_add_sysfs_link(struct coresight_sysfs_link *info)
> > > +{
> > > +     int ret = 0;
> > > +
> > > +     if (!info)
> > > +             return -EINVAL;
> > > +     if (!info->orig || !info->target ||
> > > +         !info->orig_name || !info->target_name)
> > > +             return -EINVAL;
> > > +     if (!info->orig->has_conns_grp || !info->target->has_conns_grp)
> > > +             return -EINVAL;
> > > +
> > > +     /* first link orig->target */
> > > +     ret = sysfs_add_link_to_group(&info->orig->dev.kobj,
> > > +                                   coresight_conns_group.name,
> > > +                                   &info->target->dev.kobj,
> > > +                                   info->orig_name);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     /* second link target->orig */
> > > +     ret = sysfs_add_link_to_group(&info->target->dev.kobj,
> > > +                                   coresight_conns_group.name,
> > > +                                   &info->orig->dev.kobj,
> > > +                                   info->target_name);
> > > +
> > > +     /* error in second link - remove first - otherwise inc counts */
> > > +     if (ret) {
> > > +             sysfs_remove_link_from_group(&info->orig->dev.kobj,
> > > +                                          coresight_conns_group.name,
> > > +                                          info->orig_name);
> > > +     } else {
> > > +             info->orig->nr_links++;
> > > +             info->target->nr_links++;
> > > +     }
> > > +
> > > +     return ret;
> > > +}
> > > +
> > > +void coresight_remove_sysfs_link(struct coresight_sysfs_link *info)
> > > +{
> > > +     if (!info)
> > > +             return;
> > > +     if (!info->orig || !info->target ||
> > > +         !info->orig_name || !info->target_name)
> > > +             return;
> > > +
> > > +     sysfs_remove_link_from_group(&info->orig->dev.kobj,
> > > +                                  coresight_conns_group.name,
> > > +                                  info->orig_name);
> > > +
> > > +     sysfs_remove_link_from_group(&info->target->dev.kobj,
> > > +                                  coresight_conns_group.name,
> > > +                                  info->target_name);
> > > +
> > > +     info->orig->nr_links--;
> > > +     info->target->nr_links--;
> > > +}
> > > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > > index 193cc9dbf448..a2ec25e02ca9 100644
> > > --- a/include/linux/coresight.h
> > > +++ b/include/linux/coresight.h
> > > @@ -148,6 +148,20 @@ struct coresight_connection {
> > >       struct coresight_device *child_dev;
> > >  };
> > >
> > > +/**
> > > + * struct coresight_sysfs_link - representation of a connection in sysfs.
> > > + * @orig:            Originating (master) coresight device for the link.
> > > + * @orig_name:               Name to use for the link orig->target.
> > > + * @target:          Target (slave) coresight device for the link.
> > > + * @target_name:     Name to use for the link target->orig.
> > > + */
> > > +struct coresight_sysfs_link {
> > > +     struct coresight_device *orig;
> > > +     const char *orig_name;
> > > +     struct coresight_device *target;
> > > +     const char *target_name;
> > > +};
> > > +
> > >  /**
> > >   * struct coresight_device - representation of a device as used by the framework
> > >   * @pdata:   Platform data with device connections associated to this device.
> > > @@ -165,6 +179,9 @@ struct coresight_connection {
> > >   * @ea:              Device attribute for sink representation under PMU directory.
> > >   * @ect_dev: Associated cross trigger device. Not part of the trace data
> > >   *           path or connections.
> > > + * @nr_links:   number of sysfs links created to other components from this
> > > + *           device. These will appear in the "connections" group.
> > > + * @has_conns_grp: Have added a "connections" group for sysfs links.
> > >   */
> > >  struct coresight_device {
> > >       struct coresight_platform_data *pdata;
> > > @@ -180,6 +197,9 @@ struct coresight_device {
> > >       struct dev_ext_attribute *ea;
> > >       /* cross trigger handling */
> > >       struct coresight_device *ect_dev;
> > > +     /* sysfs links between components */
> > > +     int nr_links;
> > > +     bool has_conns_grp;
> > >  };
> >
> > With the above:
> >
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >
> > >
> > >  /*
> > > --
> > > 2.17.1
> > >
>
>
>
> --
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
