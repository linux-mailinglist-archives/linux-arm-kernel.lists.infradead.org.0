Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6808B170137
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c61FgPXMmmlxta06ney3N3Mt2wuI8R2rVBwIttRI8oU=; b=l02rxfhWnNZStY
	F3PiorWY8fUekkbYArz3Kl52PYM2kYyKmxQOj6d67iA3HmyP+Jg4XbDlHvXuR0+RUL0WYw7uNhx07
	QhmQXSfRBuxwj6UYdd9/Pbo8pBfTsFy3HG1tqmsFH3/ehg9hQM6Kj6qNuonh/mjoXOCeY1tWFXLr/
	6+G6F9s6AsJCBuHn0BqsIlIMIWWzzO88b+GJ5WsZ+2ODhoLFSA0/nPlxwVbZUhgItINBQ/HRJaRbw
	XyEJwW2V8ozjzlMBBi2Cqmc4vXgLBWhlLYrNedpRhnI+94dYL6WOeKbYUUw8w6UVB8jD4P07Nc8/Q
	BSxPV/MueJUlrsOaWGGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xjs-0005iY-8y; Wed, 26 Feb 2020 14:32:40 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xjh-0005i4-8s
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 14:32:33 +0000
Received: by mail-qv1-xf44.google.com with SMTP id y8so1367816qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 06:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/5XPDK1FlEr5y+pSr5GXo6U4MFAnlby/XXe1Fif0DQ4=;
 b=GQYNbVts6wagcQcaun3e17bdqi7adp46CAX1BeYevmDLzsLDagECy/PiQg1jhmEo3x
 c7R9T5r8K/+2FU+luCPmGQ7IINYojmxvIv7aCkuqza/P1sXyLOqLO5o+JyBP/71CRsEE
 MAJofAHdPw5fUyo3t0FmGgT1NdxgFnr2RUrROfO7E+5QpXezH7P2fN2E5cfDk8gh2LJT
 QLYthJaF7enm0tEaiDCbAkCaqSroJ+Yu2UHkzRIW78D+tarMSn//biNl4rk7GYH48jkw
 WfiI2mwN87EdOhSdx7HFbr4ayO0aLu/Hcg/2RbwkG1ilO+Gw6dNdVV2BuLfs3BmWmYYy
 bdvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/5XPDK1FlEr5y+pSr5GXo6U4MFAnlby/XXe1Fif0DQ4=;
 b=qrjMWtscr2NTUx2bUyF5fQFpLruIPa+1y1YFP1gNJFBKxJbQcVdLoziibx0sMd8pSw
 z06flT85TS7WwePZztBL3itHrY6ZxliEF87tbzD8/N+D8TPZ6/ZGGDFrMl/NDf6Qh4F3
 gd9qPt51g5Jsurrvtxvx/dF0+6b7jXeJQwGvJOf2mYYT8QLKFNXfTuk6kvgPs2Twq/i3
 sPZvksXRpx/L2G8wsgcHOwZbH28jVA5f5Unpby5kXMPstbPLWUm9xMerEJR7bAF8v8D2
 YQif6cKDHhkbffAtLIH+ieqzjuAFqncVG0z2QsgIZc24eLY4hea2LGs2hhPPVUhctpsB
 ZAhg==
X-Gm-Message-State: APjAAAUOItn4sqdkYw84qA+BOSc0mDE+nb4Le8oK6YgYhLsZlmoEOi/2
 KZqc2gTucvdXH4txFPxasdH30Jy0CW++AeZvtfIX6+HT6Nc=
X-Google-Smtp-Source: APXvYqzjW0VrmygzJlQ62eW3lq5IERKrL4an2IT64q4UcJhSyVsIarnOkAYe+ynF5b0mCMrAMDt2oKAF4zVFerk1ZrA=
X-Received: by 2002:a05:6214:965:: with SMTP id
 do5mr5448585qvb.202.1582727547821; 
 Wed, 26 Feb 2020 06:32:27 -0800 (PST)
