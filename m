Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2F01F6662
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1JmH/e7E58bptl2ADnZXmDa4UPmyGFR7UErvuJE1AUg=; b=ZawFfwV/sVo6qLGRCu4Ry6Atm
	WfjPKhRtVDuN3hW3KsHt3KvMt7kpHbgS/Nu77Vt9R5k+ZhvSaF9pnTp+FEB/1A2eiWzKRYWEwcasq
	Uoq0ebIB+WlmJoVe9GxZq09TjqGPYUeoRkDik4Cm5HBLCL9hSRUB0zOKS51VM6mg9bqgt80OccXge
	542gCsX4BKBa06/uYxkqwIIwpos/K8CREF2RzIX1Ypf8QQXgmyy+4NAwN+RyJt+Niwbd33gZfS3GH
	4scF+hvjXmXZfBV+Z5se2Z6kYebCKmd5FB2Z42l/8kP+Tp5jCWJKnHE/r7T0hk8SltkHvQy95NBTz
	6LjoYT++g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLBY-0002kH-KI; Thu, 11 Jun 2020 11:15:52 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLBJ-0002ca-5P; Thu, 11 Jun 2020 11:15:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 43D20AC20;
 Thu, 11 Jun 2020 11:15:39 +0000 (UTC)
Message-ID: <768f70443c84a33a6685df79c630192e9e72f893.camel@suse.de>
Subject: Re: [PATCH v4 23/27] Revert "clk: bcm2835: remove pllb"
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 11 Jun 2020 13:15:33 +0200
In-Reply-To: <2795d7ad33c9eba631fb356df7ff075ee5e8a0b8.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
 <2795d7ad33c9eba631fb356df7ff075ee5e8a0b8.1591860665.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_041537_349300_A3394FB9 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============4151509007359223592=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4151509007359223592==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-hbYUkMWex4Zkya5EfVIi"


--=-hbYUkMWex4Zkya5EfVIi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-11 at 09:32 +0200, Maxime Ripard wrote:
> This reverts commit 2256d89333bd17b8b56b42734a7e1046d52f7fc3. Since we
> will be expanding the firmware clock driver, we'll need to remove the
> quirks to deal with the PLLB. However, we still want to expose the clock
> tree properly, so having that clock in the MMIO driver will allow that.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-hbYUkMWex4Zkya5EfVIi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7iElUACgkQlfZmHno8
x/7qEQgAjZnjjXvRdAi/lc/o42kdtkguD5/CJSpvXou0kiL3FOFcffpKKOAkOzWq
Z/yk+9EJ4/qHLuarbUHVa+JYFHb9y/iXBVJyGwgDUAgGRz9sJYzujHNYQ9AS9ODF
0abA1KUTWSvXTb4uWsEavq5fqR5g2QjUctjPta3WcdsCmkQ9Hg4AAleRM5GF6+St
wJbCRx/teGUuMKq0LZ/nQBypV6QyAgb3gSxNqitenCT/BXBgt3N0nNgF4+UoFvM/
GQ0vUYB7zyET9sYNYQ/d1C3upKOLyV8veg1bfpHdYKc3uqYp+hiq1xHmjIXP/eLJ
vwQKYuRVj3vsEZ1SQOIkc7CoXKrF4Q==
=p+Ci
-----END PGP SIGNATURE-----

--=-hbYUkMWex4Zkya5EfVIi--



--===============4151509007359223592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4151509007359223592==--


