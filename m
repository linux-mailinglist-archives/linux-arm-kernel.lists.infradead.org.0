Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C03E217C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=od6X8exQMVwuwjSz3Rnjn8lgVXl9ifSTOjyF7DVC+0c=; b=TPYdUoy0I5Ho5y/TFfV+D/RG7
	bbbs+kv29KkmTiE2QBz15Sn5pE1gAIZXh89YYuw/qvGBjDxrdLTuspdE0MeA9aQkPDVAdgjgXAUJv
	6ixlGG4kfW/+1hfJPsNvZLjv+jyjZi56Z0+9xga/uzIRSjbnFPtswunhthS/hEQblpDKmS3YoDKGy
	uEdfKk+c5B3HG0u/2qi4Pnvp3rxF8b3tSw7hQUnwocZN1oh0G9GzaA25LShmG3gS+Aq5boss+KGUt
	NZdSCWiANsKVju2zG5f+kIMb/DNvOoeOkBxJJ/gIK1FgNb7WkOdFte9XmxCAKT4M6T0fndHf8bCrI
	mUplMiH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKBZ-0002X2-Rj; Wed, 23 Oct 2019 17:12:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKBQ-0002Wc-D5
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:12:29 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F3CB2086D;
 Wed, 23 Oct 2019 17:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571850747;
 bh=PSQ93TWvDXfeRreSRbwRAzZ6Y+NutS8WnFzyetL9e4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eKNUKYnauIuxyy8WnEIUoZ/dspXEtLKl7e2XUgA++QEsE8meMBkyMpFLe8jEOreUU
 cRHPQwtUSHFkJTDlB2+EARMItmf8+4CfA/LbfUrzz/gYdN59C+2zSzYSguoyG6X/aa
 bOvyPX05KYpLbtExK1o3tBb9LiwGSNbSuEKT7mZQ=
Date: Wed, 23 Oct 2019 19:12:24 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner Fixes for 5.4
Message-ID: <20191023171224.ncndh2w6rn75twmp@gilmour>
References: <80085a57-c40f-4bed-a9c3-19858d87564e.lettre@localhost>
 <20191023153452.3nmtq2pbo6ohriv6@localhost>
MIME-Version: 1.0
In-Reply-To: <20191023153452.3nmtq2pbo6ohriv6@localhost>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_101228_462412_275639A3 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8033214840116837697=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8033214840116837697==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tursdj2aymzh6zu7"
Content-Disposition: inline


--tursdj2aymzh6zu7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Oct 23, 2019 at 08:34:52AM -0700, Olof Johansson wrote:
> On Wed, Oct 23, 2019 at 08:51:06AM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > Please pull the following changes for the current release.
> >
> > Thanks!
> > Maxime
> >
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> >
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.4-1
> >
> > for you to fetch changes up to cf03c691eb959f438c16d58ffd11f150b1a95b1e:
> >
> >   ARM: dts: sun7i: Drop the module clock from the device tree (2019-10-07 14:12:09 +0200)
> >
> > ----------------------------------------------------------------
> > A number of fixes for this release, but mostly:
> >   - A fixup for the A10 CSI DT binding merged during the 5.4-rc1 window
> >   - A fix for a dt-binding error
> >   - Addition of phy regulator delays
> >   - The PMU on the A64 was found to be non-functional, so we've dropped it for now
> > -----BEGIN PGP SIGNATURE-----
> >
> > iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa/4RQAKCRDj7w1vZxhR
> > xU3XAQDYuCixpCCftKIhjcz+oultXqAJysDEE44dATwT1YfINgD/eBSwBw1l/Ni7
> > yOumUvRZ1fJC3NO8e7vh9cYN9yy5tgw=
> > =3/ru
> > -----END PGP SIGNATURE-----
>
> Your script seems to insert the PGP signature in a weird spot. It's not there
> in the tag, so I'm guessing it's part of the email generation.

This would be the email signature.

The tag itself should be signed though. It isn't?

> (Branch merged, thanks!)

Thanks! The new notification system is nice :)

Maxime

--tursdj2aymzh6zu7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbCJ+AAKCRDj7w1vZxhR
xTfHAP9d/6UCktU6Z7ukTukU806I1ZFMtQEKrJ0PhFf5wCebBQD9HeSMt9cwdqkp
pY7/GcQEtlV8AA83iksgB6G15nZV6QI=
=SV+7
-----END PGP SIGNATURE-----

--tursdj2aymzh6zu7--


--===============8033214840116837697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8033214840116837697==--

