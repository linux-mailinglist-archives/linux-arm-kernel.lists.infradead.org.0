Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CBF33FDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9s7KlHrZ4gaqFzZcPuow3U4R4nfrbykHhD9L8OU6LGg=; b=DhhEEfde+cUI0m
	+ONuJzTK3evu6Gy++Li0keZfbOl9/HN8wZuXMwI2DUmjxiFBYDYTd8TlhDQyqsq8+wDXmGr9CLmNH
	I3ExoY9EV8tIDbvVLcF4ZzOd8/RzgqH1HLcxoK8i0GIvQcpv9/56goF/skSPLrw+eBNGu6ag4WTNs
	9lpxZqdEKai+3RN4lLDgJ+Ddtcp4AdY1CCc7lrMJv2Zl7m4LkB3AZJkglu60ME+4cjQ2AC4W4t855
	8Lmt1ihrYypdVM3/o1lGW6YZ33HzNV71z1ZhdxKdIzpjm3F0ocxaFp7TrheLAcVF0ZfrPLZ/hJJE2
	VG5ZhjyHVBojJfOjjDCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3jX-0004bm-Na; Tue, 04 Jun 2019 07:19:47 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3jO-0004b1-J4
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:19:41 +0000
Received: by mail-ed1-x543.google.com with SMTP id m10so5026199edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=vtyGwP/IWqs4q5mcDLR1C/rEt4hyrJ4N3JXTq8IDBfE=;
 b=AyA38GnYPeQB3HEXzWngJiYcZ+5C4wzgVd7XgexpVkrmMn9zskHShb6XcRhLs2LU9g
 imKaIMEIWugN6Qego5qdPJZz7J9lp5+H+G81sliZe0f/wYyWV4V98eAo/i4+5pNcy310
 ia924kw5XtoGUtG1d4S+TM/ZKNzqzDkK4m4q0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=vtyGwP/IWqs4q5mcDLR1C/rEt4hyrJ4N3JXTq8IDBfE=;
 b=r31QIWytklqXLrJsTgVdiMrwtGQ/tBZTEWQ1c0V0Unznys6pmKalB+l30pMi3FspdQ
 uQ2iBeerRvUGSNxO+9FJEHOD8bx0lFCw1s1uqWS/0jD37g/O7WaLiZYHqG/pokiDFxC2
 +gf4Af43LD953IIiqUT1TYrJCSD9QlnBJrkmfsBY2cjKyyW2VRqcp9qGeoNsUCQ+obrz
 FcQ+8sLkJ+PE5/wFBkuzX3wvd87ikytVwtJ92sdw57TGmAwcIBX2pp3c/mFI+mgg2G0W
 VFFjsd1jf9H0mcWXGQQiv5TuAyZDrlJiUPYkXasT1QUDmK/LXCbA7d86QAFTuPm4M3Ui
 8PlQ==
X-Gm-Message-State: APjAAAV+WFq3D0AYq7MwpT3/fA+ft8qF66FdKSU56Ckt8pvVHvz7emFi
 gWPVQEGKBvk6lgaCvxhxh0pgdA==
X-Google-Smtp-Source: APXvYqzqnsDLh4j6/Y7i2s36bbUD3/G3purtMVXw/GqSyTbOZiz3DXuJJRCCklVo1f7GtvgSVhuzwg==
X-Received: by 2002:a17:906:30c3:: with SMTP id
 b3mr27821931ejb.153.1559632776242; 
 Tue, 04 Jun 2019 00:19:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x22sm4613942edd.59.2019.06.04.00.19.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 00:19:35 -0700 (PDT)
Date: Tue, 4 Jun 2019 09:19:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 1/7] video: add HDMI state notifier support
Message-ID: <20190604071932.GO21222@phenom.ffwll.local>
Mail-Followup-To: Hans Verkuil <hverkuil@xs4all.nl>,
 Cheng-Yi Chiang <cychiang@chromium.org>,
 linux-kernel@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, dianders@chromium.org,
 dgreid@chromium.org, tzungbi@chromium.org,
 linux-media@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Dariusz Marcinkiewicz <darekm@google.com>
