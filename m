Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60B01186AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:41:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=03kxyp+QAsX0siYR/AFeK1SPIC8nM2KBSbM5CRflTEs=; b=Gm3EfEXDrW2lY5MK2WTternkJ
	SaWpquFFPbeYfAeUO2IZayXQium0tq6tayM2wH07lJ45utUsdzgzu/HN8CO/79wukhuvw/XN/ujAi
	kVq6Eq1lQVxqWGgq7tLQl6XAPMAFzwJcOIcB6D+j+9cMfv4fzaNJs90CuGKwzPmRYr6sDThUvwSC8
	O7hoEhrTvkZoQIt9GpJY8JYZ/5hG2DaPGT/7a5nYn4Ta3Zb7rbB8TWtAmsQ665JjA3NYe9rqWS/n8
	hM8APxQ6cudUoLMxwU/AItKaJScg9Z/DrNKKWhu/zPaT/VUy40lJRdp4NYUTWOKPg5jvCDIV0AY5v
	tgG6lXxMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedtZ-00039s-Ns; Tue, 10 Dec 2019 11:41:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedtP-000398-8Y; Tue, 10 Dec 2019 11:41:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 507ED28B5FF
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org
Subject: Re: [Linux-stm32] [PATCH v4 0/4] Genericize DW MIPI DSI bridge and
 add i.MX 6 driver
In-Reply-To: <20191202193359.703709-1-adrian.ratiu@collabora.com>
References: <20191202193359.703709-1-adrian.ratiu@collabora.com>
Date: Tue, 10 Dec 2019 13:41:46 +0200
Message-ID: <871rtc2yrp.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_034128_989357_DB02FF87 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 02 Dec 2019, Adrian Ratiu <adrian.ratiu@collabora.com> 
wrote:
> Having a generic Synopsis DesignWare MIPI-DSI host controller 
> bridge driver is a very good idea, however the current 
> implementation has hardcoded quite a lot of the register layouts 
> used by the two supported SoC vendors, STM and Rockchip, which 
> use IP cores v1.30 and v1.31. 
> 
> This makes it hard to support other SoC vendors like the FSL/NXP 
> i.MX 6 which use older v1.01 cores or future versions because, 
> based on history, layout changes should also be expected in new 
> DSI versions / SoCs. 
> 
> This patch series converts the bridge and platform drivers to 
> access registers via generic regmap APIs and allows each 
> platform driver to configure its register layout via struct 
> reg_fields, then adds support for the host controller found on 
> i.MX 6. 
> 
> I only have i.MX hardware with MIPI-DSI panel and relevant 
> documentation available for testing so I'll really appreciate it 
> if someone could test the series on Rockchip and 
> STM... eyeballing register fields could only get me so far, so 
> sorry in advance for any breakage! 
> 
> Many thanks to Boris Brezillon <boris.brezillon@collabora.com> 
> for suggesting the regmap solution and to Liu Ying 
> <Ying.Liu@freescale.com> for doing the initial i.MX platform 
> driver implementation. 
> 
> This series applies on top of latest linux-next tree, 
> next-20191202. 
> 
> v3 -> v4: 
>   * Added commmit message to dt-binding patch (Neil) * Converted 
>   the dt-binding to yaml dt-schema format (Neil) * Small DT node 
>   + driver fixes (Rob) * Renamed platform driver to reflect it's 
>   only for i.MX v6 (Fabio) * Added small panel example to the 
>   host controller DT binding 
> 
> v2 -> v3: 
>   * Added const declarations to dw-mipi-dsi.c structs (Emil) * 
>   Fixed Reviewed-by tags and cc'd some more relevant ML (Emil) 
> 
> v1 -> v2: 
>   * Moved register definitions & regmap initialization into 
>   bridge module. Platform drivers get the regmap via plat_data 
>   after calling the bridge probe (Emil). 

I've been told I forgot to explicitly CC some of the maintainers, 
sorry about that! Added a few more persons to CC.

>
> Adrian Ratiu (4):
>   drm: bridge: dw_mipi_dsi: access registers via a regmap
>   drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>   drm: imx: Add i.MX 6 MIPI DSI host driver
>   dt-bindings: display: add i.MX6 MIPI DSI host controller doc
>
>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 136 ++++
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 699 +++++++++++++-----
>  drivers/gpu/drm/imx/Kconfig                   |   7 +
>  drivers/gpu/drm/imx/Makefile                  |   1 +
>  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 378 ++++++++++
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  17 +-
>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  34 +-
>  include/drm/bridge/dw_mipi_dsi.h              |   2 +-
>  8 files changed, 1067 insertions(+), 207 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
>
> -- 
> 2.24.0
>
> _______________________________________________
> Linux-stm32 mailing list
> Linux-stm32@st-md-mailman.stormreply.com
> https://st-md-mailman.stormreply.com/mailman/listinfo/linux-stm32

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
