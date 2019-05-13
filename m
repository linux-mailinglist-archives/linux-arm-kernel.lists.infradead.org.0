Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8A71B9AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FJ5TkQXmkuNcIbyTwNoGtap9C6mQRGpX5sdYOBKErSE=; b=tCpBr9uwfrDcUPD/I9z7VySQy
	xb4g2O24YjgsVVvswFzFXumIulWZe3/lb+gBzRYq6X/WLrbBzgZAXYsRcen+EjQ4bPsrh3mIwDpgD
	R6/01JqoFGnnJdEJDVC7ghSVmMmrjBINqExo/fEpg27xnM3lT5k1iAZ/vAkNdHrN0YsBzB83L5Toq
	DGHEztMmvuliGhuyqcOOlQdgJzV2Efyo3avMoutggb5k4/6zOm5IwO/5Fm0fdHNxMYaSh/IjaXw/5
	xvAnG7VsBROig3gEclLjMYmu2eWJ5RGVY4uzml0m3f+DAyrhkuLkKdWpD6/kAOcfa0qHTJ9iBmTiz
	+rgjqzj4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCfN-0005gW-1K; Mon, 13 May 2019 15:15:01 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCfG-0005g7-68; Mon, 13 May 2019 15:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nUnk8pejhcO5Z924FZ0roh4pW5qijEZRFlwLliQ8Z5Q=; b=O9OhftS0n18P/X9QQ1hEFyijp
 V8Q1F/1sBt/n7I6x+S+giQqNwNgXGyWlY+k/yHe2N/Squ/r93RroVmi10pzYuPhtbKaG+1vSpeFrA
 qxLMRte6kxc608EZK8b2P4VI5g9ZjVQQfJSmzJd6Xm5h3Q1EMVz/soT99bHZudAK29/LY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hQCfE-0006rg-AE; Mon, 13 May 2019 15:14:52 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 2D3FD1129232; Mon, 13 May 2019 16:14:50 +0100 (BST)
Date: Mon, 13 May 2019 16:14:50 +0100
From: Mark Brown <broonie@kernel.org>
To: kernel@martin.sperl.org
Subject: Re: [PATCH 4/5] spi: bcm2835: support effective_speed_hz
Message-ID: <20190513151449.GC5168@sirena.org.uk>
References: <20190223084952.14758-1-kernel@martin.sperl.org>
 <20190223084952.14758-5-kernel@martin.sperl.org>
MIME-Version: 1.0
In-Reply-To: <20190223084952.14758-5-kernel@martin.sperl.org>
X-Cookie: Must be over 18.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081454_367281_1146C7AA 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4628338548351382258=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4628338548351382258==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Content-Disposition: inline


--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 23, 2019 at 08:49:51AM +0000, kernel@martin.sperl.org wrote:
> From: Martin Sperl <kernel@martin.sperl.org>
>=20
> Setting spi_transfer->effective_speed_hz in transfer_one so that
> it can get used in cs_change_delay configured with delay as a muliple
> of SPI clock cycles.

This too.

--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzZiekACgkQJNaLcl1U
h9BSTwf/TAxVYCmKUlukCF4emOMZMaTxRry36W4e1gJaSpAzWTMypCBKOwx32o0R
DRGb4z0ZX8smadkw66yG1vu4wB9ZtgxOR0bD4OQi7b0uAEiK0nt1fVosXTnpnhcB
Pi9Vv1vUlNchha8WZ8VXpF4mY1SgxHtn82b1OJ8FX9eXgS0RUuLgVTIZGXaqLaBb
oLoURMHmAPkkKGZ1cxfWuYbxC0w4ufc4qsieqbdwROPb82GQVdzZWkuY3ZRDiFzj
BOpO7pZbiIGmwoVVYMgnssB2v2zGQMoiqzMgWD3695PVfnRnqnjdsX1BibwsegD1
kCc+qEMQA5gKHAUZMNHqQxc6cVAedQ==
=tSRe
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--


--===============4628338548351382258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4628338548351382258==--

