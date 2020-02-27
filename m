Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26C7171E25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 15:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+IW1AfJs8dkl/8FxLBh7ZVPnWGYoJVNo2nM5njYjn6o=; b=bb5bOlf6tiAbFBM3/+QNVWwzm
	YXQ+BKWeakygb+C5n/lFViJ1frVmUmUeuYNPv6mFDvU/DuA/XiaeE86Jnlh+lQ9HnsM2/xciqu/de
	c5seVI82GuqZLCmhezFm7FiMnnd/pQDC9mYIsr1c3juYvfiDlLwtFG66OUPZVqlf8oGQEH8l+Tr5H
	/CtprN0Jm4IarqhoYQhgt1/jl1NezpLWMmYFseGOyFfeRdSIYDwccg1eRr1v9JnNo6sitXPSx9coh
	qllhiokoyP6cD9YPvG9T1hLMDROt22nJn1bigdYk8hV2m02nfH50QAB0fp3Hj/kPXa271YLk7QY/E
	MQRRmhjAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7K6c-0006vr-PI; Thu, 27 Feb 2020 14:25:38 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7K6T-0006ub-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 14:25:31 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 82F7477BB;
 Thu, 27 Feb 2020 09:25:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 27 Feb 2020 09:25:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=8k8ifdUwFDmcr1ArdIrV0k+L0po
 RQVFUQt0Z3XT5bwI=; b=QofFa8xonDt6zn0DF9+ivYYHTiwYYcNzFwfQv9IYx1H
 lQVTqGC6T9MYDQ5wgkVkBxpD+CfQESTGyKq+V8UjmweYx4jSXfEEpzLw+siiUijR
 GFRQpqTYRU+9m0qTFUMjZDhgKaFHGZxOcauggtDnu15HdauSPn+VPerHAuJsNX4o
 KfMykFLM2N+gBE2C6RvMPdLXQKPgqnSb/UHIWw+/S738HNMLlGCsjNTeV8CPk1KD
 cszgujYUd5+ZKA1ogTfhafm7b+IXsrYo/jEPOvr0tNlXMBiT4NnJ4x1NR8AnTNOh
 P9iUipa8bUgP9hKSBpO9MX0GVcXn9f2UKIQUJ+g2obA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8k8ifd
 UwFDmcr1ArdIrV0k+L0poRQVFUQt0Z3XT5bwI=; b=P77kFJG49ME2EtAi4y+kF/
 znLlZmgqZEwYmB2IMRBbSfIHUUdmqbyOvR/EbbLSXwBjDin9Rog+/X/Rt04qH4LV
 /VtU1ujfW40A10O7h9vF4/f55KRO3ZXVdZxwsHCrj3pzNpHk4xJXDI/Y52qw5fsp
 pwg/ACaFJuO4dc+GU0Skj2rMCzyi61mZvtkG/ttEkcyaBIIO/Zraz5XBDYzGX84+
 gmdF98c0g6MW4qJvZfj35HQ65Xy78qiFKLU5Sqxmg7w4O2wFdUPoQL0mo0ztE099
 Jszd9z4WO51ocbXwLw8Y4p2Z+OpgpR+OmK/SgLX2Iel7Itck+IzdRmdt5ysLlrdg
 ==
X-ME-Sender: <xms:U9FXXqc_jC4dXhKJjYPY0SwqkKXkwg4bFqI9w6OA63FuIsfkqJDcdQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeigdeihecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epsghoohhtlhhinhdrtghomhenucfkphepledtrdekledrieekrdejieenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
 hnohdrthgvtghh
X-ME-Proxy: <xmx:U9FXXocZAPRdGoI3AMrdQIC_SExy12PCYkDXuEvfgdE8OkX3U75uCQ>
 <xmx:U9FXXmgVGVeMNDJbNivPAomv_gMVHz70RTnLzv_VqngHyaJxHlnAmA>
 <xmx:U9FXXsSWyJkG--YI-yWI5SIBGxb0Lhb200UYZocpUsk0DnhJ5ci3_A>
 <xmx:VdFXXgO_BqyPBRPSX6zOnzDJR0pVYDwjNmKtOyHQsGZjZWT5NPMgkw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5CBCD3280066;
 Thu, 27 Feb 2020 09:25:23 -0500 (EST)
Date: Thu, 27 Feb 2020 15:25:21 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: sun4i-tcon: Add LVDS Dual Link
 property
Message-ID: <20200227142521.vtmcwbwxjddphjf2@gilmour.lan>
References: <20200214123244.109300-1-maxime@cerno.tech>
 <20200214131025.GI4831@pendragon.ideasonboard.com>
 <20200214154405.f5zuicm6uhhiczfs@gilmour.lan>
 <20200214154953.GJ4831@pendragon.ideasonboard.com>
 <20200217174253.mj53us4bb7h2lyca@gilmour.lan>
 <20200217181006.GE4830@pendragon.ideasonboard.com>
 <20200220175307.qool442lm7qjqb5h@gilmour.lan>
 <20200220191339.GJ4998@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20200220191339.GJ4998@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_062529_945994_52866CB4 
