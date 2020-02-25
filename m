Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EC416EA62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AoYHtYW9kcJTWRwNokwsQE3Pdo8xfLym1O3HIEMjVE=; b=hhzhFbII4S8yX0
	7j5Q4eqkTJMD2zuKcpg8g1NP5qfivES5ZowBBaIXBGo8t6bfHN3gtz8MwefnTNFQnBxaPIG+IbBZY
	KRj7ib4MMnc5G/u2wj2LR+TRtBOoFh2f3rR6MdW46w23q6ytNpXZoGbUWXATQ37fUyo5lvESfrBAp
	AwL6MieOCxjk474H1usTqPK+2uoT/xN/Xj1ntMcd4w9R0+J87oLkf+/iSCqBDOO3Q6PHIrsccdCtl
	KDfSqxFm47uhWPUppLWkEv173Cq9HOqpazJt5ceXbiouSozytB8WMmGFcViRFzW6FvKJcYDHCPTzU
	dC5vD6QHSrZx3IBThbHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cPl-0002o4-IH; Tue, 25 Feb 2020 15:46:29 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cPZ-0002n0-C8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:46:21 +0000
Received: by mail-qt1-x844.google.com with SMTP id l16so9346436qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 07:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pEZQcw9jdNIyRgx/1d69GLN8AZtR3YeLDjX3xwRN5v8=;
 b=Jk61CNmRNH5Kha3jhrzAU0P58lel7zVctZX2F7REsCyLbmvaQUt9cdT7U+pC+5TqEH
 oYtG2dKKSTg35seSELRRMJApCz/OXUXoyVmwPYtv6LxVW42yvNCsL6zsoIuc9W3GwFgM
 sVL6Y4e5VhnWGjNVCaCVJC935ClkkxYjKIqWCnztPmShZPPyVSXBiP+W6KFP7oaEzaeq
 g1EkmFieMNBaegO/OFwQbWwt7EhuByKJIp38V7YrIl6Y1Pj/145dtjj64qhYXvRX52W3
 floyi7euG6khGcc4uavJ7ZP7cMJ85EngiEDNoxIQqD7ErvSXSllCbGlCRp1atFS0EGse
 sw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pEZQcw9jdNIyRgx/1d69GLN8AZtR3YeLDjX3xwRN5v8=;
 b=Nz49KJ54qTIJR6LTGkEyAAEBJflCdRtO+HBZ0gxikyKodmIjU80w4SxWU+1EWAXiCV
 ftHcXAwKmSFwcLOsMTnDnbRNTwoZUIyTR4rSCn/TzCV7DP6iQXwrdFc9fESX39Ns3TA5
 kp8w5FD17N9zpB6b9GEOvDW+076PYi9dfiRZkTlXMGUfOgw5JOHHlRZYP2hm4IoV8At3
 qP863IneUdZ+CFQTHzw0Y/J6UZcKxQJ+JTF6FzAtHowSiIFpT4eSzJR+UjShR1gO78h8
 v6VFSaCaCov5Sn39rXNWq8T/HLCdeWt3/6UVwgC6/1YJPgqx+kvTdJrhYP4QnN+Jb0kl
 4JxA==
X-Gm-Message-State: APjAAAUZxEYDiIV+76Frn3WBl2pYx2IibiGCbCTrAmZEUhZsUF86TCCx
 uwt+WYNwX6avC0nxVy3LH73/shHeyqoh1kIAjkIcFw==
X-Google-Smtp-Source: APXvYqwskw9OUL/xghhvwhI8dXAtgFXnH/a+xM+hdpazpgY7TQPiHlVt4Ge6Se+PvVclU58I2qq0Dqc3nrazrmdXAaw=
X-Received: by 2002:ac8:405a:: with SMTP id j26mr55090188qtl.88.1582645575991; 
 Tue, 25 Feb 2020 07:46:15 -0800 (PST)
MIME-Version: 1.0
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-4-mike.leach@linaro.org>
 <20200214231706.GD20024@xps15>
