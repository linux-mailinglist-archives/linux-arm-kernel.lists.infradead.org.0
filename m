Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7C0E4FAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N4Cq4QBvIbNxucmq7dCust5vVJfROQWbFzF5eD2Zrjw=; b=ffs48Z9e/yaxm1mH3Oh0/8vfy
	v+OMZWCRSF+991eORgbdP+bbdPjk7YsoDBCWoU/dw+4cWTtIgKHpkPQt6eQMTFT/tOFQ+YjPz3SH6
	41d4GvOk4YuNDs6u9ywRuHTdg+FTK0SOB1HdurL7JkEij3zjceCIUG88OfMq83qn8mAN9J9lO7oNZ
	YliUQE0ZUZzOsDxqXQ6DiE7iAHTtQDBGWyM/zYcAmqGFzBNOzllwVCjs1IeqzSRXbYn7neTt7Dvp4
	l+c5vMpnUw8Zz3wjIXMSb8Pxz9rKF05dkPqzbKa4Ytq3ML1i/nbfqQbXS/n8iwVMF0tR8rRc9ht2l
	pJtO+jVxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO10y-0003zH-D8; Fri, 25 Oct 2019 14:56:32 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO10n-0003yh-6m
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aF6JPZTJ/gBdIJwVCjuZWdvm5qo4nqf8GBjBjU4VHfM=; b=KhSrz89GlOX23Pdcc/m/CEld3
 js2tGCBFwjdMJJ34KizZkriCuEs4NYx5Ro5d1rNJ46rh8JBbTBv6pFyOMal5DlyU5GMO4Y0rIho2S
 bxS3FKE8dzctMQEiLrCHnnYT5RqBoJcg0csb+wB6zSoSWXrJOd9CcxKeM9J0iHNnbCQFg=;
Received: from host86-174-61-171.range86-174.btcentralplus.com
 ([86.174.61.171] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iO10k-00075b-CM; Fri, 25 Oct 2019 14:56:18 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id B0C42D020AD; Fri, 25 Oct 2019 15:56:17 +0100 (BST)
Date: Fri, 25 Oct 2019 15:56:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 10/10] mfd: mfd-core: Move pdev->mfd_cell creation
 back into mfd_add_device()
Message-ID: <20191025145617.GI4568@sirena.org.uk>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-11-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20191024163832.31326-11-lee.jones@linaro.org>
X-Cookie: Keep out of the sunlight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_075621_244115_455CFC2D 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, daniel.thompson@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4025848735751270642=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4025848735751270642==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NzX0AQGjRQPusK/O"
Content-Disposition: inline


--NzX0AQGjRQPusK/O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 24, 2019 at 05:38:32PM +0100, Lee Jones wrote:
> Most of the complexity of mfd_platform_add_cell() has been removed. The
> only functionality left duplicates cell memory into the child's platform
> device. Since it's only a few lines, moving it to the main thread and
> removing the superfluous function makes sense.

Reviewed-by: Mark Brown <broonie@kernel.org>

--NzX0AQGjRQPusK/O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2zDRAACgkQJNaLcl1U
h9DO/Af/VagCkEQfGNe1Ncjxx+a7IFEhDSC4yzx8fMlWxETMK9yPwOBSBkR89NQZ
pzaIK3X35Zh9LM/H8ptRf7FeKzJ8BeO3j0ck1uCAcJrvT3O4vzso8kdC1jwVQ/O0
hHd/+39lnnDfsP3OhZjMtAGu9EZy9klwIrHmj7PKXtJ2Cn3jXUlb4qUSBujNtEHY
TXtxGhUrHPpJBEjchkG/36VYbRhG241EBxxPriQ5vRC5dm4YIbdpkeiYLQhB0Js2
tYQPsXSkGg7flTuGEtPZMhKXHt2TnzzKPmUcK3R4ikyCvO8Lt9g6VDIUiaeRM+jS
wb1JBPSFwuy5dYVsQ9L1Til/GDq6Aw==
=LFpK
-----END PGP SIGNATURE-----

--NzX0AQGjRQPusK/O--


--===============4025848735751270642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4025848735751270642==--

