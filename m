Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFAC1D1763
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M8uLRB+F2kqbFnuC6T7brJE0W+TgP4sETuNIF9xNvMA=; b=Kclt7lGfskZDCx82evVDZInKm
	vkjBNHT13aGq5kXIs/nZkTFcdNe5WDo+vAfIqXYc61KMhQ/eb0PhQt/wGKA2p1RzzOiYLI+82OQ5V
	yDh9TBQETnkclAuJzZHF251n7+y7MjyfzR3Xlg7u6CNC9oDpwyU2hv86lnMm+MXE7m1uz55HIwSf1
	bJEILjC0BWPbYRD69Ni+OOC8aJcpqhU9BF7iIX8X50kHG5wC23eWLCQ1z4CTkMH0GNYzaSHmz09KN
	QvDto6gel8qlDDUThpE9XPseSxUGphiK21Gn93QHRH8+/Q6y/Nwaw3h9VrWO9IrgU0cLGaRGDPMEx
	26bZIYNGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsEW-0000Cv-6k; Wed, 13 May 2020 14:19:40 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsEK-0000Ca-Gw
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:19:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A7DB55C01D6;
 Wed, 13 May 2020 10:19:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 May 2020 10:19:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=6fjHlyOTOqWxHSt4RPRb8GVZ91Z
 qD9TrDEJsn//PCGI=; b=ZJO7lWSA1pGZWi77jHrq32z7Kh+jSm15JVHlGSRHKvV
 O8MQzeqo6gFi4DzkkOXBXHxXEkqP9u79WIBJNeDQYstbGM4IF/DZB2GD79jDc+KM
 k+Qi05829aHju0opokmObn9us4YjjRWajf7z71yrjSpqsAPaj9BSceGGuz6CV1AM
 7vWCksQe0Z9CD55EJ2OjatiODXhZ58TM76WhqjwzfJDNw4yxWRtJgWeCsAmygv2L
 sajikkBNZn3mNWSGzrlQcG8rfXPiUm2g3VmPSA/Ar1cejeOAtgwsu0JjKN9XHoy3
 9OqSOehjuOQ9MhSwa8vpjn8xj9FUkF7GZ3oDlQae98g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6fjHly
 OTOqWxHSt4RPRb8GVZ91ZqD9TrDEJsn//PCGI=; b=XZDh0kLBcHH9Yt+8i992CH
 MpLJEFE1lYT8xfl94OHJ880u0bFQ0lJ+IVl3ckcXz3q1TeNVfLQv1vOjU/dE2a9n
 FdrZrk+II/hDrdIElcYWzrq/8xXVaTW694NbBA+q8FKDr/mVmp9gSnNSqU7jOJLu
 VCdjn/RW2jtmRl7fkemUcv/y7CWqTWk9KNJpk7exYVVugZCyLQ2ukYwtohiQMTdY
 vwjdwPr7/7Lx1JSQHeJjtY39rKODDR/9eP5nccwH3vIgsaZrMYTSkZwC5SyH+Jj9
 4hIMK5omIlFttPIRo+NRdCiDuI6Is7IqIA+RFJguZsMPed3Y/L1lgJBAAeogGr1Q
 ==
X-ME-Sender: <xms:7gG8Xjc1-jAmWs4zidapqSMWKH7xX_IUOGlynmyyAVa6ZOPYFNSfKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
 dttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
 nhhordhtvggthheqnecuggftrfgrthhtvghrnhepleekgeehhfdutdeljefgleejffehff
 fgieejhffgueefhfdtveetgeehieehgedunecukfhppeeltddrkeelrdeikedrjeeinecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimh
 gvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:7gG8XpMuAq-TjdugyqsUGqR86HcwnlTEnvMEal0lOwP8NEC0ypq19A>
 <xmx:7gG8Xsg-qtpBZoJgCZt1nuy1Azyv0dDsAE5l_xgTKelL_hcNw4tgoA>
 <xmx:7gG8Xk_XJ6S60gRhpBm2Onla_uzS5xavcTtCGVdUkod7E3DEP8ZYzw>
 <xmx:7wG8XlXXbyVi5ickxuVV-yGc1SgXk66YGaZ5WLjily-gjjZMet4rRA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DD500328005D;
 Wed, 13 May 2020 10:19:25 -0400 (EDT)
Date: Wed, 13 May 2020 16:19:23 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Zou <zou_wei@huawei.com>
Subject: Re: [PATCH -next] ASoC: sun4i-i2s: Use PTR_ERR_OR_ZERO() to simplify
 code
Message-ID: <20200513141923.klp2omelhawzxy4d@gilmour.lan>
References: <1588752912-37596-1-git-send-email-zou_wei@huawei.com>
MIME-Version: 1.0
In-Reply-To: <1588752912-37596-1-git-send-email-zou_wei@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071928_698252_ED6C7951 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, wens@csie.org, broonie@kernel.org, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4621544280740954936=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4621544280740954936==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6ttmhlo4bwfcw7it"
Content-Disposition: inline


--6ttmhlo4bwfcw7it
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable



On Wed, May 06, 2020 at 04:15:12PM +0800, Samuel Zou wrote:
> Fixes coccicheck warning:
>=20
> sound/soc/sunxi/sun4i-i2s.c:1177:1-3: WARNING: PTR_ERR_OR_ZERO can be used
>=20
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Samuel Zou <zou_wei@huawei.com>

Didn't we remove that coccicheck test?

Maxime

--6ttmhlo4bwfcw7it
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrwB6wAKCRDj7w1vZxhR
xbWmAP0Wl+mfUFUgVS86noXlYchEz4RTpXjy5YY+CO73b7vL5wEA4PceZeiROH26
wMKoHBBgjpNbCBfMKyOwfraY1MTy1AM=
=crja
-----END PGP SIGNATURE-----

--6ttmhlo4bwfcw7it--


--===============4621544280740954936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4621544280740954936==--

