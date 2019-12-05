Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1E71144EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gp+LSOjnB50bJ+o7l5ZyL6G6+rbzXF6yda/DU7DX3UA=; b=RsIUiQ+nZvYu7F
	eBRC4HCsVnU90ShapmHwo7BBdHw0gY+mVztEirsH1nt/zJLTy27mMSVL4bqSbpwUlN45JDIDgeRnv
	hJQ9SaXx3jVwHvEjA36td5HYLlB/GnVz4yH7tY9H2SCGLBlaJc3EMYWF4XcetQekNTlfSmbCTxxWx
	+FhlPMQlE3i7o7YgXGMVbhbgNTvwGJxG2ufc3QV/9TXFLpOnU8O4DxKzx6fDtxgYM8pG+4XMe4bg2
	KxQ1kmKYBr0xOYD+nozCP+dIZbKdUuEc46qhfWg7/gzmUZBD/D2W+Jj3UYpH/Z+snYZy7E6NB1xqe
	CnGg4zRqzCnXV5CuuLlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icu5E-0002TO-9c; Thu, 05 Dec 2019 16:34:28 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icu4r-0002K9-Ll
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:34:08 +0000
Received: by mail-qt1-x842.google.com with SMTP id 5so4135273qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b+knii9niLVRXZjC2hcSfBNmEpJE10+YTiHDmaEVtKw=;
 b=NVViQjT9DUCjCAD4Y5ibToIeTULFTi46oeymK5d2jdBJi1Jj0vur6kwgAcZ2jaU7dQ
 xNJFxUZzUHbEUBdYpyVqvJqQeIGnPvuJJL7jdSC2EztXSuF/vQKj6x2mbICsXclsJ2e8
 vhoeVABY0zWvkqrQz0nmzxaP6mqtfl21wkcPXa9eAvYAp2UDpo+gVm6OS8QvQyQIomK3
 8U5hq16l3yf1RzchX8DneJ+JzCO2JsYc1RcMWGv4k3Iegp8C2Ytb3dwj8R5m6aIc0dZs
 Sp+pXIQO96tywSQCbUwQp5cID3Z+LC/t8RgHGSk1NvnDdnwOA8bDDeVAvZbRqueasp39
 7X5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b+knii9niLVRXZjC2hcSfBNmEpJE10+YTiHDmaEVtKw=;
 b=Tto0Vz6HMdXOBdKM/IvVLpJZZca0ftp/gi3n+Q6p4WszHBm1STa+uaQqXQfeG/gTIN
 MF2SoeujeFk52TcB0QiS/EiE5VWNhaJlathmUY6yX6g2C1aozeOK6Rr3OSospmwGL1L1
 aYtnYq0beheta0dAVAo9/7sg04Vt6QUOmseiMddRn+HAA2roldhxbaq0SjjnkQgv9vcc
 By9ikSRFcdcTvIDl3/Ei0R1dPkXrAq2h4oSzCVJr5kpFbnIaj12eUehhvxgN8vlJDw5S
 J1FHgYJmwIGCLgTYkuIEvbwDxNoVyGappTk29sbGcQlDPjNG1SOrkb/i4nFySckyQhg7
 d32w==
X-Gm-Message-State: APjAAAWFWEsu33/6rK38WcK3jbcw3JMdhbJ+rWZz0R70NQkKATmonUYN
 e2slEvPMA5EpTbCk6LiEd6sZrhjC3PT/i5J+l8RjcA==
X-Google-Smtp-Source: APXvYqyg/GBbqCPGTuv1yuEjNAYZn6kHXxHeajaeasrjDrwVNb5YMBZSJSOjckBcFNjQO8wmCPpE+jGrvjsYEC+Hz3E=
X-Received: by 2002:aed:3b14:: with SMTP id p20mr8542191qte.176.1575563644356; 
 Thu, 05 Dec 2019 08:34:04 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-9-mike.leach@linaro.org>
 <20191125224521.GC18542@xps15>
