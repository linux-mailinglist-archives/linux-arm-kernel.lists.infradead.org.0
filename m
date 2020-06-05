Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27CC1EF58C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pd7u7WFGuE+0svmR97kr0FIhAVw6uEqlCnfVcOfwHpg=; b=IYrxjwqPja5ljFVpQ3s3qHMBp
	3XQGUJ/qr1/UdRRsoKmglqCm5D/Xip4YoNqsexg0AQmK0rD+SiALbp+tfxddgShfew099e2EA0Ic4
	KFQGbTm4E/NC9fmFQXlwr3EBZg4VOrkKXBuKB9Nr5Il6hxm4UI8QekErvDjhk+tQWPqxlDt3vt43c
	SmLca23IGUX1iYTWDEqf2wOHj/sAuRzGUmrNZo1sbp0YV8/Y2fp+6hybjeF6CKFx1IZUuhxnJEmL7
	I+3r2Ao0IdFqPCFjFTGXrpLtrSmxe3rP3WsMa52vunMWML/vg8k7iiE1gNluiLEZAqZV5XHaakuDP
	WcQoO7OeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9oP-0007C0-2x; Fri, 05 Jun 2020 10:42:57 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9oF-0007BM-OA; Fri, 05 Jun 2020 10:42:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7AD1FAB5C;
 Fri,  5 Jun 2020 10:42:49 +0000 (UTC)
Message-ID: <6ae138d4ed6633ec34e5199d0672dc54fec4db43.camel@suse.de>
Subject: Re: [PATCH v3 19/25] clk: bcm: rpi: Add DT provider for the clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 12:42:44 +0200
In-Reply-To: <58f0ca794ae24bb2026b3051d1f5cd0affab42ee.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <58f0ca794ae24bb2026b3051d1f5cd0affab42ee.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_034247_931839_E0D9A565 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4680470055504485746=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4680470055504485746==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-pWlr8403LQFYMCkvS4sV"


--=-pWlr8403LQFYMCkvS4sV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> For the upcoming registration of the clocks provided by the firmware, mak=
e
> sure it's exposed to the device tree providers.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: linux-clk@vger.kernel.org
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-pWlr8403LQFYMCkvS4sV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aIaQACgkQlfZmHno8
x/7qIAf/QtFeVelhKGGX//nLMMPHMSUDAT+xooDh+izo7bG7E6VDA9Vbbbc/XYLY
m6mp5zgjei5fCM9oX3SzBPOe4YdOBQv2qDls3SGSITzILz7oj23yzxLYukyoRufX
HAS7r/v2oZS8BsWt5IPQV2OgDR2rbEjYwkIhlwxmkljZOEhfcKs7SqLSN5JQjMeF
cJ7wFDjP/u//gR3dW87iVE+Uq97YLnNr5jJEPUtPXLvnjLCbTbgaokFr7RfhOmQz
BTmqC1koG6IV44VA+gd5+Xlqg5WCDJv2wkYeIg/U+eimusvT6u8vlrCuZ0pKKtX6
UnuNPItXMELJO3DpN0f0c5S7J7Ut/w==
=Vwou
-----END PGP SIGNATURE-----

--=-pWlr8403LQFYMCkvS4sV--



--===============4680470055504485746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4680470055504485746==--


