Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E7711418D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 14:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8Ol0rMUuYPJLdBVDbiwmg6DoTepmf/ECAO/F7NBqx8=; b=VRFb7xY/xqsRCs
	XI5FLOI5HXQ9X32TJ/OTYLVCBD2sZlS74pIpOfw2+qdh2XRQCSzdPS6mk+el1E4aCfP4+iXhcYb+9
	nFSMqOFvkZ1f0YCAe4OC+UwOhqM+lwvEssd8opWu1tNHMTY7CV+k7yR6uL0cVHN+LoD9Rm37TZ145
	SrhCCbeI5p1YheS8/RouADnEi8/pkbdib31dr5RpDdICBtZMYeoS6kTREf839Feyomwg6mNmhnOhO
	Kev3gb3ivj1DrL0bg/vhBEAPW8eN7FH5LeMsn+XWseKm2JlYCzwbmfK59BLgp+boufFBHGonrhQ/6
	hMWakhs663n9IBz8BJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrHR-0006yg-Mk; Thu, 05 Dec 2019 13:34:53 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrHB-0006xy-2w; Thu, 05 Dec 2019 13:34:39 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 89C522E5;
 Thu,  5 Dec 2019 14:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575552867;
 bh=0HedxuO8GILWK520SguktJIAXVtxP6EZ4rn1OAPP0xo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MlpeNYP4gbB0kKANkT+MTkT1+unea206ouvGNXEmn0gy11wm9QaCfOmYOBTMrbT9G
 IT55pmcrho3NHp+RLfl9GwjLntERWZmncHv7tAl7C4/BTi16kVfxj3FL91vfv4/H+C
 zOt94C+MrUoziG3z0nMxH3XfWYx/yR8fC+Q/FORc=
Date: Thu, 5 Dec 2019 15:34:20 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mihail Atanassov <Mihail.Atanassov@arm.com>
Subject: Re: [PATCH v2 00/28] drm/bridge: Consolidate initialization
Message-ID: <20191205133420.GF4734@pendragon.ideasonboard.com>
References: <20191204114732.28514-1-mihail.atanassov@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204114732.28514-1-mihail.atanassov@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_053437_461288_3D8804D8 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Martyn Welch <martyn.welch@collabora.co.uk>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 Peter Senna Tschudin <peter.senna@gmail.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Russell King <linux@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>, Jerome Brunet <jbrunet@baylibre.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Martin Donnelly <martin.donnelly@ge.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Icenowy Zheng <icenowy@aosc.io>,
 Rob Clark <robdclark@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Brian Masney <masneyb@onstation.org>, Maxime Ripard <mripard@kernel.org>,
 Inki Dae <inki.dae@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, nd <nd@arm.com>,
 Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick =?utf-8?Q?Fertr=C3=A9?= <yannick.fertre@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Torsten Duwe <duwe@lst.de>, Daniel Vetter <daniel@ffwll.ch>,
 Dariusz Marcinkiewicz <darekm@google.com>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mihail,

Thank you for the patches.

