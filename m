Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9115837C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:23:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kb9vN4Y+aWMt285ZwLXkZfOcEs4E3M/yE9DpFrjaUGI=; b=EzzWZEyUWS0r6WrMeiLXlA5un
	QlXdLtH+aaei50QDKzwKMdDIbjkMrKGrj/T8/zVbmEF0ou9T42QGrEdWCzPq22bp9MEn/2zOobKuz
	I2xCkm+JkU1rrBz66is0dNwv04Kz4P5GXrCNFCKrrtyQJbbmTMlCFkLHQjqKpZ3ClYhgMK4Qv/Qkt
	6LGt+Gp3aZo5uCXHJT8hqYXe23ZHntAHRTKQdolgHYNQckIeWSR5RTXKAkoBhYvrea/RS8f1j/S3O
	tvdvxAgc1a2MtQIcCfogl491rBCRrYQouJ3zMsVnFA5/QbiJUNfaWdcU/PKMYkJSFGvM2Q7u3QWZR
	s2x4cGITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EeM-00025k-B3; Mon, 10 Feb 2020 19:23:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EeE-00025R-HG
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:23:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C67731FB;
 Mon, 10 Feb 2020 11:23:09 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4BB233F68F;
 Mon, 10 Feb 2020 11:23:09 -0800 (PST)
Date: Mon, 10 Feb 2020 19:23:07 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: Fix CONFIG_ARCH_RANDOM=n build
Message-ID: <20200210192307.GF14166@sirena.org.uk>
References: <245aede65d9834101efc9e470f50633b7052e1a8.1581362270.git.robin.murphy@arm.com>
MIME-Version: 1.0
In-Reply-To: <245aede65d9834101efc9e470f50633b7052e1a8.1581362270.git.robin.murphy@arm.com>
X-Cookie: No lifeguard on duty.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_112310_616262_AC64434A 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2136650915617192596=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2136650915617192596==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="udcq9yAoWb9A4FsZ"
Content-Disposition: inline


--udcq9yAoWb9A4FsZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 10, 2020 at 07:21:01PM +0000, Robin Murphy wrote:
> The entire asm/archrandom.h header is generically included via
> linux/archrandom.h only when CONFIG_ARCH_RANDOM is already set, so the
> stub definitions of __arm64_rndr() and __early_cpu_has_rndr() are only
> visible to KASLR if it explicitly includes the arch-internal header.

Acked-by: Mark Brown <broonie@kernel.org>

--udcq9yAoWb9A4FsZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5BrZsACgkQJNaLcl1U
h9Dkbwf+LdUH7bDz1wHrb8AzijXG9dlvLDtLR0fRGCny46ktng73Y9tExZ8l5XG4
cVXNMIBRBAbRL2SLYKBOVciZ7X83SN/Nk2dUNetz0USpDKpTtpjBE3Xn7Nt9Rj0s
4CSy7jG8cwXZjUMyiPr/dXtmeFOZEeEi2AuQl3z+ePQBGUFxWosYDSbCrAESEB+j
3dBcrgtNT4uZr6+MwWm01vFi6IirLVFDBeIPu6W6VUSzmE6ukw30H7ZfooLLqSYg
w+iIXB3xv9KBnukDr40aSSpSqzaNBZ8nhklbeVcIw6Tza/lW/oP0vbTmehD+veiW
9Fg/EuDS/amG2sRpVOkN1jj/mcHBYw==
=8VXL
-----END PGP SIGNATURE-----

--udcq9yAoWb9A4FsZ--


--===============2136650915617192596==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2136650915617192596==--

