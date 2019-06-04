Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C89E33D33
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 04:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Go8sZ3nZbgxCVBvh/eS5H+zyT1ZaCxJnyUSinhq22r0=; b=oTLJgTQJ9FPaFX
	SPzBUSRvKaQLwoilj5EuvGgznOXl+rwv1AffTdA/gwKLbob9Ed8+Q6mEIY8+HDjW0QQyu+ahsxj8H
	GwXz9k/bsIEIUg2yk/+4gqnQ+7sK/3jrGfuCOp3xg5eamsHN/sn9zyUn/iV30Wz3UMBCBfLCoeAIU
	3SY9zkUNWZsA63+Q8m6GXlHYex+6O/Ol/8nhc1jZP1MuZFvgHLr60yHCLA/NUFS221X251d7Or8wM
	PFccHU89w6g1YJ3VecRaPUQQZQ6cRQ1lEqwVHw4cWHC87XZLg9ML2s9hNlnjuMIHEEbm9+fcr+ew/
	Wboxl2s0dBeDoVkOydVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXzGS-000217-A7; Tue, 04 Jun 2019 02:33:28 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXzGJ-0001zW-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 02:33:22 +0000
Received: by mail-ua1-x943.google.com with SMTP id s4so140285uad.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 19:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L9qrn6ZWOL4a9ABbLwhwNcXe2mxBi3b41bjsqVx1qKg=;
 b=L2wgBJ6WPnx89IRlNzIfIT6Vdkfeyqjm5omuEYhjjjKu2o4EOPXcTDX3waZgh8YilK
 yXSZaTMDHI88pQ81iaqpZFQLN6WapthvBpjDY69PmVkeZ2KF1T4t0gExFf68zngJJrXg
 WXTC/E8o0dIVs4y3maxRaGNsDu22nyB8Ppob8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L9qrn6ZWOL4a9ABbLwhwNcXe2mxBi3b41bjsqVx1qKg=;
 b=kmnCOHavTOGjFtGvUdGRav/IzstknD4kVXqw5lQjja7AEnVhyoa40J/rkDTRKOQ0sa
 HVvMr4HztLDSYyCDlf7H/Gq3NGy8cCUliwoJVNJw5dR+fRKIXfR3SzDsGkdTJgVTSvoW
 viMKyBSkeQQftMW/q42y7ZJ7cf1G6gjsBpqZ0IF7+eRK72yXFD43egu7cA3+Au/Peb9w
 59KWZz5sF7a7d/3WEexjcRzHh/M8E3M3u66iQFjPKGMPFW0ykiN2hqBKIqex9BwI41Nf
 BM83JLN9Ml4IfVjSLLBIjAF1RGzlOm5pHHHFRhu1vvrPmJkveHEWUdR1YK3Zyiy8Me6t
 HSag==
X-Gm-Message-State: APjAAAXM7oXaSkTCknHhv4f6B+1INR1BM7b9nZR/uWP2gaPnlzlAB0/+
 SDORj3d0b25WK7eFlpcPTy0HHmmSqFJ9naJ4yNoOXg==
X-Google-Smtp-Source: APXvYqy4Rq54iSIDtGCA/AunF9GIqYwM1bmFuUVYZW9SWfV6PmQgE1hoj/71fJmhG6DWLEGWcRjIfxBR6ysqTzASKD0=
X-Received: by 2002:ab0:6444:: with SMTP id j4mr14852876uap.105.1559615597770; 
 Mon, 03 Jun 2019 19:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190603043251.226549-1-cychiang@chromium.org>
 <20190603043251.226549-2-cychiang@chromium.org>
 <41e7052b-a58c-5a8c-5d94-37237e0c2070@xs4all.nl>
 <20190603080931.GG21222@phenom.ffwll.local>
