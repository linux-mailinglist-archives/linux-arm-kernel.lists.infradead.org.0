Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C786F1144E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asUPU4EzYr0uvC9S3/yzitqDvLmsLgU3A8JJr8JEU+8=; b=LMBJybaTo7Ro4J
	PHBgSYR8INcZCd3kdNCXbpZ2/9Ww+Bb8uDL9OBn/dZ/HX28vbLd2W3rjcUF8vRcUkXAe/VU2js6ab
	JmFAf/7EVKNvc5FrycDQz80YHtKW2k4FDy1+GXpCRrdOy12llbaGrrbovA0QhRmgkAEoCDh7MK5OJ
	rxaYnvHBySyHGdNCad5BOqJVnyQT+L/s6IYHUshiD6KZpmf04+123T19YwwIZE5fp3Hy2ghIGQx24
	7g98Qy41sKZT02lN1PnoxSoHAlOTB0b7VcTlV3aI6Gwh0Rxuam5k1YexsK0dbeLK287jbFrK6nsR5
	IW7g8S2jUn5RnWq5uZ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icu4y-0002IJ-Dj; Thu, 05 Dec 2019 16:34:12 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icu4n-0002HW-8I
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:34:02 +0000
Received: by mail-qk1-x744.google.com with SMTP id v19so3880835qkv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1i0Hg6ZnYZjSvrzvTs3pVnY9qvUYi6hMWaoWggpCvjc=;
 b=kmhdJ9xoR3I98qefDT20OxOVbNxbofeUFPgQ4cPenEI6c+Xup8fsAYDMsdKwU5BP+E
 tbk2pY2NgyFRp+Z5x97t5KjMYm2D8HCi44g2Tlm9H7Lh7Vx+vFEMFzjYuWFiL8VVnjTC
 4hJoL/e3VwGde+esWVTXHhO4kcY7HjgOkh9Y/iVuxlByTHjgiAvBNUVcRnsYvfSMQ1lo
 KuYYEArTdc1W/VQ9qHrQGZ1A1MyQ5d07mpo/ZB7KoXcT4RnVSGwDmwa9cYl707+BxL8G
 GhqeXG1pFHWwo3R6RwpJBwMb3N8z6W+URo//UFBhM6rCr6iPPR/VYBiR9VnJ1aIhOjwU
 nQZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1i0Hg6ZnYZjSvrzvTs3pVnY9qvUYi6hMWaoWggpCvjc=;
 b=K2LvQmhSbRBebSCaoGGzaNWkHdL4BJlZFxwAU23lPPnkJZXgARZnxcWy0RJjLHKekY
 VG1b9VwveETjqij5lW5ca10x90ne2bxAsiq7vUabki7n3q7j9tLZSlKjnDiAyDpKU6vj
 CHD8AOBJiRNiNkTicFjNsZ0hTuagmkFImA8mv4k6OtQCkIZ/Lf8QPJty9oKedNb8sGfW
 dgnSCVy1FNw87IlfwGJvdFdCpS9dcku/iYU9cMybMuX/kssNiOi9HLF2CekyKgL2vesN
 XerCN8LKqCBmpyvs2TxXBTLsQMiJRTauvTHvQYs5GeR0w5eEVMU7Jg9lUr0WrMV20H6Z
 lz0w==
X-Gm-Message-State: APjAAAVFoIvr98l6Qek4kYG6/zmXccYqYctsqiKyApmE7g844EEwc3Yx
 1tBH4kcZYoG4riyteLhE7eCGAngjbVLgyttKtjMr9A==
X-Google-Smtp-Source: APXvYqyWhQOYkQL9Ru+kEYyGLQfb4hzNsBlKF1Y79u8XblKr1S4E+jkNAbXNJlAzs5eu5QrADECVjeemeYAnb7EDm3I=
X-Received: by 2002:a37:c205:: with SMTP id i5mr3001773qkm.118.1575563638466; 
 Thu, 05 Dec 2019 08:33:58 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-9-mike.leach@linaro.org>
 <c48fe3ee-335b-3dfb-33c1-a2cd7d5a00e6@arm.com>
In-Reply-To: <c48fe3ee-335b-3dfb-33c1-a2cd7d5a00e6@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 5 Dec 2019 16:33:47 +0000
Message-ID: <CAJ9a7VgmacktAVtyN_wemEVx2cydhaXQ8frQOEarAiRog7fbcQ@mail.gmail.com>
Subject: Re: [PATCH v5 08/14] coresight: cti: Enable CTI associated with
 devices.
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_083401_306746_E776A22E 
X-CRM114-Status: GOOD (  38.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki

On Fri, 29 Nov 2019 at 18:28, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 19/11/2019 23:19, Mike Leach wrote:
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
> >   drivers/hwtracing/coresight/coresight-cti.c   | 87 +++++++++++++++++++
> >   .../hwtracing/coresight/coresight-platform.c  | 23 +++++
> >   drivers/hwtracing/coresight/coresight-priv.h  |  6 ++
> >   drivers/hwtracing/coresight/coresight.c       | 58 +++++++++++--
> >   include/linux/coresight.h                     |  5 ++
> >   5 files changed, 173 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index 369488dd7b8e..cf116463149a 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -440,6 +440,90 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> >       return err;
> >   }
> >
> > +/*
> > + * Look for a matching connection device name in the list of
> > + * connections. If found then swap in the csdev name and return
> > + * found.
> > + */
> > +static bool
> > +cti_match_con_name(struct cti_device *ctidev, const char *node_name,
> > +                const char *csdev_name)
>
> Here we actually fixup the name of the connection, rather than simply
> matching it. So it may be apt to rename this to cti_match_fixup_name()
>

