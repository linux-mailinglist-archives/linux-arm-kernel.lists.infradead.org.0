Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1DC1C7D2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 00:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cG6SWE6FDXNfSsKkaWOzhfqE/APJx9MchoTB1XY7/dc=; b=hcUHfXcyx5Ir8ieLt6Pudnuwr
	U4AUOaySBE+xsEveGl59qDnrl0p9eSDrsVthiKLKeUOmVoFqU28vau3iI5ts+K876FfNN/IJCzXZM
	YaQOeC7gjM6dXwMxfkKLmyavPXVjxpTL0u52+YiZOMq2zABqQ9P3+zhimicNKd2ZZKB+fMgaMg6dN
	tYdMViqvvZ000ErbH0qPwKOd3nDcFZWIQAbD4HwhZStep84sb8TmT4A8HgQ5HT3X2Y+et6J97bE1R
	TIHF9JNXoVUO3WMi6fxvI+fcogc158zEtN/BO5SEaFiRUzX41lIFRZQjtiUl9p45vdtdtdePP+dMx
	I6xriPvPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWSOF-0004e8-48; Wed, 06 May 2020 22:19:43 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWSO8-0004cf-RS
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 22:19:38 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49HWGk1kvcz9sP7;
 Thu,  7 May 2020 08:19:26 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1588803569;
 bh=cvnMZTLI2KRIxxSUz/K4Hmuh15cwPhFtGK6dZGCUSU8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hnOw9cEZq94+CAbYxDvqRzI/w57/afztYTZ+FX1zfjWIdL6dcEIc1v78Vm34ivBLS
 JCFWI93rNJHn24szr9SSUp3UNkq6w8XXqkyidtzj7h0o8RrehTeEiIxoJoWmbMAXku
 grM/NSreaRTmeb//r4TKY6fz7iTN2+Zhhl27wTy/O8slmuvEq7jyjJaTq0md6RohG6
 /mFbWUjqznMutDBADLNpYHrQCI4yHhfPjcaIuwigPnhS+fxSvYQeJftMSWgUeofgFR
 /90VYp7Lf39sc+vHVezRctIR8LOPIbRN09A3D34xQuXn0qzt4bSyTs4xQ+5kOGe1dd
 dv127hcYpVniw==
Date: Thu, 7 May 2020 08:19:23 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: ARM: futex: Address build warning
Message-ID: <20200507081924.7c77bfc9@canb.auug.org.au>
In-Reply-To: <87pncao2ph.fsf@nanos.tec.linutronix.de>
References: <20200330134746.627dcd93@canb.auug.org.au>
 <20200401085753.617c1636@canb.auug.org.au>
 <877dyzv6y2.fsf@nanos.tec.linutronix.de>
 <20200402090051.741905cd@canb.auug.org.au>
 <874ku2q18k.fsf@nanos.tec.linutronix.de>
 <20200413100112.2e114e24@canb.auug.org.au>
 <87pncao2ph.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_151937_048814_6D8BC6D0 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Al Viro <viro@zeniv.linux.org.uk>, "H. Peter Anvin" <hpa@zytor.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>, Ingo Molnar <mingo@elte.hu>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7377456640980949135=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7377456640980949135==
Content-Type: multipart/signed; boundary="Sig_/ScnmteIMj_Vg.3wJi0L3LjA";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/ScnmteIMj_Vg.3wJi0L3LjA
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Tue, 14 Apr 2020 11:07:22 +0200 Thomas Gleixner <tglx@linutronix.de> wro=
te:
>
> Stephen reported the following build warning on a ARM multi_v7_defconfig
> build with GCC 9.2.1:
>=20
> kernel/futex.c: In function 'do_futex':
> kernel/futex.c:1676:17: warning: 'oldval' may be used uninitialized in th=
is function [-Wmaybe-uninitialized]
>  1676 |   return oldval =3D=3D cmparg;
>       |          ~~~~~~~^~~~~~~~~
> kernel/futex.c:1652:6: note: 'oldval' was declared here
>  1652 |  int oldval, ret;
>       |      ^~~~~~
>=20
> introduced by commit a08971e9488d ("futex: arch_futex_atomic_op_inuser()
> calling conventions change").
>=20
> While that change should not make any difference it confuses GCC which
> fails to work out that oldval is not referenced when the return value is
> not zero.
>=20
> GCC fails to properly analyze arch_futex_atomic_op_inuser(). It's not the
> early return, the issue is with the assembly macros. GCC fails to detect
> that those either set 'ret' to 0 and set oldval or set 'ret' to -EFAULT
> which makes oldval uninteresting. The store to the callsite supplied oldv=
al
> pointer is conditional on ret =3D=3D 0.
>=20
> The straight forward way to solve this is to make the store unconditional.
>=20
> Aside of addressing the build warning this makes sense anyway because it
> removes the conditional from the fastpath. In the error case the stored
> value is uninteresting and the extra store does not matter at all.
>=20
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Link: https://lore.kernel.org/r/874ku2q18k.fsf@nanos.tec.linutronix.de
> ---
>  arch/arm/include/asm/futex.h |    9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>=20
> --- a/arch/arm/include/asm/futex.h
> +++ b/arch/arm/include/asm/futex.h
> @@ -165,8 +165,13 @@ arch_futex_atomic_op_inuser(int op, int
>  	preempt_enable();
>  #endif
> =20
> -	if (!ret)
> -		*oval =3D oldval;
> +	/*
> +	 * Store unconditionally. If ret !=3D 0 the extra store is the least
> +	 * of the worries but GCC cannot figure out that __futex_atomic_op()
> +	 * is either setting ret to -EFAULT or storing the old value in
> +	 * oldval which results in a uninitialized warning at the call site.
> +	 */
> +	*oval =3D oldval;
> =20
>  	return ret;
>  }

Any response to this?  I am still getting the warning ...

The warning was introduced by commit

  a08971e9488d ("futex: arch_futex_atomic_op_inuser() calling conventions c=
hange")

Which has been in Linus' tree since before v5.7-rc1.  Should this go in
via the tip tree, the arm tree, or will I just send ti to Linus myself?

--=20
Cheers,
Stephen Rothwell

--Sig_/ScnmteIMj_Vg.3wJi0L3LjA
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl6zN+wACgkQAVBC80lX
0GwZmwf/aePLWiH5arcTzhuOXIsMsYUaw6sCxEllNlLA36DHq3f4kC0k8c6NeDIY
hD91S189DeTo9UBXSebPNQ0s3YnypjcURfRAEfY3tWzxjAJDV9f2WR4z56y6j4ML
HF26mQ1OvX0So+blF7IUlfkP/f5aAWuyWRMEhXGV0Iios0w219NwLW30hbHbU5F/
GBeSE31PDPL4P+hxypPhubB6E8pH/H8LkgdFeezbDx4qLIBgQhKR8kGczi6Jbxmn
1F6HMqPkVLMoeMBy7tTUV2uxLPRLgDHo4jhHurQLQ4LrGvIMdzEgFau25xwStNOL
4dL7EHIuSvFiYPtAGpjeRFY/HKrpuQ==
=qjow
-----END PGP SIGNATURE-----

--Sig_/ScnmteIMj_Vg.3wJi0L3LjA--


--===============7377456640980949135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7377456640980949135==--

