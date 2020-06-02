Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D591EBF6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 17:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aQM3xtXh1UavPIqZ8V88uRoI7Z0wjJ7iBxGPMltOmog=; b=iL3VTsRBvjag4sSPJtjGXm6me
	jNeBXhuBMWzBilIYQ3cLyBmEyzTuf2/pLMfV0FAK21IlopqBsL+aUwHYNl7QE9BN8JKhe67R81xIK
	dxr+3+zm/x/D1R3QWn/JhCLTeVibSE6ZRF2hFPOQEvwF63c/C+x/AQm3fHuWFZdEtJoS2r9mAbtNy
	5qLlmSqFfQ/wTRBis3+1QawlSwCYUyGxEiKO6ixT8Oa7ylTqmDeNYvqkPdZL+pAcvQAaxLs+1GKM/
	icCLjH2kzWBvGtbBh+qmhpa5RJ95eHcHiE4FXvZVXOPd866dXLqKNC8IURmJvkCNAGaQYjFVjhHRg
	XPs0FVzoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9FP-00082H-L8; Tue, 02 Jun 2020 15:54:39 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9FI-00080f-PM; Tue, 02 Jun 2020 15:54:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id AB6D25C0227;
 Tue,  2 Jun 2020 11:54:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 02 Jun 2020 11:54:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=cdDGYcXym9L8clxXR7KCFX14lxp
 SPK3OttsaYL6SZMQ=; b=Rkdjea0MH42CeGwamJbTWWfqpvMJsV2xK02vgbSF639
 /oW/Ff3PEMIqdKlqXYKsesOY1H1c6n5qYaf7xIOt+yoSAwQ3acSmVhwhgHjN9cVV
 n/uySVAguavnJqPybHybYNDsAJlScinOT+e1vZP/owqo4c6l4Tb4pF45bxPDqIHe
 ZMY+2xDItJuGfDiqTlfpYcAqSfRDLjcgUfjPcIVWQlwm0ISAlVx/Haem82T8xhq4
 z87xZbNSfyolr7jSgJa+xHN7SuYsjJAaZBMNsdhtRejMrVEUI7Gm+4DfawKZEQ2N
 tpatmLUiErXrKm7HFOwtm04zuOViX7jK7aEEhIMKs4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=cdDGYc
 Xym9L8clxXR7KCFX14lxpSPK3OttsaYL6SZMQ=; b=FG1fvapUBdisWavPjmkg/O
 JzN0HnI76u3btB0Lt/yl8Nr27ZevaEaPaDipHkXmzVImPTcXCkwpy+N8xkpl4njH
 OvBuc+bcIynauF1EZxRx0Vy0kIgADC2Rh8Hj/70AcW2BqdptdFO+t26KIIghuBs9
 99lYLLqwFlIdhrRNxKKEtSDpKRCof25CcIUUfTRb3FSr+GZfrPW8ssDVkpMSvRMv
 GldVQA6DlbouRt5Uu3iKQbw2+7nkvlBF9L1ezRRyZRwqE5l5ycbI2JMz8SCzlmx0
 +rJWzkIv+4hjjdHInHrKAuoJBnFGUHlgZt1GnxdVP5oXRH8zdLRUvuYzrrGbQTMg
 ==
X-ME-Sender: <xms:L3bWXsXx44AiawlHbjJXh4GFdSRZGDT1PhULNJufspRHdmrhD4r3BQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefjedgjedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:L3bWXgkL16skZvtumvJ5vqnQcghldRxJ9t0TDRArNqNQfJcOj6yERQ>
 <xmx:L3bWXgYhJlDYVM3OTJue3vOCLs_Te6h9oOIZO4vF-0l4pN88pBu-NQ>
 <xmx:L3bWXrXfUkwHji9SEzOWV7DiLoHnhX-RxDYlExIYL-AVa0vqo7fceg>
 <xmx:M3bWXkZSdZp066jr43w93PAXpjkTcQ85bjREF4g_IIhBZKS4W7oV5Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 50C1C3280060;
 Tue,  2 Jun 2020 11:54:23 -0400 (EDT)