X-CRM114-Status: GOOD (  28.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1237976068702920153=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1237976068702920153==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ubhaez32phxyobwo"
Content-Disposition: inline


--ubhaez32phxyobwo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 20, 2020 at 09:13:39PM +0200, Laurent Pinchart wrote:
> Hi Maxime,
>
> On Thu, Feb 20, 2020 at 06:53:07PM +0100, Maxime Ripard wrote:
> > On Mon, Feb 17, 2020 at 08:10:06PM +0200, Laurent Pinchart wrote:
> > > On Mon, Feb 17, 2020 at 06:42:53PM +0100, Maxime Ripard wrote:
> > >> On Fri, Feb 14, 2020 at 05:49:53PM +0200, Laurent Pinchart wrote:
> > >>> On Fri, Feb 14, 2020 at 04:44:05PM +0100, Maxime Ripard wrote:
> > >>>> On Fri, Feb 14, 2020 at 03:10:25PM +0200, Laurent Pinchart wrote:
> > >>>>> On Fri, Feb 14, 2020 at 01:32:43PM +0100, Maxime Ripard wrote:
> > >>>>>> SoCs that have multiple TCONs can use the two set of pins on the first TCON
> > >>>>>> to drive a dual-link display. Add a property to enable the dual link.
> > >>>>>>
> > >>>>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > >>>>>> ---
> > >>>>>>  .../bindings/display/allwinner,sun4i-a10-tcon.yaml         | 7 +++++++
> > >>>>>>  1 file changed, 7 insertions(+)
> > >>>>>>
> > >>>>>> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > >>>>>> index 86ad617d2327..aa6dd8409dbc 100644
> > >>>>>> --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > >>>>>> +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > >>>>>> @@ -105,6 +105,13 @@ properties:
> > >>>>>>          - const: edp
> > >>>>>>          - const: lvds
> > >>>>>>
> > >>>>>> +  allwinner,lvds-dual-link:
> > >>>>>> +    type: boolean
> > >>>>>> +    description: |
> > >>>>>> +      On a SoC with two TCON with LVDS support, the first TCON can
> > >>>>>> +      operate over both pins sets to output in a dual-link setup. This
> > >>>>>> +      will be triggered by setting this property.
> > >>>>>
> > >>>>> Could you maybe provide an example of how this property is supposed to
> > >>>>> be used ? I'm especially wondering what ports are used in that case and
> > >>>>> how they're connected.
> > >>>>
> > >>>> It's pretty trivial to support, it's only a property to set on the
> > >>>> encoder node itself.
> > >>>>
> > >>>> I'm not really sure what you meant by your question with the ports
> > >>>> though :/
> > >>>
> > >>> I assume that, in the single-link case, you have two TCON instances that
> > >>> operate independently, each of them with one port that models an LVDS
> > >>> connection to a panel.
> > >>
> > >> Indeed,
> > >>
> > >>> In the dual-link mode, how does that look like ? Does the TCON
> > >>> instance that operate in dual-link mode have two ports in DT ? There
> > >>> are two physical ports, so I think it makes sense to always have two
> > >>> ports in DT. That's what we're doing for the LVDS encoders on R-Car
> > >>> Gen3, in order to specify in DT which LVDS input of the dual-link
> > >>> panel is connected to which LVDS output of the SoC. That allows
> > >>> configuring the LVDS encoder to send the even and odd pixels on the
> > >>> right port.
> > >>
> > >> As far as I can tell, you can't control that in our TCON. It just on
> > >> more lanes, that's it. Also, we currently have multiple ports, to map
> > >> another feature of the TCON, which is that it can drive directly a
> > >> panel, or will send its output to the HDMI / TV encoders. Adding
> > >> another port in that will break the current binding we have.
> > >
> > > This will create one issue though, in that the dual-link sinks are
> > > supposed to have two input ports, in order to expose the odd and even
> > > pixels ordering. If you have a single ouput port in your TCON, how will
> > > you interface with such sinks ?
> >
> > I guess we could create multiple endpoints in the same port? That's
> > not going to be trivial either though given the current binding we
> > have :/
>
> That's however not really how endpoints are supposed to be used.
>
> Let's try to find a solution. Could you show me a DT example that
> explains why having two ports would create backward-compatibility issues
> ?

Sure, here is what the DT looks like for the SoC this patch was
relevant for (but we have the issue on multiple SoCs, all sharing
pretty much the same binding as far as ports go):
https://elixir.bootlin.com/linux/v5.6-rc3/source/arch/arm/boot/dts/sun7i-a20.dtsi#L406

And here is the binding part:
https://elixir.bootlin.com/linux/v5.6-rc3/source/arch/arm/boot/dts/sun7i-a20.dtsi#L406

As you can see, in that binding, ports were used to differentiate
between output and input, each of the output being an endpoint (since
we can't have the TCON driving multiple output at once).

Adding multiple ports would kind of break that, and would break the
general idea behind that binding (and the rest of the display
pipeline).

Maxime

--ubhaez32phxyobwo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlfRUQAKCRDj7w1vZxhR
xc0PAP9zjDzXT9CNGe6TSoSpsnFcO7r6DJ3ynEyYRcoX7uy9zQD/ZURcSADOTd+8
9E6zrb7rrCuTN42+4NccjG1sXpHlego=
=Vvge
-----END PGP SIGNATURE-----

--ubhaez32phxyobwo--


--===============1237976068702920153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1237976068702920153==--

