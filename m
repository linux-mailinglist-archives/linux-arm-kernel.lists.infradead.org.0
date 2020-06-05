Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E986F1EF582
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+0biy8CF9xc6zIdniM8bj1sz2D6gnSoqIpeb6vDab9w=; b=VYRN29j5zrRFtURUjqOsiqw2Q
	PEhj7E/uFGMH4Q6AO77uaY0J1zru/T3TraEmTwYjlZ8L9Y0UDgPEomnWzZDFp1ccgWUPVdTmZTpgt
	ZuQ9syCA2oK2cqmkzWIZwVr0400OGmgsmmCo8sqhX+ZieDb4W23IaIfBpx7v/E4YQ0qDWStVH3laI
	mnvcjctO+RYSMtqMFwBTywEzDOJpnhKgTEEZgSY+gQbR7v0BZ5/zRUxaNmkMFg2Hau/F4tBu2DjZ/
	TZLh53v6HmmrjR4imMw4MPjYunSbXch/bncBgCdrujViuQ5pUV8fXg2h0N1gq1KmV+9eWFxivpqRd
	4SLJh97sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9js-0003z8-Qi; Fri, 05 Jun 2020 10:38:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9jh-0003yl-OV; Fri, 05 Jun 2020 10:38:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 803E3ABBE;
 Fri,  5 Jun 2020 10:38:07 +0000 (UTC)
Message-ID: <c9ae665f45d8669e6834e7f6a006698496542d68.camel@suse.de>
Subject: Re: [PATCH v3 18/25] clk: bcm: rpi: Make the PLLB registration
 function return a clk_hw
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 12:38:00 +0200
In-Reply-To: <be60ef4f29c929e633363a4473aa119f69ace7a0.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <be60ef4f29c929e633363a4473aa119f69ace7a0.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_033805_940714_3DBD6091 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6957446600642600457=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6957446600642600457==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-GKBfxlAyyMcO4y1FBBUP"


--=-GKBfxlAyyMcO4y1FBBUP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> The raspberrypi_register_pllb has been returning an integer so far to
> notify whether the functions has exited successfully or not.
>=20
> However, the OF provider functions in the clock framework require access =
to
> the clk_hw structure so that we can expose those clocks to device tree
> consumers.
>=20
> Since we'll want that for the future clocks, let's return a clk_hw pointe=
r
> instead of the return code.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: linux-clk@vger.kernel.org
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-GKBfxlAyyMcO4y1FBBUP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aIIgACgkQlfZmHno8
x/49AQf+NEJCsV2JOsSPe7EgOc95gd6JyUWOEua0ulSmnIKXlzz0Slu/WTt5dq3K
y1rmylaZUECzHLB/iMw0VxIovd0VAMRwef24x7c5Xu6SWAIjr7XSihennsgwU9kp
KOqPvC2IejaU/bW0aMBYb7jWr21cRqtSU4FMwUK73mtdg4kjHmE+o2sXGTDMSdLF
kTUZJAJCMAAQl36As1gk6xpiQnvAqkphJIfULpQGjsn2WxDa6tmHER1Pu1SjLQ/x
5O12dePkhZhg+MlTWq8/v+o1KXIGOd5L7MfkgulGqKZbPV1lXrVkBMiyDEByh0K1
WYSdPQF9hRXjmAsFwkCo/8LVUKgm7w==
=zDZM
-----END PGP SIGNATURE-----

--=-GKBfxlAyyMcO4y1FBBUP--



--===============6957446600642600457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6957446600642600457==--


