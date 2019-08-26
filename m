Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31ED9CEF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxKbadVLBBZe88UTLSAc+iUvCB5s7WN06XW8Kd0gBy8=; b=mW7hPdIDiODd6z
	2oR2Icw7q8BwLAPLVmHi36SawnGtuuFigHoFK2zdgA1uVOq3H26d83zy/MFPJF1r5TVXlSR73WC7h
	eK1b0b5Q5mTp732G/6mOnPMxYiVvYEQNYs5LtQD7eCZb3rc1sypEkE9ikur4lUPc0lPfMFnMvylE1
	FuvidbNHPnEiryTfACbE733mc2mPypOPDqrk0lPC3FqDfoz66XdDeGriSxjZ6RRVBHnvCvd/4f89Q
	WZZO2FzH7ulvHa3kZP9wNM3hl4rtrBD3jhkUoeJ51zBScR1kXOolKqeWZRZNrHKp5J3K3BaQMG0I/
	jDvM6FZHKxaaGAypN6/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dl8-0001K0-43; Mon, 26 Aug 2019 12:06:06 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dkz-0001J9-N5
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 12:05:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 8A080FB03;
 Mon, 26 Aug 2019 14:05:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9toa2EE2R_0o; Mon, 26 Aug 2019 14:05:49 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 8F2B949200; Mon, 26 Aug 2019 14:05:48 +0200 (CEST)
Date: Mon, 26 Aug 2019 14:05:48 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH v3 00/15] Improvements and fixes for mxsfb DRM driver
Message-ID: <20190826120548.GA14316@bogon.m.sigxcpu.org>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050558_079002_19415BD7 
X-CRM114-Status: GOOD (  26.84  )
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Wed, Aug 21, 2019 at 01:15:40PM +0300, Robert Chiras wrote:
> This patch-set improves the use of eLCDIF block on iMX 8 SoCs (like 8MQ, =
8MM
> and 8QXP). Following, are the new features added and fixes from this
> patch-set:

I've applied this whole series on top of my NWL work and it looks good
with a DSI panel. Applying the whole series also fixes an issue where
after unblank the output was sometimes shifted about half a screen width
to the right (which didn't happen with DCSS). So at least from the parts
I could test:

  Tested-by: Guido G=FCnther <agx@sigxcpu.org> =


for the whole thing.
Cheers,
 -- Guido
> =

> 1. Add support for drm_bridge
> On 8MQ and 8MM, the LCDIF block is not directly connected to a parallel
> display connector, where an LCD panel can be attached, but instead it is
> connected to DSI controller. Since this DSI stands between the display
> controller (eLCDIF) and the physical connector, the DSI can be implemented
> as a DRM bridge. So, in order to be able to connect the mxsfb driver to
> the DSI driver, the support for a drm_bridge was needed in mxsfb DRM
> driver (the actual driver for the eLCDIF block).
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

> v3:
> - Removed the max-res property patches and added support for
>   max-memory-bandwidth property, as it is also implemented in other drive=
rs
> - Removed unnecessary drm_vblank_off in probe
> =

> v2:
> - Collected Tested-by from Guido
> - Split the first patch, which added more than one feature into relevant
>   patches, explaining each feature added
> - Also split the second patch into more patches, to differentiate between
>   the feature itself (additional pixel formats support) and the cleanup
>   of the register definitions for a better representation (guido)
> - Included a patch submitted by Guido, while he was testing my patch-set
> =

> Guido G=FCnther (1):
>   drm/mxsfb: Read bus flags from bridge if present
> =

> Mirela Rabulea (1):
>   drm/mxsfb: Signal mode changed when bpp changed
> =

> Robert Chiras (13):
>   drm/mxsfb: Update mxsfb to support a bridge
>   drm/mxsfb: Add defines for the rest of registers
>   drm/mxsfb: Reset vital registers for a proper initialization
>   drm/mxsfb: Update register definitions using bit manipulation defines
>   drm/mxsfb: Update mxsfb with additional pixel formats
>   drm/mxsfb: Fix the vblank events
>   drm/mxsfb: Add max-memory-bandwidth property for MXSFB
>   dt-bindings: display: Add max-memory-bandwidth property for mxsfb
>   drm/mxsfb: Update mxsfb to support LCD reset
>   drm/mxsfb: Improve the axi clock usage
>   drm/mxsfb: Clear OUTSTANDING_REQS bits
>   drm/mxsfb: Add support for horizontal stride
>   drm/mxsfb: Add support for live pixel format change
> =

>  .../devicetree/bindings/display/mxsfb.txt          |   5 +
>  drivers/gpu/drm/mxsfb/mxsfb_crtc.c                 | 287 +++++++++++++++=
+++---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c                  | 203 +++++++++++++--
>  drivers/gpu/drm/mxsfb/mxsfb_drv.h                  |  12 +-
>  drivers/gpu/drm/mxsfb/mxsfb_out.c                  |  26 +-
>  drivers/gpu/drm/mxsfb/mxsfb_regs.h                 | 193 +++++++++-----
>  6 files changed, 589 insertions(+), 137 deletions(-)
> =

> -- =

> 2.7.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
