Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720FA141120
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:50:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsJZB8cUobEict8g/SYp+NPzUzmjMKx2fTKHRVrthFs=; b=RnH74HZtPDc9OW
	gjvKR7t7R+7QqMcwvEiJ8ZauejaYT15Q5mB5Sx2BftdCdo2+S/q+MMxt2fr+tu+aXVcIXQ+7pU3xa
	hJpVGsBsToAxqWjFWXDJM/QC94yxymZyV86MEjY+LSRmY2egnZCQtNOTYYN700G964QS/WcUbalri
	uLeZf2cJ0GXqtJkpMOoIjeEntwfHOLTB/YtB7teQyP+xhHbSegRaCcbfJ/NIA1XvjhedrecawQ/64
	4MM6j9L2o3Hsg4rzTZNA99eCMgo1ngSGwAiU5BHrZKX8eUenc96AwSevxyWr94/1xvNxYhCuauPgG
	aGjrJ11O5Vml3oyd0hXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWhT-0003R7-00; Fri, 17 Jan 2020 18:50:31 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWhG-0003Q3-Pp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:50:23 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id A6FBE20028;
 Fri, 17 Jan 2020 19:50:13 +0100 (CET)
Date: Fri, 17 Jan 2020 19:50:12 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 0/5] Add support for Pine64 PineTab
Message-ID: <20200117185012.GC14298@ravnborg.org>
References: <20200116033636.512461-1-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116033636.512461-1-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=e5mUnYsNAAAA:8
 a=E4uMMbyC_ska1DofYlAA:9 a=CjuIK1q_8ugA:10 a=Vxmtnl_E_bksehYqCbjh:22
 a=pHzHmUro8NiASowvMSCR:22 a=6VlIyEUom7LUIeUMNQJH:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_105019_018753_E465F929 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Icenowy

On Thu, Jan 16, 2020 at 11:36:31AM +0800, Icenowy Zheng wrote:
> This patchset tries to add support for the PineTab tablet from Pine64.
> 
> As it uses a specific MIPI-DSI panel, the support of the panel should be
> introduced first, with its DT binding.
> 
> Then a device tree is added. Compared to v1 of the patchset, the
> accelerometer support is temporarily removed because a DT binding is
> lacked (although a proper driver exists).
> 
> Icenowy Zheng (5):
>   dt-bindings: vendor-prefix: add Shenzhen Feixin Photoelectics Co., Ltd
>   dt-bindings: panel: add Feixin K101 IM2BA02 MIPI-DSI panel
>   drm/panel: Add Feixin K101 IM2BA02 panel
>   dt-bindings: arm: sunxi: add binding for PineTab tablet
>   arm64: dts: allwinner: a64: add support for PineTab

Thanks for the updates.
I have applied the first three patches to drm-misc-next.
The remaining two patches shall most likely go in via another tree.

	Sam

> 
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  .../display/panel/feixin,k101-im2ba02.yaml    |  55 ++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  MAINTAINERS                                   |   6 +
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../boot/dts/allwinner/sun50i-a64-pinetab.dts | 460 +++++++++++++++
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-feixin-k101-im2ba02.c | 526 ++++++++++++++++++
>  9 files changed, 1065 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
>  create mode 100644 drivers/gpu/drm/panel/panel-feixin-k101-im2ba02.c
> 
> -- 
> 2.23.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
