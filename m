Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8150413085E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 15:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bKFUZpQL+JGDHQPS06kyRXqd/ma07hFL3bZRaoCMLE=; b=MzDDGfG9aOT5nb
	Eyt5fMV7gGTiwntz4Hwi8I9Yc0k8uFQwL4SFB2OsxKXs/spjuZkrAD/vrS3RwlZmJyiLj7H9sqHxA
	P61H0wNfe+nQ3AaoE72iT0g5Y/Np+oZK+PyVfH5B9sihI7giNIlFLzVn9W9npeUpVXROyVyvUHjCl
	/2awW+WdtqvexGwlb2w0/aI1B0Ae9wVMsLZ0ICYOkpmm0ud+Vf8LNuHpre69pkbC5u34Mfp4ETAnh
	JE/n3lx2F4ndYrpVWkYpNlWshf/JkTBAFsU+8wsxO9PgrjpmY3wJUNntcRy9dorgGI8HUtKMVmbMo
	uBgg84UQqR0oDugaIyvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io6XL-0001hd-Fo; Sun, 05 Jan 2020 14:05:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io6XE-0001ge-Fz; Sun, 05 Jan 2020 14:05:41 +0000
Received: from p508fce23.dip0.t-ipconnect.de ([80.143.206.35]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1io6X0-0007kM-Qo; Sun, 05 Jan 2020 15:05:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 00/11] Add PX30 LVDS support
Date: Sun, 05 Jan 2020 15:05:26 +0100
Message-ID: <1885398.klecWcqSHf@phil>
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_060540_682755_30FACE4F 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 24. Dezember 2019, 15:38:49 CET schrieb Miquel Raynal:
> Hello,
> =

> This series aims at supporting LVDS on PX30.
> =

> A first couple of patches update the documentation with the new
> compatible and the presence of a PHY. Then, the existing Rockchip
> driver is cleaned and extended to support PX30 specificities. Finally,
> the PX30 DTSI is updated with CRTC routes, the DSI DPHY and the LVDS
> IP itself.
> =

> Cheers,
> Miqu=E8l
> =

> Changes since v1:
> * Added Rob's Ack.
> * Used "must" instead of "should" in the bindings.
> * Precised that phy-names is an optional property in the case of
>   PX30.
> * Renamed the WRITE_EN macro into HIWORD_UPDATE to be aligned with
>   other files.
> * Removed extra configuration, not needed for generic panels (see
>   Sandy Huang answer).
> * Dropped the display-subsystem routes (useless).
> * Merged two patches to avoid phandle interdependencies in graphs and
>   intermediate build errors.
> =

> Miquel Raynal (11):
>   dt-bindings: display: rockchip-lvds: Declare PX30 compatible
>   dt-bindings: display: rockchip-lvds: Document PX30 PHY
>   drm/rockchip: lvds: Fix indentation of a #define
>   drm/rockchip: lvds: Harmonize function names
>   drm/rockchip: lvds: Change platform data
>   drm/rockchip: lvds: Create an RK3288 specific probe function
>   drm/rockchip: lvds: Helpers should return decent values
>   drm/rockchip: lvds: Pack functions together

applied patches 1-8 to drm-misc-next

>   drm/rockchip: lvds: Add PX30 support

drm-misc-next is currently still at 5.4-rc4, so I'll need to find out how
to get newer kernel changes in there, as right now we're missing
the PHY_MODE_LVDS constant.


Heiko

>   arm64: dts: rockchip: Add PX30 DSI DPHY
>   arm64: dts: rockchip: Add PX30 LVDS
> =

>  .../display/rockchip/rockchip-lvds.txt        |   4 +
>  arch/arm64/boot/dts/rockchip/px30.dtsi        |  48 ++
>  drivers/gpu/drm/rockchip/rockchip_lvds.c      | 486 ++++++++++++------
>  drivers/gpu/drm/rockchip/rockchip_lvds.h      |  19 +-
>  4 files changed, 401 insertions(+), 156 deletions(-)
> =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
