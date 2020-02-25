Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1945516C00B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 12:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XAHThoGbZf0J6NtaQDG0TeVUT8E7I4tdXn0Hp+G6rns=; b=htg8HTmt+LyNqT4mOP2I2bhNj
	uOkLvi0M339d3fpHNuONwEOncBO4AL4+l2Ew727Gnm4SSAX7nBSs+A6ukSL/Vd7DMH3pUGyk7dGB6
	oLhB4ZBLGTUZLiat+LVWllIR0Hy3Nfo8/pBtk6ESziHDzxAO43kHJV8xnX2213kGw7fDgNsGzHsti
	p7oTl3HqvU0PPOvYXhN9Yl7wmJvIKmnwuNlUBkuDYexwPMe7ygBQdED3mYFkrlJJat/o5z+i6KVTI
	MTEO0Z7z9tPo8iTy+fod/macntIw4j1ZrWOpt+IQvuHEKB4I95tSlt125JnWtFoGffP5BJZcwAGMX
	PfFdtHhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Yny-0002cs-6d; Tue, 25 Feb 2020 11:55:14 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Yne-0002cC-FN; Tue, 25 Feb 2020 11:54:58 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 30432F54;
 Tue, 25 Feb 2020 06:54:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 25 Feb 2020 06:54:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=lvoHNJn8/1mSkGt8qSqiHAjZPp5
 MXiSJe0WVvgh674k=; b=MH3zs33PkZK6hswA21Dh+lxvYjqD2cRCABhSTrTGzKq
 7Yq+LL7WkqAeiHocCtgr/B9ISD85nutz4uIvbhm/OtQPGTvdmMB8OY+F/FpVR67+
 bmQ9egDc6yPAy2JqiBbpt/TtFq3IWBmqqktjv4ObRIbCd4+ETbNRn3ewPDyMj+D+
 mRKFaklJeU9SgHavwBHFXLMPLBCkoiZNzpJgw3B0JYrJaASxdAlblPV6Cuaznj7T
 yAVC53IRBbagYtkfhuOL7MZ08l3ckTglxth/ucvwS9X8zAjOHvpzuDQuuYYmuF2R
 eWBW9MQWOxOm2GLuALoM4OXqGxiRsl/89d3/CHXcUzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=lvoHNJ
 n8/1mSkGt8qSqiHAjZPp5MXiSJe0WVvgh674k=; b=gU4w4TPVvpxwey1c97+EwV
 jxXGojUFb7MQ5kYvuflkhiMb6eGifIL859TBvb6VhFfdh6qZJaHhHtgAFdfPfJvu
 tyVizHBpwQHYJtmQh5+yzLqbb+C8CrqfCwtpyGAd+EEfBnPLPLvpStVc2X8q0Hbh
 P32YBN4XrUaf0RM4zVSjAlXydbymlC0l1tfwOiRntv6/JOiLANNNG0wAFSdxrkO9
 dxooq9HA94Ud0PQqWfxqeBtG5OlR3vpfUqSqWrbsLWlzI2+5zCmZaMn43x3SaEh4
 KQYwzFbG7B10vxDWzSlQ9VlAf1h41qih7tKBrhtoq0j/H7sAJWw7Q/Wz/3sJu+TA
 ==
X-ME-Sender: <xms:CgtVXn1Q3KK04CS1Whc9ICLs9NtDPY7RQ1A1AoDex1Ag6ey8S5LLdg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledvgdefvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epohiilhgrsghsrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:CgtVXivf9h2Utp-X-BX46SHe91Ue4VA3H040s4oWhKRJTiS-9acP8w>
 <xmx:CgtVXuQMYjgP5h0rveXOxa1Bcl-hQtRXhqKdNvmSqWj9H1o6bZrgSQ>
 <xmx:CgtVXmvrEZFXawthdB6Ix2x5ZG80bObg6oK75zjLvwYlL5IIjt9Tzw>
 <xmx:CwtVXnw8qLT5g_iw5cSYbkYF2aN_9D9RkvLZyZ-BGGPh-C7ny7DwTZFMmyk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C32F0328005D;
 Tue, 25 Feb 2020 06:54:49 -0500 (EST)
Date: Tue, 25 Feb 2020 12:54:47 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 29/89] dt-bindings: display: Convert VC4 bindings to
 schemas
Message-ID: <20200225115447.yntzkh3vfnw67ial@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <bf8aa2deea50cc3599caeb9ed1a07556353415df.1582533919.git-series.maxime@cerno.tech>
 <20200224184107.GA4189@bogus>
MIME-Version: 1.0
In-Reply-To: <20200224184107.GA4189@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_035454_842757_AB4B82CF 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3572325651367917589=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3572325651367917589==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wp3itnu4schr4cfa"
Content-Disposition: inline


--wp3itnu4schr4cfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Mon, Feb 24, 2020 at 12:41:07PM -0600, Rob Herring wrote:
> On Mon, 24 Feb 2020 10:06:31 +0100, Maxime Ripard wrote:
> > The BCM283x SoCs have a display pipeline composed of several controllers
> > with device tree bindings that are supported by Linux.
> >
> > Now that we have the DT validation in place, let's split into separate
> > files and convert the device tree bindings for those controllers to
> > schemas.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt              | 174 +------------------------------------------------------------------------
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml         |  66 +++++++++++++++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml        |  73 ++++++++++++++++++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml        |  75 +++++++++++++++++++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml         |  37 +++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml |  40 +++++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml         |  37 +++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml         |  42 +++++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml         |  34 ++++++++++++++-
> >  Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml         |  44 ++++++++++++++++++-
> >  MAINTAINERS                                                             |   2 +-
> >  11 files changed, 449 insertions(+), 175 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> warning: no schema found in file: Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml: ignoring, error in schema: properties
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml: properties: '#clock-cells' is a dependency of 'clock-output-names'
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.example.dts] Error 1
> Makefile:1263: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
>
> See https://patchwork.ozlabs.org/patch/1242907
> Please check and re-submit.

Yeah, that was fixed in patch 31 ("dt-bindings: display: vc4: dsi: Add
missing clock properties"). I'm not quite sure what the preferred
approach here would be: I did a conversion as is of the binding, and
then fixed it, or do you prefer having it all in the same patch?

Maxime

--wp3itnu4schr4cfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlULBwAKCRDj7w1vZxhR
xdnfAP9sNPtWNQ6W0xCqTbTlfp9MnBZuqQzk+Z/xn3MFn69Q4QD9E4K0DZnqtYy5
BaU9UsY7nt+gVJzpuPEq8oP11EYmNgc=
=j/4G
-----END PGP SIGNATURE-----

--wp3itnu4schr4cfa--


--===============3572325651367917589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3572325651367917589==--

