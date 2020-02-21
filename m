Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322ED167D3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 13:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sk5faf2qBrYH5cGIKS3fYW4tAIMxhfUm12ifvcTT3T4=; b=rLWB07SHGNQnrV
	mzaZuzLmZz25mWP/zYyBQoBMWjZhFfcsFkXoMQ3pl1l4s1rnGBOUVxUdDOcslCJ9/Pt79HZUC4Sgs
	4n8ff4PSlnCWu/hB5XGCjnQoVy0so7VKo2MkfJ60ACNdL2li5O6YjB/ht/dCziCPnqCoggQhDDlGl
	hWU/sJMGXbfRmu19PVvcf6poEhL1/OdOVIVc2I9jjZfwL11e3vaDr3CpbfcSZH1HKIbIic2gsnI/p
	IoBuAS1iMONv0HYgICTukBEzLM42sFiTj6vSWY0QvItreH3zfOg47VErZkTkBu1x4wWWZCIEq278S
	PapmckNyNseioh3E4QGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57Dk-0005fe-8j; Fri, 21 Feb 2020 12:15:52 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57DY-0005Oj-Ek
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 12:15:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 6A6FFFB03;
 Fri, 21 Feb 2020 13:15:35 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RhGsRqo6q9nO; Fri, 21 Feb 2020 13:15:33 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1978B405CD; Fri, 21 Feb 2020 13:15:33 +0100 (CET)
Date: Fri, 21 Feb 2020 13:15:33 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Laurentiu Palcu <laurentiu.palcu@nxp.com>
Subject: Re: [PATCH v3 0/4] Add support for iMX8MQ Display Controller Subsystem
Message-ID: <20200221121533.GA11663@bogon.m.sigxcpu.org>
References: <1575625964-27102-1-git-send-email-laurentiu.palcu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575625964-27102-1-git-send-email-laurentiu.palcu@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_041540_665370_0867998A 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, lukas@mntmn.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurentiu,
On Fri, Dec 06, 2019 at 11:52:37AM +0200, Laurentiu Palcu wrote:
> Hi,
> =

> This patchset adds initial DCSS support for iMX8MQ chip. Initial support
> includes only graphics plane support (no video planes), no HDR10 capabili=
ties,
> no graphics decompression (only linear, tiled and super-tiled buffers all=
owed).
> =

> Support for the rest of the features will be added incrementally, in subs=
equent
> patches.
> =

> The patchset was tested with both HDP driver (not yet upstreamed) and MIP=
I-DSI
> (drivers already on the dri-devel ML).

I've been testing this with the HDP parts pulled out of NXPs vendor tree
for a while so

Tested-by: Guido G=FCnther <agx@sigxcpu.org>

Cheers,
 -- Guido

> =

> Thanks,
> Laurentiu
> =

> Changes in v3:
>  * rebased to latest linux-next and made it compile as drmP.h was
>    removed;
>  * removed the patch adding the VIDEO2_PLL clock. It's already applied;
>  * removed an unnecessary 50ms sleep in the dcss_dtg_sync_set();
>  * fixed a a spurious hang reported by Lukas Hartmann and encountered
>    by me several times;
>  * mask DPR and DTG interrupts by default, as they may come enabled from
>    U-boot;
> =

> Changes in v2:
>  * Removed '0x' in node's unit-address both in DT and yaml;
>  * Made the address region size lowercase, to be consistent;
>  * Removed some left-over references to P010;
>  * Added a Kconfig dependency of DRM && ARCH_MXC. This will also silence =
compilation
>    issues reported by kbuild for other architectures;
> =

> =

> Laurentiu Palcu (4):
>   drm/imx: compile imx directory by default
>   drm/imx: Add initial support for DCSS on iMX8MQ
>   dt-bindings: display: imx: add bindings for DCSS
>   arm64: dts: imx8mq: add DCSS node
> =

>  .../bindings/display/imx/nxp,imx8mq-dcss.yaml      |  86 +++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi          |  25 +
>  drivers/gpu/drm/Makefile                           |   2 +-
>  drivers/gpu/drm/imx/Kconfig                        |   2 +
>  drivers/gpu/drm/imx/Makefile                       |   1 +
>  drivers/gpu/drm/imx/dcss/Kconfig                   |   8 +
>  drivers/gpu/drm/imx/dcss/Makefile                  |   6 +
>  drivers/gpu/drm/imx/dcss/dcss-blkctl.c             |  75 ++
>  drivers/gpu/drm/imx/dcss/dcss-crtc.c               | 224 ++++++
>  drivers/gpu/drm/imx/dcss/dcss-ctxld.c              | 447 +++++++++++
>  drivers/gpu/drm/imx/dcss/dcss-dev.c                | 286 +++++++
>  drivers/gpu/drm/imx/dcss/dcss-dev.h                | 195 +++++
>  drivers/gpu/drm/imx/dcss/dcss-dpr.c                | 550 ++++++++++++++
>  drivers/gpu/drm/imx/dcss/dcss-drv.c                | 181 +++++
>  drivers/gpu/drm/imx/dcss/dcss-dtg.c                | 442 +++++++++++
>  drivers/gpu/drm/imx/dcss/dcss-kms.c                | 322 ++++++++
>  drivers/gpu/drm/imx/dcss/dcss-kms.h                |  52 ++
>  drivers/gpu/drm/imx/dcss/dcss-plane.c              | 418 +++++++++++
>  drivers/gpu/drm/imx/dcss/dcss-scaler.c             | 826 +++++++++++++++=
++++++
>  drivers/gpu/drm/imx/dcss/dcss-ss.c                 | 179 +++++
>  20 files changed, 4326 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/nxp,imx=
8mq-dcss.yaml
>  create mode 100644 drivers/gpu/drm/imx/dcss/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/dcss/Makefile
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-blkctl.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-crtc.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-ctxld.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dev.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dev.h
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dpr.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-drv.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dtg.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-kms.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-kms.h
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-plane.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-scaler.c
>  create mode 100644 drivers/gpu/drm/imx/dcss/dcss-ss.c
> =

> -- =

> 2.7.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
