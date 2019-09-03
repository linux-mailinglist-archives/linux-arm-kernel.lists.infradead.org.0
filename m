Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFD8A5E61
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 02:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Jbeek6ZFN2t5DwYez1jVkYwtFOy/uh+Fz8sxA8Nixw=; b=joK7aI6iegOS3hcJeuZPeEo66
	Sci1zWfYCqu+OGuV38a2uikq/tXepQBdKSOUNwh3DnFDdIeM1CwPsaW6WWcJ5SGQp8AMbm+waoZlq
	EQ6H+IYMuGUXjWdco8Xqd7YEvgxjex0bcOcGpRqa6O4m0QSZvYJ5KXvg+Y6J0HYBr5hrQbh+rIoYU
	84tSq3mMU+oYhsSHpMkutli7QCVlsLO6vzL7b506O3C4azgRe2CreiVdVM0m27xC87fbWQ51OY21x
	4qlK1eoaC8Cp/vofzKA8b9ou7UUnjojG6YeYeOCvvPxCpg59xt/h0IviyKHYyLQgrXYH2zNQmyMLD
	H3cCbg4ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4wKH-0005vd-Hs; Tue, 03 Sep 2019 00:05:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4wJg-0005go-D1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 00:05:01 +0000
Received: from earth.universe (dyndsl-091-096-044-124.ewe-ip-backbone.de
 [91.96.44.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FE9F21881;
 Tue,  3 Sep 2019 00:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567469097;
 bh=C2Oo2ekkJf07UhZBjYcgHSOlX2ttr9aZ7KHtFcD/uVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pqgu9s97I5kIBQCgfJOcjjiwIvlIAMdsQ6MttlVE7h5NayMbcKz8kzhxfO14I/W0e
 uNclzdygVNWAo96lxNW6jLxOFs9xu8+YcCuAfZFVSEOMjUQvreWEj2hEOYKjgsk0gn
 1+sO9sTJvJyfBKgHu7ISaJIGc5yH4t6OezqHBoQE=
Received: by earth.universe (Postfix, from userid 1000)
 id E087E3C0CFA; Tue,  3 Sep 2019 02:04:54 +0200 (CEST)
Date: Tue, 3 Sep 2019 02:04:54 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] power: reset: make reboot-mode user selectable
Message-ID: <20190903000454.lul7fn5nxqcvi5x5@earth.universe>
References: <20190805075812.1056069-1-arnd@arndb.de>
 <20190902203857.zusvlv3yv5arel6y@earth.universe>
 <CAK8P3a3uNPepYweCN9+_cQNQyiSGdidwNGL0+xhti2vm8g9O_g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3uNPepYweCN9+_cQNQyiSGdidwNGL0+xhti2vm8g9O_g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_170500_481031_DEF62CFE 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nandor Han <nandor.han@vaisala.com>
Content-Type: multipart/mixed; boundary="===============5050922827022512777=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5050922827022512777==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jk6o2ixaejebpkmd"
Content-Disposition: inline


--jk6o2ixaejebpkmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 02, 2019 at 11:16:27PM +0200, Arnd Bergmann wrote:
> On Mon, Sep 2, 2019 at 10:39 PM Sebastian Reichel <sre@kernel.org> wrote:
> > This patch does not look good to me. Better patch would be to
> > allow compiling CONFIG_REBOOT_MODE without CONFIG_OF. Obviously
> > the configuration would not be useful for anything except compile
> > testing, but that is also true for this patch.
>=20
> Ok, I'd suggest we leave it with the bugfix you already applied then.
> [caa2b55784, power: reset: nvmem-reboot-mode: add CONFIG_OF dependency]

That's also fine with me.

-- Sebastian

--jk6o2ixaejebpkmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl1triEACgkQ2O7X88g7
+prOIw//St+HxBGAjsiXQniqUuYYbeK3Snbkmksh6ma9RNd6of3UOCaeF0jMr0sQ
SjIgMlGJUgmOoa28eSoI+v2hRxugs1Wz5by/YCIAZxXysseA/xB8iDuScnjR2/FV
BC9xhdAUQorvqeSHfBjrYQVSVjBqAg2lxbYFLLIbJFMvFTOf4656fQr6YaORvvC7
lF4W9sedS1nqv5fStCQmFWoiodzKcie6QVvJtDuqueg7g/St1d0dDDiJO8fbgp1/
w1sK3QEhrzGBfTp9GzmO7F98RUXxsCpxv5K+nQBuWx1pbLJIabJ9PP113Zuz2HQY
/m/n4bwXeO47PaQ85/iC1qpn/L6XIReQC1TSA/pYureaazxf0zKwm0zOD5X9qHQJ
0e5BxzWKsg5DgRg573oFoCzQtE1mgTm1Bv3ehmIYkW25I2pFhph+z5EI6tyFPIW1
WxtgZY19dKK3YQQ7MF1ZxMUazuChHWqzGfLyrjhcglD8uQlx39fLu5N+DQceNhJm
z9hv44m2kdcqUctjT91qi1CdZJDJhu3fJHy/QYk/KB9RdP6rhQUCmirmLMn1jjjO
T6IhRTvtjKVtABjVa4ps97rY+hAIOffepm3KtPHa+6qPI7Wf8AY/JTCHE2+Tc1q4
C2IFoOxpAd5HjBC+ZJqjkW+r/2xq+1bY4Z0WhT8BCvTYvJqWeOI=
=UaPm
-----END PGP SIGNATURE-----

--jk6o2ixaejebpkmd--


--===============5050922827022512777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5050922827022512777==--

