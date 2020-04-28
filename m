Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D2D1BB854
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BT90hpOYY/wDTWzNZuUG2bnX6zMaIBg1cjgy40vfcH0=; b=a1TV8p2VKxtYFVoLm/OH8FHa1
	zm9dn6h80oNcdm6DlkBYSmGZCAxE0lNYMesXMwNPch3L49jsmXaAY6jxveF8A1Oz3pPGjFwxczkeg
	ORxD4iq3cgIMzc9/qtPQ6PvD48fK9zzAiVu66wXwm2aiJuljP8UgTfRUai5hjy7YqZcHJDt8OTjmR
	8IdZA2oZqs3Y3lsWOIChkRixOj95aaMvq01oI9UFZ/GBPHBYJyxEGMhKwDqw6/jc9MCOr2gdncbHw
	qTMt1LUyPhtOOM6SoxK5tRfOUnVxShGywX2QHYVzsE+PLa9iAIwBIMleLN6DVx4BYKBzjINaOHS7f
	cRA2vdPOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLAW-0008Vq-5w; Tue, 28 Apr 2020 08:00:40 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLAH-0008TE-7h
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:00:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7D59D580305;
 Tue, 28 Apr 2020 04:00:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 04:00:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=QKnGsgk4OM0TOmaItjELfauJeFA
 9d1+f5+xcE296M/w=; b=f65ebsSBuYtNvUzQD1D/EKKPdF7I4mR18U6NcIicujK
 7pEHbeW6Z2u7Nd3WjPH0wKdMKrxF9yGtt1XDFHslN2xjlIN1SCW1RZXcNBRRsYJ0
 /ADAwcNpeD6+9UrVgkigOCh8U+D+AqDX+zMSbqkk6mOOu8KAl2CU6FMFQJiy/c+n
 bV6SILCzbPXecC2aEOp26y+jc4aP+BOT4A9jW/6fOeZOYkRKs4C1Lj3UQp/DOl1q
 x2SvazWn1pjzTPdzifW3dJZqafVrhcvaFGMLb3cDjSmHprH3w+dmtVlf6GlvFEmY
 oj0IGlqXzHIjhRTD0RQRMBW52VMg7+//cRqK1UXZGxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=QKnGsg
 k4OM0TOmaItjELfauJeFA9d1+f5+xcE296M/w=; b=N5AWIvge0CixkUA4JOg+0U
 Rnm7noh+st93ixLYq4lhVEZbD1Mpl4JTEs+sTfeeXPO6SY56E8RDbc5+XW1BPWXJ
 mVyHrbVJKJ+9qA0B25xCfT8kSBCc55ZmtLBs1WMaUYim0BKGFYvbmxF/Ta948plH
 Lv5Uql0NWvS11Q3fHkzbSJsM8tW9VWe2PJD6bFTJ63XwvFpNwcIzFraPxTaOFl0l
 4n1OgHAAqebDzTR9hDKAYFnRd4+OOhATKKVOf2zuwk9L67eZ3prOyTMRGSvleStF
 1hIcKoO6M+R9FpizMYfNp7ys0A3F5Yqe2VCLWIFn0iebka1ItnxmmFCGbjMW1YaQ
 ==
X-ME-Sender: <xms:l-KnXoyUO1XN3ffF3xnEd7HHPe9yeZ-OseJDr6mNtoWWa4rZUvI86w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedtgdduvdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:l-KnXs91k7lnVuYQAjLtdkPJbsBG34LFPAAjrncgcT2VBJdn9R5YzQ>
 <xmx:l-KnXoj3KeSihdw2k43jvBVlm_suW6AOgfhOab1MBXCk6DuJqe2WjA>
 <xmx:l-KnXrH0700yoQE9hAaubCUwvDeHNBVTurPnVUmxtUNiKO_2OR4pZw>
 <xmx:mOKnXrmGsRPT5O5irMYC50hvK-Nu-adIK3BIFGBZzmENBTRnRczDGw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3BE253065E8D;
 Tue, 28 Apr 2020 04:00:21 -0400 (EDT)
Date: Tue, 28 Apr 2020 10:00:20 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH 4/7] arm64: dts: allwinner: a64: Add HDMI audio
Message-ID: <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426120442.11560-5-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_010025_409716_CE9464B0 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4398514940103471599=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4398514940103471599==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l7t7g67wc3rnzd33"
Content-Disposition: inline


--l7t7g67wc3rnzd33
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2020 at 02:04:39PM +0200, Cl=E9ment P=E9ron wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>=20
> Add a simple-soundcard to link audio between HDMI and I2S.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/b=
oot/dts/allwinner/sun50i-a64.dtsi
> index e56e1e3d4b73..08ab6b5e72a5 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -102,6 +102,25 @@
>  		status =3D "disabled";
>  	};
> =20
> +	hdmi_sound: hdmi-sound {
> +		compatible =3D "simple-audio-card";
> +		simple-audio-card,format =3D "i2s";
> +		simple-audio-card,name =3D "allwinner,hdmi";

I'm not sure what the usual card name should be like though. I would assume=
 that
this should be something specific enough so that you're able to differentia=
te
between boards / SoC so that the userspace can choose a different configura=
tion
based on it?

If so, it's really too generic.

Maxime

--l7t7g67wc3rnzd33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfilAAKCRDj7w1vZxhR
xUrBAQCbumUlWsmdgdc+kpR+FkqE+YcGoZOrfRXqGiqZpskC0gD/Xu0cJh7MGRSA
crG2mlpqdCmsMDhoXZAU05/rhM98oQA=
=Yq8j
-----END PGP SIGNATURE-----

--l7t7g67wc3rnzd33--


--===============4398514940103471599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4398514940103471599==--

