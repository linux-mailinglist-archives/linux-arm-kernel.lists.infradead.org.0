Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCA31BA74F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 17:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zKiRAx2dbtwHij10PQlkH4mNHLg50vOUH43UqLby+ag=; b=vCblEATYFIquZdYv/Z7r1Ddp8
	8paR/vFlSzHYkJoGl50FUn2LdXFrAapTDylccB3TD1xioShfCv9MHpRfSIuMLX+1op+sPa1KVq42l
	DZ4DcqwT6utKGluBoJkQMkLX2n9+KFWI0jjxSzLeyBkd9TBWnEKmlOwSFmqJnxa4DbHj3n7Adwyrc
	gJhrj1hWuPKYB+CVJMLXp5/yf3YdALi6ROYhRkkmbW0XPl0y2YEfbtUorQLz+Z+yrvIbe92dcqdLQ
	ZZk9bYz0n0XHWcY/G3U012BnH0NHMB9urdnAPD4NWSvZPwuaAKG3zUZ4Rk1P+oGDl3/e08OhJmWuy
	hMvJnPiIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT5Mh-0002wa-CR; Mon, 27 Apr 2020 15:08:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT5MT-0002vk-0t
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 15:07:58 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AFFD206B9;
 Mon, 27 Apr 2020 15:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588000075;
 bh=hqW3/Kz5iizbXBkZ8xZJ5KBQRgUsTo4srBZedkUXdec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MKP0DBDeY0724ZOj7LY/OLBd0kLZ2S2Ug1ZiBs+cnpWi/zgGV45/rdI1UQMAvkL9G
 3DgC01KM55PD0XklL+r/C3wT0eZyiM+zmssaEVk8qZT21jt/+bLHz3ZtfEP2Kcw2/R
 chFW4Seu0r5j2N3cQBaSVBBILPsiBJV5ZQ6BgS2w=
Date: Mon, 27 Apr 2020 16:07:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 05/10] arm64: mm: Mark module text as guarded pages
Message-ID: <20200427150748.GD4383@sirena.org.uk>
References: <20200415130750.18645-1-broonie@kernel.org>
 <20200415130750.18645-6-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200415130750.18645-6-broonie@kernel.org>
X-Cookie: If your bread is stale, make toast.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_080757_084514_4709F6BB 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6186161169787778111=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6186161169787778111==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="48TaNjbzBVislYPb"
Content-Disposition: inline


--48TaNjbzBVislYPb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 15, 2020 at 02:07:44PM +0100, Mark Brown wrote:
> When the kernel is built for BTI and running on a system which supports
> it extend guard page coverage to include executable code from loadable
> modules.

It turns out on deeper testing that this doesn't work with BPF so this
patch shouldn't be applied just now, the rest of the series isn't
impacted.

--48TaNjbzBVislYPb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6m9UQACgkQJNaLcl1U
h9BSWgf9FBlGC7BIWfVLT1gWY8Ku/dWkQTkPjmbQmrdzjAzQiiQKIgWH/sK/Evh5
SBOT7zp98/8cKwpuDmEMjPX2xWbc/RInp16VUmiPluVhF2ihOQoBlXCvQWZ5H0x4
XXF+HDukRRlaKCSsErhD//GoeMw3DwGKcohnGaAUnDeEq/Otpswb4ffjopKKWcxX
SmcPYKuWwXwu9WSXthwBmLh+XsPggMqTPyBf5NUstCKT9DNIjO/fB2zNFRCSoKGm
iNtRxtbZKRFF/lQEVK+GNK+jYTH5BRAq2hU1BFPKerTOHrPoMvJj893H49jAej0v
727aPAzXy4Wa48cfqlxLHRKHlDrRqQ==
=cUj0
-----END PGP SIGNATURE-----

--48TaNjbzBVislYPb--


--===============6186161169787778111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6186161169787778111==--

