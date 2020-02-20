Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B64166593
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sRL3VGMZbRWUcJ6XZmyuUaWHbZYNqxsaHEq0pFJzGI0=; b=J8jdvicUV4XHrXgtUwjrbv2LA
	KrHLOTRZ8qyXkT9XMV6GZ5QohYxwgzsZXUKy/RCDDnRecznwrgp7FpgPxHKo5xk07jYSregnKey6F
	QiLwzx3cwAtSDcSpU83LvTX92ZNuYPc9ZWvkw10nOaDlLI2Lm7FBu0gRuh+lt4ysibM15vtbv7XQ/
	mPp4VIVzGigoIICpdpBiowJu/yB0WMsMIJPac/JeSzUXhln2Y4jwwnv/bj5E5TxKTRGe06WNsviPz
	tV/WKlYjBW9LGfvxiLQB+QStp9gGbBBozUsnIsF0s12vq2hrgxcPUlOeRZsh1qxLkB9kTNMsQmYfb
	csd+0Nudg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q53-0008Ao-E2; Thu, 20 Feb 2020 17:57:45 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q4r-0008AT-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:57:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1A6C8A41;
 Thu, 20 Feb 2020 12:57:32 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:57:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=wXvR2MOzGGKMeex/rwCGSt8o0uR
 MlmGZ+1htdhsNHVY=; b=FSixFcAeLhxoF0aMmTSsOSCcuHNvzK2b/uENeMaYkai
 aTwkNC+U9KiGSozW1N7u1MImfDF6vueb+FnJ9v0i+FOXWRyqIa3beGiQQuUTb5wF
 j+mA3nGrpNBKvhDr2dx1W9AKH36zVV82ZIS5NRwgNNWf7P+uokKWB3rJTiX+0TIS
 2OUslNvZYKRu7LJdn0y3IF/CXxv/CeTYOs94VGGXXdy8MhUeDyf/Q/NsmdDc58Ra
 c2s6msJhE9Z8z3pMMTv3W3LPwah7WpC5QzLSARoSJ3QKG/B1IOqtq2vI87Wm8ec5
 EFk4tkrMDWAl/ixyqkZLI2bVBMEYo0NYqHdkOryenbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wXvR2M
 OzGGKMeex/rwCGSt8o0uRMlmGZ+1htdhsNHVY=; b=0nGLSUnVDW/VMUcgt2BawK
 xswGcY8U5iAG/QBsP+afDXx1XYg70g3XSGK7BoF6AIrw2lOxqWdcdFCZ1ar0XEkh
 9wH9zc7dVS62gKop1r9mjSLec0fjW4GeZZHpP2rI8i4E91uNmfJXa8+JwuG3l5Fx
 IKzgsF4vJyD1mhrQyXC7RxHaol54YcRScX/ROfj3tLUmGTCYLRVFJPjxoSGfj7P+
 nojvaxrIKnGY1/2b3pBOmitWda4qe20DSiAdLub8j682h671/Z5S07upvZ1A4hZa
 8bFggf+Cz+iqWPBa6GQJlLLOnrocr88SiSlqt9fpgqR25TEubCBYxfJsNqWjxmug
 ==
X-ME-Sender: <xms:ishOXlXOEgfsMi6848XIHWWUltCnrx29K_fKr55njtnzc8K9kDWZew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ishOXkWdoSgqt2HIcRZQnZ60R1ygMg4IAL1JueheI8jXmC-kte1mRw>
 <xmx:ishOXl_rN6h0hRN7zhFeYfvZnNtLPqJYIaaiAj7397by2QmGoWZ7kg>
 <xmx:ishOXkaGvA8c7M7IFtuoZ1uOLcPRgUXf1jKan9xr9FXPtZcfPPIYkQ>
 <xmx:jMhOXtESZmyQrq5gR0B_rWD0mb4JMGwh_lYgGqt-zMV3XO9XnvNuTg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F27E63060BD1;
 Thu, 20 Feb 2020 12:57:29 -0500 (EST)
Date: Thu, 20 Feb 2020 18:57:28 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 2/4] dt-bindings: panel: lvds: Add properties for clock
 and data polarities
Message-ID: <20200220175728.6wuipezjp23coevq@gilmour.lan>
References: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
 <620a740cec4186177ce346b092d4ba451e1420dc.1581682983.git-series.maxime@cerno.tech>
 <20200214161156.GA18287@ravnborg.org>
MIME-Version: 1.0
In-Reply-To: <20200214161156.GA18287@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_095733_834800_07ED1655 
X-CRM114-Status: GOOD (  26.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3300542677066369508=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3300542677066369508==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jmue7eu7rmn5vtgj"
Content-Disposition: inline


--jmue7eu7rmn5vtgj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 05:11:56PM +0100, Sam Ravnborg wrote:
> Hi Maxime.
>
> On Fri, Feb 14, 2020 at 01:24:39PM +0100, Maxime Ripard wrote:
> > Some LVDS encoders can support multiple polarities on the data and
> > clock lanes, and similarly some panels require a given polarity on
> > their inputs. Add a property on the panel to configure the encoder
> > properly.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Not a fan of this binding...
> In display-timing.txt we have a specification/description of
> the panel-timing node.
>
> The panel-timing node already include information such as:
> - hsync-active:
> - vsync-active:
> - de-active:
> - pixelclk-active:
> - syncclk-active:
>
> But clock-active-low and data-active-low refer to the bus
> more than an individual timing.
> So maybe OK not to have it in a panel-timing node.
> But then it would IMO be better to include
> this in the display-timing node - so we make
> this available and standard for all users of the
> display-timing node.
>
> I will dig up my patchset to make proper bindings for panel-timing and
> display-timing this weeked and resend them.
> Then we can discuss if this goes on top or this is specific for the
> lvds binding.

That makes sense, I'll wait for them to be merged then :)

>
> > ---
> >  Documentation/devicetree/bindings/display/panel/lvds.yaml | 10 ++++++++-
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > index d0083301acbe..4a1111a1ab38 100644
> > --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > @@ -90,6 +90,16 @@ properties:
> >        CTL2: Data Enable
> >        CTL3: 0
> >
> > +  clock-active-low:
> > +    type: boolean
> > +    description: >
>
> Should this be "|" and not ">"?
> Did this pass dt_binding_check?

Yes. > means that this is a multi-line string that will drop the \n
between each line, while | will keep it

For a string like this, I believe it makes more sense to let whatever
is using to handle the wrapping, but I don't really have a strong
opinion :)

>
> > +      If set, reverse the clock polarity on the clock lane.
> This text could be a bit more specific. If this is set then
> what?
> And it seems strange that a clock is active low.
> For a clock we often talk about raising or falling edge.
>
> > +
> > +  data-active-low:
> > +    type: boolean
> > +    description: >
> Same comment with ">"
>
> > +      If set, reverse the bit polarity on all data lanes.
> Same comment about a more explicit description.

I'll try to come up with something better. Thanks!
Maxime

--jmue7eu7rmn5vtgj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7IiAAKCRDj7w1vZxhR
xcZiAQDFmtyS5WHek/hmzjWFFwIPRkMeuRUG6dZvUn8HIDH6uQD9EvR2HxBQfUVQ
a2jdAtufNDa8xmkO5CE+KyDuJBeH6wA=
=puow
-----END PGP SIGNATURE-----

--jmue7eu7rmn5vtgj--


--===============3300542677066369508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3300542677066369508==--

