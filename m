Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C38A1BB870
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rV3s+4JWfLmL/fAx4qSRWOeDvICSoMRDjgSiClCCbeQ=; b=FQJUAkBLJAZNm3g9PmFc+dLDx
	jQp86DWmPBuojktA91rKE4RSKCcJKMW+BwvP8i69ZHpltrdv+c9B/93QjiT80HH6dC2jcXufArR5X
	0UfjyyRHwVhPMyqSaaA3FVpEDoA4qcdR0EobZ2YSqqeb+soDR9Iwwnbf9LPEFgyAbKpogIChf6exh
	QKklIU8rt4mKDfDmSiKPDtX9MIL0fgVaGCaUrNByYkK//VHyrJuwuqOzoOfPZAdtyuFurydkNV1FX
	zPCyKvFTrrrhltXLc2MjkGb0hMsqNFpXiQ8Wk/XEcRQFUgoqOFD0mA2Queu8FsOlYoX7s501GkOLu
	CmDMrJKjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLI4-0004Gx-PX; Tue, 28 Apr 2020 08:08:28 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLHu-0004Ck-2e
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:08:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 59CAC5802E9;
 Tue, 28 Apr 2020 04:08:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 04:08:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=OVZvX9ztpd3XO2zL1SITFUQ9DK5
 Z2gkbV9MIZCnCejk=; b=A97YDx9pFcTwEC5Eor+FoCSnxhkgx3giVjOGqyiOt4A
 atW1Qr06fsoPI+jEj/kPk6FGdXuPiyPYzMVFb3SjCeNFsGJrU82eW85D+EKC0RQp
 WgchYwQXxdyTnWXvLpC4wxFEijEwJktaYS9bDQbPesXQW85X8qv8r3HvlathPBP/
 3D8WaYkknpJA9Fes7VpC6PjeNU5GrhB4Ge0smn9pJf0JRbwtWmZ+zB0CtgrkLMUj
 SttfQgzNLsBcDhMpmtlU2iTUzDx9pMobL0K8TQ8OKPRAp/NmqCq6lAiokUcdg7F2
 /VTYVtOhNYqaFSOSMXdypJckaHsNun5UOuF3/eBhmzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=OVZvX9
 ztpd3XO2zL1SITFUQ9DK5Z2gkbV9MIZCnCejk=; b=acVa4t8SGRiPe0dSv6nKx3
 EXA/Wok0esjUe11KXXPCqhUWsm9lka0dIvIZpSyBjDSRS67eirA8VYpzc5SIy09V
 0gtKP6ttMTbze285gJ5OMGcwmkyhvwN1OzThRnRM2WsEn15Df2XSolk5plfIPYjz
 jLu4C2en7VWEPDhyIKTk7DWRRHoTKOiYAtmJyN0hiGce7enwFXffZs4ktVDx+w2X
 P/rSNtxGzJyhyddHV3cazH7H4NLJ651FpzAz1/0QixbATlM3PX8UBvp1ZviAzTlG
 p/BY/pea26eN7lV8oIKKPL6XxwC5Vuo4JSVXohF+WxiZl1/lV313G5aYGoH71I9g
 ==
X-ME-Sender: <xms:b-SnXgWxTXvdISPFiZrB4LN6FGORQVik4Lc5WJOZl68qupLHc0ZoyA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieduucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:b-SnXhQpZeFTgZ5WSDqescbIPH9xvHgH_gpcvAaMx73MAKqOyZ3G9w>
 <xmx:b-SnXoRYWIsHZ3J8cS3g9aPlS0VZfxF-hy1zb2_eQqNtfq9MBAjr8w>
 <xmx:b-SnXpc7mmOGQoliWXn8ickLqT7sXTw6yRoe9wH2s6KiZvrL73YkgQ>
 <xmx:ceSnXmZR4NXkjCHV49g7STZyYbdkwpdyP1Dp7IL4PDMJCzmQakF1TQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 950693280064;
 Tue, 28 Apr 2020 04:08:15 -0400 (EDT)
Date: Tue, 28 Apr 2020 10:08:14 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
Message-ID: <20200428080814.ohoheyzsxuz3a2vx@gilmour.lan>
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-3-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426104115.22630-3-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_010818_257436_8F32FD97 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1254409864658845702=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1254409864658845702==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bzjincgmfho5il5t"
Content-Disposition: inline


--bzjincgmfho5il5t
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2020 at 12:41:10PM +0200, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>=20
> H6 I2S is very similar to H3, except that it supports up to 16 channels
> and thus few registers have fields on different position.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--bzjincgmfho5il5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfkbgAKCRDj7w1vZxhR
xX1iAQCyxmpAiKfglOauQ1fEaSGCeuG5209yy891bHX9EQTBfQEAic7/IcGTay+I
duX3bvjzJqt4tuc/CDhoFux4gXacJAM=
=2Teg
-----END PGP SIGNATURE-----

--bzjincgmfho5il5t--


--===============1254409864658845702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1254409864658845702==--

