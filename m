Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82D01B8816
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 19:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fxpmcWGnLqYwWXJUTgtGpOOFwGCiRrxI3Ad78UKJXY=; b=c77ZC6fe1pcZxB
	J3tJXJk2A87j4F4z7ca4pDXlq2uiHRDgbp+lNkEXsNR4InKy8fvVRj7eTlfrnqYjRaO/tqvwnSyvl
	rBVhwB4SnjISM9FRvmMEAfCIvXZmw11pF5dCrS+RXK3aIEtIPuk19oUbmkblMNMltPTNUetliemHE
	+BQEtv5rFNiqtxmlHKpOCjveb7KNDh0AUxyEkhAINfkxIHhqq+TGthRwe6EqRtmgoyin1CV9+Esa7
	buu1i8A89Gn0imBcijGIZBfuSxbnVSMuZ7XLptLsixXcLm/md3c51/YS6GzFj3fdL4Xxk1X4fybRX
	WqL9vm+ANhauIHh4Z+lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSOX0-0002Uj-MA; Sat, 25 Apr 2020 17:23:58 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSOWp-0002T6-U4; Sat, 25 Apr 2020 17:23:50 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id AFB6C804B9;
 Sat, 25 Apr 2020 19:23:40 +0200 (CEST)
Date: Sat, 25 Apr 2020 19:23:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v3 0/7] Convert mtk-dsi to drm_bridge API and get EDID
 for ps8640 bridge
Message-ID: <20200425172334.GA30970@ravnborg.org>
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417150614.2631786-1-enric.balletbo@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=MOBOZvRl c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8 a=cm27Pg_UAAAA:8 a=D19gQVrFAAAA:8
 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=C1xfsh8iGGs-51XnUgAA:9
 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22 a=xmb-EsYY8bH0VWELuYED:22
 a=W4TVW4IDbPiebHqcZpNg:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_102348_326142_3BF1F329 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, drinkcat@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-mediatek@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 05:06:07PM +0200, Enric Balletbo i Serra wrote:
> The PS8640 dsi-to-eDP bridge driver is using the panel bridge API,
> however, not all the components in the chain have been ported to the
> drm_bridge API. Actually, when a panel is attached the default panel's mode
> is used, but in some cases we can't get display up if mode getting from
> eDP control EDID is not chosen.
> 
> This series address that problem, first implements the .get_edid()
> callback in the PS8640 driver (which is not used until the conversion is
> done) and then, converts the Mediatek DSI driver to use the drm_bridge
> API.
> 
> As far as I know, we're the only users of the mediatek dsi driver in
> mainline, so should be safe to switch to the new chain of drm_bridge API
> unconditionally.
> 
> The patches has been tested on a Acer Chromebook R13 (Elm) running a
> Chrome OS userspace and checking that the valid EDID mode reported by
> the bridge is selected.
> 
> [1] https://lore.kernel.org/lkml/20200210063523.133333-1-hsinyi@chromium.org/
> 
> Changes in v3:
> - Replace s/bridge/next bridge/ for comment. (Laurent Pinchart)
> - Add the bridge.type. (Laurent Pinchart)
> - Use next_bridge field to store the panel bridge. (Laurent Pinchart)
> - Add the bridge.type field. (Laurent Pinchart)
> - This patch requires https://lkml.org/lkml/2020/4/16/2080 to work
>   properly.
This patch is now applied to drm-misc-next.
IMO this patchset could go in now.


> - Move the bridge.type line to the patch that adds drm_bridge support. (Laurent Pinchart)
> 
> Changes in v2:
> - Do not set connector_type for panel here. (Sam Ravnborg)
> 
> Enric Balletbo i Serra (7):
>   drm/bridge: ps8640: Get the EDID from eDP control
>   drm/bridge_connector: Set default status connected for eDP connectors
>   drm/mediatek: mtk_dsi: Rename bridge to next_bridge
>   drm/mediatek: mtk_dsi: Convert to bridge driver
>   drm/mediatek: mtk_dsi: Use simple encoder
>   drm/mediatek: mtk_dsi: Use the drm_panel_bridge API
>   drm/mediatek: mtk_dsi: Create connector for bridges
All patches:
Acked-by: Sam Ravnborg <sam@ravnborg.org>


> 
>  drivers/gpu/drm/bridge/parade-ps8640.c |  12 ++
>  drivers/gpu/drm/drm_bridge_connector.c |   1 +
>  drivers/gpu/drm/mediatek/mtk_dsi.c     | 276 ++++++++-----------------
>  3 files changed, 96 insertions(+), 193 deletions(-)
> 
> -- 
> 2.25.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
