Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFF9A1285
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJBBfz++bgtAbMraoNU2XSEV45lvWzVpgTF5hGqfO2c=; b=TELcOze0lGH9kP
	4OACNasDRsEWYb74Up10YE5clBJg6T3cK5QPY/b/biVbpjFj/90X0h5fjUsz523fbAl8826WpFcYa
	meHCBMuT5Iz2TH6txQaCKzhHNYGvrkUI1AgSXuhWxIrFNuX7kUR7AOjc3a1eTcHdJQ5MxnN+F5AbR
	ffwZiegjioP4YDOA4sjWhJxwMlw9Og3ern4u8Pm/u+xZrDwQUJieDHm187P4hgA3yuo6PE4h1PNup
	dEWmrq2p2/ktnmn1RhoSifQoecUFm1Fm9Vzrh7X4DY4kQcni4qSuH8hSxCKtPO1SFmPay6Vw5u12p
	UqbufaNEQhneKXDpfLaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3EmQ-0007LV-2X; Thu, 29 Aug 2019 07:23:38 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Elr-0006xl-Im
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 07:23:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 787F0FB03;
 Thu, 29 Aug 2019 09:22:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KtmbkXjx-TTe; Thu, 29 Aug 2019 09:22:54 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 9278742EEE; Thu, 29 Aug 2019 09:22:53 +0200 (CEST)
Date: Thu, 29 Aug 2019 09:22:53 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [EXT] [PATCH v3 0/2] drm: bridge: Add NWL MIPI DSI host
 controller support
Message-ID: <20190829072253.GA5078@bogon.m.sigxcpu.org>
References: <cover.1566470526.git.agx@sigxcpu.org>
 <1567002587.3209.122.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567002587.3209.122.camel@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_002303_947099_E5BC5BA3 
