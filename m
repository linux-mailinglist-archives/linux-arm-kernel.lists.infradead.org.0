Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863B71F6686
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kpd0lphIbDtuotwoY+y2fEMQQ81CAgz8HmPSch4XNx4=; b=qlNwQ08ZjUXle6gsRWawTY8V7
	BZ/5kZdiGzzUHj6iIRTCCAm6tiU5xMxJwTVljmae6cG8jD7bCaR4tqnF1LRCDYSvGv8LWx0YSdgId
	zYRoh222tVXylTdi7u3dPmR89e4GOHTffL/sbpvta++TK+TDIAA8Q0xOZedToHhDDRIQiWelsWRW5
	9m3kekOp/VQGg3Ss42JsJZB9vt9Nra6tdPiQYH2J2Dd7+XRvARdLs6Ydx6uQzXIkZanhf/mnQ038q
	Pm7rSFiNxei/yuou3jaqiZToEwoFIzGYehCQqXn6kkF//DwYqGTe+YfSIwwdow/IDnZYhrwpMzGLy
	x7KPDJhoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLGp-00009T-M0; Thu, 11 Jun 2020 11:21:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLGh-000091-4E; Thu, 11 Jun 2020 11:21:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 12DD4ABE4;
 Thu, 11 Jun 2020 11:21:13 +0000 (UTC)
Message-ID: <4298d8db6dec26317f591271ee15041e0c12f6fd.camel@suse.de>
Subject: Re: [PATCH v4 00/27] clk: bcm: rpi: Add support for BCM2711
 firmware clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 11 Jun 2020 13:21:07 +0200
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_042111_314133_167A2E22 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7578983666220454814=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7578983666220454814==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-qp5pvNknzd1S2ihuXchJ"


--=-qp5pvNknzd1S2ihuXchJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-11 at 09:31 +0200, Maxime Ripard wrote:
> Hi,
>=20
> Since the whole DRM/HDMI support began to grow fairly big, I've chosen
> to split away the two discussions between the firmware clocks and the
> HDMI support.
>=20
> Let me know what you think,
> Maxime
>=20

With patch #25 manually fixed, the series is:

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-qp5pvNknzd1S2ihuXchJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7iE6MACgkQlfZmHno8
x/79PAgAp182wijp2dGoNNw89NchByhUXSoq3HViFvOMpA7tfknoLrvB2AF6YQXX
2ve3ki9iwHaWWKFd58GmLurPDR7RcIVFHAtLT2RPwpbbf9RV8KiYp47xtBHZh8yg
3oK9JGFkqfVh0qzEmbZ8xrOGqoNIRCNtty4tnzz5om+3ZL2xx3qETHIhiKVygxyu
WS4nja+AQEG9wkqOGE+JXvi0kErid/NBN7dOH+QP2SH5GgpIeOjNTW36TPAkAzEv
p5e2Ou504Ryah3il9bWZb/5r0O0njK4O8HJxPhw1k7S9vINYC50ucBTa+dZjYeU/
/bl9Rt12SAtkbpaNEOm7n45tIqGRHA==
=K1r7
-----END PGP SIGNATURE-----

--=-qp5pvNknzd1S2ihuXchJ--



--===============7578983666220454814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7578983666220454814==--


