Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EAE1701B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wE4O+D+8rJPIMVEcUOrOFnzZkX+SSSuG2wtWGUvnvpI=; b=YER3VcwGPcRilSfk1qzuY3Ykn
	xCiXrS6iUBNGngH6Y0plSpqBloctHWSssh1HvCnfFY963BFvFToDB+LHLR+x7l1W5x7ga3vfxCOor
	tr3JLMDiDtcxdKtUchp8eX05PsLz4Fs2nY2BnB/KAQLMNzxlP2VD3iCwD03iasQZEHH8ninasG2ul
	YXWt9qOwp43XliO/ml31zhIbK9BWWusZrFxKQBFehFhjDTrGf6Fhzx21km4m4PX+dlDFNsXSHAYR2
	6GAgFVZpT2q9cI2zmrDL37fEAgELrdtOYuTVFBEcmaitUYfluiacRsg6c9M0iH6ZMt2vS8Jz6CfpG
	fzidRavnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6y8Y-0006s5-FR; Wed, 26 Feb 2020 14:58:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6y8M-0006ra-Us; Wed, 26 Feb 2020 14:58:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E490AAC5C;
 Wed, 26 Feb 2020 14:57:56 +0000 (UTC)
Message-ID: <f34f037ebb9219c34480814433a277054c345690.camel@suse.de>
Subject: Re: [PATCH 10/89] clk: bcm: rpi: Remove global pllb_arm clock pointer
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 26 Feb 2020 15:57:53 +0100
In-Reply-To: <20200226142617.mvis6olfzakiwqcc@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <3876f732b3fec2059270678d464d27b7d3a0414b.1582533919.git-series.maxime@cerno.tech>
 <52aebb76952df530f93e9de539124ddf1b825876.camel@suse.de>
 <20200226142617.mvis6olfzakiwqcc@gilmour.lan>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_065759_140409_E141452F 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8059592872282246179=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8059592872282246179==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-H7D2q/McolpIoggtEKhp"


--=-H7D2q/McolpIoggtEKhp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-02-26 at 15:26 +0100, Maxime Ripard wrote:
> Hi Nicolas,
>=20
> On Tue, Feb 25, 2020 at 05:13:33PM +0100, Nicolas Saenz Julienne wrote:
> > On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> > > The pllb_arm clk_hw pointer in the raspberry_clk structure isn't used
> > > anywhere but in the raspberrypi_register_pllb_arm.
> > >=20
> > > Let's remove it, this will make our lives easier in future patches.
> > >=20
> > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > Cc: linux-clk@vger.kernel.org
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> I guess you meant Acked or Reviewed-by?

Yes sorry, I ran the wrong macro in vim.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-H7D2q/McolpIoggtEKhp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5Wh3EACgkQlfZmHno8
x/5dXwf/bKHxAxeQ4QoZjBlowsDSKby25i/UiGoQRjMihV8lAF5kvgszeIQN06d3
QFyxNv6+5IGxrr59IVdsYrnNV2dEVmKjg+6LZuVRPNCVRvEFdfRiTpukk3uxgFlX
sLaq8Lka4a64P4aoKJmqlge6JgXxhURwb/sUC9BBv+InbDws6+XxkDCXG0UmH8rG
sTsmoW8/gUiUJ+koBCxtipKbgzjzLim2LdWX2kUrdMZCBAP/Rxxp1bHCiHaGYRh8
pUvVxJ/IpJ0KC0Ef7QYlyk3/hnnPHPtcwo1z5NfXOsgTBLFXSv9rq6Jrqk0OJkga
LB3ZGFODiroFr+Q15H+sdaU4BV+KLw==
=93WR
-----END PGP SIGNATURE-----

--=-H7D2q/McolpIoggtEKhp--



--===============8059592872282246179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8059592872282246179==--


