Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1676ED60D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 13:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xX0YkNYOaOizV+P1FafV2MpkZO5fXovNboClS8vcYtQ=; b=fdubuw2yhBUhx6jW1qOsJBgrG
	Y+rUjBnStj1HPLbImgt4A6Jnq/Gqp4leEdSHCBdFcxeeQybSjdZZ4SIQWP7WKoV/Skz1C8oThLiBN
	e3pxModAcRSbA2kfBUN68k5zuAz+3F+DmS8MXiKkaBJyuBjUzu7K4/Zk6SzWEJitYtFda87A4/yIv
	iUX+1/eO5LSwfakMwymq3fZKj3LzYrER4zhGpNYWdsBu5IL/q5gZIBz2xRiTq4YxPh4aEFYa0ClgW
	YeIL6QdIzZOvQp30IqzGgJ+bfT3DY94Sui+rAz3tWhpsfKA8Gnz5c9Asr4DYv/kAH0N0u78z09/BA
	0iSzZshnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJy5L-00045S-SA; Mon, 14 Oct 2019 11:00:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJy5B-000448-A3
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 11:00:11 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61F9C207FF;
 Mon, 14 Oct 2019 11:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571050808;
 bh=ZlGSWdazyQ+VJGnSWXQEMdj9sn2sA7OLQ6nosjRvcVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ARrkQrHoYCU2xerLQcqUwNA9j7VvNbBzkuJMrer7cqklB+5MhejFy6YoIEB7gUDGM
 6YyDja4j4e5cnKK6dFQ6VOGvaa+354POwCSP8t12y3RLqXS2cfH3RTWsEH6xX/09ob
 oeAR8H4mMIvyHAuu5DkVYaEWkuGPrvuF1n1qy8eU=
Date: Mon, 14 Oct 2019 13:00:06 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 1/6] dt-bindings: sun6i-dsi: Add A64 MIPI-DSI
 compatible
Message-ID: <20191014110006.b324hccd52u7fotw@gilmour>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-2-jagan@amarulasolutions.com>
 <20191007093122.ixrpzvy6ynh6vuir@gilmour>
 <CAMty3ZA1azP3kkJPw6oZudcSQksF6i+STeW=oOh65cfHsj0QrQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZA1azP3kkJPw6oZudcSQksF6i+STeW=oOh65cfHsj0QrQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_040009_409721_DE8F72B0 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3858845748784057491=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3858845748784057491==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ictolke544mhfqmp"
Content-Disposition: inline


--ictolke544mhfqmp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 13, 2019 at 10:32:18PM +0530, Jagan Teki wrote:
> On Mon, Oct 7, 2019 at 3:01 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Sat, Oct 05, 2019 at 07:49:08PM +0530, Jagan Teki wrote:
> > > The MIPI DSI controller in Allwinner A64 is similar to A33.
> > >
> > > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > > to with separate compatible for A64 on the same driver.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml        | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > index dafc0980c4fa..cfcc84d38084 100644
> > > --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > @@ -15,7 +15,9 @@ properties:
> > >    "#size-cells": true
> > >
> > >    compatible:
> > > -    const: allwinner,sun6i-a31-mipi-dsi
> > > +    enum:
> > > +      - const: allwinner,sun6i-a31-mipi-dsi
> > > +      - const: allwinner,sun50i-a64-mipi-dsi
> >
> > How did you test this? It will report an error when running the
> > validation
>
> I did follow the v9 comments [1] and forgot to do dt-doc-validate.
> will send the v11 for this patch alone, will that be okay?
>
> [1] https://patchwork.freedesktop.org/patch/307499/

There's some changes to the DTSI to do as well, so please do them,
check that the device trees are validated properly, and send a new
version.

Maxime

--ictolke544mhfqmp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXaRVNgAKCRDj7w1vZxhR
xdlEAP9MkHQgcCclQKzguGiRxdmXCb+BVwkeOWiDgHEs4bDIXgD/eQbRbeTOq1NN
hIPooMFntNFWHosHxRdy9yw7y56jfg0=
=FNyg
-----END PGP SIGNATURE-----

--ictolke544mhfqmp--


--===============3858845748784057491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3858845748784057491==--