Agreed.

> > +{
> > +     struct cti_trig_con *trig_con;
> > +
> > +     list_for_each_entry(trig_con, &ctidev->trig_cons, node) {
> > +             if (trig_con->con_dev_name) {
> > +                     if (!strcmp(node_name, trig_con->con_dev_name)) {
>
> Can there be duplicate node_name's ? Does it make sense to store the
> fwhandle along with the "temporary node_name" to match it later while
> fixing up ?
>
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
>
>
> > +/*
> > + * Search the cti list to add an associated CTI into the supplied CS device
> > + * This will set the association if CTI declared before the CS device
> > + */
> > +void cti_add_assoc_to_csdev(struct coresight_device *csdev)
> > +{
>
> ..
>
>  > +    struct cti_drvdata *ect_item;
>  > +    struct cti_device *ctidev;
>  > +    const char *node_name = NULL, *csdev_name;
>  > +
>  > +    /* protect the list */
>  > +    mutex_lock(&ect_mutex);
>  > +
>  > +    /* exit if current is an ECT device.*/
>  > +    if ((csdev->type == CORESIGHT_DEV_TYPE_ECT) || list_empty(&ect_net))
>  > +            goto cti_add_done;
>  > +
>  > +    /* if we didn't find the csdev previously we used the fwnode name */
>  > +    node_name = coresight_get_fwnode_name(csdev->dev.parent);
>
> We used "cti_plat_get_node_name()" when we added the name in the
> absence of csdev in patch 7, could we not reuse the function here ?
>

Agreed - I'll remove the superfluous function.

>  > +
>  > +    if (!node_name)
>  > +            goto cti_add_done;
>  > +
>  > +    /* this is the name we want to use for the association */
>  > +    csdev_name = dev_name(&csdev->dev);
>
>
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
>
>                         break; instead ?
>
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
>
> Does this need to take the coresight_mutex to avoid racing against
> a coresight_enable_path() ? Though this may be fine as long as the
> CTI driver detects that that device was not enabled.
>

Given this happens during probe, normally before trace is being
enabled this seems unlikely.
That said - the converse function happens inside the mutex, so this should too.

> Also, it looks like we have a potential issue with perf vs sysfs mode.
> The perf mode doesn't seem to take the coresight_mutex, for
> build_path/enable_path operations. This is outside the scope of this
> series though.
>
> > +}
> > +
> >   /** cti ect operations **/
> >   int cti_enable(struct coresight_device *csdev)
> >   {
> > @@ -574,6 +658,9 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
> >       drvdata->csdev_release = drvdata->csdev->dev.release;
> >       drvdata->csdev->dev.release = cti_device_release;
> >
> > +     /* set any cross references */
> > +     cti_update_conn_xrefs(drvdata);
> > +
>         /* all done - dec pm refcount */
> >       pm_runtime_put(&adev->dev);
> >       dev_info(&drvdata->csdev->dev, "CTI initialized\n");
> > diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> > index 3c5bee429105..6721cb1af5fe 100644
> > --- a/drivers/hwtracing/coresight/coresight-platform.c
> > +++ b/drivers/hwtracing/coresight/coresight-platform.c
> > @@ -293,6 +293,12 @@ static int of_get_coresight_platform_data(struct device *dev,
> >
> >       return 0;
> >   }
> > +
> > +static inline const char *of_coresight_get_node_name(struct device *dev)
> > +{
> > +     return dev->of_node->full_name;
> > +}
> > +
> >   #else
> >   static inline int
> >   of_get_coresight_platform_data(struct device *dev,
> > @@ -305,6 +311,11 @@ static inline int of_coresight_get_cpu(struct device *dev)
> >   {
> >       return -ENODEV;
> >   }
> > +
> > +static inline const char *of_coresight_get_node_name(struct device *dev)
> > +{
> > +     return NULL;
> > +}
> >   #endif
> >
> >   #ifdef CONFIG_ACPI
> > @@ -766,6 +777,18 @@ static inline int acpi_coresight_get_cpu(struct device *dev)
> >   }
> >   #endif
> >
> > +const char *coresight_get_fwnode_name(struct device *dev)
>
> As mentioned above, please could we reuse the name helper we used
> during the insertion rather than introducing a new wrapper which
> effectively does the same thing ?
>

Agreed.

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
>
> Why does this get exported ? If a following patch needs it, you may
> always do that when you need it.
>
>
> Cheers
> Suzuki

Thanks


Mike

--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