In-Reply-To: <20200214231706.GD20024@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 25 Feb 2020 15:46:04 +0000
Message-ID: <CAJ9a7VhmRLm8BS4rAOnZL202zXg7rpeTH454y=bbSurH8WG6sA@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] coresight: Add generic sysfs link creation
 functions.
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_074617_438955_BB31C6A7 
X-CRM114-Status: GOOD (  27.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

Hi Mathieu,

On Fri, 14 Feb 2020 at 23:17, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Tue, Feb 11, 2020 at 10:58:05AM +0000, Mike Leach wrote:
> > To allow the connections between coresight components to be represented
> > in sysfs, generic methods for creating sysfs links between two coresight
> > devices are added.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > ---
> >  drivers/hwtracing/coresight/Makefile          |   3 +-
> >  drivers/hwtracing/coresight/coresight-priv.h  |   4 +
> >  drivers/hwtracing/coresight/coresight-sysfs.c | 124 ++++++++++++++++++
> >  include/linux/coresight.h                     |  20 +++
> >  4 files changed, 150 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c
> >
> > diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
> > index 0e3e72f0f510..19497d1d92bf 100644
> > --- a/drivers/hwtracing/coresight/Makefile
> > +++ b/drivers/hwtracing/coresight/Makefile
> > @@ -2,7 +2,8 @@
> >  #
> >  # Makefile for CoreSight drivers.
> >  #
> > -obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
> > +obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o \
> > +                        coresight-platform.o coresight-sysfs.o
> >  obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
> >                                            coresight-tmc-etf.o \
> >                                            coresight-tmc-etr.o
> > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > index 1cad642f27aa..a4a658d46045 100644
> > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > @@ -153,6 +153,10 @@ struct coresight_device *coresight_get_sink_by_id(u32 id);
> >  struct list_head *coresight_build_path(struct coresight_device *csdev,
> >                                      struct coresight_device *sink);
> >  void coresight_release_path(struct list_head *path);
> > +int coresight_add_sysfs_link(struct coresight_sysfs_link *info);
> > +void coresight_remove_sysfs_link(struct coresight_sysfs_link *info);
> > +int coresight_create_conns_sysfs_group(struct coresight_device *csdev);
> > +void coresight_remove_conns_sysfs_group(struct coresight_device *csdev);
> >
> >  #ifdef CONFIG_CORESIGHT_SOURCE_ETM3X
> >  extern int etm_readl_cp14(u32 off, unsigned int *val);
> > diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
> > new file mode 100644
> > index 000000000000..17d565941e5e
> > --- /dev/null
> > +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> > @@ -0,0 +1,124 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2019, Linaro Limited, All rights reserved.
> > + * Author: Mike Leach <mike.leach@linaro.org>
> > + */
> > +
> > +#include <linux/device.h>
> > +#include <linux/kernel.h>
> > +
> > +#include "coresight-priv.h"
> > +
> > +/*
> > + * Connections group - links attribute.
> > + * Count of created links between coresight components in the group.
> > + */
> > +static ssize_t nr_links_show(struct device *dev,
> > +                          struct device_attribute *attr,
> > +                          char *buf)
> > +{
> > +     struct coresight_device *csdev = to_coresight_device(dev);
> > +
> > +     return scnprintf(buf, PAGE_SIZE, "%d\n", csdev->nr_links);
> > +}
> > +static DEVICE_ATTR_RO(nr_links);
> > +
> > +static struct attribute *coresight_conns_attrs[] = {
> > +     &dev_attr_nr_links.attr,
> > +     NULL,
> > +};
> > +
> > +static struct attribute_group coresight_conns_group = {
> > +     .attrs = coresight_conns_attrs,
> > +     .name = "connections",
> > +};
> > +
> > +/*
> > + * Create connections group for CoreSight devices.
> > + * This group will then be used to collate the sysfs links between
> > + * devices.
> > + */
> > +int coresight_create_conns_sysfs_group(struct coresight_device *csdev)
> > +{
> > +     int ret = 0;
> > +
> > +     if (!csdev)
> > +             return -EINVAL;
> > +
> > +     ret = sysfs_create_group(&csdev->dev.kobj, &coresight_conns_group);
> > +     if (ret)
> > +             return ret;
> > +
> > +     csdev->has_conns_grp = true;
>
> The only place coresight_create_conns_sysfs_group() is used is in
> coresight_register() where an error is returned to driver probe() functions if
> an error occurs.  Have you found places where csdev->has_conns_grp is needed?
> If not please remove.
>

There is a sequence of calls in coresight_register() which occur after
the coresight_create_conns_sysfs_group() -
any one of which may throw an error resulting in an immediate
coresight_unregister() and hence
coresight_release_platform_data() => coresight_remove_conns_sysfs_group().
There is also an alternate path through coresight_register() which
also results in coresight_release_platform_data() occurring before we
have created the group.
The flag ensures that both paths clean up the sysfs connection data
correctly and safely.

Regards

Mike

> > +     return ret;
> > +}
> > +
> > +void coresight_remove_conns_sysfs_group(struct coresight_device *csdev)
> > +{
> > +     if (!csdev)
> > +             return;
> > +
> > +     if (csdev->has_conns_grp) {
> > +             sysfs_remove_group(&csdev->dev.kobj, &coresight_conns_group);
> > +             csdev->has_conns_grp = false;
> > +     }
> > +}
> > +
> > +int coresight_add_sysfs_link(struct coresight_sysfs_link *info)
> > +{
> > +     int ret = 0;
> > +
> > +     if (!info)
> > +             return -EINVAL;
> > +     if (!info->orig || !info->target ||
> > +         !info->orig_name || !info->target_name)
> > +             return -EINVAL;
> > +     if (!info->orig->has_conns_grp || !info->target->has_conns_grp)
> > +             return -EINVAL;
> > +
> > +     /* first link orig->target */
> > +     ret = sysfs_add_link_to_group(&info->orig->dev.kobj,
> > +                                   coresight_conns_group.name,
> > +                                   &info->target->dev.kobj,
> > +                                   info->orig_name);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* second link target->orig */
> > +     ret = sysfs_add_link_to_group(&info->target->dev.kobj,
> > +                                   coresight_conns_group.name,
> > +                                   &info->orig->dev.kobj,
> > +                                   info->target_name);
> > +
> > +     /* error in second link - remove first - otherwise inc counts */
> > +     if (ret) {
> > +             sysfs_remove_link_from_group(&info->orig->dev.kobj,
> > +                                          coresight_conns_group.name,
> > +                                          info->orig_name);
> > +     } else {
> > +             info->orig->nr_links++;
> > +             info->target->nr_links++;
> > +     }
> > +
> > +     return ret;
> > +}
> > +
> > +void coresight_remove_sysfs_link(struct coresight_sysfs_link *info)
> > +{
> > +     if (!info)
> > +             return;
> > +     if (!info->orig || !info->target ||
> > +         !info->orig_name || !info->target_name)
> > +             return;
> > +
> > +     sysfs_remove_link_from_group(&info->orig->dev.kobj,
> > +                                  coresight_conns_group.name,
> > +                                  info->orig_name);
> > +
> > +     sysfs_remove_link_from_group(&info->target->dev.kobj,
> > +                                  coresight_conns_group.name,
> > +                                  info->target_name);
> > +
> > +     info->orig->nr_links--;
> > +     info->target->nr_links--;
> > +}
> > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > index 193cc9dbf448..a2ec25e02ca9 100644
> > --- a/include/linux/coresight.h
> > +++ b/include/linux/coresight.h
> > @@ -148,6 +148,20 @@ struct coresight_connection {
> >       struct coresight_device *child_dev;
> >  };
> >
> > +/**
> > + * struct coresight_sysfs_link - representation of a connection in sysfs.
> > + * @orig:            Originating (master) coresight device for the link.
> > + * @orig_name:               Name to use for the link orig->target.
> > + * @target:          Target (slave) coresight device for the link.
> > + * @target_name:     Name to use for the link target->orig.
> > + */
> > +struct coresight_sysfs_link {
> > +     struct coresight_device *orig;
> > +     const char *orig_name;
> > +     struct coresight_device *target;
> > +     const char *target_name;
> > +};
> > +
> >  /**
> >   * struct coresight_device - representation of a device as used by the framework
> >   * @pdata:   Platform data with device connections associated to this device.
> > @@ -165,6 +179,9 @@ struct coresight_connection {
> >   * @ea:              Device attribute for sink representation under PMU directory.
> >   * @ect_dev: Associated cross trigger device. Not part of the trace data
> >   *           path or connections.
> > + * @nr_links:   number of sysfs links created to other components from this
> > + *           device. These will appear in the "connections" group.
> > + * @has_conns_grp: Have added a "connections" group for sysfs links.
> >   */
> >  struct coresight_device {
> >       struct coresight_platform_data *pdata;
> > @@ -180,6 +197,9 @@ struct coresight_device {
> >       struct dev_ext_attribute *ea;
> >       /* cross trigger handling */
> >       struct coresight_device *ect_dev;
> > +     /* sysfs links between components */
> > +     int nr_links;
> > +     bool has_conns_grp;
> >  };
>
> With the above:
>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>
> >
> >  /*
> > --
> > 2.17.1
> >



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
