Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4BA659EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGZlRnqsXqasYhS+qQhJpLAghGJwXecIljkecd1jD0I=; b=Fvgac+iqULwdvU
	fURP+rT0gzo9weGv6vHZQNyntaGTtcVbBbzAGopi1CI9h5SjvK1OiOqEpauHqtgxS231TMZzsDM8+
	lXWzToUq41Pr2GgIeVeNfv66uS7UognaEMulStc8UYyRUxIxV0bO5McszeWt+XEMQYv8pZYhC87I2
	BxhAlFwm50tFq5zL1G5F9Erm9nrs/XXM+rOiRuZ6n67p9T1GncNyffYYRuvLG5PJjW/OMEQi1M307
	4jzJKOp2gt1puBPXrftspIIvot23JCoChVFvJwsydGLJUkbfI8B5RxVeFjQjs21LxAAmsjK3YumO+
	wkDkMYEIEnLPmXH71Xow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlacn-0004iP-Ak; Thu, 11 Jul 2019 15:04:45 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlacF-0004Op-Qf
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:04:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 6BEB8FB03;
 Thu, 11 Jul 2019 17:04:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vble_Z4Bb27E; Thu, 11 Jul 2019 17:04:04 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id D10E042CB4; Thu, 11 Jul 2019 17:04:03 +0200 (CEST)
Date: Thu, 11 Jul 2019 17:04:03 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH 00/10] Improvements and fixes for mxsfb DRM driver
Message-ID: <20190711150403.GB23195@bogon.m.sigxcpu.org>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_080412_207273_8EAB8127 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,
On Wed, Jun 26, 2019 at 04:32:08PM +0300, Robert Chiras wrote:
> This patch-set improves the use of eLCDIF block on iMX 8 SoCs (like 8MQ, =
8MM
> and 8QXP). Following, are the new features added and fixes from this
> patch-set:
> =

> 1. Add support for drm_bridge
> On 8MQ and 8MM, the LCDIF block is not directly connected to a parallel
> display connector, where an LCD panel can be attached, but instead it is
> connected to DSI controller. Since this DSI stands between the display
> controller (eLCDIF) and the physical connector, the DSI can be implemented
> as a DRM bridge. So, in order to be able to connect the mxsfb driver to
> the DSI driver, the support for a drm_bridge was needed in mxsfb DRM
> driver (the actual driver for the eLCDIF block).

So I wanted to test this but with both my somewhat cleaned up nwl
driver=B9 and the nwl driver forward ported from the nxp vendor tree I'm
looking at a black screen with current mainline - while my dcss forward
port gives me nice output on mipi dsi. Do you have a tree that uses mipi
dsi on imx8mq where I could look at to check for differences?

Cheers,
 -- Guido

> =

> 2. Add support for additional pixel formats
> Some of the pixel formats needed by Android were not implemented in this
> driver, but they were actually supported. So, add support for them.
> =

> 3. Add support for horizontal stride
> Having support for horizontal stride allows the use of eLCDIF with a GPU
> (for example) that can only output resolution sizes multiple of a power of
> 8. For example, 1080 is not a power of 16, so in order to support 1920x10=
80
> output from GPUs that can produce linear buffers only in sizes multiple t=
o 16,
> this feature is needed.
> =

> 3. Few minor features and bug-fixing
> The addition of max-res DT property was actually needed in order to limit
> the bandwidth usage of the eLCDIF block. This is need on systems where
> multiple display controllers are presend and the memory bandwidth is not
> enough to handle all of them at maximum capacity (like it is the case on
> 8MQ, where there are two display controllers: DCSS and eLCDIF).
> The rest of the patches are bug-fixes.
> =

> Mirela Rabulea (1):
>   drm/mxsfb: Signal mode changed when bpp changed
> =

> Robert Chiras (9):
>   drm/mxsfb: Update mxsfb to support a bridge
>   drm/mxsfb: Update mxsfb with additional pixel formats
>   drm/mxsfb: Fix the vblank events
>   dt-bindings: display: Add max-res property for mxsfb
>   drm/mxsfb: Add max-res property for MXSFB
>   drm/mxsfb: Update mxsfb to support LCD reset
>   drm/mxsfb: Improve the axi clock usage
>   drm/mxsfb: Clear OUTSTANDING_REQS bits
>   drm/mxsfb: Add support for horizontal stride
> =

>  .../devicetree/bindings/display/mxsfb.txt          |   6 +
>  drivers/gpu/drm/mxsfb/mxsfb_crtc.c                 | 290 +++++++++++++++=
+++---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c                  | 189 +++++++++++---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.h                  |  10 +-
>  drivers/gpu/drm/mxsfb/mxsfb_out.c                  |  26 +-
>  drivers/gpu/drm/mxsfb/mxsfb_regs.h                 | 128 ++++++---
>  6 files changed, 531 insertions(+), 118 deletions(-)
> =

> -- =

> 2.7.4
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


=B9 https://lists.freedesktop.org/archives/dri-devel/2019-March/209685.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
