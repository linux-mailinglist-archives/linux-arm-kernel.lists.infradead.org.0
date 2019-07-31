Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59837C8E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4RYntUNfB/ZuLj8HMjHWhE7UqP7g1QXN8zuNYgs+ZU=; b=Prrjm0GfwXjaeh
	OOcGyrRTOBX8irHYiIOa0yzP7Ckrk997fmuSsjMDlhIQBIr0pHnynIwZX8JRX/vk39Bn11nHLMl5h
	tg7xPCUsMIAwyhWUhyyW5jX8i4zsfaUtA5auHCsv3M/2BShH0y2M2bAr6bgSAZiWb9fxW5nXccFgD
	Kc0whQt6fTa8MY+wTC0TrA2Fo5cdYiAh931MIAQ9G9Pb+SEo9hgIdWcQlFbv2Wkb2ik/4iYuA+igk
	MLksw0SHkQY2xkfoBLbYSRo5OctznX49kvaSZXmJJ7D7tCk4kGpiYCCEVSFcq3ZPBgEEVIk1zouUY
	6z0sIgfSfPq/lrryyO1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsreN-0005T3-PJ; Wed, 31 Jul 2019 16:40:27 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsreG-0005Rl-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:40:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 7B0A05209AE;
 Wed, 31 Jul 2019 18:40:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id fXh7Bj71aPKg; Wed, 31 Jul 2019 18:40:08 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 84F755233C1;
 Wed, 31 Jul 2019 18:40:07 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 488405209AE;
 Wed, 31 Jul 2019 18:40:04 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
Date: Wed, 31 Jul 2019 18:40:03 +0200
Message-ID: <13373313.BzCyiC4ED7@jernej-laptop>
In-Reply-To: <CAOMZO5Djoi7EuXapkg+dQ6HR2oZZHrw+vnjc837Gxee-Nh00Hw@mail.gmail.com>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <20190731143532.GA1935@bogon.m.sigxcpu.org>
 <CAOMZO5Djoi7EuXapkg+dQ6HR2oZZHrw+vnjc837Gxee-Nh00Hw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094020_888449_CE219245 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>,
 Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 31. julij 2019 ob 16:43:47 CEST je Fabio Estevam napisal(a):
> Hi Guido,
> =

> On Wed, Jul 31, 2019 at 11:35 AM Guido G=FCnther <agx@sigxcpu.org> wrote:
> > The idea is to have
> > =

> >     "%sabling platform clocks", enable ? "en" : "dis");
> > =

> > depending whether clocks are enabled/disabled.
> =

> Yes, I understood the idea, but this would print:
> =

> ensabling or dissabling :-)

No, it wouldn't. That extra "s" is part of "%s", e.g. part of format specif=
ier.

Best regards,
Jernej

> =

> > > Same here. Please return 'int' instead.
> > =

> > This is from drm_bridge_funcs so the prototype is fixed. I'm not sure
> > how what's the best way to bubble up fatal errors through the drm layer?
> =

> Ok, so let's not change this one.
> =

> > I went for DRM_DEV_ERROR() since that what i used in the rest of the
> > driver and these ones were omission. Hope that's o.k.
> =

> No strong preferences here. I just think dev_err() easier to type and
> shorter.
> =

> Thanks for this work!





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
