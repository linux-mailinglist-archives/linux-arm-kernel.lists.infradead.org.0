Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10C754EEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RpXdBOuPyg9uniWCxs1XU3DXJIbqNf8ZrWgjIze41wo=; b=s9BxrYaGXGg1X8E/26wIcMnok
	JEx5k1l0qFduqgqPXAUZZNt72KRkd5/194o+0JwQuvMqRzIhLGpJdia+Y55Xy8aXGA2XgNBo/zD6q
	Wa3LjAL7G1Fl7Nj5+ir65ueWOQdxppgzESZhxNXPNyZmKoACST4rHVlHqonb/J4F/AF7aUWLj43B5
	iUeHEtCw9z4z23Lk9XgYGFKJ3iGzYLZej6g7N7tmOnz55VtTE4i7Ef+I6Ox0RLoCuU2XX1WPNt7B6
	arTQY2qoI/OBnxy3lfHWyVqiLMyMv6Wry1821SP4V3QzYdpOjBCHdbKwjEea0j/GWDMk9/b27kq6H
	uXDO7XSVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkdW-0003kk-Tu; Tue, 25 Jun 2019 12:33:22 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkdH-0003jo-1l
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:33:08 +0000
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 618C9100011;
 Tue, 25 Jun 2019 12:32:57 +0000 (UTC)
Date: Tue, 25 Jun 2019 14:32:56 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner H3/H5 Device Tree Changes for 5.3
Message-ID: <20190625123256.tyh2weckscdwsuvk@flea>
References: <df322d29-330c-40b9-8e87-282e06bbf3dd.lettre@localhost>
 <20190625114301.aah64vukqr4uesei@localhost>
MIME-Version: 1.0
In-Reply-To: <20190625114301.aah64vukqr4uesei@localhost>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_053307_249330_76FEB956 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8134616411771574755=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8134616411771574755==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="one3myzrz25o5frt"
Content-Disposition: inline


--one3myzrz25o5frt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jun 25, 2019 at 04:43:01AM -0700, Olof Johansson wrote:
> On Fri, Jun 21, 2019 at 10:13:14AM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > Please pull the following changes for the next release.
> >
> > Thanks!
> > Maxime
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-h3-h5-for-5.3-201906210812
> >
> > for you to fetch changes up to 9fbbbb7b8d637f7ca1d5c4e23452bf450c7cb05f:
> >
> >   ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array (2019-05-29 09:27:56 +0200)
> >
> > ----------------------------------------------------------------
> > This time we only have a single patch for our command branch between
> > arm and arm64, a fix for the array syntax raised by our DT schemas.
>
> Merged, thanks!
>
> I don't think we'll start separating 32/64-bit DT updates again, so if you want
> to you can combine them now.

Do you have a preference on which tree we should apply it to then?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--one3myzrz25o5frt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRIUeAAKCRDj7w1vZxhR
xRgnAQCRuvcSt0t2sBgU+tI2RN+lhh+3sdDS5XpQqRxpmCy0gwD7BYHZGmy/2OfT
IoxfmP4ONr0DiKWjfR5F07WGm8aMewg=
=tCEz
-----END PGP SIGNATURE-----

--one3myzrz25o5frt--


--===============8134616411771574755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8134616411771574755==--