Date: Tue, 2 Jun 2020 17:54:21 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Eric Anholt <eric@anholt.net>
Subject: Re: [PATCH v3 070/105] drm/vc4: hdmi: rework connectors and encoders
Message-ID: <20200602155421.niyvpwqc42xh5c7v@gilmour>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <020de18840a1075b2671736c6cc2e451030fad74.1590594512.git-series.maxime@cerno.tech>
 <CADaigPXJ0BnMUp=XN6G92Tx=H9j55pmsBAujO2mcpiiTs-RHnQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADaigPXJ0BnMUp=XN6G92Tx=H9j55pmsBAujO2mcpiiTs-RHnQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_085433_132850_5266F396 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6155581302366053988=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6155581302366053988==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qxxigstfuc465wjv"
Content-Disposition: inline


--qxxigstfuc465wjv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 27, 2020 at 11:41:24AM -0700, Eric Anholt wrote:
> On Wed, May 27, 2020 at 8:51 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > the vc4_hdmi driver has some custom structures to hold the data it need=
s to
> > associate with the drm_encoder and drm_connector structures.
> >
> > However, it allocates them separately from the vc4_hdmi structure which
> > makes it more complicated than it needs to be.
> >
> > Move those structures to be contained by vc4_hdmi and update the code
> > accordingly.
>=20
>=20
> > @@ -1220,7 +1219,7 @@ static int vc4_hdmi_bind(struct device *dev, stru=
ct device *master, void *data)
> >         struct drm_device *drm =3D dev_get_drvdata(master);
> >         struct vc4_dev *vc4 =3D drm->dev_private;
> >         struct vc4_hdmi *hdmi;
> > -       struct vc4_hdmi_encoder *vc4_hdmi_encoder;
> > +       struct drm_encoder *encoder;
> >         struct device_node *ddc_node;
> >         u32 value;
> >         int ret;
> > @@ -1229,14 +1228,10 @@ static int vc4_hdmi_bind(struct device *dev, st=
ruct device *master, void *data)
> >         if (!hdmi)
> >                 return -ENOMEM;
> >
> > -       vc4_hdmi_encoder =3D devm_kzalloc(dev, sizeof(*vc4_hdmi_encoder=
),
> > -                                       GFP_KERNEL);
> > -       if (!vc4_hdmi_encoder)
> > -               return -ENOMEM;
> > -       vc4_hdmi_encoder->base.type =3D VC4_ENCODER_TYPE_HDMI0;
> > -       hdmi->encoder =3D &vc4_hdmi_encoder->base.base;
> > -
> >         hdmi->pdev =3D pdev;
> > +       encoder =3D &hdmi->encoder.base.base;
> > +       encoder->base.type =3D VC4_ENCODER_TYPE_HDMI0;
>=20
> Wait, does this patch build?

All those patches were build tested, so yep

> setting struct drm_encoder->base.type =3D VC4_* seems very wrong, when
> previously we were setting struct vc4_hdmi_encoder->base.type (struct
> vc4_encoder->type).

So the structure layout now is that vc4_hdmi embeds vc4_hdmi_encoder as
encoder. So &hdmi->encoder is a pointer to vc4_hdmi_encoder.
vc4_hdmi_encoder's base is since that patch a struct vc4_encoder. and
vc4_encoder's base is a drm_encoder.

so encoder being a drm_encoder is correct there.

However, drm_encoder's base is drm_mode_object that does have a type
field, which is an uint32_t, which will accept a VC4_ENCODER_TYPE_* just
fine...

Now, drm_encoder_init will then kick in and call drm_mode_object_add
which will override it to a proper value and since the clock select bit
in the PV is the same for both HDMI0 and HDMI1, everything works just
fine...

Good catch, I'll fix it. And I guess it's a good indication we don't
need a separate HDMI0 and HDMI1 encoder type.

> Other than this, patch 68-78 r-b.

Thanks for your review!
Maxime

--qxxigstfuc465wjv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtZ2LQAKCRDj7w1vZxhR
xfluAP43aoGu2OPb0dq0BcgQ5MBEsuDCQDD5MHgSVl0cRgWGjwD/aa+PuVsSgsR0
5+38Ljq0cbWaxeUJTzW8daGiUZDn8wM=
=KM7l
-----END PGP SIGNATURE-----

--qxxigstfuc465wjv--


--===============6155581302366053988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6155581302366053988==--

