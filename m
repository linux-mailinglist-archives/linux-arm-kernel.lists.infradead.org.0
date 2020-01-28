Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2480514C108
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 20:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HB45myilotHZET9Uwg+hyL6nMGAYur2Uh9IUidpYWY=; b=bdm48HU6WLnPep
	LGUFoIs1nwu4lPG05Nn7MzIHO7qTAWHj6H7CuMsFlOWAaX5FLbgXzjMY6+ptnx3qXlm7ylA2dp6TE
	XNvRn3Q0BAVqWTYLbSwrR1i5l798Pru7RpXtjyHiv1tTF3APT/cZVckv1kUnYLoOzVflZT/0y40p9
	wkTtpijNazdDSBc/R1u1/YfiW9vMPJu2IYLIBrgSAOkKra/38D9rEVPg+yrb7SU257op2OIwCBhnC
	Liv8qDxavrSs3Szrsu4/AVCE8u5AucDY8UFQHwIjJK42BUQ3PFizawy/K8bG+5dLVaGfYE0nC+BB+
	D5jz78OcI5+dXMxr/h5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWbB-00028C-Uc; Tue, 28 Jan 2020 19:32:33 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWay-00025v-6K
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 19:32:21 +0000
Received: by mail-qk1-x741.google.com with SMTP id 21so14588936qky.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 11:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k16PGj1qUUwziMfMyn3s5qm2lit+ozL0yN14mkzck48=;
 b=VCuq4zNQI3kDYT7a2bEUe7emt8NIOG2ziynarqCfccw/g+7AtujVoRAlWhtU6S6M1a
 NV+pVh9dmzFPKybyCSQ5aS684JZkjevxgY6nX5F/aOosdYj5nlltq4EfLIZS4aONWGqC
 3MuERsazOp//jGrl2k6VckYP5c/IO09HqrOXCHwH8INvTHTf3vdbCBHw5XhqTmf0Yv4y
 1fpEVTrAx14NpqYWJPElYomJel2KlOMrouExyhNavBdJYTgf0K/Uq4kDjlr9evj/LqLy
 wK1P3tLF9OitxoSEF9VCwru8N5lZZGYI4uXOCN0QaUNjS66pXwnAdioIsa+y9WPcAYBk
 rVPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k16PGj1qUUwziMfMyn3s5qm2lit+ozL0yN14mkzck48=;
 b=U2YrV1B9dYKwb7p3N/0ojEfXnEBGk3AnzIyN1cQqh+YwjwA5Dy8fN7NbNiJEzLMCnP
 yk3ileNAzfUs+Seh2W2U1gAhItxOc8Zz62sdb/2dUWFzdmUG93HUkyUWsuCJLU5YzfnH
 9OZzyB1BU5ePVVcfTwIe8E+no7T8utO2KO+rYS5zh2QbFEZccLAW9E4ryCvsEOATxZpS
 dqOz5tkqrNloZZtdX3ezPYcMJUa/FNDcAWz1tM4xKr6jVkwxHBdM6AZ1pfACON8N+isR
 JVzz+pQFSO9E9wPZiUZEtao5nhAJcI2tvno1ERL/idcY+26QEvneifUx8wKRE8yKpYxd
 vU8w==
X-Gm-Message-State: APjAAAWLZIYWTehPIZoVbFTR4BUfmzTss4EuzBTEtEuKjTion5VCAA8F
 AYBq8QaDQwC2EdJKJgw7gsHJR/1s9EyZ+n66yckUtw==
X-Google-Smtp-Source: APXvYqzjFiCsOsyFZYRIARaX+Cxwp6joYRuRYTlShoJmbGYCjLP+Q9xdZCbgZRx/xiZxfmZYvodgjgU8Xat5WYUFZ3Y=
X-Received: by 2002:a37:9c8a:: with SMTP id
 f132mr23481931qke.432.1580239937466; 
 Tue, 28 Jan 2020 11:32:17 -0800 (PST)
MIME-Version: 1.0
References: <20200113213149.25599-1-mike.leach@linaro.org>
 <20200113213149.25599-9-mike.leach@linaro.org>
 <396fc3a2-083b-29ef-2bb6-2fca066ea0ef@arm.com>