X-CRM114-Status: GOOD (  38.66  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 dl-linux-imx <linux-imx@nxp.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Wed, Aug 28, 2019 at 02:29:48PM +0000, Robert Chiras wrote:
> Hi Guido,
> =

> I tested this on my setup and it works. My DSI panel is a little bit
> different and it doesn't work with this as-is, but I added some
> improvements on top of this, in order to be able to setup the clocks.
> The changes I made can arrive on top of this as improvements, of
> course, since it will allow this driver to dinamically set the
> video_pll clock for any kind of mode.
> =

> So, for the whole patch-set, you can add:
> Tested-by: Robert Chiras <robert.chiras@nxp.com>
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>

Added for v4, thanks!
 -- Guido

> =

> Best regards,
> Robert
> =

> On Jo, 2019-08-22 at 12:44 +0200, Guido G=FCnther wrote:
> > This adds initial support for the NWL MIPI DSI Host controller found
> > on i.MX8
> > SoCs.
> > =

> > It adds support for the i.MX8MQ but the same IP core can also be
> > found on e.g.
> > i.MX8QXP. I added the necessary hooks to support other imx8 variants
> > but since
> > I only have imx8mq boards to test I omitted the platform data for
> > other SoCs.
> > =

> > The code is based on NXPs BSP so I added Robert Chiras as
> > Co-authored-by. Robert, if this looks sane could you add your
> > Signed-off-by:?
> > =

> > The most notable changes over the BSP driver are
> > =A0- Calculate HS mode timing from phy_configure_opts_mipi_dphy
> > =A0- Perform all clock setup via DT
> > =A0- Merge nwl-imx and nwl drivers
> > =A0- Add B0 silion revision quirk
> > =A0- become a bridge driver to hook into mxsfb (from what I read[0]
> > DCSS, which
> > =A0=A0=A0also can drive the nwl on the imx8mq will likely not become pa=
rt
> > of
> > =A0=A0=A0imx-display-subsystem so it makes sense to make it drive a bri=
dge
> > for dsi as
> > =A0=A0=A0well).
> > =A0- Use panel_bridge to attach the panel
> > =A0- Use multiplex framework instead of accessing syscon directly
> > =

> > This has been tested on a Librem 5 devkit using mxsfb with Robert's
> > patches[1]
> > and the rocktech-jh057n00900 panel driver on next-20190821. The DCSS
> > can later
> > on also act as input source too.
> > =

> > Changes from v2:
> > - Per review comments by Rob Herring
> > =A0 https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fl
> > ists.freedesktop.org%2Farchives%2Fdri-devel%2F2019-
> > August%2F230448.html&amp;data=3D02%7C01%7Crobert.chiras%40nxp.com%7C757
> > 201f9aaa54653580e08d726edb290%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> > 7C0%7C637020674654566414&amp;sdata=3DJdvAdCPGq2CTsW%2BgXgnAVltWMIfdCDQn
> > dXSLYpnjEH8%3D&amp;reserved=3D0
> > =A0 - bindings:
> > =A0=A0=A0=A0- Simplify by restricting to fsl,imx8mq-nwl-dsi
> > =A0=A0=A0=A0- document reset lines
> > =A0=A0=A0=A0- add port@{0,1}
> > =A0=A0=A0=A0- use a real compatible string for the panel
> > =A0=A0=A0=A0- resets are required
> > - Per review comments by Arnd Bergmann
> > =A0 https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fl
> > ists.freedesktop.org%2Farchives%2Fdri-devel%2F2019-
> > August%2F230868.html&amp;data=3D02%7C01%7Crobert.chiras%40nxp.com%7C757
> > 201f9aaa54653580e08d726edb290%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> > 7C0%7C637020674654566414&amp;sdata=3DLyJpZjQjMCe5zUdvK8CD8ETucLPxx621gW
> > xtpAr8DM4%3D&amp;reserved=3D0
> > =A0 - Don't access iomuxc_gpr regs directly. This allows us to drop the
> > =A0=A0=A0=A0first patch in the series with the iomuxc_gpr field defines.
> > - Per review comments by Laurent Pinchart
> > =A0=A0=A0=A0- Fix wording in bindings
> > - Add mux-controls to bindings
> > - Don't print error message on dphy probe deferal
> > =

> > Changes from v1:
> > - Per review comments by Sam Ravnborg
> > =A0 https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fl
> > ists.freedesktop.org%2Farchives%2Fdri-devel%2F2019-
> > July%2F228130.html&amp;data=3D02%7C01%7Crobert.chiras%40nxp.com%7C75720
> > 1f9aaa54653580e08d726edb290%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C
> > 0%7C637020674654566414&amp;sdata=3DAU2gzIwrbCdIBZenPWWYYX%2BgdX53zc2%2B
> > SQhZbuN%2FWpU%3D&amp;reserved=3D0
> > =A0 - Change binding docs to YAML
> > =A0 - build: Don't always visit imx-nwl/
> > =A0 - build: Add header-test-y
> > =A0 - Sort headers according to DRM convention
> > =A0 - Use drm_display_mode instead of videmode
> > - Per review comments by Fabio Estevam
> > =A0 https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fl
> > ists.freedesktop.org%2Farchives%2Fdri-devel%2F2019-
> > July%2F228299.html&amp;data=3D02%7C01%7Crobert.chiras%40nxp.com%7C75720
> > 1f9aaa54653580e08d726edb290%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C
> > 0%7C637020674654566414&amp;sdata=3D6kpIZ6iNAQ13fMXU6sqENLwy%2FdIWL6ef8j
> > gyas7I0CQ%3D&amp;reserved=3D0
> > =A0 - Don't restrict build to ARCH_MXC
> > =A0 - Drop unused includes
> > =A0 - Drop unreachable code in imx_nwl_dsi_bridge_mode_fixup()
> > =A0 - Drop remaining calls of dev_err() and use DRM_DEV_ERR()
> > =A0=A0=A0=A0consistently.
> > =A0 - Use devm_platform_ioremap_resource()
> > =A0 - Drop devm_free_irq() in probe() error path
> > =A0 - Use single line comments where sufficient
> > =A0 - Use <linux/time64.h> instead of defining USEC_PER_SEC
> > =A0 - Make input source select imx8 specific
> > =A0 - Drop <asm/unaligned.h> inclusion (after removal of
> > get_unaligned_le32)
> > =A0 - Drop all EXPORT_SYMBOL_GPL() for functions used in the same
> > module
> > =A0=A0=A0=A0but different source files.
> > =A0 - Drop nwl_dsi_enable_{rx,tx}_clock() by invoking
> > clk_prepare_enable()
> > =A0=A0=A0=A0directly
> > =A0 - Remove pointless comment
> > - Laurent Pinchart
> > =A0 https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fl
> > ists.freedesktop.org%2Farchives%2Fdri-devel%2F2019-
> > July%2F228313.html&amp;data=3D02%7C01%7Crobert.chiras%40nxp.com%7C75720
> > 1f9aaa54653580e08d726edb290%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C
> > 0%7C637020674654566414&amp;sdata=3DtDlVGeET1CPMH9W%2FqmnePNR51vNaTKD%2F
> > iFOoR9%2FmESc%3D&amp;reserved=3D0
> > =A0 https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fl
> > ists.freedesktop.org%2Farchives%2Fdri-devel%2F2019-
> > July%2F228308.html&amp;data=3D02%7C01%7Crobert.chiras%40nxp.com%7C75720
> > 1f9aaa54653580e08d726edb290%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C
> > 0%7C637020674654566414&amp;sdata=3DNsLGAL8%2BcOC0ZZxxeoGe7VxQCgqSBEN4G3
> > WVGOeZpCo%3D&amp;reserved=3D0
> > =A0 - Drop (on iMX8MQ) unused csr regmap
> > =A0 - Use NWL_MAX_PLATFORM_CLOCKS everywhere
> > =A0 - Drop get_unaligned_le32() usage
> > =A0 - remove duplicate 'for the' in binding docs
> > =A0 - Don't include unused <linux/clk-provider.h>
> > =A0 - Don't include unused <linux/component.h>
> > =A0 - Drop dpms_mode for tracking state, trust the drm layer on that
> > =A0 - Use pm_runtime_put() instead of pm_runtime_put_sync()
> > =A0 - Don't overwrite encoder type
> > =A0 - Make imx_nwl_platform_data const
> > =A0 - Use the reset controller API instead of open coding that platform
> > specific
> > =A0=A0=A0=A0part
> > =A0 - Use <linux/bitfield.h> intead of making up our own defines
> > =A0 - name mipi_dsi_transfer less generic: nwl_dsi_transfer
> > =A0 - ensure clean in .remove by calling mipi_dsi_host_unregister.
> > =A0 - prefix constants by NWL_DSI_
> > =A0 - properly format transfer_direction enum
> > =A0 - simplify platform clock handling
> > =A0 - Don't modify state in mode_fixup() and use mode_set() instead
> > =A0 - Drop bridge detach(), already handle by nwl_dsi_host_detach()
> > =A0 - Drop USE_*_QUIRK() macros
> > - Drop (for now) unused clock defnitions. 'pixel' and 'bypass' clock
> > will be
> > =A0 used for i.MX8 SoCs but since they're unused atm drop the
> > definitions - but
> > =A0 keep the logic to enable/disable several clocks in place since we
> > know we'll
> > =A0 need it in the future.
> > =

> > Changes from v0:
> > - Add quirk for IMQ8MQ silicon B0 revision to not mess with the
> > =A0 system reset controller on power down since enable() won't work
> > =A0 otherwise.
> > - Drop devm_free_irq() handled by the device driver core
> > - Disable tx esc clock after the phy power down to unbreak
> > =A0 disable/enable (unblank/blank)
> > - Add ports to dt binding docs
> > - Select GENERIC_PHY_MIPI_DPHY instead of GENERIC_PHY for
> > =A0 phy_mipi_dphy_get_default_config
> > - Select DRM_MIPI_DSI
> > - Include drm_print.h to fix build on next-20190408
> > - Drop some debugging messages
> > - Newline terminate all DRM_ printouts
> > - Turn component driver into a drm bridge
> > =

> > [0]: https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%
> > 2Flists.freedesktop.org%2Farchives%2Fdri-devel%2F2019-
> > May%2F219484.html&amp;data=3D02%7C01%7Crobert.chiras%40nxp.com%7C757201
> > f9aaa54653580e08d726edb290%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0
> > %7C637020674654566414&amp;sdata=3D4IVjhLy3a2XxZ4jYwDFD23D%2BvwAVAEj44hY
> > fvvp8OpQ%3D&amp;reserved=3D0
> > [1]: https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%
> > 2Fpatchwork.freedesktop.org%2Fseries%2F62822%2F&amp;data=3D02%7C01%7Cro
> > bert.chiras%40nxp.com%7C757201f9aaa54653580e08d726edb290%7C686ea1d3bc
> > 2b4c6fa92cd99c5c301635%7C0%7C0%7C637020674654566414&amp;sdata=3DGueUBOc
> > baGjWtWcMYBplL6ki2UbgaFPkQHg%2F6eReiYg%3D&amp;reserved=3D0
> > =

> > To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
> > Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
> > , Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.
> > de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <
> > festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Andrzej
> > Hajda <a.hajda@samsung.com>, Neil Armstrong <narmstrong@baylibre.com>
> > , Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
> > <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>, Lee
> > Jones <lee.jones@linaro.org>, Guido G=FCnther <agx@sigxcpu.org>, dri-de
> > vel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kern
> > el@lists.infradead.org, linux-kernel@vger.kernel.org, Robert Chiras <
> > robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>, Fabio
> > Estevam <festevam@gmail.com>, Arnd Bergmann <arnd@arndb.de>
> > =

> > =

> > Guido G=FCnther (2):
> > =A0 dt-bindings: display/bridge: Add binding for NWL mipi dsi host
> > =A0=A0=A0=A0controller
> > =A0 drm/bridge: Add NWL MIPI DSI host controller support
> > =

> > =A0.../bindings/display/bridge/nwl-dsi.yaml=A0=A0=A0=A0=A0=A0| 155 ++++
> > =A0drivers/gpu/drm/bridge/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0|=A0=A0=A02 +
> > =A0drivers/gpu/drm/bridge/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0|=A0=A0=A01 +
> > =A0drivers/gpu/drm/bridge/nwl-dsi/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0|=A0=
=A016 +
> > =A0drivers/gpu/drm/bridge/nwl-dsi/Makefile=A0=A0=A0=A0=A0=A0=A0|=A0=A0=
=A04 +
> > =A0drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.c=A0=A0=A0=A0=A0=A0| 501 ++++=
+++++++++
> > =A0drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.h=A0=A0=A0=A0=A0=A0|=A0=A065 =
++
> > =A0drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.c=A0=A0=A0=A0=A0=A0| 700
> > ++++++++++++++++++
> > =A0drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.h=A0=A0=A0=A0=A0=A0| 112 +++
> > =A09 files changed, 1556 insertions(+)
> > =A0create mode 100644
> > Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/Kconfig
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/Makefile
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.c
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.h
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.c
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.h
> > =

> > --
> > 2.20.1
> > =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
