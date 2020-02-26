Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAF51700EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K9qZ9Vb0iclSG4Tbss9dtvhLRBhlGrAWs7F3uVcPWeM=; b=Y3M4lerU6D8pcwuWV5iOUTb4r
	DQ+F2bzthWFL1gxsaNEOghGGdQvZy39vXt8DZyMsBrNF+NQh6a3dCMX5HMQVB+0oJj8T0/HaW0MF4
	cQtFdsRTbsGglHpKzJhlcYJaMN7skIfn3bNyfK+DxFMSvg8R94mENqhbrfASnO0fLzpKW9Wb6n35Y
	vYJRAkpn7FhQe8wqgJO3FfOLjmae1vmRxeDa0KysQr3bMrmQs9nQ1zmh5QqqGhPVTqa+1FmYm7oGY
	o7PRV5tcfZ2Gqr6EAUfzOj5gfy2zwXr9OUq1SrfUNT4GD8MwuYey2jsNnhc9v4d/bQjxLDb9DjLnU
	xy5CskTig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xTO-0006jw-Mp; Wed, 26 Feb 2020 14:15:38 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xT8-0006dx-Kf; Wed, 26 Feb 2020 14:15:26 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id E1B638363;
 Wed, 26 Feb 2020 09:15:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 26 Feb 2020 09:15:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=bom162ac9gFcma9iDy1OFat3ZlF
 vKtIzDMH8zrN0kDQ=; b=WgTEJSBQc0Giu0DeGNBqZ/LQw2ug88/mp3W/Ys3KlO8
 LoB5f0/SCHWrQEHleI9Wp6rjzFK75hGqI+TovHWWv44ZDjGFrEUnP1bFnnNh9IqS
 nnISRiK7YtF/2/Z3OQO/qnW6Ys5Q9iUylCq7MIpfZ1IYl3nID7Ekw2kT48mUudGx
 IFrFO7ea234w9NDj0CR7wQ8KtgG1S29UnHb8m4YTiE4tnW/rJ4g1WisF9pLwJ8gJ
 RHekUGi5GdabkCgbEYd0Vgk7Vj65IiZzu7xz+HsjUsS9PoQZ2m4mlz7QgbEccfa6
 fFlXpJBnkAT94imNELyAyRx4kFeV8SubySmkce/QWNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=bom162
 ac9gFcma9iDy1OFat3ZlFvKtIzDMH8zrN0kDQ=; b=1X4uKlKjPafmoLx5sje8fN
 Z5F2e61U76rNKHqHghkOcwD655QLYMt47hkt4N1d543s/Z+X56oWH53kfSlO8VO8
 l7SqkCAmJG5FO40/GyRr59Vi4z6EmKnDBqe6lDthTOTg2O7GwDYKxFIFwPdr1LkG
 XBeOv6LRm1u4sf2+qGmOJU/vAHRMCL5XUJHyqxlv+gIAsKvnJBHI0mZo58goCe/n
 NjtOnRow9mZeXICIlU1Q2fYqVkGHhunIGbihqr+sC2pXeW/pN7BG0YliXK7nG7R+
 9N5UJ5zraiGkWIVY03WhM+6iFW+9ZLx1VpGWZGq5wrtWp1Cv1lU5zTop7uEJFlrQ
 ==
X-ME-Sender: <xms:b31WXi4Z6d9VBrI7lGa7V6wGVLxCEg5J19Mn3-8ZyB3his6AWJqDNg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeggdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:b31WXlM5-g_WtYHlWm-jrMwWExH9Z-Ts0OOLciJ7u5UvldkwC08iuA>
 <xmx:b31WXgNFDN54P2k12Ebr9Uu0rsYfeu5P5PpdTPzKHdNkFFw7pwJHIw>
 <xmx:b31WXqJk28cMiUtq82-O0kijFf-nA1Nve3KQRwkje6h_xTeFSHwYKA>
 <xmx:cH1WXiyyCeM1sLeCCJd95c1VrD4DVpaEHcNxrdECjrdHAUDQM-oMSw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C60B33060FCB;
 Wed, 26 Feb 2020 09:15:10 -0500 (EST)
Date: Wed, 26 Feb 2020 15:15:09 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 22/89] clk: bcm: rpi: Discover the firmware clocks
Message-ID: <20200226141509.awlydvh6bi7re27o@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <d197ab836d84b89b94ff1927872126767d921e94.1582533919.git-series.maxime@cerno.tech>
 <2814be76-4006-4651-0a84-6dfaf2064e4a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2814be76-4006-4651-0a84-6dfaf2064e4a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_061522_823564_1035E287 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5447625126166080125=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5447625126166080125==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n5yxkfnp2qbxja73"
Content-Disposition: inline


--n5yxkfnp2qbxja73
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Florian,

On Mon, Feb 24, 2020 at 10:15:32AM -0800, Florian Fainelli wrote:
> On 2/24/20 1:06 AM, Maxime Ripard wrote:
> > The firmware has an interface to discover the clocks it exposes.
> >
> > Let's use it to discover, register the clocks in the clocks framework and
> > then expose them through the device tree for consumers to use them.
> >
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: linux-clk@vger.kernel.org
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> That seems like a re-implementaiton of SCMI without all of its
> protocols, without being able to use the existing drivers, maybe a
> firmware update should be considered so standard drivers can be leveraged?

I'm not really qualified to talk about how the firmware will evolve in
the future, but you're right that it looks a lot like what SCMI can
do.

Even if a firmware update was to support SCMI at some point, since the
firmware is flashed in an EEPROM, we'd still have to support that
interface.

Maxime

--n5yxkfnp2qbxja73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlZ9bQAKCRDj7w1vZxhR
xfqTAP4vLh532NQ+/Wzxq6syIJ/bQnWdlyFvUKhuvHlwOVJikgD9EEvRQkVNQLSB
OFFRQxI+ToWjkDElsX49T4eIov7qRAI=
=N7b+
-----END PGP SIGNATURE-----

--n5yxkfnp2qbxja73--


--===============5447625126166080125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5447625126166080125==--

