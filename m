Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB1912B5AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 16:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tk4+Zo8g5lcUky+lsqmtCFiLmy/EJwVemo6v8R/4H1k=; b=e/5LrBkGNnbo+1UlxmPf43BJ2
	OtLG3X0MYmYct1GjDLYHo6bHtA+vaD0wQQ9JZK8D+9omPMDS7CQg9HVTM/pciODejwi124eqKva/t
	Zu2GvOFD4qLWtbNBIgao9btkQf8DaQ5jfrwpC8fz96R9pgnIYGoVwXPlNauc4+v5+P1qir2FK/inN
	klaRTIZRl9kFWz83jPQ0v5IUJHjpIG58RRCnd/tNuuYVwyDUJcp8VWOFhULSPfYI/Zw00eceTI4UU
	uhNRiiEpUZQQ0j74KF7OZIKGhVPf8U/jLSnINcoLkoHBcmyovfDuZPRO3HFzEU+b6LxPcT4fK0e8o
	jf9h9/L1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikrem-0007Ke-Oz; Fri, 27 Dec 2019 15:36:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikrec-0007K6-Sq
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 15:35:56 +0000
Received: from localhost (lfbn-lyo-1-633-204.w90-119.abo.wanadoo.fr
 [90.119.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FAC720740;
 Fri, 27 Dec 2019 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577460953;
 bh=7r56deXllU1oGrb23gXCZ4pIfhEB/Z0xwJCja1MXEL4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=ycFG5d8GqzOqg09g3YY78naztjMaftPaJseNHozA9qOdVLhpzmJayZr5yMvzdQGkD
 FJ+zXXFFgeMuKtTlgCxENE2LDnqVqslEdmYK4XG+W2l9PBwhuZ8jkoTlR8vKV0K8ZU
 MRjVrRKwrch2A7BuGUTX+BaXagKluHzmx+7UyZA8=
Date: Fri, 27 Dec 2019 16:37:15 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-pm@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20191227153715.m7o6h6lniwg2456h@hendrix.home>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
 <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
 <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
 <20191226103739.bz3i73gjmn5q5veu@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20191226103739.bz3i73gjmn5q5veu@core.my.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_073554_953134_D38A2EC1 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: multipart/mixed; boundary="===============7975254495087660953=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7975254495087660953==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gfd3qq7a2xnbetqt"
Content-Disposition: inline


--gfd3qq7a2xnbetqt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 26, 2019 at 11:37:39AM +0100, Ond=C5=99ej Jirman wrote:
> On Thu, Dec 26, 2019 at 10:27:51AM +0100, Maxime Ripard wrote:
> > On Tue, Dec 24, 2019 at 07:30:55PM +0100, Daniel Lezcano wrote:
> > > On 19/12/2019 18:33, Maxime Ripard wrote:
> > > > Hi,
> > > >
> > > > On Thu, Dec 19, 2019 at 09:28:16AM -0800, Vasily Khoruzhick wrote:
> > > >> This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> > > >> H6 and R40 SoCs.
> > > >
> > > > Thanks again for working on this.
> > > >
> > > > I'll merge the DT patches when the driver will have been merged.
> > >
> > > I've applied patches 1 & 2.
> > >
> > > They are in the testing branch and will go to the linux-next branch as
> > > soon as the kernelci passes.
> >
> > I just merged all the other patches (except the patch 6, for the H6,
> > as requested by Vasily on IRC).
>
> Hello,
>
> I think you can apply H6 patch. This was just some misunderstanding
> and H6 is working.

Done, thanks!
Maxime

--gfd3qq7a2xnbetqt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXgYlKwAKCRDj7w1vZxhR
xQkMAQC/ZoYUxPX5yzTlvbMxIWHNJ1u1lQvxfppZLauJ5rHWxgD8Cx+nXvhe72Cl
ka9ZcT3Up4uJM95blHhx4KnSXMipwgQ=
=Fewg
-----END PGP SIGNATURE-----

--gfd3qq7a2xnbetqt--


--===============7975254495087660953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7975254495087660953==--

