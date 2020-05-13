Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E981D0AA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zUto9FsttTkNhaEZ0/5LBjhR4jFZRwVucvOOs5+vkUU=; b=dmRptVOU2qva9kG7Hgwtde0JP
	m3HDgvxPmn0k6Q9BAQZF5EckA8U+4PadXPJHPiuX+Inof539P38l1gcJj0VTwSmH1+jY56xsUdDba
	umKk4GUZdXiacaA8kkDiy7ZWYBvpfiWa5oGmaH6MS6flydmijjjKJt0ysdta5/Dy9XLkerA+xbieG
	7kzRuJ2fs1e8VMAK/AeTbx5RYkE1FuH2RiOhHFTp9Ah5liCjpcx/BI4hKT79DOInpa2m9uPoNEA6q
	7H8ABDeQcBiO+ZoulyirZmh1LH6KPZG5dN+2iuq8qd/xDEReitUArfDarfDGGYDdhkZmw4D9QSxMN
	w5lftW6Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmZ6-0007Uc-M7; Wed, 13 May 2020 08:16:32 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmYq-0007OW-98; Wed, 13 May 2020 08:16:18 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 82B9B580259;
 Wed, 13 May 2020 04:16:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 13 May 2020 04:16:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=0j46CBI/bHAD1UvanCxkve32qLl
 V511xJqDxBIoMMfU=; b=HTFl3Klp2QfojXXgRrErUJAxxal4UKbARLXv7sdH2kW
 5Z6TVj+TXe0Dzotb9rvCgJ7qIFqDAM50LeL9vDigMJ+/hJIqiLhpnY6TwrmdA9zn
 wcIuONOdhRvzr0XnqxfzmU4Cgqt2obYMbFPYkA4rG7n9sY4DuGGY1QHtihcL9OUG
 6KcpkECvWFW0vg2c3woq4k8U9vVXZBv4IpM2bMnzgAq7u0FsZOt4appHJQISonKm
 37mJ2ws/KvvqGaaEoNlkwA9EcjNR+oSDshiAH+3NfaXS7QJxp0XvXqLOQeHyr+pK
 BZlmKfUu9zC+arM5xFxLzw8xGpHu0xrrawRP5EDSY2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=0j46CB
 I/bHAD1UvanCxkve32qLlV511xJqDxBIoMMfU=; b=ME8JKV6mKukylAFSChUaYj
 U2qnpZbY8VKhb96F+cdAzDVoxRc7tMYOGgh5HI3He7gV4X6NCP/4BzKyTFVeFpaX
 b1ffAwY3vT8C3XXm7X8ukIyCPNXKKw9Wn3YuUah4EzkwpkOT+z1rdenqkGB3SIDC
 mbk5Mib8N1EAM+EgLtO7OTDZC42IrKZveCNtpzTsojGDKx7hoZKjxbGLD12Xd/Uc
 S3tVA+WAf8nTtQ8xxhqdiG/rufNA0lMMowDMpqobVaQnEnI+0I86mpCbDFOsnOjc
 tyxHn0UMGfv9XWlq1qreHMWhXU4bAefkHCcxpBL+H2WPKXYGJt49Uw4fVLIz2QFQ
 ==
X-ME-Sender: <xms:zqy7Xoae7j8EJXZNl5ITxUEaEHN9KyUXts41mDFCudOneOnPlTZdsQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeffteetveeijeetuefhffegkeetgffhieelheehtdduudethffhjedtvddtudel
 vdenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:zqy7Xjb_gzqfaP5apaGEkZQP7B1_BAWupvdiUOGftcDIYbxDnZ2mZQ>
 <xmx:zqy7Xi-GppLH-jpxW4_wKRZ_cK_3RDfc29t0cqAQWlOWo8k80vdOPQ>
 <xmx:zqy7XirIrMfP-DBf7fwSPbqIuiv3WgKZ12YTpZJzGtvgifSiYkBHBg>
 <xmx:z6y7XndYTy7d3DOVWcCzjnYkUd2S4pRFNwlYKG6tiFFzfUZaHJ0q-w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D76EC30662FE;
 Wed, 13 May 2020 04:16:13 -0400 (EDT)
Date: Wed, 13 May 2020 10:16:12 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 90/91] dt-bindings: display: vc4: hdmi: Add BCM2711
 HDMI controllers bindings
Message-ID: <20200513081612.qyc24hmodift4pru@gilmour.lan>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <9bdee4024b3f95bed9b55c642f0f9415c22fc506.1587742492.git-series.maxime@cerno.tech>
 <20200511215014.GA4800@bogus>
MIME-Version: 1.0
In-Reply-To: <20200511215014.GA4800@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_011616_470335_ECF1249F 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7372732532764693005=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7372732532764693005==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="25uvvhz4ijwduufw"
Content-Disposition: inline


--25uvvhz4ijwduufw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2020 at 04:50:14PM -0500, Rob Herring wrote:
> On Fri, Apr 24, 2020 at 05:35:11PM +0200, Maxime Ripard wrote:
> > The HDMI controllers found in the BCM2711 SoC need some adjustments to =
the
> > bindings, especially since the registers have been shuffled around in m=
ore
> > register ranges.
> >=20
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml | 109=
 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 109 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2=
711-hdmi.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdm=
i.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > new file mode 100644
> > index 000000000000..6091fe3d315b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > @@ -0,0 +1,109 @@
> > +# SPDX-License-Identifier: GPL-2.0
>=20
> Dual license
>=20
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/brcm,bcm2711-hdmi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Broadcom BCM2711 HDMI Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Eric Anholt <eric@anholt.net>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - brcm,bcm2711-hdmi0
> > +      - brcm,bcm2711-hdmi1
> > +
> > +  reg:
> > +    items:
> > +      - description: HDMI controller register range
> > +      - description: DVP register range
> > +      - description: HDMI PHY register range
> > +      - description: Rate Manager register range
> > +      - description: Packet RAM register range
> > +      - description: Metadata RAM register range
> > +      - description: CSC register range
> > +      - description: CEC register range
> > +      - description: HD register range
> > +
> > +  reg-names:
> > +    items:
> > +      - const: hdmi
> > +      - const: dvp
> > +      - const: phy
> > +      - const: rm
> > +      - const: packet
> > +      - const: metadata
> > +      - const: csc
> > +      - const: cec
> > +      - const: hd
> > +
> > +  clocks:
> > +    description: The HDMI state machine clock
> > +
> > +  clock-names:
> > +    const: hdmi
> > +
> > +  ddc:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: >
> > +      Phandle of the I2C controller used for DDC EDID probing
>=20
> This belongs in a connector node. (ddc-i2c-bus)
>=20
> > +
> > +  hpd-gpios:
> > +    description: >
> > +      The GPIO pin for the HDMI hotplug detect (if it doesn't appear
> > +      as an interrupt/status bit in the HDMI controller itself)
>=20
> This belongs in a connector node.

If we were to create a new binding, sure, but we're merely reusing the old
binding that is already there. The only reason it's in a separate file is
because you said it would be clearer in a separate file.

Maxime

--25uvvhz4ijwduufw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXruszAAKCRDj7w1vZxhR
xZXGAPwI/P/64ae/RGoyiyvicUFL/8PZpskFHFYPNqgj1twd1QD9GJ81sy881K3d
VLuJhfBzZzlO3Dkq6buOGLj+E1To/Qw=
=ZkKk
-----END PGP SIGNATURE-----

--25uvvhz4ijwduufw--


--===============7372732532764693005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7372732532764693005==--

