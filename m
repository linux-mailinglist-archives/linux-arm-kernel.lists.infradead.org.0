Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244571D9330
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qt+ZRvr4+6R0x3daOGeSiBa7J2XXA7nbvgUVjZLSFJg=; b=MSz4PZpxut1cQMLGY2yYXkxVS
	gFpo/Nc4lQRVYKnaRsi6n5Upw7+jF8idxIIYMN/IZ47INLC2Eo4mTcTnpHKZLpvBBLktHADc1MHbY
	ih0e6051Id5AQgnDwlaNq6WnmeXsyVCHOtd+A1tfCDmLyncISCT/YghHefOohuPTtLQ/rjgzdcHjc
	ON0sZ62Ca4oSocw6aztA185vH94ojt1vDpBsJ1vTZNl2V4JPNsW0Pdh43HflQHbdCoChGISk1GSgl
	kWPHTx6ctxTJrbn1S4OxvRWS+chUOV5Gejv77bDy5jnP2wMIyPxt21D8MuxIQfFVp/jcgjm5CpZVQ
	J7VqgkQtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayPI-0004me-GF; Tue, 19 May 2020 09:19:28 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayPA-0004lN-Dy
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:19:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 9A9315C014D;
 Tue, 19 May 2020 05:19:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 19 May 2020 05:19:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=RjzoA5kxlUIi7c22hbhNakxq1i/
 NbiM1nWgOxKJ79PU=; b=L9XA01kPY5Bz457PeQ68LrOZf3JTP6TCPJRTBQsayR1
 MxW3vC7o0wYvTY2SBMf350kgIS9VSTAKKuc3f9PFrEDrhdsnoLEt84ChDp8c62W2
 2to8A7cxDTcoJ59SoAQhOvhVVV3PtcTHRu/YNidC+WvykbtV3SS64nhPIAy26/rl
 0lXPAwdYFyCVY31IisIvVVQfuSliVDVnowdCzHx+u6e/ceoOsYWZYYn9OfLG/bvu
 6UKeQeiigDGRfwZSYIgeGnJoK2jBlqUdiNpegeXuLvIkIO0Td1IZlm6aOrIIhjBj
 I4bNhsjxR81qD72a0F3lftECHlZkrofkfpPENYlzCNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=RjzoA5
 kxlUIi7c22hbhNakxq1i/NbiM1nWgOxKJ79PU=; b=YnnKw8WqySzv8EpKdOJQhn
 S4BZ6dMvtgN4O3CWC6cMkAZYvP8sN5ExD2+6NeG/gPB4LE1cjLvsqnscphQqZrNT
 WjGNRZkgeiX8LwvBxQcWTmtHMBnrCPbWNl/20nzus5PwlylMkfvqZY9AMCuyNell
 ZqICMmlqSKckt+6gs8LqY4Y9CkQpTdE19ZN95WBnM5aRsmAqk9EmKBvhlbpK0E+t
 bhowuU0rM8dTMLv77e+tqdRW1WxXjArGbE1Gv4EPTdyiWSreHxzT0ZEnWoEfywLG
 qs3tUOPhtAJCKxeNrb03/u1EFqFlwgnLt+ffbm0fJEvQhh4EVC7B7YJQsDf/rZFA
 ==
X-ME-Sender: <xms:jaTDXhX74D2PtSH6Ed-MSz404V5g_hOOrfPFkqcwyA0_iGToAKra_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtjedgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:jaTDXhnisW_NY6g49Qwn0g2aV7aX08-pazdtmo77QzEDcTOMzASBNQ>
 <xmx:jaTDXtYSTHSlhuHoyuZpAyGP-ezIycnM4206cFt8LKTMzxK9ePKAMQ>
 <xmx:jaTDXkW1exOZHihzsbKK1UPGxxRc43yqGzQl8m01CiEwKDYjyNPGTg>
 <xmx:jqTDXmszpfbNE2BXbgDvDRnLjJXx1TeXPLyut1BYimM2fbQ920A5ZQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 12776306642F;
 Tue, 19 May 2020 05:19:08 -0400 (EDT)
Date: Tue, 19 May 2020 11:19:07 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] iommu/sun50i: Fix return value check in
 sun50i_iommu_probe()
Message-ID: <20200519091907.ulpo7mu5fsfqszcf@gilmour.lan>
References: <20200519091857.134170-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20200519091857.134170-1-weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_021920_605619_7C6B9A40 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joerg Roedel <joro@8bytes.org>, kernel-janitors@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, iommu@lists.linux-foundation.org,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1892439189482740485=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1892439189482740485==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="74zdazyhkrmz3gaa"
Content-Disposition: inline


--74zdazyhkrmz3gaa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 19, 2020 at 09:18:57AM +0000, Wei Yongjun wrote:
> In case of error, the function devm_platform_ioremap_resource() returns
> ERR_PTR() not NULL. The NULL test in the return value check must be
> replaced with IS_ERR().
>=20
> Fixes: 4100b8c229b3 ("iommu: Add Allwinner H6 IOMMU driver")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--74zdazyhkrmz3gaa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXsOkiwAKCRDj7w1vZxhR
xVpwAP0TCPZzgy5kSKkqW1DtDNUXKg/Gg5CGSNLmLbi8KqlKGwD/XOjsUH9OEO/s
GMvet9K0RJJNvGd7XgptJpN3LKyLpA4=
=lJPX
-----END PGP SIGNATURE-----

--74zdazyhkrmz3gaa--


--===============1892439189482740485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1892439189482740485==--

