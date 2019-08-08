Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AD386D27
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 00:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K3GrtLoJEQuHYi9h/oyWDn0Rsy4TTxPsdl18Q6I70Hw=; b=GhFEmlDjeeXWLLAQgRSBu//D/
	+Tdsc3WZp/6vywkEfoKP5v1JE9xTXmgHXrBDYcp+8C4Dbuopugxw6VOIuLPLro/RgQGZbeOBtm7Dq
	cSCeDnTA9fjYLL3pp/QCQbZiwWyufppILy24mg7U3NjQdh7jdEztK6zcHTdOe0NBJbCivqICC7sv+
	PtQV7qcw8ogkPuOJWh75JBO1x8hfkedqNnyqY/EVFuPSXdmGaV5EzWtTbOWRs1ehk/txMWRtYUgMw
	CM6Z4bw32cFYJTOlOkHLqJY0ygpZADShsTkXoLeJCOj/Y02dipmtBRp8169KQ7vsXCrOJnFKxLkYv
	d4xkvtrPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqpj-0005lF-K0; Thu, 08 Aug 2019 22:24:31 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqpU-0005cV-V5
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 22:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CiEMLkgHGajJ+S7I72ZRbI8J7SWrJ8WWjs7jCf+7ejA=; b=XzTgQRKOpMPcNVm19/fjK2NKn
 gbcyvI50SCZkj9gpPdA03kw37BV1nyEBViCYHxfIGU80E5dScLRBJhBD2923bZplbjZW/LQnGt9ij
 bi01zdTjgmerrxLHVQhidSyL8PwUt0HTOlKhS0q73QYazG9iS9IlGlVgt+iCFNGYMf4QU=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvqpN-0004Dp-F3; Thu, 08 Aug 2019 22:24:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8BD112742BDD; Thu,  8 Aug 2019 23:24:08 +0100 (BST)
Date: Thu, 8 Aug 2019 23:24:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 07/22] ARM: omap1: move perseus spi pinconf to board file
Message-ID: <20190808222408.GS3795@sirena.co.uk>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-8-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20190808212234.2213262-8-arnd@arndb.de>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_152417_074042_DEACA5CA 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>
Content-Type: multipart/mixed; boundary="===============3865990759370637320=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3865990759370637320==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kVhvBuyIzNBvw9vr"
Content-Disposition: inline


--kVhvBuyIzNBvw9vr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 08, 2019 at 11:22:16PM +0200, Arnd Bergmann wrote:
> The driver has always had a FIXME about this, and it seems
> like this trivial code move avoids a mach header inclusion,
> so just do it.

This appears to be part of a series but I've no cover letter or anything
else from it.  What's the story for dependencies and merging?

--kVhvBuyIzNBvw9vr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1MoQcACgkQJNaLcl1U
h9BTcwf+PZNQyv2QwRk6+uATv2Z/5jBqf59MD6hu+nPG7ZvewRhifHBZ0Wn0oGIy
LKuN77ve2quiHJEaXWc+6uMdkTKzHf0dq7PXzkSHvdGpKY8oXpfv+JxIP1fbvLU2
LjgoKVq4QXXKOwQKuPuBt6G5MFmPXLsTLnxo0C2CA8bBYHUhY1YNpslOiDbmN7kY
si0Og/am+P+msK+XEDu2s2waVhOEA9JhUJzNBSLvqdZnVrbKflMnJ1f+lqGPtJuf
G249qyMoeuoQoq7XX2OmvHk6MPxgjyFnANG88Pmz7kITgyC7M8cQbeMDsox6X5Wf
yZd+9ZI1XiupoEyUNs+MRVRuLA77Dg==
=Q0wr
-----END PGP SIGNATURE-----

--kVhvBuyIzNBvw9vr--


--===============3865990759370637320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3865990759370637320==--

