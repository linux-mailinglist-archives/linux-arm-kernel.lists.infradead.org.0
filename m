Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6E21915DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVDDA7ER8Fw1dI6ylyKqlAq+izRfYY6YyZih9mmsDFU=; b=s52Pymk49beMjA
	6sQoY0DFN3MmL6+d+hzGcX4wkF9Y7nxlvWe/EVTm3mhdHCtlT0a61CgAJLKNT+2n6D4T5lDvtvxCB
	C9WhqUyXhzLSD2pEQzglctlQJSqocfF5ssjQ20BmtpuNDBqrtqvUM7LsRw+lArJTRmNBmjP6xxBls
	tgLPmf2Etnb1y58o86LtnM6tKMblTeDRiROQLmpI1zTBmTpSu8hFn0X2WkbVzbmwGPRq9aVqHjNDl
	qPY7Q0m8qHCcAAIqLZaYSubiqIPmq52YFNtkHUFgFOcShPdUXMzT3rVLrjjeHOyZY2dtupSiLQObY
	AoSN142pkddA1CC1DZ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmAo-0000Za-R7; Tue, 24 Mar 2020 16:13:03 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmAd-0000RH-RR
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 16:12:53 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0CB43308;
 Tue, 24 Mar 2020 17:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1585066344;
 bh=h9AU8lIpV7OHn82ip0Jw12bYSRW82NU8UY8yuWnDD/A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jhEyVSolpqtVGQVGQ7ZsK5akEab88MiGhWEvbC4a6HAJothOGvP7rBw4+LTm2kv0x
 y1e8bNcrGWMkklZyBCMKRgPkxOhFV4YXN0t5YMPn8WIZ9z+KUQsjYmK/kUnZKeJZNw
 oyuI3ypKkx8sJze7gPlnVR/a+roJIFn2QjyRGBCw=
Date: Tue, 24 Mar 2020 18:12:21 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
Message-ID: <20200324161221.GA27805@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
 <20200319130348.GC4872@pendragon.ideasonboard.com>
 <CA+V-a8s-GZsYuBLyGnzURZfGD42f0c+QEan6FSwb2ew1=7Gj3g@mail.gmail.com>
 <20200324154045.whiy6uvlg2mrjv5a@gilmour.lan>
 <CA+V-a8tMVoJOdgM_S0sJ0WEGhwBirCC4mi-TtxLCn1SKVXXiBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+V-a8tMVoJOdgM_S0sJ0WEGhwBirCC4mi-TtxLCn1SKVXXiBQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_091252_041068_E85B915F 
X-CRM114-Status: GOOD (  28.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Maxime Ripard <maxime@cerno.tech>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Tue, Mar 24, 2020 at 04:04:43PM +0000, Lad, Prabhakar wrote:
> On Tue, Mar 24, 2020 at 3:40 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > On Thu, Mar 19, 2020 at 01:17:51PM +0000, Lad, Prabhakar wrote:
> > > On Thu, Mar 19, 2020 at 1:04 PM Laurent Pinchart wrote:
> > > > On Thu, Mar 19, 2020 at 01:44:52PM +0100, Maxime Ripard wrote:
> > > > > On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > > > > > Use assigned-clock-rates to specify the clock rate. Also mark
> > > > > > clock-frequency property as deprecated.
> > > > > >
> > > > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> > > > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > > index 72ad992..e62fe82 100644
> > > > > > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > > @@ -8,7 +8,7 @@ Required Properties:
> > > > > >  - compatible: Value should be "ovti,ov5645".
> > > > > >  - clocks: Reference to the xclk clock.
> > > > > >  - clock-names: Should be "xclk".
> > > > > > -- clock-frequency: Frequency of the xclk clock.
> > > > > > +- clock-frequency (deprecated): Frequency of the xclk clock.
> > > > > >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > > > > >    to the hardware pin PWDNB which is physically active low.
> > > > > >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > > > > > @@ -37,7 +37,8 @@ Example:
> > > > > >
> > > > > >                     clocks = <&clks 200>;
> > > > > >                     clock-names = "xclk";
> > > > > > -                   clock-frequency = <24000000>;
> > > > > > +                   assigned-clocks = <&clks 200>;
> > > > > > +                   assigned-clock-rates = <24000000>;
> > > > > >
> > > > > >                     vdddo-supply = <&camera_dovdd_1v8>;
> > > > > >                     vdda-supply = <&camera_avdd_2v8>;
> > > > >
> > > > > clock-frequency is quite different from assigned-clock-rates though,
> > > > > semantically speaking. clock-frequency is only about what the clock
> > > > > frequency is, while assigned-clock-rates will change the rate as well,
> > > > > and you have no idea how long it will last.
> > > >
> > > > The driver currently reads the clock-frequency property and then calls
> > > > clk_set_rate(). I agree tht assigned-clock-rates isn't a panacea, but I
> > > > think it's less of a hack than what we currently have.
> > > >
> > > > As discussed on IRC, maybe the best option in this specific case is to
> > > > drop clock-frequency and assigned-clok-rates, and call clk_set_rate()
> > > > with a hardcoded frequency of 24MHz in the driver, as that's the only
> > > > frequency the driver supports.
> > > >
> > > Does this mean any driver which has a fixed clock requirement shouldn't be a
> > > DT property and should be just handled by the drivers internally ?
> >
> > It's hard to give a generic policy, but here, the hardware is pretty
> > flexible since it can deal with anything between 6MHz to 50-something
> > MHz, it's the driver that chooses to enforce a 24MHz and be pedantic
> > about it, so it's up to the driver to enforce that policy, not to the
> > DT since it's essentially a software limitation, not a hardware one.
>
> Thank you for the clarification, Ill drop patches 1-4 from this series.

That's the whole series... :-) I think you should keep patch 1/4 but
just remove the clock-frequency from the bindings, then remove it from
the DT files, and patch the driver to set the clock rate to 24MHz
unconditionally in patch 4/4.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
