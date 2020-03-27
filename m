Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A4E195812
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:31:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fxXXXFHiNJdg87T4AojUTjPq6ePeAD1G0jQPI5+KnwE=; b=UdQJwNRmGG971Yop0tZQTd+51
	YunwOp29gndBUuCrzUyt6Zcm8Z3MUknv1ZLxU4O9We3sXD3whchp6nCNfj1du4PVmyYROiE/3Phfv
	o6PKEhc0c70dF7ra5qvXnkcJMl2Akwd8naGyNUWTBUprWVQdQRyloMFAGaBU/SS65654AoDTQyXWb
	tsjjt/KXxwYn8oyfpnlorv+ttXHGGWDinmTIhumF/Kx6lA90PebOB40mUdYjiBfnzbyrzY0ypxbri
	TFKlnTWxhy4dSJ0pj3xGTztaHBDSATF6awLINn0Xrcyq+JfAgmf7y4rD4cyuQivX4D5jyYeGfeUoT
	/yeDmGSwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHp51-0002wi-PK; Fri, 27 Mar 2020 13:31:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHp4s-0002mu-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:31:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A82C1FB;
 Fri, 27 Mar 2020 06:31:13 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 90C053F71F;
 Fri, 27 Mar 2020 06:31:12 -0700 (PDT)
Date: Fri, 27 Mar 2020 13:31:10 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: rename stext to primary_entry
Message-ID: <20200327133110.GD4437@sirena.org.uk>
References: <20200326171423.3080-1-ardb@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200326171423.3080-1-ardb@kernel.org>
X-Cookie: Drop in any mailbox.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_063114_578625_C7C6ED1A 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8125373865791814320=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8125373865791814320==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IMjqdzrDRly81ofr"
Content-Disposition: inline


--IMjqdzrDRly81ofr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 26, 2020 at 06:14:23PM +0100, Ard Biesheuvel wrote:
> For historical reasons, the primary entry routine living somewhere in
> the inittext section is called stext(), which is confusing, given that
> there is also a section marker called _stext which lives at a fixed
> offset in the image (either 64 or 4096 bytes, depending on whether
> CONFIG_EFI is enabled)

Reviwed-by: Mark Brown <broonie@kernel.org>

--IMjqdzrDRly81ofr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5+AB4ACgkQJNaLcl1U
h9CaAgf/dkMBIfZgW2mjV9aRBmjQMgPs7twiTUJANo8ORPJ8Ifgfjz6fTP3qwLbL
9C2nfjDCBuzh0kFZ+R1qXHmG34kx2nNz72yn+cGsnFk1M51McskMf8mtHcWBmo82
WbRSrOK4r+xPzqG3IllCTIh2c5qXAGwSQ0leBf7I4s+XDtfpCCbmcAdGKLAe8jJQ
5bTLneJjLjem7cX2GF5F7q922DY2nRNxC7l8jSafqYQUj90tBNxGVLijG4YUbNjE
TLkK85bQ6tBMQOynAU9BTZwM4/smP6sHKXpKYFGdWakqYhgMnlMcjdN9qPgpDmur
h2voziAPdokJ7sVU489wgBcpqeqnhA==
=6nuM
-----END PGP SIGNATURE-----

--IMjqdzrDRly81ofr--


--===============8125373865791814320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8125373865791814320==--