References: <20190603043251.226549-1-cychiang@chromium.org>
 <20190603043251.226549-2-cychiang@chromium.org>
 <41e7052b-a58c-5a8c-5d94-37237e0c2070@xs4all.nl>
 <20190603080931.GG21222@phenom.ffwll.local>
 <fdb22eb1-f9c9-93fc-5da4-28bae87eeea3@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fdb22eb1-f9c9-93fc-5da4-28bae87eeea3@xs4all.nl>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_001938_687132_95786FA5 
X-CRM114-Status: GOOD (  40.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-Yi Chiang <cychiang@chromium.org>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Dariusz Marcinkiewicz <darekm@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 11:05:19AM +0200, Hans Verkuil wrote:
> On 6/3/19 10:09 AM, Daniel Vetter wrote:
> > On Mon, Jun 03, 2019 at 09:45:49AM +0200, Hans Verkuil wrote:
> >> On 6/3/19 6:32 AM, Cheng-Yi Chiang wrote:
> >>> From: Hans Verkuil <hans.verkuil@cisco.com>
> >>>
> >>> Add support for HDMI hotplug and EDID notifiers, which is used to convey
> >>> information from HDMI drivers to their CEC and audio counterparts.
> >>>
> >>> Based on an earlier version from Russell King:
> >>>
> >>> https://patchwork.kernel.org/patch/9277043/
> >>>
> >>> The hdmi_notifier is a reference counted object containing the HDMI state
> >>> of an HDMI device.
> >>>
> >>> When a new notifier is registered the current state will be reported to
> >>> that notifier at registration time.
> >>>
> >>> Based on Hans Verkuil's patch:
> >>>
> >>> https://patchwork.kernel.org/patch/9472521/
> >>
> >> Erm, you are aware that this patch morphed into a CEC-specific notifier
> >> found in drivers/media/cec/cec-notifier.c?
> >>
> >> I don't think it makes sense to have two notifier implementations in the kernel.
> >> The original intention was to have the notifier deal with both CEC and ASoC
> >> notifications, but there was not enough interest for the ASoC bits at the time
> >> and it was dropped.
> >>
> >> I am planning changes to the cec-notifier API, I hope to work on that this
> >> week. I'll CC you when I post those. Those might be a good starting point
> >> to convert the cec-notifier to an hdmi-notifier as was originally intended.
> >>
> >> I've added your colleague Dariusz Marcinkiewicz to the CC list since he's been
> >> working on some nice cec-notifier improvements as well.
> > 
> > We also have some interfaces for drm/alsa interactions around hdmi
> > already in drm/drm_audio_component.h, but it's not used by anything
> > outside of i915. Imo we should extend that, not reinvent a new wheel.
> 
> If that can be used instead of this hdmi-notifier, then that's fine by me.
> 
> > Another note: notifiers considered evil, imo. Gets the job done for one
> > case, as soon as you have multiple devices and need to make sure you get
> > the update for the right one it all comes crashing down. Please create an
> > api which registers for updates from a specific device only, plus
> > something that has real callbacks (like the drm_audio_component.h thing we
> > started already).
> 
> For CEC the notifier works very well. But CEC has some special requirements
> that ASoC doesn't have:
> 
> - The cec-notifier can be used by both HDMI transmitters and receivers (so
> has to work with two different subsystems).

From a (very quick) look the cec-notifier.c isn't a pure notifier, but
seems to have some things to get the right endpoint. Also minimal type
safety in callbacks, not just void * everywhere.

> - There may be multiple CEC devices connected to one HDMI transmitter: one
> that is used when the system is in Standby, and a more capable CEC device
> used when the system is powered up. This isn't supported yet, but it is likely
> that we'll need this.
> 
> - HDMI and CEC devices are often completely independent and one or the other
> (or both) can be unbound at any time. A real-world example is when an FPGA
> containing the HDMI and/or CEC support is unloaded to save power when in standby.
> 
> - In some cases you want to register a CEC device via a notifier to an HDMI
> connector based on userspace information. E.g. the popular USB Pulse-Eight CEC
> device can be connected to any HDMI output by the user, there is no way to know
> this in the kernel. An application that knows about the Pulse-Eight currently
> has to parse the EDID and set the Physical Address of the Pulse-Eight accordingly.
> I want to make it possible that the user can just tell the Pulse-Eight which HDMI
> output is used and have it connect to that output using the notifier. I have a
> proof-of-concept, but this needs Dariusz' series to make it work.

I'm not against having glue which can tie together largely unrelated
subsystems and drivers. The things that imo are bad design patterns with
standard modifiers:

- Locking gets in the way sooner or later. Can be fixed with an unlocked
  modifier and your own locking, but at that point just roll your own
  thing like cec-notifier.c.

- void * types everywhere, usually far from a good fit.

- shotgun approach of notifications, everyone gets everything all the
  time. Good notification should send a specific event (using a specific
  callback which has the right parameters as arguments), to a specific
  recipient.

This all doesn't matter for a poc with just one sender and one receiver,
but it becomes a huge pain once you have lots of drivers participating and
lots of devices/connections involved. Really bad example is the fbdev
notifier, which is abused for all kinds of horrible hacks by now, because
the interface doesn't have a solid api contract between sender and
receiver of notification events.

Hope that explains why I'm against standard modifiers, and why I think
cec-notifier.c looks good (without me understanding the details, just from
a quick look).

Cheers, Daniel

> 
> Regards,
> 
> 	Hans
> 
> > -Daniel
> > 
> >>
> >> Regards,
> >>
> >> 	Hans
> >>
> >>>
> >>> Modified by Cheng-Yi Chiang:
> >>>  - Add a section in MAINTAINER.
> >>>  - Changes connected and has_eld to bitfield of unsigned int.
> >>>  - Other minor fixes to pass checkpatch.pl --strict checks.
> >>>
> >>> Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
> >>> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
> >>> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> >>> ---
> >>> The original patch is at
> >>> https://lore.kernel.org/linux-arm-kernel/20161213150813.37966-2-hverkuil@xs4all.nl
> >>>
> >>>  MAINTAINERS                   |   6 ++
> >>>  drivers/video/Kconfig         |   3 +
> >>>  drivers/video/Makefile        |   1 +
> >>>  drivers/video/hdmi-notifier.c | 145 ++++++++++++++++++++++++++++++++++
> >>>  include/linux/hdmi-notifier.h | 112 ++++++++++++++++++++++++++
> >>>  5 files changed, 267 insertions(+)
> >>>  create mode 100644 drivers/video/hdmi-notifier.c
> >>>  create mode 100644 include/linux/hdmi-notifier.h
> >>>
> >>> diff --git a/MAINTAINERS b/MAINTAINERS
> >>> index 5cfbea4ce575..ffb7376f9509 100644
> >>> --- a/MAINTAINERS
> >>> +++ b/MAINTAINERS
> >>> @@ -16676,6 +16676,12 @@ W:	https://linuxtv.org
> >>>  S:	Maintained
> >>>  F:	drivers/media/platform/vicodec/*
> >>>  
> >>> +VIDEO FRAMEWORK
> >>> +M:	Hans Verkuil <hverkuil@xs4all.nl>
> >>> +L:	linux-media@vger.kernel.org
> >>> +F:	drivers/video/hdmi-notifier.*
> >>> +S:	Maintained
> >>> +
> >>>  VIDEO MULTIPLEXER DRIVER
> >>>  M:	Philipp Zabel <p.zabel@pengutronix.de>
> >>>  L:	linux-media@vger.kernel.org
> >>> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> >>> index 83d3d271ca15..000ba9bc0ae7 100644
> >>> --- a/drivers/video/Kconfig
> >>> +++ b/drivers/video/Kconfig
> >>> @@ -34,6 +34,9 @@ config VIDEOMODE_HELPERS
> >>>  config HDMI
> >>>  	bool
> >>>  
> >>> +config HDMI_NOTIFIERS
> >>> +	bool
> >>> +
> >>>  endif # HAS_IOMEM
> >>>  
> >>>  if VT
> >>> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> >>> index df7650adede9..eff4736102ca 100644
> >>> --- a/drivers/video/Makefile
> >>> +++ b/drivers/video/Makefile
> >>> @@ -1,6 +1,7 @@
> >>>  # SPDX-License-Identifier: GPL-2.0
> >>>  obj-$(CONFIG_VGASTATE)            += vgastate.o
> >>>  obj-$(CONFIG_HDMI)                += hdmi.o
> >>> +obj-$(CONFIG_HDMI_NOTIFIERS)      += hdmi-notifier.o
> >>>  
> >>>  obj-$(CONFIG_VT)		  += console/
> >>>  obj-$(CONFIG_FB_STI)		  += console/
> >>> diff --git a/drivers/video/hdmi-notifier.c b/drivers/video/hdmi-notifier.c
> >>> new file mode 100644
> >>> index 000000000000..d1eedf661648
> >>> --- /dev/null
> >>> +++ b/drivers/video/hdmi-notifier.c
> >>> @@ -0,0 +1,145 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/* hdmi-notifier.c - notify interested parties of (dis)connect and EDID
> >>> + * events
> >>> + *
> >>> + * Copyright 2016 Russell King <rmk+kernel@arm.linux.org.uk>
> >>> + * Copyright 2016 Cisco Systems, Inc. and/or its affiliates.
> >>> + * All rights reserved.
> >>> + */
> >>> +
> >>> +#include <linux/export.h>
> >>> +#include <linux/hdmi-notifier.h>
> >>> +#include <linux/string.h>
> >>> +#include <linux/slab.h>
> >>> +#include <linux/list.h>
> >>> +
> >>> +static LIST_HEAD(hdmi_notifiers);
> >>> +static DEFINE_MUTEX(hdmi_notifiers_lock);
> >>> +
> >>> +struct hdmi_notifier *hdmi_notifier_get(struct device *dev)
> >>> +{
> >>> +	struct hdmi_notifier *n;
> >>> +
> >>> +	mutex_lock(&hdmi_notifiers_lock);
> >>> +	list_for_each_entry(n, &hdmi_notifiers, head) {
> >>> +		if (n->dev == dev) {
> >>> +			mutex_unlock(&hdmi_notifiers_lock);
> >>> +			kref_get(&n->kref);
> >>> +			return n;
> >>> +		}
> >>> +	}
> >>> +	n = kzalloc(sizeof(*n), GFP_KERNEL);
> >>> +	if (!n)
> >>> +		goto unlock;
> >>> +	n->dev = dev;
> >>> +	mutex_init(&n->lock);
> >>> +	BLOCKING_INIT_NOTIFIER_HEAD(&n->notifiers);
> >>> +	kref_init(&n->kref);
> >>> +	list_add_tail(&n->head, &hdmi_notifiers);
> >>> +unlock:
> >>> +	mutex_unlock(&hdmi_notifiers_lock);
> >>> +	return n;
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_notifier_get);
> >>> +
> >>> +static void hdmi_notifier_release(struct kref *kref)
> >>> +{
> >>> +	struct hdmi_notifier *n =
> >>> +		container_of(kref, struct hdmi_notifier, kref);
> >>> +
> >>> +	mutex_lock(&hdmi_notifiers_lock);
> >>> +	list_del(&n->head);
> >>> +	mutex_unlock(&hdmi_notifiers_lock);
> >>> +	kfree(n->edid);
> >>> +	kfree(n);
> >>> +}
> >>> +
> >>> +void hdmi_notifier_put(struct hdmi_notifier *n)
> >>> +{
> >>> +	kref_put(&n->kref, hdmi_notifier_release);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_notifier_put);
> >>> +
> >>> +int hdmi_notifier_register(struct hdmi_notifier *n, struct notifier_block *nb)
> >>> +{
> >>> +	int ret = blocking_notifier_chain_register(&n->notifiers, nb);
> >>> +
> >>> +	if (ret)
> >>> +		return ret;
> >>> +	kref_get(&n->kref);
> >>> +	mutex_lock(&n->lock);
> >>> +	if (n->connected) {
> >>> +		blocking_notifier_call_chain(&n->notifiers, HDMI_CONNECTED, n);
> >>> +		if (n->edid_size)
> >>> +			blocking_notifier_call_chain(&n->notifiers,
> >>> +						     HDMI_NEW_EDID, n);
> >>> +		if (n->has_eld)
> >>> +			blocking_notifier_call_chain(&n->notifiers,
> >>> +						     HDMI_NEW_ELD, n);
> >>> +	}
> >>> +	mutex_unlock(&n->lock);
> >>> +	return 0;
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_notifier_register);
> >>> +
> >>> +int hdmi_notifier_unregister(struct hdmi_notifier *n, struct notifier_block *nb)
> >>> +{
> >>> +	int ret = blocking_notifier_chain_unregister(&n->notifiers, nb);
> >>> +
> >>> +	if (ret == 0)
> >>> +		hdmi_notifier_put(n);
> >>> +	return ret;
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_notifier_unregister);
> >>> +
> >>> +void hdmi_event_connect(struct hdmi_notifier *n)
> >>> +{
> >>> +	mutex_lock(&n->lock);
> >>> +	n->connected = true;
> >>> +	blocking_notifier_call_chain(&n->notifiers, HDMI_CONNECTED, n);
> >>> +	mutex_unlock(&n->lock);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_event_connect);
> >>> +
> >>> +void hdmi_event_disconnect(struct hdmi_notifier *n)
> >>> +{
> >>> +	mutex_lock(&n->lock);
> >>> +	n->connected = false;
> >>> +	n->has_eld = false;
> >>> +	n->edid_size = 0;
> >>> +	blocking_notifier_call_chain(&n->notifiers, HDMI_DISCONNECTED, n);
> >>> +	mutex_unlock(&n->lock);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_event_disconnect);
> >>> +
> >>> +int hdmi_event_new_edid(struct hdmi_notifier *n, const void *edid, size_t size)
> >>> +{
> >>> +	mutex_lock(&n->lock);
> >>> +	if (n->edid_allocated_size < size) {
> >>> +		void *p = kmalloc(size, GFP_KERNEL);
> >>> +
> >>> +		if (!p) {
> >>> +			mutex_unlock(&n->lock);
> >>> +			return -ENOMEM;
> >>> +		}
> >>> +		kfree(n->edid);
> >>> +		n->edid = p;
> >>> +		n->edid_allocated_size = size;
> >>> +	}
> >>> +	memcpy(n->edid, edid, size);
> >>> +	n->edid_size = size;
> >>> +	blocking_notifier_call_chain(&n->notifiers, HDMI_NEW_EDID, n);
> >>> +	mutex_unlock(&n->lock);
> >>> +	return 0;
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_event_new_edid);
> >>> +
> >>> +void hdmi_event_new_eld(struct hdmi_notifier *n, const u8 eld[128])
> >>> +{
> >>> +	mutex_lock(&n->lock);
> >>> +	memcpy(n->eld, eld, sizeof(n->eld));
> >>> +	n->has_eld = true;
> >>> +	blocking_notifier_call_chain(&n->notifiers, HDMI_NEW_ELD, n);
> >>> +	mutex_unlock(&n->lock);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(hdmi_event_new_eld);
> >>> diff --git a/include/linux/hdmi-notifier.h b/include/linux/hdmi-notifier.h
> >>> new file mode 100644
> >>> index 000000000000..c8f35110e3e3
> >>> --- /dev/null
> >>> +++ b/include/linux/hdmi-notifier.h
> >>> @@ -0,0 +1,112 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0
> >>> + * hdmi-notifier.h - notify interested parties of (dis)connect and EDID
> >>> + * events
> >>> + *
> >>> + * Copyright 2016 Russell King <rmk+kernel@arm.linux.org.uk>
> >>> + * Copyright 2016 Cisco Systems, Inc. and/or its affiliates.
> >>> + * All rights reserved.
> >>> + */
> >>> +
> >>> +#ifndef LINUX_HDMI_NOTIFIER_H
> >>> +#define LINUX_HDMI_NOTIFIER_H
> >>> +
> >>> +#include <linux/types.h>
> >>> +#include <linux/notifier.h>
> >>> +#include <linux/kref.h>
> >>> +
> >>> +enum {
> >>> +	HDMI_CONNECTED,
> >>> +	HDMI_DISCONNECTED,
> >>> +	HDMI_NEW_EDID,
> >>> +	HDMI_NEW_ELD,
> >>> +};
> >>> +
> >>> +struct device;
> >>> +
> >>> +struct hdmi_notifier {
> >>> +	/* Lock to protect callback registration and notification. */
> >>> +	struct mutex lock;
> >>> +	struct list_head head;
> >>> +	struct kref kref;
> >>> +	struct blocking_notifier_head notifiers;
> >>> +	struct device *dev;
> >>> +
> >>> +	/* Current state */
> >>> +	unsigned int connected : 1;
> >>> +	unsigned int has_eld : 1;
> >>> +	unsigned char eld[128];
> >>> +	void *edid;
> >>> +	size_t edid_size;
> >>> +	size_t edid_allocated_size;
> >>> +};
> >>> +
> >>> +/**
> >>> + * hdmi_notifier_get - find or create a new hdmi_notifier for the given device.
> >>> + * @dev: device that sends the events.
> >>> + *
> >>> + * If a notifier for device @dev already exists, then increase the refcount
> >>> + * and return that notifier.
> >>> + *
> >>> + * If it doesn't exist, then allocate a new notifier struct and return a
> >>> + * pointer to that new struct.
> >>> + *
> >>> + * Return NULL if the memory could not be allocated.
> >>> + */
> >>> +struct hdmi_notifier *hdmi_notifier_get(struct device *dev);
> >>> +
> >>> +/**
> >>> + * hdmi_notifier_put - decrease refcount and delete when the refcount reaches 0.
> >>> + * @n: notifier
> >>> + */
> >>> +void hdmi_notifier_put(struct hdmi_notifier *n);
> >>> +
> >>> +/**
> >>> + * hdmi_notifier_register - register the notifier with the notifier_block.
> >>> + * @n: the HDMI notifier
> >>> + * @nb: the notifier_block
> >>> + */
> >>> +int hdmi_notifier_register(struct hdmi_notifier *n, struct notifier_block *nb);
> >>> +
> >>> +/**
> >>> + * hdmi_notifier_unregister - unregister the notifier with the notifier_block.
> >>> + * @n: the HDMI notifier
> >>> + * @nb: the notifier_block
> >>> + */
> >>> +int hdmi_notifier_unregister(struct hdmi_notifier *n,
> >>> +			     struct notifier_block *nb);
> >>> +
> >>> +/**
> >>> + * hdmi_event_connect - send a connect event.
> >>> + * @n: the HDMI notifier
> >>> + *
> >>> + * Send an HDMI_CONNECTED event to any registered parties.
> >>> + */
> >>> +void hdmi_event_connect(struct hdmi_notifier *n);
> >>> +
> >>> +/**
> >>> + * hdmi_event_disconnect - send a disconnect event.
> >>> + * @n: the HDMI notifier
> >>> + *
> >>> + * Send an HDMI_DISCONNECTED event to any registered parties.
> >>> + */
> >>> +void hdmi_event_disconnect(struct hdmi_notifier *n);
> >>> +
> >>> +/**
> >>> + * hdmi_event_new_edid - send a new EDID event.
> >>> + * @n: the HDMI notifier
> >>> + *
> >>> + * Send an HDMI_NEW_EDID event to any registered parties.
> >>> + * This function will make a copy the EDID so it can return -ENOMEM if
> >>> + * no memory could be allocated.
> >>> + */
> >>> +int hdmi_event_new_edid(struct hdmi_notifier *n, const void *edid, size_t size);
> >>> +
> >>> +/**
> >>> + * hdmi_event_new_eld - send a new ELD event.
> >>> + * @n: the HDMI notifier
> >>> + *
> >>> + * Send an HDMI_NEW_ELD event to any registered parties.
> >>> + */
> >>> +void hdmi_event_new_eld(struct hdmi_notifier *n, const u8 eld[128]);
> >>> +
> >>> +#endif
> >>>
> >>
> > 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
