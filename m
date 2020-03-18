Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFAB189BCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4tL2T6OUTZIPtRpUqvzP9yWNoJbwX2loy9sPeUZjMMc=; b=owoGG0DyhcUgYPljOHzs3INgM
	5zcDny6BEYxQ1ATxSyFDMsZOsQfzNK9t/bBp5HzFP9TCpK/XX2+js1rLOUkByWgQ6oEx/BzyTxG9N
	lbCGqKJLrwDt16pcYSvg6PUlq89lbEsNQzx0QJCyS1hCi7sQ3DqbmyU3mRJehk4Vmp2uEoW/qO2cq
	wD1aX1ODiIlCfArz7z0EMzTaRKW0cosvWrI5BUWNtovIRPeacZTZUi96CWXmMS3h0hW+UYU/qx/af
	MMfCN3urEYjdZRUsdzjJdSdfmg3aFcRHAqhF3U0ed6gcH5xdFKd0f9zuDCl5n05FhaxkMk2PimF4I
	3mZOfUoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXcm-0002IK-0r; Wed, 18 Mar 2020 12:16:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXcc-0002Hs-C1
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:16:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C48DE1FB;
 Wed, 18 Mar 2020 05:16:29 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 469443F534;
 Wed, 18 Mar 2020 05:16:29 -0700 (PDT)
Date: Wed, 18 Mar 2020 12:16:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: arm64/for-kernelci build: 3 builds: 1 failed, 2 passed, 1 error
 (v5.6-rc6-67-gcf89e8c383a6)
Message-ID: <20200318121627.GC4553@sirena.org.uk>
References: <5e715a20.1c69fb81.d52f4.2251@mx.google.com>
 <20200318082830.GA31312@willie-the-truck>
 <20200318120614.GA94111@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200318120614.GA94111@arrakis.emea.arm.com>
X-Cookie: Oh no, not again.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_051630_455205_6B6A8764 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 "kernelci.org bot" <bot@kernelci.org>, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============3641237428540789478=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3641237428540789478==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ncSAzJYg3Aa9+CRW"
Content-Disposition: inline


--ncSAzJYg3Aa9+CRW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 18, 2020 at 12:06:14PM +0000, Catalin Marinas wrote:

> If ARCH_USE_GNU_PROPERTY is specific to ELF only, I'd rather not select
> it unconditionally (and the option should probably depend on
> BINFMT_ELF). Following the pattern of ARCH_HAVE_EXTRA_ELF_NOTES, we
> could fix it up as below:
>=20
> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> index 4f00d50585a4..2eef3672de50 100644
> --- a/arch/arm64/include/asm/elf.h
> +++ b/arch/arm64/include/asm/elf.h
> @@ -238,6 +238,7 @@ struct arch_elf_state {
>  	.flags =3D 0,				\
>  }
> =20
> +#ifdef CONFIG_ARCH_USE_GNU_PROPERTY

That makes sense to me.

> +#endif
> =20
>  static inline int arch_elf_pt_proc(void *ehdr, void *phdr,
>  				   struct file *f, bool is_interp,

Though presumably this is all eventually dead code too?

--ncSAzJYg3Aa9+CRW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5yERsACgkQJNaLcl1U
h9BSKQf/cO/Rr0W3fBka2MfODtmqo9enDuCz8byeaS181lwR/F2CeNw95Zfsl2LU
nwxELaaqcxllaYwystjfO9jbteqn2yS9cBUYVASNQceVNpLb755NdmXVh5VcoNKr
reldK7EiF+Ou3IUtc8suhJr+3irfNX3TpHkxTGYozgHYbG0EH3Frbch69IREC7+N
Vr67TaL9TKiMG8ZbGZKLQYLilPwm2777IiBLognoAUwj9C27P6qbb0DOea4xTr9M
BmTxGgkN71ZijgqMP95DMWOFOqsdOV9rW5l6+qKwtkGJcZ8MwqbkSMKBtyGXPylA
7oWwnqY1g6Tn4ix8QnBw0xX56yHKaw==
=fm5m
-----END PGP SIGNATURE-----

--ncSAzJYg3Aa9+CRW--


--===============3641237428540789478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3641237428540789478==--

