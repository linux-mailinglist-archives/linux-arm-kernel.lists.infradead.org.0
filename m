Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C37E9E5FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l38wK0Xm/Lt3MQy2b44xMepKEYR90u1WcHaFYi0iyys=; b=BxOPgJuKTA8/pwcOM6AKjacbb
	wS9PoAIUQ1bO5C5gq4JmrGTLwxi2RIlmOI/B+0ejRZNwMbZGomYft/YFhSsk5Bq6k6G+K89WHXMvO
	DwP/I1uCl34F77/4fMgYdNp0FD+DTa9ItM3mEpb85Z2/3nXACLD631tuHGH17wLwBxMT51a8u7nYH
	pznfrJ74Ki6lMHkwdn35+s+GRvv9EmNgd7IeyxpLXPSbB7B50ueCev/8c1Rh6cCTWWPXbBMA7W53K
	XV7VEHBrvB2DRiU7d6yf+1NwAUv05N6TpIHV8/kZEEO1Est7zM8hM43FH0/0MbCMKvqH5VIbp9bzF
	zyd8vUvWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YxO-0003T4-PF; Tue, 27 Aug 2019 10:44:10 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YxD-0003Sl-Sx
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:44:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UWpP6ASANjGbwqBx1gdjtA+jZ6LbnLc6oEyLnl6i6zA=; b=jEwtKJ1Y2lIRNkHGplE6Ps3ZH
 0JGFaedxuxOerP9ta8l3ibZ4633GzaanL+q2VhxSGuait022o7wFIUr9b1zdoh0GXJOG0hBrbXokg
 WB4IbMiMo9efixMQ6kj9pR/dzrY83khLeOo/TXZRbPC/nWk6RoOTnNoKL2xTxie/dtXb4=;
Received: from [92.54.175.117] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i2Yx6-0007sZ-Tm; Tue, 27 Aug 2019 10:43:52 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 6A743D02CE6; Tue, 27 Aug 2019 11:43:52 +0100 (BST)
Date: Tue, 27 Aug 2019 11:43:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 1/2] Revert "ASoC: sun4i-i2s: Remove duplicated quirks
 structure"
Message-ID: <20190827104352.GY23391@sirena.co.uk>
References: <20190827093206.17919-1-mripard@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190827093206.17919-1-mripard@kernel.org>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_034359_936182_06D91EF6 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, codekipper@gmail.com,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2686477927154271554=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2686477927154271554==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="15k5Fuw+yLfT1d9X"
Content-Disposition: inline


--15k5Fuw+yLfT1d9X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 11:32:05AM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>=20
> This reverts commit 3e9acd7ac6933cdc20c441bbf9a38ed9e42e1490.
>=20
> It turns out that while one I2S controller is described in the A83t
> datasheet, the driver supports another, undocumented, one that has been
> inherited from the older SoCs, while the documented one uses the new
> design.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--15k5Fuw+yLfT1d9X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1lCWUACgkQJNaLcl1U
h9BE5wf/e1I8LfUK6KLnXqxYzxIjCX6f4JtBiqFI99GurXQD/tNK1q7Ldszv3Cwc
diESenhKUbt+tMgtus6JWeI71/T2BN6A1fewE6n5rhLl/tny4kmlcIlBsZIPV2z6
WFmdU15AGyRSRBIRkQwGYBxA5ViTMQqeWKXtCenIkxypv06TsBqQr047rvlgFdEf
anti8BIGziPLJtyCkpU/iCV151N9K5priltDgw0FKN0nogcyUAUWXcaAjbQi0kQe
FYtUKi/Rl3XQKqGkL4h4Z80VTlXbq60QH1npUmR8Y0WpecEci92PJ3iOmqciwfe9
sbKc1Q/++txkY4XUgNv+RDvt9Q4/zg==
=bQV/
-----END PGP SIGNATURE-----

--15k5Fuw+yLfT1d9X--


--===============2686477927154271554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2686477927154271554==--