In-Reply-To: <20190603080931.GG21222@phenom.ffwll.local>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 4 Jun 2019 10:32:50 +0800
Message-ID: <CAFv8Nw+1sB8i1d87vLeKxRricZOi4gnXFSgOzW9k0sa_Tzybjg@mail.gmail.com>
Subject: Re: [PATCH 1/7] video: add HDMI state notifier support
To: Hans Verkuil <hverkuil@xs4all.nl>, Cheng-Yi Chiang <cychiang@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Mark Brown <broonie@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, 
 Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, 
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Doug Anderson <dianders@chromium.org>, Dylan Reid <dgreid@chromium.org>,
 tzungbi@chromium.org, linux-media@vger.kernel.org, 
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, Dariusz Marcinkiewicz <darekm@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_193319_710110_18D6E6F0 
X-CRM114-Status: GOOD (  39.56  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 4:09 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, Jun 03, 2019 at 09:45:49AM +0200, Hans Verkuil wrote:
> > On 6/3/19 6:32 AM, Cheng-Yi Chiang wrote:
> > > From: Hans Verkuil <hans.verkuil@cisco.com>
> > >
> > > Add support for HDMI hotplug and EDID notifiers, which is used to convey
> > > information from HDMI drivers to their CEC and audio counterparts.
> > >
> > > Based on an earlier version from Russell King:
> > >
> > > https://patchwork.kernel.org/patch/9277043/
> > >
> > > The hdmi_notifier is a reference counted object containing the HDMI state
> > > of an HDMI device.
> > >
> > > When a new notifier is registered the current state will be reported to
> > > that notifier at registration time.
> > >
> > > Based on Hans Verkuil's patch:
> > >
> > > https://patchwork.kernel.org/patch/9472521/
> >
> > Erm, you are aware that this patch morphed into a CEC-specific notifier
> > found in drivers/media/cec/cec-notifier.c?
> >
> > I don't think it makes sense to have two notifier implementations in the kernel.
> > The original intention was to have the notifier deal with both CEC and ASoC
> > notifications, but there was not enough interest for the ASoC bits at the time
> > and it was dropped.
> >
> > I am planning changes to the cec-notifier API, I hope to work on that this
> > week. I'll CC you when I post those. Those might be a good starting point
> > to convert the cec-notifier to an hdmi-notifier as was originally intended.
> >
> > I've added your colleague Dariusz Marcinkiewicz to the CC list since he's been
> > working on some nice cec-notifier improvements as well.
>
> We also have some interfaces for drm/alsa interactions around hdmi
> already in drm/drm_audio_component.h, but it's not used by anything
> outside of i915. Imo we should extend that, not reinvent a new wheel.
>
Hi Daniel,
Thank you for the pointer. Looking at the ops, it seems that it is
specific to HDA.
I am not familiar with drm and HDA. I am not sure how applicable it
would be to report jack status to ASoC.
There is a use case in sound/soc/codecs/hdac_hdmi.c though so it
should be possible.

> Another note: notifiers considered evil, imo. Gets the job done for one
> case, as soon as you have multiple devices and need to make sure you get
> the update for the right one it all comes crashing down. Please create an
> api which registers for updates from a specific device only, plus
> something that has real callbacks (like the drm_audio_component.h thing we
> started already).

To clarify a bit, this hdmi-notifier indeed supports updating from a
specific device only.
hdmi_notifier_get takes a device and return the notifier.

It seems that a major difference between drm_audio_components and
hdmi-notifier is that
drm_audio_components defines all supported ops in drm_audio_component_audio_ops.
On the other hand, hdmi-notifier passes different events using an enum
like HDMI_CONNECTED and let listener handle different events.
In this regard I agree with you that drm_audio_component is cleaner.
Anyway, I will look into it a bit more and see how it works.

Thanks again!

> -Daniel
>
> >
> > Regards,
> >
> >       Hans
> >
> > >
> > > Modified by Cheng-Yi Chiang:
> > >  - Add a section in MAINTAINER.
> > >  - Changes connected and has_eld to bitfield of unsigned int.
> > >  - Other minor fixes to pass checkpatch.pl --strict checks.
> > >
> > > Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
> > > Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
> > > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > > ---
> > > The original patch is at
> > > https://lore.kernel.org/linux-arm-kernel/20161213150813.37966-2-hverkuil@xs4all.nl
> > >
> > >  MAINTAINERS                   |   6 ++
> > >  drivers/video/Kconfig         |   3 +
> > >  drivers/video/Makefile        |   1 +
> > >  drivers/video/hdmi-notifier.c | 145 ++++++++++++++++++++++++++++++++++
> > >  include/linux/hdmi-notifier.h | 112 ++++++++++++++++++++++++++
> > >  5 files changed, 267 insertions(+)
> > >  create mode 100644 drivers/video/hdmi-notifier.c
> > >  create mode 100644 include/linux/hdmi-notifier.h
> > >
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 5cfbea4ce575..ffb7376f9509 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -16676,6 +16676,12 @@ W: https://linuxtv.org
> > >  S: Maintained
> > >  F: drivers/media/platform/vicodec/*
> > >
> > > +VIDEO FRAMEWORK
> > > +M: Hans Verkuil <hverkuil@xs4all.nl>
> > > +L: linux-media@vger.kernel.org
> > > +F: drivers/video/hdmi-notifier.*
> > > +S: Maintained
> > > +
> > >  VIDEO MULTIPLEXER DRIVER
> > >  M: Philipp Zabel <p.zabel@pengutronix.de>
> > >  L: linux-media@vger.kernel.org
> > > diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> > > index 83d3d271ca15..000ba9bc0ae7 100644
> > > --- a/drivers/video/Kconfig
> > > +++ b/drivers/video/Kconfig
> > > @@ -34,6 +34,9 @@ config VIDEOMODE_HELPERS
> > >  config HDMI
> > >     bool
> > >
> > > +config HDMI_NOTIFIERS
> > > +   bool
> > > +
> > >  endif # HAS_IOMEM
> > >
> > >  if VT
> > > diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> > > index df7650adede9..eff4736102ca 100644
> > > --- a/drivers/video/Makefile
> > > +++ b/drivers/video/Makefile
> > > @@ -1,6 +1,7 @@
> > >  # SPDX-License-Identifier: GPL-2.0
> > >  obj-$(CONFIG_VGASTATE)            += vgastate.o
> > >  obj-$(CONFIG_HDMI)                += hdmi.o
> > > +obj-$(CONFIG_HDMI_NOTIFIERS)      += hdmi-notifier.o
> > >
> > >  obj-$(CONFIG_VT)             += console/
> > >  obj-$(CONFIG_FB_STI)                 += console/
> > > diff --git a/drivers/video/hdmi-notifier.c b/drivers/video/hdmi-notifier.c
> > > new file mode 100644
> > > index 000000000000..d1eedf661648
> > > --- /dev/null
> > > +++ b/drivers/video/hdmi-notifier.c
> > > @@ -0,0 +1,145 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/* hdmi-notifier.c - notify interested parties of (dis)connect and EDID
> > > + * events
> > > + *
> > > + * Copyright 2016 Russell King <rmk+kernel@arm.linux.org.uk>
> > > + * Copyright 2016 Cisco Systems, Inc. and/or its affiliates.
> > > + * All rights reserved.
> > > + */
> > > +
> > > +#include <linux/export.h>
> > > +#include <linux/hdmi-notifier.h>
> > > +#include <linux/string.h>
> > > +#include <linux/slab.h>
> > > +#include <linux/list.h>
> > > +
> > > +static LIST_HEAD(hdmi_notifiers);
> > > +static DEFINE_MUTEX(hdmi_notifiers_lock);
> > > +
> > > +struct hdmi_notifier *hdmi_notifier_get(struct device *dev)
> > > +{
> > > +   struct hdmi_notifier *n;
> > > +
> > > +   mutex_lock(&hdmi_notifiers_lock);
> > > +   list_for_each_entry(n, &hdmi_notifiers, head) {
> > > +           if (n->dev == dev) {
> > > +                   mutex_unlock(&hdmi_notifiers_lock);
> > > +                   kref_get(&n->kref);
> > > +                   return n;
> > > +           }
> > > +   }
> > > +   n = kzalloc(sizeof(*n), GFP_KERNEL);
> > > +   if (!n)
> > > +           goto unlock;
> > > +   n->dev = dev;
> > > +   mutex_init(&n->lock);
> > > +   BLOCKING_INIT_NOTIFIER_HEAD(&n->notifiers);
> > > +   kref_init(&n->kref);
> > > +   list_add_tail(&n->head, &hdmi_notifiers);
> > > +unlock:
> > > +   mutex_unlock(&hdmi_notifiers_lock);
> > > +   return n;
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_notifier_get);
> > > +
> > > +static void hdmi_notifier_release(struct kref *kref)
> > > +{
> > > +   struct hdmi_notifier *n =
> > > +           container_of(kref, struct hdmi_notifier, kref);
> > > +
> > > +   mutex_lock(&hdmi_notifiers_lock);
> > > +   list_del(&n->head);
> > > +   mutex_unlock(&hdmi_notifiers_lock);
> > > +   kfree(n->edid);
> > > +   kfree(n);
> > > +}
> > > +
> > > +void hdmi_notifier_put(struct hdmi_notifier *n)
> > > +{
> > > +   kref_put(&n->kref, hdmi_notifier_release);
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_notifier_put);
> > > +
> > > +int hdmi_notifier_register(struct hdmi_notifier *n, struct notifier_block *nb)
> > > +{
> > > +   int ret = blocking_notifier_chain_register(&n->notifiers, nb);
> > > +
> > > +   if (ret)
> > > +           return ret;
> > > +   kref_get(&n->kref);
> > > +   mutex_lock(&n->lock);
> > > +   if (n->connected) {
> > > +           blocking_notifier_call_chain(&n->notifiers, HDMI_CONNECTED, n);
> > > +           if (n->edid_size)
> > > +                   blocking_notifier_call_chain(&n->notifiers,
> > > +                                                HDMI_NEW_EDID, n);
> > > +           if (n->has_eld)
> > > +                   blocking_notifier_call_chain(&n->notifiers,
> > > +                                                HDMI_NEW_ELD, n);
> > > +   }
> > > +   mutex_unlock(&n->lock);
> > > +   return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_notifier_register);
> > > +
> > > +int hdmi_notifier_unregister(struct hdmi_notifier *n, struct notifier_block *nb)
> > > +{
> > > +   int ret = blocking_notifier_chain_unregister(&n->notifiers, nb);
> > > +
> > > +   if (ret == 0)
> > > +           hdmi_notifier_put(n);
> > > +   return ret;
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_notifier_unregister);
> > > +
> > > +void hdmi_event_connect(struct hdmi_notifier *n)
> > > +{
> > > +   mutex_lock(&n->lock);
> > > +   n->connected = true;
> > > +   blocking_notifier_call_chain(&n->notifiers, HDMI_CONNECTED, n);
> > > +   mutex_unlock(&n->lock);
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_event_connect);
> > > +
> > > +void hdmi_event_disconnect(struct hdmi_notifier *n)
> > > +{
> > > +   mutex_lock(&n->lock);
> > > +   n->connected = false;
> > > +   n->has_eld = false;
> > > +   n->edid_size = 0;
> > > +   blocking_notifier_call_chain(&n->notifiers, HDMI_DISCONNECTED, n);
> > > +   mutex_unlock(&n->lock);
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_event_disconnect);
> > > +
> > > +int hdmi_event_new_edid(struct hdmi_notifier *n, const void *edid, size_t size)
> > > +{
> > > +   mutex_lock(&n->lock);
> > > +   if (n->edid_allocated_size < size) {
> > > +           void *p = kmalloc(size, GFP_KERNEL);
> > > +
> > > +           if (!p) {
> > > +                   mutex_unlock(&n->lock);
> > > +                   return -ENOMEM;
> > > +           }
> > > +           kfree(n->edid);
> > > +           n->edid = p;
> > > +           n->edid_allocated_size = size;
> > > +   }
> > > +   memcpy(n->edid, edid, size);
> > > +   n->edid_size = size;
> > > +   blocking_notifier_call_chain(&n->notifiers, HDMI_NEW_EDID, n);
> > > +   mutex_unlock(&n->lock);
> > > +   return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_event_new_edid);
> > > +
> > > +void hdmi_event_new_eld(struct hdmi_notifier *n, const u8 eld[128])
> > > +{
> > > +   mutex_lock(&n->lock);
> > > +   memcpy(n->eld, eld, sizeof(n->eld));
> > > +   n->has_eld = true;
> > > +   blocking_notifier_call_chain(&n->notifiers, HDMI_NEW_ELD, n);
> > > +   mutex_unlock(&n->lock);
> > > +}
> > > +EXPORT_SYMBOL_GPL(hdmi_event_new_eld);
> > > diff --git a/include/linux/hdmi-notifier.h b/include/linux/hdmi-notifier.h
> > > new file mode 100644
> > > index 000000000000..c8f35110e3e3
> > > --- /dev/null
> > > +++ b/include/linux/hdmi-notifier.h
> > > @@ -0,0 +1,112 @@
> > > +/* SPDX-License-Identifier: GPL-2.0
> > > + * hdmi-notifier.h - notify interested parties of (dis)connect and EDID
> > > + * events
> > > + *
> > > + * Copyright 2016 Russell King <rmk+kernel@arm.linux.org.uk>
> > > + * Copyright 2016 Cisco Systems, Inc. and/or its affiliates.
> > > + * All rights reserved.
> > > + */
> > > +
> > > +#ifndef LINUX_HDMI_NOTIFIER_H
> > > +#define LINUX_HDMI_NOTIFIER_H
> > > +
> > > +#include <linux/types.h>
> > > +#include <linux/notifier.h>
> > > +#include <linux/kref.h>
> > > +
> > > +enum {
> > > +   HDMI_CONNECTED,
> > > +   HDMI_DISCONNECTED,
> > > +   HDMI_NEW_EDID,
> > > +   HDMI_NEW_ELD,
> > > +};
> > > +
> > > +struct device;
> > > +
> > > +struct hdmi_notifier {
> > > +   /* Lock to protect callback registration and notification. */
> > > +   struct mutex lock;
> > > +   struct list_head head;
> > > +   struct kref kref;
> > > +   struct blocking_notifier_head notifiers;
> > > +   struct device *dev;
> > > +
> > > +   /* Current state */
> > > +   unsigned int connected : 1;
> > > +   unsigned int has_eld : 1;
> > > +   unsigned char eld[128];
> > > +   void *edid;
> > > +   size_t edid_size;
> > > +   size_t edid_allocated_size;
> > > +};
> > > +
> > > +/**
> > > + * hdmi_notifier_get - find or create a new hdmi_notifier for the given device.
> > > + * @dev: device that sends the events.
> > > + *
> > > + * If a notifier for device @dev already exists, then increase the refcount
> > > + * and return that notifier.
> > > + *
> > > + * If it doesn't exist, then allocate a new notifier struct and return a
> > > + * pointer to that new struct.
> > > + *
> > > + * Return NULL if the memory could not be allocated.
> > > + */
> > > +struct hdmi_notifier *hdmi_notifier_get(struct device *dev);
> > > +
> > > +/**
> > > + * hdmi_notifier_put - decrease refcount and delete when the refcount reaches 0.
> > > + * @n: notifier
> > > + */
> > > +void hdmi_notifier_put(struct hdmi_notifier *n);
> > > +
> > > +/**
> > > + * hdmi_notifier_register - register the notifier with the notifier_block.
> > > + * @n: the HDMI notifier
> > > + * @nb: the notifier_block
> > > + */
> > > +int hdmi_notifier_register(struct hdmi_notifier *n, struct notifier_block *nb);
> > > +
> > > +/**
> > > + * hdmi_notifier_unregister - unregister the notifier with the notifier_block.
> > > + * @n: the HDMI notifier
> > > + * @nb: the notifier_block
> > > + */
> > > +int hdmi_notifier_unregister(struct hdmi_notifier *n,
> > > +                        struct notifier_block *nb);
> > > +
> > > +/**
> > > + * hdmi_event_connect - send a connect event.
> > > + * @n: the HDMI notifier
> > > + *
> > > + * Send an HDMI_CONNECTED event to any registered parties.
> > > + */
> > > +void hdmi_event_connect(struct hdmi_notifier *n);
> > > +
> > > +/**
> > > + * hdmi_event_disconnect - send a disconnect event.
> > > + * @n: the HDMI notifier
> > > + *
> > > + * Send an HDMI_DISCONNECTED event to any registered parties.
> > > + */
> > > +void hdmi_event_disconnect(struct hdmi_notifier *n);
> > > +
> > > +/**
> > > + * hdmi_event_new_edid - send a new EDID event.
> > > + * @n: the HDMI notifier
> > > + *
> > > + * Send an HDMI_NEW_EDID event to any registered parties.
> > > + * This function will make a copy the EDID so it can return -ENOMEM if
> > > + * no memory could be allocated.
> > > + */
> > > +int hdmi_event_new_edid(struct hdmi_notifier *n, const void *edid, size_t size);
> > > +
> > > +/**
> > > + * hdmi_event_new_eld - send a new ELD event.
> > > + * @n: the HDMI notifier
> > > + *
> > > + * Send an HDMI_NEW_ELD event to any registered parties.
> > > + */
> > > +void hdmi_event_new_eld(struct hdmi_notifier *n, const u8 eld[128]);
> > > +
> > > +#endif
> > >
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
