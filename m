Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB61CF3EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Io8w8fzJzZj+R37+YAF1dxclgRZ9nmolnZ4XRVWQ34=; b=cK6aLda18n0ZoICIL3k2p6Ew8
	3BPSOTvbgzMAIk+FCctpf/NntGpd4fdaWBRl9vVo4qhG+74cps6Ud+Lzq1YKCdk+zgBfeXKG8ES9c
	FgJ7zmFauoV4pQMQOo1uYQJGFhOPWEX3MCwi/1+BAjJj7E1hbaKjsKvMEMpXUGympP65RALsynAAX
	QJsP7+eD+nXtrpruQgZHvPAEnIXmdRD97Mst/OVrh49ghPKqX62LeJTHgXzCFk/TDAx/oXk0JoQjW
	AQp/SflXV0Ez+nOBMvwWyvCYVPRrm2x6ks+Xg0pH4MfM6RRQGtuBcMH9axP8TT0qkRZDtqU7bfFrp
	UaasS0f1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTaw-0000aB-E7; Tue, 12 May 2020 12:01:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTao-0000Zm-Pw
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:01:04 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3FF12072B;
 Tue, 12 May 2020 12:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589284862;
 bh=+19p5XIcv3Fn8caYpHgMAXmURP1D09S+oPCvaWwp5Gg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pdH9g8V1Wnza/+RRyA0E3HwWZfJuCA+O0RftPzXYidnRyEOmrg+fqVeFnT15HYN5E
 ao+bvWJv0ZYbdtEdWoQQuVRYU2KT2eY86F+B0XR3uxEwtaeu4QX3m1pS8i7MA30Bwi
 RFK73wwaeCQHOsM0YJ3lmZg+4a0fwVQEDHE0Mh4k=
Date: Tue, 12 May 2020 13:00:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kconfig: Update and comment GCC version check for
 kernel BTI
Message-ID: <20200512120059.GF5110@sirena.org.uk>
References: <20200512115458.4985-1-will@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200512115458.4985-1-will@kernel.org>
X-Cookie: The only perfect science is hind-sight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_050102_861692_9898D85C 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3264054940793631942=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3264054940793631942==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qftxBdZWiueWNAVY"
Content-Disposition: inline


--qftxBdZWiueWNAVY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2020 at 12:54:58PM +0100, Will Deacon wrote:
> Some versions of GCC are known to suffer from a BTI code generation bug,
> meaning that CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI cannot be solely used
> to determine whether or not we can compile with kernel with BTI enabled.
>=20
> Update the BTI Kconfig entry to refer to the relevant GCC bugzilla entry
> (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D94697) and update the che=
ck
> now that the fix has been merged into GCC release 10.1.

Acked-by: Mark Brown <broonie@kernel.org>

There wasn't a GCC 10.0 release, I was a little surprised at the
numbering of the initial GCC 10 release.

--qftxBdZWiueWNAVY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl66j/sACgkQJNaLcl1U
h9AR4Qf9F1XxE+Vn56m2unciMxlXr0EAz8M39EVa7HnGDcyTpVVF+x6QwCn/9h6K
PdvR8LmyNzPhjQn1FbZDj4n0E7VXIP+/Lblb7JAhsb8C+DKjQVQPi/08Q60EAsEg
zVF1eBMkZuTzxuQzu7luX89+8LR3hFw4Qx5MaRumsCLQCmG9Hd7tnVMNOqyoAR34
pUKyIfnP6S/qVpBFpiNYpNLMj0UxcO/BWAvWryERVqeSPsIUhOvfIUay3gNgz1bU
Y3uQQgZ8ryEmlgktAk3nWnrOcTLPXRqBwf4TFHGLVSlMR2cB2Jvu/Gw14vu0BLij
9Bei3S4uNdzoBZ+8ePvuujBz+7lPxw==
=U/Qc
-----END PGP SIGNATURE-----

--qftxBdZWiueWNAVY--


--===============3264054940793631942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3264054940793631942==--

