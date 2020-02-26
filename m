Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F8A170A56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB2ExJBPeNK7tiW+PHw/VkjBlgtzOduwftuTjdldogQ=; b=otiIEYESKCwbNy
	V9ERAos0iAqjewzhrhXF4QrNm7CAz0yVwxnkVQaZjBbboyKkQ9D3MMmoWMFOx1yHjCFeYUHXSW4V2
	mIGJy9pcA3gbqWubnapoJLQyRBDJsTGTGDale+NUVWSekkTtkUUQKdR5oHgzfGqWugolDg/8f7VOp
	/4f4fpKkU8JbaG53Xk3D6FleZo4P3xG37i7aqwWI6L49sQk3qHBEovuYAaQ+Zmycizv4c1/7PKg6r
	s2S+R7pnRVffSalIBh67h1BsCJBPAeTAEb080Z2qBMUIZjc0MBSNN/d1sOrhpMtmfQ/eOVJeIl71m
	33YE6h0LpYtTUXT/3OpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j749G-0004x9-01; Wed, 26 Feb 2020 21:23:18 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7495-0004wm-4X
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:23:09 +0000
Received: by mail-pj1-x1043.google.com with SMTP id f2so2506600pjq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hEG+R7JEhGoJs+4m9bSQavP9LNloKSVQG/M4rKKNL54=;
 b=uyXDrgZC/DO8lcPWW/69fqT6aCCs/m81y+s9PgxDco3X8Udm63p1+37bvzY2FrQL2E
 GnQ4XiHvzzwgsSx7Aw7XCubJ4w0SRC7/lutUZ+o0DpcHINqQ2rfLluCwMC4SEWu9YUdN
 JE6dd5GPi3vQuKfIcmzkziry3Va8SZGzaX+RGyBBgHzImFLOQ2SL/QfR5wO+sDwGmJAS
 dFEvD76DSxT0v9fTDk+NLiBDg4oWEBmTnrJbSyPoY7Iyxb592m8psQK6L87DLpXXyn0c
 BtSt+u/J6jMPqxlpiSsXDyku7wEvhdO0wJAz3Qh8cwRmT5KqkyMTzqNtb7X/xofFxJYY
 SxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hEG+R7JEhGoJs+4m9bSQavP9LNloKSVQG/M4rKKNL54=;
 b=QTBGAOXHonQ5ulHo4X/UHEjR5mragfYGDqn14W4P4DBDB0kzJpsXvZGfD+mLIc8DfL
 wz5+d/DNtL3wixh/FdqsA05m+cpR34nUz5JAcpk7+LMlUZPrXI5g/bSBvCSe3JRYQoNR
 +GzgQC4DERtKigXW7+lsC1iIQ2ktHQsvWJZIf0wr26LFxagJYpSWjD75oSmIbB3kAX5w
 2OSOpR6m8RD5dQz5Aup8VdbprEfpdmkDB6DwQNrVjcoYU2DISpIkrWu8XKiQwI9uIGxd
 0mqQVlndhTRxxyVg5F+nyfIfdRJhvDMFu1qd4xNSGulpCpI+hmECCLFww+5YMiaCn/6K
 8TXQ==
X-Gm-Message-State: APjAAAWUO3SEdTkR6DeByAzIeE638qZrk3WwgofWx3bgtOeN/YJ7qQpR
 63RHXvPzz7avV/3KRboPYnuRdg==
X-Google-Smtp-Source: APXvYqxm6xvV6NsOJkjWXOkN2OjYgx9PNpoTE8fh8vDfAvhEsOjYG5CsYHsm+FJy1zlQ0hSapE/pVw==
X-Received: by 2002:a17:902:9a42:: with SMTP id
 x2mr1334766plv.194.1582752186349; 
 Wed, 26 Feb 2020 13:23:06 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w8sm3940680pfn.186.2020.02.26.13.23.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:23:05 -0800 (PST)
Date: Wed, 26 Feb 2020 14:23:04 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 4/6] coresight: Expose device connections via sysfs
Message-ID: <20200226212304.GC30754@xps15>
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-5-mike.leach@linaro.org>
 <20200214223111.GA20024@xps15>
 <CAJ9a7VihWvoE0x6JWba5LHS+H-A8e7abrZnRPddsNKkHVzaJMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ9a7VihWvoE0x6JWba5LHS+H-A8e7abrZnRPddsNKkHVzaJMg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_132307_188317_B779FEC9 
