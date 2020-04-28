Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA46A1BB82F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=knibS0blJ2lGX7TEjL5PuGXg7g2soIih6TMF2rFCi0I=; b=AalkVOWC1vzlo9KjGwAI8jlJ+
	lPJo62J01CXjxMRUzBT3lk4alFyrjyLcvpm+i88197jYH2qeIo8zUdcCK20JgRxd12kyxWGkFB+fr
	2B6tOLgvnKYBT00FY2B9qJLUJSWoUdbpLc4+jg9qU4CWZr9eczLLesG9hEuHMCPgrjELZUjCqrpya
	Oii88IyYPYBQrdmCsSIOw/DjVzczoKrCFrz5HfdVBZmmtEeboE/DTXi5gU6ZpiXcyIRzC/Uj8rz0l
	c3+xSt6LKZDMBu9kEwA4e8SjMSHPJf8Uv+JXwYFlzB1jhGsB2aw3Q0KX4KoQlY9949nQrgjNidM4x
	rhR9xEtwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTL5O-0003PC-Up; Tue, 28 Apr 2020 07:55:22 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTL5A-0002L3-Ow
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:55:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D71FD5801B9;
 Tue, 28 Apr 2020 03:55:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 03:55:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=3Ly4DUDSUpkyQ57Uyx52tImyR/V
 7cGw1VRugpX+pW4g=; b=o2owi7ebNFkyAxuDt0S0E4gMjDAPl+rlEs413NF3wrZ
 QD1LxrZMT1bx9d2Xiaht6gsGzwmwE39UCG1jJlPr+LlxzLWfDZC3TSsy5EeG4dBB
 +Ld7llM3WFIeiQn+ZuobU870M87rwbTpC4bzFGo85lDtxtm/LzY27SLRWRs7RbKV
 vL0s+ouSm+pLTydOadSYn7pNPkxHWyYIFPdAOBbix61Eyxd0lEMBsvQbxJTpMIWr
 MAkZSpvQnttVf1DQb1OoAzRpcVBJyquSbmXgZIz081PW4JFbxRSAtOL93jhkKYG7
 wf3nY/mU8pAqJ14oHC3mokmxqCUctXka1bFpnSFNqww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3Ly4DU
 DSUpkyQ57Uyx52tImyR/V7cGw1VRugpX+pW4g=; b=rmOcc2Vnwerk37bE3zrswg
 JZZRXT/vUZOSv1thw+gTfqY7sq4K45Dh8UWjurjZaEYhNDXBsW2Ek/yVk5lFdsFa
 mBF1FsL50xFPW30cFD2s9CLue8c3xG6JC9HnTRCitN9caGh8e+D21TxdM4g6z+Jw
 pgyt75yoIFYHdncoYOlB+B9y5hRjAAdGQ2QxOBuqzekL4/jdE51RxjhSdep+xsjt
 7+IVtBaDdMXesFbmSYmc8j2RApLOPdPFeneP7aDN7QrdQ9ha0C1xU8zhctTdSNk1
 +3WsWVtFSxsMeCIhXsvOknaJnA0+PeDtXKXACnyPQGYTLhl5WrvsrEMq9P94En2A
 ==
X-ME-Sender: <xms:WeGnXr2kiIe9Nna4uMsIplj4cWOL8LkAS7YpQUgKGiIVH6O6E18E6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedtgdduvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:WeGnXkKXNeQAHdF25E0lMqJFjK8KyV4BTYiOoi9a-n7xlygAo2ykGg>
 <xmx:WeGnXuwLDE6M2xiVAnbufxzc7f_WjQtfmPAUuqd5KE_YQs12eIT9Uw>
 <xmx:WeGnXowGzHwORiE6YCTQVXbShNboMDsHPdPWmKMkFirCUqH8uhdflA>
 <xmx:WuGnXs_B6lTCI76oCVDXt1qyT7caIAhVUlOWIvduG1BvzvG4AujUXg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id AF3543280065;
 Tue, 28 Apr 2020 03:55:05 -0400 (EDT)
Date: Tue, 28 Apr 2020 09:55:04 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v7 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200428075504.ovzugt2mbgan7z3k@gilmour.lan>
References: <20200408110816.2712841-1-robert.foss@linaro.org>
 <20200408110816.2712841-2-robert.foss@linaro.org>
 <20200415160729.GA4438@bogus>
 <20200415162110.bmorj4u4hkqohqjx@pengutronix.de>
 <CAG3jFysg34=HJ7xefuAKw4Uq6W0POm5TsJmzQku6WwkhH_j=-w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAG3jFysg34=HJ7xefuAKw4Uq6W0POm5TsJmzQku6WwkhH_j=-w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_005508_999397_A462AD2E 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============8872496222828953434=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8872496222828953434==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bgh5jcvervb4fpgs"