MIME-Version: 1.0
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-5-mike.leach@linaro.org>
 <20200214223111.GA20024@xps15>
In-Reply-To: <20200214223111.GA20024@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 26 Feb 2020 14:32:16 +0000
Message-ID: <CAJ9a7VihWvoE0x6JWba5LHS+H-A8e7abrZnRPddsNKkHVzaJMg@mail.gmail.com>
Subject: Re: [PATCH v4 4/6] coresight: Expose device connections via sysfs
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_063229_320810_D3457C89 
X-CRM114-Status: GOOD (  35.16  )
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

Hi Mathieu,

On Fri, 14 Feb 2020 at 22:31, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> Hi Mike,
>
> On Tue, Feb 11, 2020 at 10:58:06AM +0000, Mike Leach wrote:
> > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > Coresight device connections are a bit complicated and is not
> > exposed currently to the user. One has to look at the platform
> > descriptions (DT bindings or ACPI bindings) to make an understanding.
> > Given the new naming scheme, it will be helpful to have this information
> > to choose the appropriate devices for tracing. This patch exposes
> > the device connections via links in the sysfs directories.
> >
> > e.g, for a connection devA[OutputPort_X] -> devB[InputPort_Y]
> > is represented as two symlinks:
> >
> >   /sys/bus/coresight/.../devA/out:X -> /sys/bus/coresight/.../devB
> >   /sys/bus/coresight/.../devB/in:Y  -> /sys/bus/coresight/.../devA
> >
> > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > Revised to use the generic sysfs links functions & link structures.
> > Provides a connections sysfs group to hold the links.
> >
> > Co-developed-by: Mike Leach <mike.leach@linaro.org>
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
>
> Because this patch is "From:" Suzuki, this should be:
>
> Co-developed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
>

if I do the above then checkpatch.pl:-

WARNING: Co-developed-by: should not be used to attribute nominal
patch author 'Suzuki K Poulose <suzuki.poulose@arm.com>'
#25:
Co-developed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
WARNING: Co-developed-by and Signed-off-by: name/email do not match
#25:
Co-developed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>

Regards

Mike

