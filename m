Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1491EF575
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xtkQJkNhe5hkbKkBQzP7otF+7KZP35mLqOFfpSPZuHw=; b=A9QY1tll+UsikjzN0l8GDYvR7
	XTfToHE/M9BTN6cYS+ruUYXago1t1BeEmEYVb3LY8BapQYL2qu68+IvEOPWFcZrPWgvzOjo+o20jZ
	IGL4p2eX7xlElAHFAjCIIKl94oofzh5V4d/1HUkY6o+FIkvIfb7M67p5GZS6woVGAL9p/mdZ2Pk99
	c2jLuZm2uMH5ac2mW9L8qGFDPJs9wr/vncSnqZZan1iNFirzsxBGlFfYUvxEset1cnF56914Q280b
	FNbJfIUoDfy+yXvUQ6mfBek7oWAsEDgHVgeHLkbrT9jg36iWDfZkiPOWqoOx0W3MT54YU/MycG1/n
	hzfHJUMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9gV-0000Sn-5L; Fri, 05 Jun 2020 10:34:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9gN-0000Rr-Gl; Fri, 05 Jun 2020 10:34:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 182A9B1BA;
 Fri,  5 Jun 2020 10:34:39 +0000 (UTC)
Message-ID: <9c3d28922f343bcb19243894d3385a8fe1fb3606.camel@suse.de>
Subject: Re: [PATCH v3 17/25] clk: bcm: rpi: Split pllb clock hooks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 12:34:32 +0200
In-Reply-To: <10e269b4c3c5cf38eba9c0684341b191b9ab7abe.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <10e269b4c3c5cf38eba9c0684341b191b9ab7abe.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_033439_701544_AE7931F4 
X-CRM114-Status: UNSURE (   9.76  )
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
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4707389846773203862=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4707389846773203862==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-kBBCKrUQb2v8gZXGREOB"


--=-kBBCKrUQb2v8gZXGREOB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> The driver only supports the pllb for now and all the clock framework hoo=
ks
> are a mix of the generic firmware interface and the specifics of the pllb=
.
> Since we will support more clocks in the future let's split the generic a=
nd
> specific hooks
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: linux-clk@vger.kernel.org
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-kBBCKrUQb2v8gZXGREOB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aH7gACgkQlfZmHno8
x/4xWwf/RYRgzsbakQqmxDtyx2MpHrL5pyM3SCfIlrEoNmp0pInOHxEiPDyM4gHG
M1nMPJiZqDKXKYbbTXB4LkzLt7OelM3FEtgUiZYUOiKk/kKmFeXdXpRUY9yLtcGg
mwypxmeNKfXXX7NAH+UOuuvxv1luAgeW+FP8hGQVoDp12R6TDScRHHJu9OJC/2CO
fWwOCU4ROOiIqbPAL/YdOXdfEN62D6AJhDIoviS1zU4QG0+pMsxdERkcGac1Hr26
lDYR8ManeMQPO03IUZGcOKcDdY2iflgzaQvFBvSHeFiOIkGYucDFMF0q173q+O8X
S+mbc0Xe4WLmffWUA6EmQ0s73kLt6w==
=ayQ0
-----END PGP SIGNATURE-----

--=-kBBCKrUQb2v8gZXGREOB--



--===============4707389846773203862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4707389846773203862==--