Content-Disposition: inline


--bgh5jcvervb4fpgs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 27, 2020 at 05:13:42PM +0200, Robert Foss wrote:
> On Wed, 15 Apr 2020 at 18:21, Marco Felsch <m.felsch@pengutronix.de> wrot=
e:
> >
> > On 20-04-15 11:07, Rob Herring wrote:
> > > On Wed, Apr 08, 2020 at 01:08:14PM +0200, Robert Foss wrote:
> > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > >
> > > > This patch adds documentation of device tree in YAML schema for the
> > > > OV8856 CMOS image sensor.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > > > ---
> > > >
> > > > - Changes since v6:
> > > >   * Marco: remove qcom specifics from DT example
> > > >
> > > > - Changes since v5:
> > > >   * Add assigned-clocks and assigned-clock-rates
> > > >   * robher: dt-schema errors
> > > >
> > > > - Changes since v4:
> > > >   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in descrip=
tion
> > > >   * Add clock-lanes property to example
> > > >   * robher: Fix syntax error in devicetree example
> > > >
> > > > - Changes since v3:
> > > >   * robher: Fix syntax error
> > > >   * robher: Removed maxItems
> > > >   * Fixes yaml 'make dt-binding-check' errors
> > > >
> > > > - Changes since v2:
> > > >   Fixes comments from from Andy, Tomasz, Sakari, Rob.
> > > >   * Convert text documentation to YAML schema.
> > > >
> > > > - Changes since v1:
> > > >   Fixes comments from Sakari, Tomasz
> > > >   * Add clock-frequency and link-frequencies in DT
> > > >
> > > >  .../devicetree/bindings/media/i2c/ov8856.yaml | 143 ++++++++++++++=
++++
> > > >  MAINTAINERS                                   |   1 +
> > > >  2 files changed, 144 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8=
856.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yam=
l b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > > new file mode 100644
> > > > index 000000000000..96bef5403d7e
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > > @@ -0,0 +1,143 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +# Copyright (c) 2019 MediaTek Inc.
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/media/i2c/ov8856.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> > > > +
> > > > +maintainers:
> > > > +  - Ben Kao <ben.kao@intel.com>
> > > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > +
> > > > +description: |-
> > > > +  The Omnivision OV8856 is a high performance, 1/4-inch, 8 megapix=
el, CMOS
> > > > +  image sensor that delivers 3264x2448 at 30fps. It provides full-=
frame,
> > > > +  sub-sampled, and windowed 10-bit MIPI images in various formats =
via the
> > > > +  Serial Camera Control Bus (SCCB) interface. This chip is program=
mable
> > > > +  through I2C and two-wire SCCB. The sensor output is available vi=
a CSI-2
> > > > +  serial data output (up to 4-lane).
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: ovti,ov8856
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    maxItems: 1
> > > > +
> > > > +  clock-names:
> > > > +    description:
> > > > +      Input clock for the sensor.
> > > > +    items:
> > > > +      - const: xvclk
> > > > +
> > > > +  assigned-clocks:
> > > > +    description:
> > > > +      Input clock for the sensor.
> > > > +
> > > > +  assigned-clock-rates:
> > > > +    description:
> > > > +      Frequency of the xvclk clock in Hertz.
> > >
> > > These 2 should have a 'maxItems: 1'
> >
> > Don't know why those properties are needed here.. IMHO this shouldn't be
> > part of the binding or at least it should be optional and not required.
> > All we need is the clocks and the clock-names property.
>=20
> Thanks Marco, I'll make it optional for the next revision.

Well, the whole discussion we had was about removing them entirely?

Maxime

--bgh5jcvervb4fpgs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfhWAAKCRDj7w1vZxhR
xXg4AP9QpJm1SeDBHxg+crTVi5icwwj1p96ALN1LEBBdS0vlzgD+IHz1H62cHcBI
cgbH2BwkU2AT26cxWg6C2u5UtOXswQQ=
=qFiE
-----END PGP SIGNATURE-----

--bgh5jcvervb4fpgs--


--===============8872496222828953434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8872496222828953434==--

