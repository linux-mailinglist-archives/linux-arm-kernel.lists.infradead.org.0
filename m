Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D874DA80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 21:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVB8ZjSeM1ZsM1oix5P3dfa1nZlJ/xXhqBAEtJnKY40=; b=Doc9Nzgq8bn+e5
	rc/0xoF46vSTpRH+Sg87+ub+UtHE6/hItABJUckLWaOyvSS1q0/lwi3cHilK8hXkpMz/2XwB0SnhT
	ctBNuIjsoiDGTtYO7/B6nbN035OE4yzXMP6C4Qveqtay4K5JN3R6GGUF5rVfBMsSLWslAdOzbh2gm
	QdNb1TKMBOtZ9E57XaAfOKavFKmbv9kWgoq2vcXr5UulZOEY8up3l+6/3xwE9uAEtpcieDVopSKMm
	Lg3LBZb0jHusdWIH5ojxgxEwgSM/TJTEHT7yGjyYzG4v8lAE7eKue9XpycRN+a5EFqXkr4Ze9gGe4
	3YvIzIVVN0GfilydviLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2ya-00037j-Dn; Thu, 20 Jun 2019 19:44:04 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2xp-0002iB-6O
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 19:43:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id A23C0FB06;
 Thu, 20 Jun 2019 21:43:15 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v9DpMwBc1fMx; Thu, 20 Jun 2019 21:43:14 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 087FA47322; Thu, 20 Jun 2019 21:43:14 +0200 (CEST)
Date: Thu, 20 Jun 2019 21:43:13 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v11 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
Message-ID: <20190620194313.GA13015@bogon.m.sigxcpu.org>
References: <cover.1557657814.git.agx@sigxcpu.org>
 <2000bc4564175abd7966207a5e9fbb9bb7d82059.1557657814.git.agx@sigxcpu.org>
 <CAOMZO5BaFYJxh1v46n2mdPyc+-jg6LgvoGR1rTE+yHZg_0Z8PA@mail.gmail.com>
 <69fcb327-8b51-df9e-12d9-d75751974bce@ti.com>
 <9a872f5b-1544-32a0-bd93-1d6333468114@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a872f5b-1544-32a0-bd93-1d6333468114@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_124317_475012_583AB333 
X-CRM114-Status: GOOD (  18.30  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Fabio Estevam <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Sam Ravnborg <sam@ravnborg.org>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Thu, Jun 20, 2019 at 02:18:53PM +0530, Kishon Vijay Abraham I wrote:
> Hi,
> =

> On 24/05/19 9:31 PM, Kishon Vijay Abraham I wrote:
> > Hi,
> > =

> > On 24/05/19 5:53 PM, Fabio Estevam wrote:
> >> Hi Kishon,
> >>
> >> On Sun, May 12, 2019 at 7:49 AM Guido G=FCnther <agx@sigxcpu.org> wrot=
e:
> >>>
> >>> This adds support for the Mixel DPHY as found on i.MX8 CPUs but since
> >>> this is an IP core it will likely be found on others in the future. So
> >>> instead of adding this to the nwl host driver make it a generic PHY
> >>> driver.
> >>>
> >>> The driver supports the i.MX8MQ. Support for i.MX8QM and i.MX8QXP can=
 be
> >>> added once the necessary system controller bits are in via
> >>> mixel_dphy_devdata.
> >>>
> >>> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> >>> Co-developed-by: Robert Chiras <robert.chiras@nxp.com>
> >>> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> >>> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> >>> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> >>
> >> Would you have any comments on this series, please?
> > =

> > I don't have any comments. I'll queue this once I start queuing patches=
 for the
> > next merge window.
> =

> Can you fix the following checkpatch warning and repost?
> WARNING: quoted string split across lines
> #420: FILE: drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:280:
> +	dev_dbg(&phy->dev, "hs_prepare: %u, clk_prepare: %u, "
> +		"hs_zero: %u, clk_zero: %u, "
> =

> WARNING: quoted string split across lines
> #421: FILE: drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:281:
> +		"hs_zero: %u, clk_zero: %u, "
> +		"hs_trail: %u, clk_trail: %u, "
> =

> WARNING: quoted string split across lines
> #422: FILE: drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c:282:
> +		"hs_trail: %u, clk_trail: %u, "
> +		"rxhs_settle: %u\n",

Fixed in v12.
Thanks,
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
