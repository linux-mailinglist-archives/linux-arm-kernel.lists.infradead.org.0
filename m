Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7369E1F665C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JLQZZUna+K8qI2zAQEPdve8cRXLonajYzzHvZXsyqKI=; b=YSi5trCKg7IbY0/ce95c7uZUG
	IzZKVJ0CapQWiCRgiZwlL3y4HiL/la5Jwnt/Ie8T30NsUQJ1Pbm9ufTxBTPsvoEog6SkLHwmef7yy
	1scxuZDr6w9RIS2nGfXECUoY1LnHh/v/F0xABdJNjZbeX2gnR1bJiaU2hbYQOEnFuPYxAST7V3hNz
	RTB/F1MUnX+jhs9bwli9DXCPnvIbDz56+F517ENZgHLWrh7sKtdKegg09N+EdWaiNe++ETbjO/IOI
	Iuq62B5PjU+U0L4u2q/0kBDLzyT+MP6PqBX/D7rg9ba65eEdhQXCw2Vu2DritfyAgmbkvA1IV37Dc
	DM8r3p8oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLAw-0002NE-Om; Thu, 11 Jun 2020 11:15:14 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLAp-0002MJ-2v; Thu, 11 Jun 2020 11:15:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A4284AAC6;
 Thu, 11 Jun 2020 11:15:04 +0000 (UTC)
Message-ID: <7cf4a213862145abd8e0368b669aab39112ffaeb.camel@suse.de>
Subject: Re: [PATCH v4 21/27] clk: bcm: rpi: Discover the firmware clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 11 Jun 2020 13:14:58 +0200
In-Reply-To: <40ab5a9718000636a513d374e7579e2d2b57f961.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
 <40ab5a9718000636a513d374e7579e2d2b57f961.1591860665.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_041507_276573_CC14CED2 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5823513801403321020=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5823513801403321020==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/HZv/CDJ5nGFBA3EUvfy"


--=-/HZv/CDJ5nGFBA3EUvfy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-11 at 09:32 +0200, Maxime Ripard wrote:
> The RaspberryPi4 firmware actually exposes more clocks than are currently
> handled by the driver and we will need to change some of them directly
> based on the pixel rate for the display related clocks, or the load for t=
he
> GPU.
>=20
> Since the firmware implements DVFS, this rate change can have a number of
> side-effects, including adjusting the various PLL voltages or the PLL
> parents. The firmware also implements thermal throttling, so even some
> thermal pressure can change those parameters behind Linux back.
>=20
> DVFS is currently implemented on the arm, core, h264, v3d, isp and hevc
> clocks, so updating any of them using the MMIO driver (and thus behind th=
e
> firmware's back) can lead to troubles, the arm clock obviously being the
> most problematic.
>=20
> In order to make Linux play as nice as possible with those constraints, i=
t
> makes sense to rely on the firmware clocks as much as possible. However,
> the firmware doesn't seem to provide some equivalents to their MMIO
> counterparts, so we can't really replace that driver entirely.
>=20
> Fortunately, the firmware has an interface to discover the clocks it
> exposes.
>=20
> Let's use it to discover, register the clocks in the clocks framework and
> then expose them through the device tree for consumers to use them.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-/HZv/CDJ5nGFBA3EUvfy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7iEjIACgkQlfZmHno8
x/5O/wgAojiCQn8IWPe5AD2kCeaAi3GY+ivhNVp+ylf43QI1C0rv3ie+dyzYTHFe
YBp1ll774sFXWcHYoz2GIfWn1r1xKtsaLmsgQSW6iCOzTr6/jhhmHUZqZSgMcW2Y
sozYVnzsEbdAGpbsZ37CFPMbvXdYi91GW9vet+w/lkEvPcP6UOTCW13sFfdsrOVi
xUQxHElDMq4cNjMMqBmA57EjCyltxfUYD4eLZ+5dlw93GSH0IsXfFTBRupFApN/Y
K4vNFlWJur4B0WzWekZMYGXbePmxV02RTBv+53KLBr1/pDRDTaF/ndPbk9iuq7U+
anDlvK61kOm4M+bXQpdWVlw3dKnKbA==
=zn5D
-----END PGP SIGNATURE-----

--=-/HZv/CDJ5nGFBA3EUvfy--



--===============5823513801403321020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5823513801403321020==--