X-CRM114-Status: GOOD (  36.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Feb 26, 2020 at 02:32:16PM +0000, Mike Leach wrote:
> Hi Mathieu,
> 
> On Fri, 14 Feb 2020 at 22:31, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > Hi Mike,
> >
> > On Tue, Feb 11, 2020 at 10:58:06AM +0000, Mike Leach wrote:
> > > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> > >
> > > Coresight device connections are a bit complicated and is not
> > > exposed currently to the user. One has to look at the platform
> > > descriptions (DT bindings or ACPI bindings) to make an understanding.
> > > Given the new naming scheme, it will be helpful to have this information
> > > to choose the appropriate devices for tracing. This patch exposes
> > > the device connections via links in the sysfs directories.
> > >
> > > e.g, for a connection devA[OutputPort_X] -> devB[InputPort_Y]
> > > is represented as two symlinks:
> > >
> > >   /sys/bus/coresight/.../devA/out:X -> /sys/bus/coresight/.../devB
> > >   /sys/bus/coresight/.../devB/in:Y  -> /sys/bus/coresight/.../devA
> > >
> > > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > >
> > > Revised to use the generic sysfs links functions & link structures.
> > > Provides a connections sysfs group to hold the links.
> > >
> > > Co-developed-by: Mike Leach <mike.leach@linaro.org>
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> >
> > Because this patch is "From:" Suzuki, this should be:
> >
> > Co-developed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> >
> 
> if I do the above then checkpatch.pl:-
> 
> WARNING: Co-developed-by: should not be used to attribute nominal
> patch author 'Suzuki K Poulose <suzuki.poulose@arm.com>'
> #25:
> Co-developed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> WARNING: Co-developed-by and Signed-off-by: name/email do not match
> #25:
> Co-developed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Got that - thanks

> 
> Regards
> 
> Mike
> 
> > You can expand on Suzuki's contribution or the modifications you've done to it
> > in the changelog.
> >
> > With the above:
> >
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >
> > > ---
> > >  drivers/hwtracing/coresight/coresight-priv.h  |  5 ++
> > >  drivers/hwtra cing/coresight/coresight-sysfs.c | 80 +++++++++++++++++++
> > >  drivers/hwtracing/coresight/coresight.c       | 46 ++++++++---
> > >  include/linux/coresight.h                     |  2 +
> > >  4 files changed, 121 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > > index a4a658d46045..5a36f0f50899 100644
> > > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > > @@ -157,6 +157,11 @@ int coresight_add_sysfs_link(struct coresight_sysfs_link *info);
> > >  void coresight_remove_sysfs_link(struct coresight_sysfs_link *info);
> > >  int coresight_create_conns_sysfs_group(struct coresight_device *csdev);
> > >  void coresight_remove_conns_sysfs_group(struct coresight_device *csdev);
> > > +int coresight_make_links(struct coresight_device *orig,
> > > +                      struct coresight_connection *conn,
> > > +                      struct coresight_device *target);
> > > +void coresight_remove_links(struct coresight_device *orig,
> > > +                         struct coresight_connection *conn);
> > >
> > >  #ifdef CONFIG_CORESIGHT_SOURCE_ETM3X
> > >  extern int etm_readl_cp14(u32 off, unsigned int *val);
> > > diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
> > > index 17d565941e5e..0f18332b9f19 100644
> > > --- a/drivers/hwtracing/coresight/coresight-sysfs.c
> > > +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> > > @@ -122,3 +122,83 @@ void coresight_remove_sysfs_link(struct coresight_sysfs_link *info)
> > >       info->orig->nr_links--;
> > >       info->target->nr_links--;
> > >  }
> > > +
> > > +/*
> > > + * coresight_make_links: Make a link for a connection from a @orig
> > > + * device to @target, represented by @conn.
> > > + *
> > > + *   e.g, for devOrig[output_X] -> devTarget[input_Y] is represented
> > > + *   as two symbolic links :
> > > + *
> > > + *   /sys/.../devOrig/out:X  -> /sys/.../devTarget/
> > > + *   /sys/.../devTarget/in:Y -> /sys/.../devOrig/
> > > + *
> > > + * The link names are allocated for a device where it appears. i.e, the
> > > + * "out" link on the master and "in" link on the slave device.
> > > + * The link info is stored in the connection record for avoiding
> > > + * the reconstruction of names for removal.
> > > + */
> > > +int coresight_make_links(struct coresight_device *orig,
> > > +                      struct coresight_connection *conn,
> > > +                      struct coresight_device *target)
> > > +{
> > > +     int ret = -ENOMEM;
> > > +     char *outs = NULL, *ins = NULL;
> > > +     struct coresight_sysfs_link *link = NULL;
> > > +
> > > +     do {
> > > +             outs = devm_kasprintf(&orig->dev, GFP_KERNEL,
> > > +                                   "out:%d", conn->outport);
> > > +             if (!outs)
> > > +                     break;
> > > +             ins = devm_kasprintf(&target->dev, GFP_KERNEL,
> > > +                                  "in:%d", conn->child_port);
> > > +             if (!ins)
> > > +                     break;
> > > +             link = devm_kzalloc(&orig->dev,
> > > +                                 sizeof(struct coresight_sysfs_link),
> > > +                                 GFP_KERNEL);
> > > +             if (!link)
> > > +                     break;
> > > +
> > > +             link->orig = orig;
> > > +             link->target = target;
> > > +             link->orig_name = outs;
> > > +             link->target_name = ins;
> > > +
> > > +             ret = coresight_add_sysfs_link(link);
> > > +             if (ret)
> > > +                     break;
> > > +
> > > +             conn->link = link;
> > > +
> > > +             /*
> > > +              * Install the device connection. This also indicates that
> > > +              * the links are operational on both ends.
> > > +              */
> > > +             conn->child_dev = target;
> > > +             return 0;
> > > +     } while (0);
> > > +
> > > +     return ret;
> > > +}
> > > +
> > > +/*
> > > + * coresight_remove_links: Remove the sysfs links for a given connection @conn,
> > > + * from @orig device to @target device. See coresight_make_links() for more
> > > + * details.
> > > + */
> > > +void coresight_remove_links(struct coresight_device *orig,
> > > +                         struct coresight_connection *conn)
> > > +{
> > > +     if (!orig || !conn->link)
> > > +             return;
> > > +
> > > +     coresight_remove_sysfs_link(conn->link);
> > > +
> > > +     devm_kfree(&conn->child_dev->dev, conn->link->target_name);
> > > +     devm_kfree(&orig->dev, conn->link->orig_name);
> > > +     devm_kfree(&orig->dev, conn->link);
> > > +     conn->link = NULL;
> > > +     conn->child_dev = NULL;
> > > +}
> > > diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> > > index 07f66a3968f1..4f10cfa9dc18 100644
> > > --- a/drivers/hwtracing/coresight/coresight.c
> > > +++ b/drivers/hwtracing/coresight/coresight.c
> > > @@ -1031,7 +1031,7 @@ static void coresight_device_release(struct device *dev)
> > >
> > >  static int coresight_orphan_match(struct device *dev, void *data)
> > >  {
> > > -     int i;
> > > +     int i, ret = 0;
> > >       bool still_orphan = false;
> > >       struct coresight_device *csdev, *i_csdev;
> > >       struct coresight_connection *conn;
> > > @@ -1056,19 +1056,23 @@ static int coresight_orphan_match(struct device *dev, void *data)
> > >               /* We have found at least one orphan connection */
> > >               if (conn->child_dev == NULL) {
> > >                       /* Does it match this newly added device? */
> > > -                     if (conn->child_fwnode == csdev->dev.fwnode)
> > > -                             conn->child_dev = csdev;
> > > -                     else
> > > +                     if (conn->child_fwnode == csdev->dev.fwnode) {
> > > +                             ret = coresight_make_links(i_csdev,
> > > +                                                        conn, csdev);
> > > +                             if (ret)
> > > +                                     return ret;
> > > +                     } else {
> > >                               /* This component still has an orphan */
> > >                               still_orphan = true;
> > > +                     }
> > >               }
> > >       }
> > >
> > >       i_csdev->orphan = still_orphan;
> > >
> > >       /*
> > > -      * Returning '0' ensures that all known component on the
> > > -      * bus will be checked.
> > > +      * Returning '0' in case we didn't encounter any error,
> > > +      * ensures that all known component on the bus will be checked.
> > >        */
> > >       return 0;
> > >  }
> > > @@ -1082,15 +1086,21 @@ static int coresight_fixup_orphan_conns(struct coresight_device *csdev)
> > >
> > >  static int coresight_fixup_device_conns(struct coresight_device *csdev)
> > >  {
> > > -     int i;
> > > +     int i, ret = 0;
> > >
> > >       for (i = 0; i < csdev->pdata->nr_outport; i++) {
> > >               struct coresight_connection *conn = &csdev->pdata->conns[i];
> > >
> > >               conn->child_dev =
> > >                       coresight_find_csdev_by_fwnode(conn->child_fwnode);
> > > -             if (!conn->child_dev)
> > > +             if (conn->child_dev) {
> > > +                     ret = coresight_make_links(csdev, conn,
> > > +                                                conn->child_dev);
> > > +                     if (ret)
> > > +                             break;
> > > +             } else {
> > >                       csdev->orphan = true;
> > > +             }
> > >       }
> > >
> > >       return 0;
> > > @@ -1121,7 +1131,7 @@ static int coresight_remove_match(struct device *dev, void *data)
> > >
> > >               if (csdev->dev.fwnode == conn->child_fwnode) {
> > >                       iterator->orphan = true;
> > > -                     conn->child_dev = NULL;
> > > +                     coresight_remove_links(iterator, conn);
> > >                       /*
> > >                        * Drop the reference to the handle for the remote
> > >                        * device acquired in parsing the connections from
> > > @@ -1215,13 +1225,23 @@ void coresight_release_platform_data(struct coresight_device *csdev,
> > >                                    struct coresight_platform_data *pdata)
> > >  {
> > >       int i;
> > > +     struct coresight_connection *conns = pdata->conns;
> > >
> > >       for (i = 0; i < pdata->nr_outport; i++) {
> > > -             if (pdata->conns[i].child_fwnode) {
> > > -                     fwnode_handle_put(pdata->conns[i].child_fwnode);
> > > +             /* If we have made the links, remove them now */
> > > +             if (csdev && conns[i].child_dev)
> > > +                     coresight_remove_links(csdev, &conns[i]);
> > > +             /*
> > > +              * Drop the refcount and clear the handle as this device
> > > +              * is going away
> > > +              */
> > > +             if (conns[i].child_fwnode) {
> > > +                     fwnode_handle_put(conns[i].child_fwnode);
> > >                       pdata->conns[i].child_fwnode = NULL;
> > >               }
> > >       }
> > > +     if (csdev)
> > > +             coresight_remove_conns_sysfs_group(csdev);
> > >  }
> > >
> > >  struct coresight_device *coresight_register(struct coresight_desc *desc)
> > > @@ -1303,7 +1323,9 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
> > >
> > >       mutex_lock(&coresight_mutex);
> > >
> > > -     ret = coresight_fixup_device_conns(csdev);
> > > +     ret = coresight_create_conns_sysfs_group(csdev);
> > > +     if (!ret)
> > > +             ret = coresight_fixup_device_conns(csdev);
> > >       if (!ret)
> > >               ret = coresight_fixup_orphan_conns(csdev);
> > >       if (!ret)
> > > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > > index a2ec25e02ca9..ccd17304d7bd 100644
> > > --- a/include/linux/coresight.h
> > > +++ b/include/linux/coresight.h
> > > @@ -140,12 +140,14 @@ struct coresight_desc {
> > >   * @chid_fwnode: remote component's fwnode handle.
> > >   * @child_dev:       a @coresight_device representation of the component
> > >               connected to @outport.
> > > + * @link: Representation of the connection as a sysfs link.
> > >   */
> > >  struct coresight_connection {
> > >       int outport;
> > >       int child_port;
> > >       struct fwnode_handle *child_fwnode;
> > >       struct coresight_device *child_dev;
> > > +     struct coresight_sysfs_link *link;
> > >  };
> > >
> > >  /**
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
