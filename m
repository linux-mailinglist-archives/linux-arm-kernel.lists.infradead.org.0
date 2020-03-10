Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003851807B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08VIQRoWxF/b4YF0RJR2GF6r+sWc0YZ1GmkeNplHFRM=; b=ANAETzILK8J5nf
	0MqoWgi0JEExmzWKHFDMryRksHKZIwwXT5RbwPTqio6VAd58fEzu5yX0voK56/BPYQSVtQGIeOmZa
	On9QmDfIVRpJPSw+mmNBCCfvYU6k6Ic6VpKifMw6TXQHuzR8y7KT99/pGm/upjd6ryWViyD72sI/t
	YeHV0UJWXvvTJvuhCiQ8tyUVrdFMGeQ7Z3lwVSTsKEYZVERRXmhEkvW0ItOAQqaviULhUxn1fH9la
	pON8uco0hoiSc1roObtl1MT7XoWkXa9bR0zUx3K/jIHv5VzSxPvDzHhxDpHFCIxSRIZyztV28SVuw
	eQSf4eaiasjeVyG0j/4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkH2-0001Ai-KX; Tue, 10 Mar 2020 19:10:40 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkGt-00019q-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:10:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 12:10:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="353691156"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 10 Mar 2020 12:10:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 21:10:24 +0200
Date: Tue, 10 Mar 2020 21:10:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 1/2] drm/panel: Add Starry KR070PE2T
Message-ID: <20200310191024.GQ13686@intel.com>
References: <20200310102725.14591-1-dev@pascalroeleven.nl>
 <20200310102725.14591-2-dev@pascalroeleven.nl>
 <20200310185422.GA22095@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310185422.GA22095@ravnborg.org>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_121031_542668_913DD919 
X-CRM114-Status: GOOD (  25.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Pascal Roeleven <dev@pascalroeleven.nl>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 07:54:23PM +0100, Sam Ravnborg wrote:
> Hi Pascal.
> =

> Thanks for submitting.
> =

> On Tue, Mar 10, 2020 at 11:27:23AM +0100, Pascal Roeleven wrote:
> > The KR070PE2T is a 7" panel with a resolution of 800x480.
> > =

> > KR070PE2T is the marking present on the ribbon cable. As this panel is
> > probably available under different brands, this marking will catch
> > most devices.
> > =

> > Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
> =

> A few things to improve.
> =

> The binding should be a separate patch.
> subject - shall start with dt-bindings:
> Shall be sent to deveicetree mailing list.
> =

> For panel we no longer accept .txt bindings.
> But the good news is that since the panel is simple,
> you only need to list your compatible in the file
> bindings/display/panel/panel-simple.yaml
> - must be en alphabetical order
> - vendor prefix must be present in vendor-prefixes
> =

> =

> =

> > ---
> >  .../display/panel/starry,kr070pe2t.txt        |  7 +++++
> >  drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++++
> >  2 files changed, 33 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/sta=
rry,kr070pe2t.txt
> > =

> > diff --git a/Documentation/devicetree/bindings/display/panel/starry,kr0=
70pe2t.txt b/Documentation/devicetree/bindings/display/panel/starry,kr070pe=
2t.txt
> > new file mode 100644
> > index 000000000..699ad5eb2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.=
txt
> > @@ -0,0 +1,7 @@
> > +Starry 7" (800x480 pixels) LCD panel
> > +
> > +Required properties:
> > +- compatible: should be "starry,kr070pe2t"
> > +
> > +This binding is compatible with the simple-panel binding, which is spe=
cified
> > +in simple-panel.txt in this directory.
> > diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/pan=
el/panel-simple.c
> > index e14c14ac6..027a2612b 100644
> > --- a/drivers/gpu/drm/panel/panel-simple.c
> > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > @@ -2842,6 +2842,29 @@ static const struct panel_desc shelly_sca07010_b=
fn_lnn =3D {
> >  	.bus_format =3D MEDIA_BUS_FMT_RGB666_1X18,
> >  };
> >  =

> > +static const struct drm_display_mode starry_kr070pe2t_mode =3D {
> > +	.clock =3D 33000,
> > +	.hdisplay =3D 800,
> > +	.hsync_start =3D 800 + 209,
> > +	.hsync_end =3D 800 + 209 + 1,
> > +	.htotal =3D 800 + 209 + 1 + 45,
> > +	.vdisplay =3D 480,
> > +	.vsync_start =3D 480 + 22,
> > +	.vsync_end =3D 480 + 22 + 1,
> > +	.vtotal =3D 480 + 22 + 1 + 22,
> > +	.vrefresh =3D 60,
> > +};
> =

> Please adjust so:
> vrefresh * htotal * vtotal =3D=3D clock.
> I cannot say what needs to be adjusted.
> But we are moving away from specifying vrefresh and want the
> data to be OK.

This one actually looks OK to me. Unless I typoed the numbers
the timings give us a vrefresh of 59.58 which gets rounded to 60.
So no change once .vrefresh disappears AFAICS.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