In-Reply-To: <396fc3a2-083b-29ef-2bb6-2fca066ea0ef@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 28 Jan 2020 19:32:06 +0000
Message-ID: <CAJ9a7VghcnAR7V9moPRAFRCTLvce-8qroZ23pG6Z9B3PSM4feQ@mail.gmail.com>
Subject: Re: [PATCH v8 08/15] coresight: cti: Enable CTI associated with
 devices.
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_113220_260348_68E0A34C 
X-CRM114-Status: GOOD (  28.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-msm@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Liviu Dudau <liviu.dudau@arm.com>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Wed, 15 Jan 2020 at 11:14, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 13/01/2020 21:31, Mike Leach wrote:
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
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >   drivers/hwtracing/coresight/coresight-cti.c   | 129 ++++++++++++++++++
> >   drivers/hwtracing/coresight/coresight-cti.h   |   1 +
> >   .../hwtracing/coresight/coresight-platform.c  |   1 +
> >   drivers/hwtracing/coresight/coresight-priv.h  |  12 ++
> >   drivers/hwtracing/coresight/coresight.c       |  71 +++++++++-
> >   include/linux/coresight.h                     |   4 +
> >   6 files changed, 213 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index 77c2af247917..2be1b310e854 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -4,6 +4,7 @@
> >    * Author: Mike Leach <mike.leach@linaro.org>
> >    */
> >
> > +#include <linux/property.h>
> >   #include "coresight-cti.h"
> >
> >   /**
> > @@ -440,6 +441,131 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> >       return err;
> >   }
> >
> > +/*
> > + * Look for a matching connection device name in the list of connections.
> > + * If found then swap in the csdev name, set trig con association pointer
> > + * and return found.
> > + */
> > +static bool
> > +cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> > +                   struct coresight_device *csdev)
> > +{
> > +     struct cti_trig_con *trig_con;
>
> super minor nit: Please use "struct cti_trig_con *tc;" consistent with
> the naming everywhere else. Helps a lot in reading the code, especially
> which has a lot of different structures.
>
> > +     const char *csdev_name;
> > +
> > +     list_for_each_entry(trig_con, &ctidev->trig_cons, node) {
> > +             if (trig_con->con_dev_name) {
>
> This was allocated via devm_* and ...
>
> > +                     if (!strcmp(node_name, trig_con->con_dev_name)) {
> > +                             /* match: so swap in csdev name & dev */
> > +                             kfree(trig_con->con_dev_name);
>
> ... we free it here using kfree() without devm_ being aware. This could
> cause double-free when the device is removed. This should either be
> devm_kfree() or simply overwritten with the new string and leave
> the device cleanup to free it.
>

Agreed - fixed up in v9.

> > +                             csdev_name = dev_name(&csdev->dev);
> > +                             trig_con->con_dev_name =
> > +                                     kstrdup(csdev_name, GFP_KERNEL);
>
> Please use devm_kstrdup() here on the CTI device to have a consistent
> allocation.
>
>
> > +                             trig_con->con_dev = csdev;
> > +                             return true;
> > +                     }
> > +             }
> > +     }
> > +     return false;
> > +}
> >
>
>
> > +/*
> > + * Removing the associated devices is easier.
> > + * A CTI will not have a value for csdev->ect_dev.
> > + */
> > +void cti_remove_assoc_from_csdev(struct coresight_device *csdev)
> > +{
> > +     struct cti_drvdata *ctidrv;
> > +     struct cti_trig_con *tc;
> > +     struct cti_device *ctidev;
> > +
> > +     mutex_lock(&ect_mutex);
> > +     if (csdev->ect_dev) {
> > +             ctidrv = csdev_to_cti_drvdata(csdev->ect_dev);
> > +             ctidev = &ctidrv->ctidev;
> > +             list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > +                     if (tc->con_dev == csdev->ect_dev) {
> > +                             tc->con_dev = NULL;
>
> Should we clear/free the name too ?
>

Not now devm_ allocation is being used.

> > +                             break;
> > +                     }
> > +             }
> > +             csdev->ect_dev = NULL;
> > +     }
> > +     mutex_unlock(&ect_mutex);
> > +}
> > +EXPORT_SYMBOL_GPL(cti_remove_assoc_from_csdev);
> > +
>
> ...
>
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
> > index 469a06a1bb78..578d7e9ac67e 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.h
> > +++ b/drivers/hwtracing/coresight/coresight-cti.h
> > @@ -216,6 +216,7 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> >                     u32 channel_idx);
> >   struct coresight_platform_data *
> >   coresight_cti_get_platform_data(struct device *dev);
> > +const char *cti_plat_get_node_name(struct fwnode_handle *fwnode);
> >
> >   /* cti powered and enabled */
> >   static inline bool cti_active(struct cti_config *cfg)
> > diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> > index 43418a2126ff..421d4fc95f41 100644
> > --- a/drivers/hwtracing/coresight/coresight-platform.c
> > +++ b/drivers/hwtracing/coresight/coresight-platform.c
> > @@ -313,6 +313,7 @@ static int of_get_coresight_platform_data(struct device *dev,
> >
> >       return 0;
> >   }
> > +
>
> nit : spurious hunk ?
>
> >   #else
> >   static inline int
> >   of_get_coresight_platform_data(struct device *dev,
>
> Otherwise looks good to me
>
> Suzuki

Thanks.

Mike

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