In-Reply-To: <20191125224521.GC18542@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 5 Dec 2019 16:33:53 +0000
Message-ID: <CAJ9a7Vi1pwmJX+mF7C9wGcceeyzF2CWbsQaDBohBCU=ZWNM2qQ@mail.gmail.com>
Subject: Re: [PATCH v5 08/14] coresight: cti: Enable CTI associated with
 devices.
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_083405_744356_C07E49F1 
X-CRM114-Status: GOOD (  32.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Mathieu,

Will fix as requested.

Thanks

Mike


On Mon, 25 Nov 2019 at 22:45, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Tue, Nov 19, 2019 at 11:19:06PM +0000, Mike Leach wrote:
> > The CoreSight subsystem enables a path of devices from source to sink.
> > Any CTI devices associated with the path devices must be enabled at the
> > same time.
> >
> > This patch adds an associated coresight_device element to the main
> > coresight device structure, and uses this to create associations between
> > the CTI and other devices based on the device tree data. The associated
> > device element is used to enable CTI in conjunction with the path elements.
> >
> > CTI devices are reference counted so where a single CTI is associated with
> > multiple elements on the path, it will be enabled on the first associated
> > device enable, and disabled with the last associated device disable.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-cti.c   | 87 +++++++++++++++++++
> >  .../hwtracing/coresight/coresight-platform.c  | 23 +++++
> >  drivers/hwtracing/coresight/coresight-priv.h  |  6 ++
> >  drivers/hwtracing/coresight/coresight.c       | 58 +++++++++++--
> >  include/linux/coresight.h                     |  5 ++
> >  5 files changed, 173 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index 369488dd7b8e..cf116463149a 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -440,6 +440,90 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> >       return err;
> >  }
> >
> > +/*
> > + * Look for a matching connection device name in the list of
> > + * connections. If found then swap in the csdev name and return
> > + * found.
> > + */
> > +static bool
> > +cti_match_con_name(struct cti_device *ctidev, const char *node_name,
> > +                const char *csdev_name)
> > +{
> > +     struct cti_trig_con *trig_con;
> > +
> > +     list_for_each_entry(trig_con, &ctidev->trig_cons, node) {
> > +             if (trig_con->con_dev_name) {
> > +                     if (!strcmp(node_name, trig_con->con_dev_name)) {
> > +                             /* match: so swap in csdev name */
> > +                             kfree(trig_con->con_dev_name);
> > +                             trig_con->con_dev_name =
> > +                                     kstrdup(csdev_name, GFP_KERNEL);
> > +                             return true;
> > +                     }
> > +             }
> > +     }
> > +     return false;
> > +}
> > +
> > +/*
> > + * Search the cti list to add an associated CTI into the supplied CS device
> > + * This will set the association if CTI declared before the CS device
> > + */
> > +void cti_add_assoc_to_csdev(struct coresight_device *csdev)
> > +{
> > +     struct cti_drvdata *ect_item;
> > +     struct cti_device *ctidev;
> > +     const char *node_name = NULL, *csdev_name;
> > +
> > +     /* protect the list */
> > +     mutex_lock(&ect_mutex);
> > +
> > +     /* exit if current is an ECT device.*/
> > +     if ((csdev->type == CORESIGHT_DEV_TYPE_ECT) || list_empty(&ect_net))
> > +             goto cti_add_done;
> > +
> > +     /* if we didn't find the csdev previously we used the fwnode name */
> > +     node_name = coresight_get_fwnode_name(csdev->dev.parent);
> > +
> > +     if (!node_name)
> > +             goto cti_add_done;
> > +
> > +     /* this is the name we want to use for the association */
> > +     csdev_name = dev_name(&csdev->dev);
> > +
> > +     /* for each CTI in list... */
> > +     list_for_each_entry(ect_item, &ect_net, node) {
> > +             ctidev = &ect_item->ctidev;
> > +             if (cti_match_con_name(ctidev, node_name, csdev_name)) {
> > +                     /*
> > +                      * if we found a matching name then update the
> > +                      * association pointers.
> > +                      */
> > +                     csdev->ect_dev = ect_item->csdev;
> > +                     goto cti_add_done;
> > +             }
> > +     }
> > +cti_add_done:
> > +     mutex_unlock(&ect_mutex);
> > +}
> > +EXPORT_SYMBOL_GPL(cti_add_assoc_to_csdev);
> > +
> > +/*
> > + * Update the cross references where the associated device was found
> > + * while we were building the connection info. This will occur if the
> > + * assoc device was registered before the CTI.
> > + */
> > +static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
> > +{
> > +     struct cti_trig_con *tc;
> > +     struct cti_device *ctidev = &drvdata->ctidev;
> > +
> > +     list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > +             if (tc->con_dev)
> > +                     tc->con_dev->ect_dev = drvdata->csdev;
> > +     }
> > +}
> > +
> >  /** cti ect operations **/
> >  int cti_enable(struct coresight_device *csdev)
> >  {
> > @@ -574,6 +658,9 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
> >       drvdata->csdev_release = drvdata->csdev->dev.release;
> >       drvdata->csdev->dev.release = cti_device_release;
> >
> > +     /* set any cross references */
> > +     cti_update_conn_xrefs(drvdata);
> > +
> >       /* all done - dec pm refcount */
> >       pm_runtime_put(&adev->dev);
> >       dev_info(&drvdata->csdev->dev, "CTI initialized\n");
> > diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> > index 3c5bee429105..6721cb1af5fe 100644
> > --- a/drivers/hwtracing/coresight/coresight-platform.c
> > +++ b/drivers/hwtracing/coresight/coresight-platform.c
> > @@ -293,6 +293,12 @@ static int of_get_coresight_platform_data(struct device *dev,
> >
> >       return 0;
> >  }
> > +
> > +static inline const char *of_coresight_get_node_name(struct device *dev)
> > +{
> > +     return dev->of_node->full_name;
> > +}
> > +
> >  #else
> >  static inline int
> >  of_get_coresight_platform_data(struct device *dev,
> > @@ -305,6 +311,11 @@ static inline int of_coresight_get_cpu(struct device *dev)
> >  {
> >       return -ENODEV;
> >  }
> > +
> > +static inline const char *of_coresight_get_node_name(struct device *dev)
> > +{
> > +     return NULL;
> > +}
> >  #endif
> >
> >  #ifdef CONFIG_ACPI
> > @@ -766,6 +777,18 @@ static inline int acpi_coresight_get_cpu(struct device *dev)
> >  }
> >  #endif
> >
> > +const char *coresight_get_fwnode_name(struct device *dev)
> > +{
> > +     const char *node_name = NULL;
> > +     struct fwnode_handle *fwnode = dev_fwnode(dev);
> > +
> > +     if (is_of_node(fwnode))
> > +             node_name = of_coresight_get_node_name(dev);
> > +
> > +     return node_name;
> > +}
> > +EXPORT_SYMBOL_GPL(coresight_get_fwnode_name);
> > +
> >  int coresight_get_cpu(struct device *dev)
> >  {
> >       if (is_of_node(dev->fwnode))
> > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > index aba6b789c969..484e5ec593bb 100644
> > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > @@ -162,6 +162,12 @@ static inline int etm_readl_cp14(u32 off, unsigned int *val) { return 0; }
> >  static inline int etm_writel_cp14(u32 off, u32 val) { return 0; }
> >  #endif
> >
> > +#ifdef CONFIG_CORESIGHT_CTI
> > +extern void cti_add_assoc_to_csdev(struct coresight_device *csdev);
> > +#else
> > +static inline void cti_add_assoc_to_csdev(struct coresight_device *csdev) {}
> > +#endif
> > +
> >  /*
> >   * Macros and inline functions to handle CoreSight UCI data and driver
> >   * private data in AMBA ID table entries, and extract data values.
> > diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> > index 1a5fdf2710ff..7657be009246 100644
> > --- a/drivers/hwtracing/coresight/coresight.c
> > +++ b/drivers/hwtracing/coresight/coresight.c
> > @@ -216,6 +216,31 @@ void coresight_disclaim_device(void __iomem *base)
> >       CS_LOCK(base);
> >  }
> >
> > +/* enable or disable an associated CTI device of the supplied CS device */
> > +static int
> > +coresight_control_assoc_ectdev(struct coresight_device *csdev, bool enable)
> > +{
> > +     int ect_ret = 0;
> > +     struct coresight_device *ect_csdev = csdev->ect_dev;
> > +
> > +     if (!ect_csdev)
> > +             return 0;
> > +
> > +     if (enable) {
> > +             if (ect_ops(ect_csdev)->enable)
> > +                     ect_ret = ect_ops(ect_csdev)->enable(ect_csdev);
> > +     } else {
> > +             if (ect_ops(ect_csdev)->disable)
> > +                     ect_ret = ect_ops(ect_csdev)->disable(ect_csdev);
> > +     }
> > +
> > +     /* output warning if ECT enable is preventing trace operation */
> > +     if (ect_ret)
> > +             dev_info(&csdev->dev, "Associated ECT device (%s) %s failed\n",
> > +              dev_name(&ect_csdev->dev), enable ? "enable" : "disable");
>
> Indentation problem - please replace with:
>
>                 dev_info(&csdev->dev, "Associated ECT device (%s) %s failed\n",
>                          dev_name(&ect_csdev->dev),
>                          enable ? "enable" : "disable");
>
> > +     return ect_ret;
> > +}
> > +
> >  static int coresight_enable_sink(struct coresight_device *csdev,
> >                                u32 mode, void *data)
> >  {
> > @@ -228,11 +253,15 @@ static int coresight_enable_sink(struct coresight_device *csdev,
> >       if (!sink_ops(csdev)->enable)
> >               return -EINVAL;
> >
> > -     ret = sink_ops(csdev)->enable(csdev, mode, data);
> > +     ret = coresight_control_assoc_ectdev(csdev, true);
> >       if (ret)
> >               return ret;
> > +     ret = sink_ops(csdev)->enable(csdev, mode, data);
> > +     if (ret) {
> > +             coresight_control_assoc_ectdev(csdev, false);
> > +             return ret;
> > +     }
> >       csdev->enable = true;
> > -
>
> Unneeded modification.
>
> With the above changes:
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>
> >       return 0;
> >  }
> >
> > @@ -246,6 +275,7 @@ static void coresight_disable_sink(struct coresight_device *csdev)
> >       ret = sink_ops(csdev)->disable(csdev);
> >       if (ret)
> >               return;
> > +     coresight_control_assoc_ectdev(csdev, false);
> >       csdev->enable = false;
> >  }
> >
> > @@ -269,8 +299,15 @@ static int coresight_enable_link(struct coresight_device *csdev,
> >       if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT && outport < 0)
> >               return outport;
> >
> > -     if (link_ops(csdev)->enable)
> > -             ret = link_ops(csdev)->enable(csdev, inport, outport);
> > +     if (link_ops(csdev)->enable) {
> > +             ret = coresight_control_assoc_ectdev(csdev, true);
> > +             if (!ret) {
> > +                     ret = link_ops(csdev)->enable(csdev, inport, outport);
> > +                     if (ret)
> > +                             coresight_control_assoc_ectdev(csdev, false);
> > +             }
> > +     }
> > +
> >       if (!ret)
> >               csdev->enable = true;
> >
> > @@ -300,8 +337,10 @@ static void coresight_disable_link(struct coresight_device *csdev,
> >               nr_conns = 1;
> >       }
> >
> > -     if (link_ops(csdev)->disable)
> > +     if (link_ops(csdev)->disable) {
> >               link_ops(csdev)->disable(csdev, inport, outport);
> > +             coresight_control_assoc_ectdev(csdev, false);
> > +     }
> >
> >       for (i = 0; i < nr_conns; i++)
> >               if (atomic_read(&csdev->refcnt[i]) != 0)
> > @@ -322,9 +361,14 @@ static int coresight_enable_source(struct coresight_device *csdev, u32 mode)
> >
> >       if (!csdev->enable) {
> >               if (source_ops(csdev)->enable) {
> > -                     ret = source_ops(csdev)->enable(csdev, NULL, mode);
> > +                     ret = coresight_control_assoc_ectdev(csdev, true);
> >                       if (ret)
> >                               return ret;
> > +                     ret = source_ops(csdev)->enable(csdev, NULL, mode);
> > +                     if (ret) {
> > +                             coresight_control_assoc_ectdev(csdev, false);
> > +                             return ret;
> > +                     };
> >               }
> >               csdev->enable = true;
> >       }
> > @@ -347,6 +391,7 @@ static bool coresight_disable_source(struct coresight_device *csdev)
> >       if (atomic_dec_return(csdev->refcnt) == 0) {
> >               if (source_ops(csdev)->disable)
> >                       source_ops(csdev)->disable(csdev, NULL);
> > +             coresight_control_assoc_ectdev(csdev, false);
> >               csdev->enable = false;
> >       }
> >       return !csdev->enable;
> > @@ -1252,6 +1297,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
> >
> >       coresight_fixup_device_conns(csdev);
> >       coresight_fixup_orphan_conns(csdev);
> > +     cti_add_assoc_to_csdev(csdev);
> >
> >       mutex_unlock(&coresight_mutex);
> >
> > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > index b3e582d96a34..b5dc9baf0c58 100644
> > --- a/include/linux/coresight.h
> > +++ b/include/linux/coresight.h
> > @@ -163,6 +163,8 @@ struct coresight_connection {
> >   *           activated but not yet enabled.  Enabling for a _sink_
> >   *           appens when a source has been selected for that it.
> >   * @ea:              Device attribute for sink representation under PMU directory.
> > + * @ect_dev: Associated cross trigger device. Not part of the trace data
> > + *           path or connections.
> >   */
> >  struct coresight_device {
> >       struct coresight_platform_data *pdata;
> > @@ -176,6 +178,8 @@ struct coresight_device {
> >       /* sink specific fields */
> >       bool activated; /* true only if a sink is part of a path */
> >       struct dev_ext_attribute *ea;
> > +     /* cross trigger handling */
> > +     struct coresight_device *ect_dev;
> >  };
> >
> >  /*
> > @@ -341,5 +345,6 @@ static inline bool coresight_loses_context_with_cpu(struct device *dev)
> >  extern int coresight_get_cpu(struct device *dev);
> >
> >  struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
> > +extern const char *coresight_get_fwnode_name(struct device *dev);
> >
> >  #endif
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