> You can expand on Suzuki's contribution or the modifications you've done to it
> in the changelog.
>
> With the above:
>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>
> > ---
> >  drivers/hwtracing/coresight/coresight-priv.h  |  5 ++
> >  drivers/hwtra cing/coresight/coresight-sysfs.c | 80 +++++++++++++++++++
> >  drivers/hwtracing/coresight/coresight.c       | 46 ++++++++---
> >  include/linux/coresight.h                     |  2 +
> >  4 files changed, 121 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > index a4a658d46045..5a36f0f50899 100644
> > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > @@ -157,6 +157,11 @@ int coresight_add_sysfs_link(struct coresight_sysfs_link *info);
> >  void coresight_remove_sysfs_link(struct coresight_sysfs_link *info);
> >  int coresight_create_conns_sysfs_group(struct coresight_device *csdev);
> >  void coresight_remove_conns_sysfs_group(struct coresight_device *csdev);
> > +int coresight_make_links(struct coresight_device *orig,
> > +                      struct coresight_connection *conn,
> > +                      struct coresight_device *target);
> > +void coresight_remove_links(struct coresight_device *orig,
> > +                         struct coresight_connection *conn);
> >
> >  #ifdef CONFIG_CORESIGHT_SOURCE_ETM3X
> >  extern int etm_readl_cp14(u32 off, unsigned int *val);
> > diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
> > index 17d565941e5e..0f18332b9f19 100644
> > --- a/drivers/hwtracing/coresight/coresight-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> > @@ -122,3 +122,83 @@ void coresight_remove_sysfs_link(struct coresight_sysfs_link *info)
> >       info->orig->nr_links--;
> >       info->target->nr_links--;
> >  }
> > +
> > +/*
> > + * coresight_make_links: Make a link for a connection from a @orig
> > + * device to @target, represented by @conn.
> > + *
> > + *   e.g, for devOrig[output_X] -> devTarget[input_Y] is represented
> > + *   as two symbolic links :
> > + *
> > + *   /sys/.../devOrig/out:X  -> /sys/.../devTarget/
> > + *   /sys/.../devTarget/in:Y -> /sys/.../devOrig/
> > + *
> > + * The link names are allocated for a device where it appears. i.e, the
> > + * "out" link on the master and "in" link on the slave device.
> > + * The link info is stored in the connection record for avoiding
> > + * the reconstruction of names for removal.
> > + */
> > +int coresight_make_links(struct coresight_device *orig,
> > +                      struct coresight_connection *conn,
> > +                      struct coresight_device *target)
> > +{
> > +     int ret = -ENOMEM;
> > +     char *outs = NULL, *ins = NULL;
> > +     struct coresight_sysfs_link *link = NULL;
> > +
> > +     do {
> > +             outs = devm_kasprintf(&orig->dev, GFP_KERNEL,
> > +                                   "out:%d", conn->outport);
> > +             if (!outs)
> > +                     break;
> > +             ins = devm_kasprintf(&target->dev, GFP_KERNEL,
> > +                                  "in:%d", conn->child_port);
> > +             if (!ins)
> > +                     break;
> > +             link = devm_kzalloc(&orig->dev,
> > +                                 sizeof(struct coresight_sysfs_link),
> > +                                 GFP_KERNEL);
> > +             if (!link)
> > +                     break;
> > +
> > +             link->orig = orig;
> > +             link->target = target;
> > +             link->orig_name = outs;
> > +             link->target_name = ins;
> > +
> > +             ret = coresight_add_sysfs_link(link);
> > +             if (ret)
> > +                     break;
> > +
> > +             conn->link = link;
> > +
> > +             /*
> > +              * Install the device connection. This also indicates that
> > +              * the links are operational on both ends.
> > +              */
> > +             conn->child_dev = target;
> > +             return 0;
> > +     } while (0);
> > +
> > +     return ret;
> > +}
> > +
> > +/*
> > + * coresight_remove_links: Remove the sysfs links for a given connection @conn,
> > + * from @orig device to @target device. See coresight_make_links() for more
> > + * details.
> > + */
> > +void coresight_remove_links(struct coresight_device *orig,
> > +                         struct coresight_connection *conn)
> > +{
> > +     if (!orig || !conn->link)
> > +             return;
> > +
> > +     coresight_remove_sysfs_link(conn->link);
> > +
> > +     devm_kfree(&conn->child_dev->dev, conn->link->target_name);
> > +     devm_kfree(&orig->dev, conn->link->orig_name);
> > +     devm_kfree(&orig->dev, conn->link);
> > +     conn->link = NULL;
> > +     conn->child_dev = NULL;
> > +}
> > diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> > index 07f66a3968f1..4f10cfa9dc18 100644
> > --- a/drivers/hwtracing/coresight/coresight.c
> > +++ b/drivers/hwtracing/coresight/coresight.c
> > @@ -1031,7 +1031,7 @@ static void coresight_device_release(struct device *dev)
> >
> >  static int coresight_orphan_match(struct device *dev, void *data)
> >  {
> > -     int i;
> > +     int i, ret = 0;
> >       bool still_orphan = false;
> >       struct coresight_device *csdev, *i_csdev;
> >       struct coresight_connection *conn;
> > @@ -1056,19 +1056,23 @@ static int coresight_orphan_match(struct device *dev, void *data)
> >               /* We have found at least one orphan connection */
> >               if (conn->child_dev == NULL) {
> >                       /* Does it match this newly added device? */
> > -                     if (conn->child_fwnode == csdev->dev.fwnode)
> > -                             conn->child_dev = csdev;
> > -                     else
> > +                     if (conn->child_fwnode == csdev->dev.fwnode) {
> > +                             ret = coresight_make_links(i_csdev,
> > +                                                        conn, csdev);
> > +                             if (ret)
> > +                                     return ret;
> > +                     } else {
> >                               /* This component still has an orphan */
> >                               still_orphan = true;
> > +                     }
> >               }
> >       }
> >
> >       i_csdev->orphan = still_orphan;
> >
> >       /*
> > -      * Returning '0' ensures that all known component on the
> > -      * bus will be checked.
> > +      * Returning '0' in case we didn't encounter any error,
> > +      * ensures that all known component on the bus will be checked.
> >        */
> >       return 0;
> >  }
> > @@ -1082,15 +1086,21 @@ static int coresight_fixup_orphan_conns(struct coresight_device *csdev)
> >
> >  static int coresight_fixup_device_conns(struct coresight_device *csdev)
> >  {
> > -     int i;
> > +     int i, ret = 0;
> >
> >       for (i = 0; i < csdev->pdata->nr_outport; i++) {
> >               struct coresight_connection *conn = &csdev->pdata->conns[i];
> >
> >               conn->child_dev =
> >                       coresight_find_csdev_by_fwnode(conn->child_fwnode);
> > -             if (!conn->child_dev)
> > +             if (conn->child_dev) {
> > +                     ret = coresight_make_links(csdev, conn,
> > +                                                conn->child_dev);
> > +                     if (ret)
> > +                             break;
> > +             } else {
> >                       csdev->orphan = true;
> > +             }
> >       }
> >
> >       return 0;
> > @@ -1121,7 +1131,7 @@ static int coresight_remove_match(struct device *dev, void *data)
> >
> >               if (csdev->dev.fwnode == conn->child_fwnode) {
> >                       iterator->orphan = true;
> > -                     conn->child_dev = NULL;
> > +                     coresight_remove_links(iterator, conn);
> >                       /*
> >                        * Drop the reference to the handle for the remote
> >                        * device acquired in parsing the connections from
> > @@ -1215,13 +1225,23 @@ void coresight_release_platform_data(struct coresight_device *csdev,
> >                                    struct coresight_platform_data *pdata)
> >  {
> >       int i;
> > +     struct coresight_connection *conns = pdata->conns;
> >
> >       for (i = 0; i < pdata->nr_outport; i++) {
> > -             if (pdata->conns[i].child_fwnode) {
> > -                     fwnode_handle_put(pdata->conns[i].child_fwnode);
> > +             /* If we have made the links, remove them now */
> > +             if (csdev && conns[i].child_dev)
> > +                     coresight_remove_links(csdev, &conns[i]);
> > +             /*
> > +              * Drop the refcount and clear the handle as this device
> > +              * is going away
> > +              */
> > +             if (conns[i].child_fwnode) {
> > +                     fwnode_handle_put(conns[i].child_fwnode);
> >                       pdata->conns[i].child_fwnode = NULL;
> >               }
> >       }
> > +     if (csdev)
> > +             coresight_remove_conns_sysfs_group(csdev);
> >  }
> >
> >  struct coresight_device *coresight_register(struct coresight_desc *desc)
> > @@ -1303,7 +1323,9 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
> >
> >       mutex_lock(&coresight_mutex);
> >
> > -     ret = coresight_fixup_device_conns(csdev);
> > +     ret = coresight_create_conns_sysfs_group(csdev);
> > +     if (!ret)
> > +             ret = coresight_fixup_device_conns(csdev);
> >       if (!ret)
> >               ret = coresight_fixup_orphan_conns(csdev);
> >       if (!ret)
> > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > index a2ec25e02ca9..ccd17304d7bd 100644
> > --- a/include/linux/coresight.h
> > +++ b/include/linux/coresight.h
> > @@ -140,12 +140,14 @@ struct coresight_desc {
> >   * @chid_fwnode: remote component's fwnode handle.
> >   * @child_dev:       a @coresight_device representation of the component
> >               connected to @outport.
> > + * @link: Representation of the connection as a sysfs link.
> >   */
> >  struct coresight_connection {
> >       int outport;
> >       int child_port;
> >       struct fwnode_handle *child_fwnode;
> >       struct coresight_device *child_dev;
> > +     struct coresight_sysfs_link *link;
> >  };
> >
> >  /**
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
