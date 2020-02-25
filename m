Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E991D16EAE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q1VOcLQSBZJTIUMukVGmCQwDHvqOy/rtj+jQUM/o234=; b=DIzM+dQjsrgFe/CUs6UoBuAkn
	bJX4mloH4r/AryLOz9U+f/s7QAPFRE1jh6bKhc9pKNtowuXWr96d8BtwMa4c5Cv+RnAf7xGiOWNH7
	AAktQEECJWIYbB18WPZjUXyiY9BuGGJaHdjCeQ+1iAohGN787uFDaBeU4/ML8EqQVt0lZTBFR30T8
	7TKYcx6i1afWlZPSGsNFM/xliDbF237CpIzxNqRLINYH+G8cmq2vwwKwrYazrFx8D4xqeQvFGp0EO
	n2sta4vOgjUKSSJVOvVc9ZXxWRQsbyt9CGHO1vZ9LTorLooFksu3TNfpBZjKdsloIspmzrY0dkaGD
	LKIKGRDpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6coF-000552-Fk; Tue, 25 Feb 2020 16:11:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6co5-00054I-I4; Tue, 25 Feb 2020 16:11:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CA24AACB8;
 Tue, 25 Feb 2020 16:11:35 +0000 (UTC)
Message-ID: <f7d43591965dd9c5aed7af194709e15f68f63d3d.camel@suse.de>
Subject: Re: [PATCH 09/89] clk: bcm: rpi: Use clk_hw_register for pllb_arm
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:11:34 +0100
In-Reply-To: <1c47c839fda93460994d37b4c851d805a3282d5f.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <1c47c839fda93460994d37b4c851d805a3282d5f.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081137_751828_65D380EC 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0158362720463060491=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0158362720463060491==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-WxIH33aUvejlhlKylEgn"


--=-WxIH33aUvejlhlKylEgn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> The pllb_arm clock is defined as a fixed factor clock with the pllb clock
> as a parent. However, all its configuration is entirely static, and thus =
we
> don't really need to call clk_hw_register_fixed_factor but can simply cal=
l
> clk_hw_register with a static clk_fixed_factor structure.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-WxIH33aUvejlhlKylEgn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VRzYACgkQlfZmHno8
x/47yggAt8HYPSSAwxIpPsTANQ5MOmHcSrWHPtoeQ9a34zlBUUytK4V4bHUW0oXO
W1GOccGSIUHjMHxIZxvOQtiTPgQH56S9SwygQc46T1w+wk/PbuWbBIp7PD71ff1t
JM80+4P+PUb/DU45sjzNlJ7pjVf1u5TrSjcSyZsTKgvDBH871y/+bQhv2vyvCD50
tpnI/h4TdEg4J3xJjXGqqlKHJGUL9QzWUid4iUDzrWJUedsERifPTNTWGtHGuJrJ
sULf1ByFTAgzjY9rY9ss+uP1lQVcspatnr8aqU9H1Zs+fBzN4f7eLnbdC3vM9SBq
96EoI2KTjpdggc67GD/da+kMBmYCHg==
=UyQW
-----END PGP SIGNATURE-----

--=-WxIH33aUvejlhlKylEgn--



--===============0158362720463060491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0158362720463060491==--


