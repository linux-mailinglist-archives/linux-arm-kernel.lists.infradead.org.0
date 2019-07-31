Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A1C7C515
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tA2si3Y03g7PWGcy1PF4mSmHHn+/TBeiO/ULm1eJWj4=; b=FhtZi5SgTic1U9
	3UDM39NnLPIG2jiWJVpe0batwF8NishEh8hvslL5elEWD0sOM1/jLSEuPAndU5kS56qyNvKC/TGSy
	6uy4dLjBYVCd78/dhNpmbsYfQB+4BWcNCMY0VbKUM5fUE4H4QbzykGO9eHjV2Q5E4z+XcwzeYv8q2
	vUH+05PnKm8iwsFLtbcNUSuQc+Lolzcri1nb0wAHfasSC/OUVmBwuO2BeVXPpFzAaNZluuQxIUeVv
	QZCckljL9N4TbSXps1nfBpzNz4qgZ3WM/hmxte5eBapmXgtXM24FnKUMImHrmMZKaSztAv0tmtd82
	lXnhtf8eek7iRj42aK0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspkj-0004si-RA; Wed, 31 Jul 2019 14:38:53 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspkc-0004s8-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:38:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 89F4DFB03;
 Wed, 31 Jul 2019 16:38:45 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBq773RmK5ZN; Wed, 31 Jul 2019 16:38:44 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 5CE5F46D8A; Wed, 31 Jul 2019 16:38:44 +0200 (CEST)
Date: Wed, 31 Jul 2019 16:38:44 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
Message-ID: <20190731143844.GC1935@bogon.m.sigxcpu.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
 <CAOMZO5BRbV_1du1b9eJqcBvvXSE2Mon3yxSPJxPpZgBqYNjBSg@mail.gmail.com>
 <20190727020444.GC4902@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190727020444.GC4902@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_073847_117120_3E50BA0F 
X-CRM114-Status: GOOD (  15.66  )
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Chris Healy <cphealy@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Sat, Jul 27, 2019 at 05:04:44AM +0300, Laurent Pinchart wrote:
> Hello,
> =

> On Fri, Jul 26, 2019 at 05:01:52PM -0300, Fabio Estevam wrote:
> > Hi Guido,
> > =

> > Thanks for your work on this driver!
> > =

> > On Wed, Jul 24, 2019 at 12:52 PM Guido G=FCnther <agx@sigxcpu.org> wrot=
e:
> > =

> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/bridge/imx-nwl/Kconfig
> > > @@ -0,0 +1,15 @@
> > > +config DRM_IMX_NWL_DSI
> > > +       tristate "Support for Northwest Logic MIPI DSI Host controlle=
r"
> > > +       depends on DRM && (ARCH_MXC || ARCH_MULTIPLATFORM || COMPILE_=
TEST)
> > =

> > This IP could potentially be found on other SoCs, so no need to make
> > it depend on ARCH_MXC.
> =

> I'd go even further and not use the prefix imx in the driver name or
> anywhere in the code.

My idea was to do that when another possible user comes up to see what
can be shared but I can do that for v2.
Cheers,
 -- Guido

> =

> [snip]
> =

> -- =

> Regards,
> =

> Laurent Pinchart
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
