Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31C515D425
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=49+gTKMGZahhjQ26VFnGf0w2p5VI7szkABhQxFqvSJw=; b=JRhQEO9UrcP1BCRpDKnlVBQ6U
	TPOztTUGWsQC4oyr0TLIKWq5jfZrHKurY6whUGANnvl1Du2nzC6ELeKxk23eX2ylCvXIerYpLy3qg
	CVUTDjsjNnc9GVtp9VEg/YGbcoxOav6PBbnzYUt+b9PoeSC7Yl67QUpXTr/wkOdyxgeBov0vvqRCx
	XrHI3AEMCdrxX7HEmNWwv9dpYOBE4DrM7w9MKBNGufxCZshnSmo0xdKcqqRyYjokHSA/dPs9/22rE
	rjjjNZ+MsCIIXPIga26ZURRSCsO4uzt7FZB/opqjaN9nJRFyh5o1pRNFLpxA6W1UGS8cHP6dQSBbD
	+2uAL3XUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Wji-00026s-EN; Fri, 14 Feb 2020 08:54:10 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2WjZ-000269-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:54:02 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 6EEBD21F48;
 Fri, 14 Feb 2020 03:53:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 03:53:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=nRZRLhlO/XQ/GfE1zKQ+XfhhpTe
 +BnKJsToqv+ZGaCc=; b=ZmZWy1K9gsQGrOArTXLvec8bCgeBm2/AneSGjYTQ8c0
 f0y88eHnsitkvfMU/gYDZoKbcawS60Akr+SMFmC5cxUV60K/IzKu/ZmsZiHIjsdj
 v6qVTZ2p5512u1vY8OeF3A+B1mkzIJxM8Qli0lc5Y9l6N8OnEeMyAkEDeSjyfpxf
 X6Pzw0hPB6uddkb6Eqr5UxGbZVfTo/SRjWHr+iaMOuy6QujOvbl8gpEzLdN2wCZr
 eVurIej8Xr1+qlOUmLlyLPVWmOxXNDIVcYMGEjVxEHCcjd5Adi8bNR/qwsbewzAN
 lZPWSq335OqLz2xk17uqtqGYtcQL5XXaV35eVNPs5Qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=nRZRLh
 lO/XQ/GfE1zKQ+XfhhpTe+BnKJsToqv+ZGaCc=; b=oY1AFMm43qUtgUjN3/PG2o
 F8l1lT6a4E/UHoW2PPyNkPQxt7m8BY0vZYPmLdoCke4/FxmR84o0LstXY9fUoJih
 s+rkE5UHlxfbjsFnVxZfg87xxeKHANm4U0FNdpQfPCuIgJoycKeUOzY++e6/hp0b
 HLVYOW4qOIEZfKA+f5ESUeYD99cHVu5TL09YLw4J212/LkWxC7B/VEAmTnE3Vh0V
 J2KkiZySa7YNj49Pry7tfX4hswQrlQYIfwpntwnrVRmVE8/kRMJfmjk2uiqdlhTb
 iJvZVNe464TEso2jwwGqflUi6hXVk0MDWzkoOs5IdLoUB60AbnxRUdmx05201biQ
 ==
X-ME-Sender: <xms:IWBGXlA-JO5-BXfJA7FlPSZ8U8w8bB4LIB0TXgRE87XTVctvMh1HkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieelgdduvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:IWBGXlgux4rtcyFJbXJcXusgsm0VFMSZJt8aS8eRYwCy6a38Tta-Ng>
 <xmx:IWBGXpYixtT9ETMGWqEwV1KVzDcvetREVQg7DxSlILiIk9Ns2HOulw>
 <xmx:IWBGXnrqkFNBgW6gjjvMKltDGxEEoN5MXAoFdbsWMd9ZKFzj_LnoWg>
 <xmx:ImBGXggWlN_ZurQ6-ybSfQYFdTP4J8Ay0VaECrqOEYcRy29FFoEIZg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 25B723280064;
 Fri, 14 Feb 2020 03:53:53 -0500 (EST)
Date: Fri, 14 Feb 2020 09:53:51 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Message-ID: <20200214085351.2whnfyulrmyex2va@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-2-andrey.lebedev@gmail.com>
 <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
 <20200213200823.GA28336@kedthinkpad>
 <20200214075218.huxdhmd4qfoakat2@gilmour.lan>
 <20200214084358.GA25266@kedthinkpad>
MIME-Version: 1.0
In-Reply-To: <20200214084358.GA25266@kedthinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_005401_544739_8A4F8286 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6269149076543296608=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6269149076543296608==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yrgdw63nadrj63rq"
Content-Disposition: inline


--yrgdw63nadrj63rq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 10:43:58AM +0200, Andrey Lebedev wrote:
> On Fri, Feb 14, 2020 at 08:52:18AM +0100, Maxime Ripard wrote:
> > > > This will create a spurious warning message for TCON1, since we
> > > > adjusted the driver to tell it supports LVDS, but there's no LVDS
> > > > reset line, so we need to make it finer grained.
> > >
> > > Yes, I can attribute two of the messages in my dmesg log [1] to this
> > > ("Missing LVDS properties" and "LVDS output disabled". "sun4i-tcon
> > > 1c0d000.lcd-controller" is indeed tcon1). And yes, I can see how they
> > > can be confusing to someone.
> > >
> > > I'd need some pointers on how to deal with that though (if we want to do
> > > it in this scope).
> >
> > Like I was mentionning, you could introduce a new compatible for each
> > TCON (tcon0 and tcon1) and only set the support_lvds flag for tcon0
>
> Can you give me an idea how that compatible might look like?
>
> 		tcon0: lcd-controller@1c0c000 {
> 			compatible = "allwinner,sun7i-a20-tcon", "allwinner,lvds";
>
> or
>
> 		tcon0: lcd-controller@1c0c000 {
> 			compatible = "allwinner,sun7i-a20-tcon", "allwinner,tcon0";
>
> ? Or something completely different?

Something like

&tcon0 {
    compatible = "allwinner,sun7i-a20-tcon0", "allwinner,sun7i-a20-tcon";
};

&tcon1 {
    compatible = "allwinner,sun7i-a20-tcon1", "allwinner,sun7i-a20-tcon";
};

Maxime

--yrgdw63nadrj63rq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkZgHwAKCRDj7w1vZxhR
xXU4AQDWT+edBWHd1zu1nz5uZCrI1ipyfBT0Yybkb8G4y9PHvgEA+4EZU7Wf0sVS
n0q5MdBsfmkq5YpaYdEOKCA6zutyWgE=
=vUeL
-----END PGP SIGNATURE-----

--yrgdw63nadrj63rq--


--===============6269149076543296608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6269149076543296608==--

