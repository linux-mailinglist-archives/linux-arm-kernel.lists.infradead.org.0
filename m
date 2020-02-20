Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8B3166484
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=orpE46ppfdPtnpK/ZIvr6mswJkF58V7u3y1Mtf52jmI=; b=KqJpaHSGnx/8O3L8IZC+VqcQX
	J+G+Dm7DHpSRs4oBpHhIBIrsb1HeIkYHvCaTSJw0VnL2uaGSKbiD8EfqD4V06MRGCahaqhujJCbjn
	Ja7JcItIEByVt97hcpJwMDD+m6BUNXS9FG2ehYtZocLNMtyxsOo3A90M4Z4rR0NUMvIWd9wspwujO
	PCBIfw7k5TZxhSBwmQYOHc8+m6JWbr28lRhFLhafBP5MEsr4fmDAiMclxL4snWbxsI/pG4NZa8gxk
	ICGu4c9oLr4DjMxppvp+vVjtGggBYfeTj9zAuQbH0P+oawujIjsgYdHZHy47bbrp9CFi42vDkKzQh
	H5caDo01Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pZA-0004nX-QJ; Thu, 20 Feb 2020 17:24:48 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pWs-0002dS-Hn
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:22:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 8147D21DC4;
 Thu, 20 Feb 2020 12:22:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:22:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Y/LbR6Gks9hLwTyOoP+fgUalI9X
 hENSr9+HkBd7I4X0=; b=rsy8BLO9wTPt5VT1koKQ++7YX/JqNw2f4K45TBjw61K
 NtrqK/J1EBgQYnqC7YFDQPkqZud22SIAPgJcoWT1ILayHtkQybaoMehemsVvBOBi
 7i4cjcDq32I/E6S7ES4KB9TOOHVCGcgp/fyVvtwoQCfFifhSp5kciq5ibEkWYDe1
 vBeJnDgdYC4kOTn0TAxST6lK9Q06nJmiz3J9CNHN5WTPfhIOA/RYaKUvmMSP7adg
 6V/I3RyaRAUirYnz7zoHoz/3c16LsVMd7iYu8/WazO0hySSg26lrRksqXVPUTR0A
 mrA0PIKjrsYYowLE9VSNMolVdQtSiK7ArAhC/FN9x9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Y/LbR6
 Gks9hLwTyOoP+fgUalI9XhENSr9+HkBd7I4X0=; b=R6+adF2rysmiZatF269DgT
 q08nniKYJWkj3UoyZ3iJ+fY3LO725EKt5QN4tZKZDzjX6/k7+2GW7Spq18637cD7
 U4AQd2t8kfp8TD5J/wEARU4iKSzOEpVC2/0PLbenrhZL82ERj3vWnSIATeOoEwpL
 iwUGrGk2vslNFmYqiMW68Y97o29byM5cAEAeVBPpIYYTEmJaFy8+zz9/oo02k9Yp
 FK+jow0+EK7+VqaIExL5nUyzcCtsXsyWzSH6x9gamO0KCyCJmEKXbX4adHxHPpLX
 ixd0C4lGZKHLmllIMh8GwRnX3gVCU4Q70qnrgdbLG6s8AepecQpqApSTbkNjGJ4g
 ==
X-ME-Sender: <xms:UcBOXsPtVx0Kka06Pp2MdvillpDUXARbRezhJYZRxRyd50uUz3e8fg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:UcBOXsBjQCEDGuAQPtHvcaGoQYDBDoTV055YxBXU0LEHR3T7Flnw0A>
 <xmx:UcBOXsVVdXtbCRvybu_vV20qG23UUQWSRJ_Qd1v8pAfqkFgtpAX1uw>
 <xmx:UcBOXgcCgwQTIL6hBrah-yD2DId9vI6gCTT-bv9kTSOCkSnuzrcR5Q>
 <xmx:UcBOXsQNGzQYx5UzJP61oxMDyeIbxa33Yk2aL31PWJoqbHgwtnGR8Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 331E03060BE4;
 Thu, 20 Feb 2020 12:22:25 -0500 (EST)
Date: Thu, 20 Feb 2020 18:22:23 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH 2/5] drm/sun4i: tcon: Separate quirks for tcon0 and tcon1
 on A20
Message-ID: <20200220172223.xoy6e3njmsb2vcon@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-3-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200219180858.4806-3-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092226_748532_41A943A2 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7111004293398072397=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7111004293398072397==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bi7wpjn7s3dhfi3c"
Content-Disposition: inline


--bi7wpjn7s3dhfi3c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 19, 2020 at 08:08:55PM +0200, Andrey Lebedev wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> Timing controllers on A20 are not equivalent: tcon0 on A20 supports
> LVDS output and tcon1 does not. Separate the capabilities by
> introducing independent set of quirks for each of the tcons.
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index cc6b05ca2c69..b7234eef3c7b 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -1508,6 +1508,8 @@ const struct of_device_id sun4i_tcon_of_table[] = {
>  	{ .compatible = "allwinner,sun5i-a13-tcon", .data = &sun5i_a13_quirks },
>  	{ .compatible = "allwinner,sun6i-a31-tcon", .data = &sun6i_a31_quirks },
>  	{ .compatible = "allwinner,sun6i-a31s-tcon", .data = &sun6i_a31s_quirks },
> +	{ .compatible = "allwinner,sun7i-a20-tcon0", .data = &sun7i_a20_quirks },
> +	{ .compatible = "allwinner,sun7i-a20-tcon1", .data = &sun7i_a20_quirks },

It wasn't ordered alphabetically, I've fixed it up while applying.

Maxime

--bi7wpjn7s3dhfi3c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7ATwAKCRDj7w1vZxhR
xaxkAQC4slxXfrNAlNDduUqdbx09RyWm5i9BjI+oi87n++Sj7wEA+3wqikR7D1eY
1FTAfdjEbPqk07Awe1jmsHs2OYbK2gQ=
=Um74
-----END PGP SIGNATURE-----

--bi7wpjn7s3dhfi3c--


--===============7111004293398072397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7111004293398072397==--

