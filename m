Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FC07C93D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua3soKr+tA2dBWp/JlCtSaOFX1Iyl2ag6Sq+yslH1pA=; b=LrybyTRkQq6Cq7
	p8sXQ7P6GheNH1n19QFxPQMaTpCOh5xDNbH4nIvt7RXYxDubn73L7iM0+ihX3WaEX48HDo2XqfTbh
	f1BDjpn1XrtQ3KK3vdFY29XprTbvjEtOU9abcDMLUGpTNCR4HNYfKf7MqevN8ToSJTsvXYmV1jDop
	8lQKYRkv3/A82KTcf92Q95EsGJKYvF/EXvVZAXsXXsyAN0yoC5WoOIn1pHqdDJ5SKmo9esILjOz0w
	3kUPQKK9OeKhZ/a+oRn7ShZvBYJrGZZ31vYUVMbinZL8oQdI0tA/pPjf2719p765+Lc+I3Lm9hlFL
	RyBHAb68BkJm2KtWNv7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrrg-0004WN-SW; Wed, 31 Jul 2019 16:54:12 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrrZ-0004Vf-K7
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:54:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id AF4D4FB03;
 Wed, 31 Jul 2019 18:54:02 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WqV7ea2juLfn; Wed, 31 Jul 2019 18:54:01 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 9B60D46D8A; Wed, 31 Jul 2019 18:54:00 +0200 (CEST)
Date: Wed, 31 Jul 2019 18:54:00 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
Message-ID: <20190731165400.GA30745@bogon.m.sigxcpu.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
 <CAOMZO5BRbV_1du1b9eJqcBvvXSE2Mon3yxSPJxPpZgBqYNjBSg@mail.gmail.com>
 <20190731143532.GA1935@bogon.m.sigxcpu.org>
 <CAOMZO5Djoi7EuXapkg+dQ6HR2oZZHrw+vnjc837Gxee-Nh00Hw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5Djoi7EuXapkg+dQ6HR2oZZHrw+vnjc837Gxee-Nh00Hw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095405_821277_F32D7367 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Wed, Jul 31, 2019 at 11:43:47AM -0300, Fabio Estevam wrote:
> Hi Guido,
> =

> On Wed, Jul 31, 2019 at 11:35 AM Guido G=FCnther <agx@sigxcpu.org> wrote:
> =

> > The idea is to have
> >
> >     "%sabling platform clocks", enable ? "en" : "dis");
> >
> > depending whether clocks are enabled/disabled.
> =

> Yes, I understood the idea, but this would print:
> =

> ensabling or dissabling :-)

The 's' is from the '%s' format specifier:

[ 2610.804174] imx-nwl-dsi 30a00000.mipi_dsi: [drm:imx_nwl_dsi_bridge_disab=
le] disabling platform clocks
[ 2710.996279] imx-nwl-dsi 30a00000.mipi_dsi: [drm:imx_nwl_dsi_bridge_pre_e=
nable] enabling platform clocks

I'll change that to use the full strings though since i also had to look
twice to be sure there's no double 's'.

> =

> > > Same here. Please return 'int' instead.
> >
> > This is from drm_bridge_funcs so the prototype is fixed. I'm not sure
> > how what's the best way to bubble up fatal errors through the drm layer?
> =

> Ok, so let's not change this one.
> =

> > I went for DRM_DEV_ERROR() since that what i used in the rest of the
> > driver and these ones were omission. Hope that's o.k.
> =

> No strong preferences here. I just think dev_err() easier to type and sho=
rter.
> =

> Thanks for this work!

Thanks again for having a look!
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
