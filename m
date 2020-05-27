Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DC51E3E10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=11Rt82KnFTWZVlHG2sqx2ZZpEnXvBZRwTVVW/TvjfPo=; b=E+3a+CkECpecm9VldKgKDkQ14
	juqnO8uTVWvV9/dj/QslyoM91mbMigPz/nnSQ2g+PgioSjUXVcnW7Gx9cDpLXygBfxdf782tVrQn0
	l12Qv7uMOzv8O6N6YWmmZ5Gt4oTh6X7FoBMojBZOtQMp0GkYLJTYHUOaevaGkFG7piWdOHeyoq5SO
	2ACakhEREbuKlYlEXusadxdoenQRJFeUZMBn/F7feS3VD+Z9jcXKLmqtjEGWPBByopZZ6++kANts0
	/APVfQW6Sfr6btm+A86XTXwVPQAXFm4PZbt1WhhqhqpZ8uDC6oQekOqtX9iCGvuBNjLKcRW9MCC2o
	OcuLHlxEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsib-0006lN-9W; Wed, 27 May 2020 09:51:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsiO-0006jp-KF
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:51:13 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8B3520B80;
 Wed, 27 May 2020 09:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590573071;
 bh=0vToCKDKiiwhvCQ/ZH06T4deAF0FOse4LBq9EGr0Hdk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nVI+eY/sUvYRSX+c+Adp5mbuGsFalnf0pXTPCNoiZDzr18dCfz9a0UVW1SQjVdQOT
 +GPqBAiQlp1MZCLnbvrTSC1VicjdfKmeCzHwVVwfMOOVW1nCw1H+fYqzrff1b1L/MY
 tRakSOtkBjQYqVrvvfLbmRmqcEhRvThMG5/cDsK4=
Date: Wed, 27 May 2020 10:51:09 +0100
From: Mark Brown <broonie@kernel.org>
To: dillon.minfei@gmail.com
Subject: Re: [PATCH v6 8/9] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
Message-ID: <20200527095109.GA5308@sirena.org.uk>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
 <1590564453-24499-9-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1590564453-24499-9-git-send-email-dillon.minfei@gmail.com>
X-Cookie: Drop in any mailbox.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_025112_695225_F050B2D9 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, noralf@tronnes.org, dillonhua@gmail.com,
 p.zabel@pengutronix.de, linux-clk@vger.kernel.org, airlied@linux.ie,
 mturquette@baylibre.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, sboyd@kernel.org, andy.shevchenko@gmail.com,
 robh+dt@kernel.org, thierry.reding@gmail.com, mcoquelin.stm32@gmail.com,
 daniel@ffwll.ch, sam@ravnborg.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: multipart/mixed; boundary="===============8026073178558925996=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8026073178558925996==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 27, 2020 at 03:27:32PM +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
>=20
> in l3gd20 driver startup, there is a setup failed error return from
> stm32 spi driver

Please do not submit new versions of already applied patches, please
submit incremental updates to the existing code.  Modifying existing
commits creates problems for other users building on top of those
commits so it's best practice to only change pubished git commits if
absolutely essential.

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7OOAkACgkQJNaLcl1U
h9BjiAf9Ffv3ggcuNoWfvMQqMqMQaCF/81yq+JEuOCOw+nSFwBift/d6Q7Z7HWCh
k0/gPFT+7ED90XyQWUYuDOrUuQWiqQn8UP5p2IhQDAbvY9Zr3jnDTScTPx4FSf9m
xGGbKV0iWy7z78mHngcLf++zQtDzzZLjhK+U4CxVz5htfuOkTdDeIorLUZJnYdBH
tZKEYJ92tDX3perBnTRtca5zIEIo7JWv6ITSh6UTFELxx0D44W6NOS7z2W3kZ7HO
KeUa7lsUfxWs5hF11j959HVj5BG0CFVa/cA4o2dGd5aaDwXjeASUzngGM0DqNPhY
KPzFjTZ70Yj4eNCZVnKrXNGoe9KAoQ==
=8sEd
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============8026073178558925996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8026073178558925996==--