On Wed, Dec 04, 2019 at 11:48:01AM +0000, Mihail Atanassov wrote:
> Hi all,
> 
> I've dropped the fun parts of this series since they need more work, but
> figured drm_bridge_init() as a concept is still valuable on its own (and
> I think I'll need it to roll out device links for registered bridges),
> so here goes.
> 
> v2:
>  - expanded commit messages and added some extra bridge-related
>    documentation (Daniel)
>  - dropped v1 patches 29 and 30: 29 needs more work, and 30 depends on
>    it
>  - added all remaining drm_bridge implementers, found by searching for
>    drm_bridge_funcs which is mandatory for any bridge; new uses in
>    patches 3, 27, and 28 (Sam)
>  - due to the above, I've decided to squash all analogix changes into
>    one patch

For patches 02, 04 to 11 and 13 to 17, 19 to 24, and 27 to 28,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> v1 [https://patchwork.freedesktop.org/series/70039/] cover text below:
> 
> This series adds device links support to drm_bridge. The motivation
> behind it is that a drm_bridge in a module could get removed under the
> feet of the bridge user without warning, so we need a way to remove and
> reprobe the client as needed to avoid peering into the void.
> 
> 1: Add a drm_bridge_init() function which wraps all initialisation of
> the structure prior to calling drm_bridge_add().
> 
> 2-26,28: Apply the drm_bridge_init() refactor to every bridge that uses
> drm_bridge_add().
> 
> 27: Minor cleanup in rcar-du.
> 
> 29: Add of_drm_find_bridge_devlink() which functions the same as
> of_drm_find_bridge() plus adds a device device link from the owning
> drm_device to the bridge device.
> 
> 30: As a motivating example, convert komeda to exclusively use
> drm_bridge for its pipe outputs; this isn't a regression in usability
> any more since device links bring the same automatic remove/reprobe
> feature as components.
> 
> Mihail Atanassov (28):
>   drm: Introduce drm_bridge_init()
>   drm/bridge: adv7511: Use drm_bridge_init()
>   drm/bridge/analogix: Use drm_bridge_init()
>   drm/bridge: cdns: Use drm_bridge_init()
>   drm/bridge: dumb-vga-dac: Use drm_bridge_init()
>   drm/bridge: lvds-encoder: Use drm_bridge_init()
>   drm/bridge: megachips-stdpxxxx-ge-b850v3-fw: Use drm_bridge_init()
>   drm/bridge: nxp-ptn3460: Use drm_bridge_init()
>   drm/bridge: panel: Use drm_bridge_init()
>   drm/bridge: ps8622: Use drm_bridge_init()
>   drm/bridge: sii902x: Use drm_bridge_init()
>   gpu: drm: bridge: sii9234: Use drm_bridge_init()
>   drm/bridge: sil_sii8620: Use drm_bridge_init()
>   drm/bridge: dw-hdmi: Use drm_bridge_init()
>   drm/bridge/synopsys: dsi: Use drm_bridge_init()
>   drm/bridge: tc358764: Use drm_bridge_init()
>   drm/bridge: tc358767: Use drm_bridge_init()
>   drm/bridge: thc63: Use drm_bridge_init()
>   drm/bridge: ti-sn65dsi86: Use drm_bridge_init()
>   drm/bridge: ti-tfp410: Use drm_bridge_init()
>   drm/exynos: mic: Use drm_bridge_init()
>   drm/i2c: tda998x: Use drm_bridge_init()
>   drm/mcde: dsi: Use drm_bridge_init()
>   drm/mediatek: hdmi: Use drm_bridge_init()
>   drm: rcar-du: lvds: Use drm_bridge_init()
>   drm: rcar-du: lvds: Don't set drm_bridge private pointer
>   drm/sti: Use drm_bridge_init()
>   drm/msm: Use drm_bridge_init()
> 
>  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c  |  5 ++-
>  .../drm/bridge/analogix/analogix-anx6345.c    |  5 ++-
>  .../drm/bridge/analogix/analogix-anx78xx.c    |  8 ++---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  5 ++-
>  drivers/gpu/drm/bridge/cdns-dsi.c             |  4 +--
>  drivers/gpu/drm/bridge/dumb-vga-dac.c         |  6 ++--
>  drivers/gpu/drm/bridge/lvds-encoder.c         |  7 ++--
>  .../bridge/megachips-stdpxxxx-ge-b850v3-fw.c  |  4 +--
>  drivers/gpu/drm/bridge/nxp-ptn3460.c          |  4 +--
>  drivers/gpu/drm/bridge/panel.c                |  7 ++--
>  drivers/gpu/drm/bridge/parade-ps8622.c        |  3 +-
>  drivers/gpu/drm/bridge/sii902x.c              |  5 ++-
>  drivers/gpu/drm/bridge/sii9234.c              |  3 +-
>  drivers/gpu/drm/bridge/sil-sii8620.c          |  3 +-
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  7 ++--
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  7 ++--
>  drivers/gpu/drm/bridge/tc358764.c             |  4 +--
>  drivers/gpu/drm/bridge/tc358767.c             |  3 +-
>  drivers/gpu/drm/bridge/thc63lvd1024.c         |  7 ++--
>  drivers/gpu/drm/bridge/ti-sn65dsi86.c         |  5 ++-
>  drivers/gpu/drm/bridge/ti-tfp410.c            |  5 ++-
>  drivers/gpu/drm/drm_bridge.c                  | 34 ++++++++++++++++++-
>  drivers/gpu/drm/exynos/exynos_drm_mic.c       |  8 +----
>  drivers/gpu/drm/i2c/tda998x_drv.c             |  6 +---
>  drivers/gpu/drm/mcde/mcde_dsi.c               |  3 +-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |  4 +--
>  drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 +--
>  drivers/gpu/drm/msm/edp/edp_bridge.c          |  3 +-
>  drivers/gpu/drm/msm/hdmi/hdmi_bridge.c        |  4 +--
>  drivers/gpu/drm/rcar-du/rcar_lvds.c           |  5 ++-
>  drivers/gpu/drm/sti/sti_dvo.c                 |  4 +--
>  drivers/gpu/drm/sti/sti_hda.c                 |  3 +-
>  drivers/gpu/drm/sti/sti_hdmi.c                |  3 +-
>  include/drm/drm_bridge.h                      | 15 +++++++-
>  34 files changed, 100 insertions(+), 103 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
