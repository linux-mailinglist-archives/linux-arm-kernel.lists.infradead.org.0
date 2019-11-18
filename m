Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D071C1004B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y9qAUyPNL3tKX9bqkocMtH7UFdI2zKleM3CLi5xKBRg=; b=Af8hiSU8J5KRlKOyVPQ6GISd6
	Je5hBYQZBpQUKyvDyeWfS1eUkHaZEjj3qHYtCO3XUHI763gxUatNj72PdQ9BLvYviqk2NHe6JVwQS
	6tNfCk2YUxefpKcGs7EMMjyEkXG71pYxCpCpns1geajZFcKhLA2zYk8P92ta5gixwinpkzki63J8V
	wJDMo/l/XksgPD3TZiUv6vmrudqjDjQXxBj9UwPoehb0eoB9gSeNkKWHEGju5GqUPuQ7A0TUYzR/t
	3jDkwUNPKwh7agMdNGf1GOcXOdYROQp6ydVGUB3O8GdMZ5mifSZ5spqTHMdTxg04Ec7hQH5LNaOXW
	Y3sttC9Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfWz-0006Ve-MA; Mon, 18 Nov 2019 11:49:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfWl-0006VH-Ox
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:49:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 32D72AE15;
 Mon, 18 Nov 2019 11:49:06 +0000 (UTC)
Message-ID: <5abdcb0e0e1043a101f579ea65d07a1f6b91f896.camel@suse.de>
Subject: Re: [PATCH v2] ARM: dt: check MPIDR on MP devices built without SMP
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Date: Mon, 18 Nov 2019 12:49:04 +0100
In-Reply-To: <20191004155232.17209-1-nsaenzjulienne@suse.de>
References: <20191004155232.17209-1-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_034908_103922_8CEEEBC0 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 Russell King <linux@armlinux.org.uk>, "kernelci.org bot" <bot@kernelci.org>,
 wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============1689010335919516118=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1689010335919516118==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-y1N3c8/y6YfgQR8o2WoR"


--=-y1N3c8/y6YfgQR8o2WoR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-10-04 at 17:52 +0200, Nicolas Saenz Julienne wrote:
> On SMP builds, in order to properly link CPU devices with their
> respective DT nodes we start by matching the boot CPU. This is achieved
> by comparing the 'reg' property on each of the CPU DT nodes with the
> MPIDR. The association is necessary as to validate the whole CPU logical
> map, which ultimately links CPU devices and their DT nodes.
>=20
> On setups built without SMP, no MPIDR read is performed. The only thing
> expected is for the 'reg' property in the CPU DT node to contain the
> value 0x0.
>=20
> This causes problems on MP setups built without SMP. As their boot CPU
> DT node contains the relevant MPIDR as opposed to 0x0. No match is then
> possible. This causes troubles further down the line as drivers are
> unable to get the CPU's DT node.
>=20
> Change the way we choose whether to get the MPIDR or not. On builds
> without SMP check the number of CPUs defined in DT. Anything > 1 means
> the MPIDR should be available and matched accordingly.
>=20
> Note that if there was a rogue UP device exposing multiple active CPUs
> in its DT the possible outcomes depend on the ARM series. For example
> Cortex-A9 specifies that the MPIDR is returns 0x0 on UP devices. On the
> other hand ARM1176JZ's TRM doesn't define a MPIDR register and specifies
> that any unwarranted register access will raise an undefined exception.
> Overall, given the bogus DT, a reasonable outcome.
>=20
> This was originally seen on a Raspberry Pi 2 built with bcm2835_defconfig=
.
>=20
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Tested-by: Stefan Wahren <wahrenst@gmx.net>

ping :)

> ---
>=20
> Changes since v1:
>   - Rewrite patch description
>   - Use of_get_available_child_count()
>=20
> Note: kept Setfan's Tested-by as the changes only affect a corner case.
>=20
>  arch/arm/kernel/devtree.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/kernel/devtree.c b/arch/arm/kernel/devtree.c
> index 39c978698406..cd11742d9bc2 100644
> --- a/arch/arm/kernel/devtree.c
> +++ b/arch/arm/kernel/devtree.c
> @@ -74,7 +74,7 @@ void __init arm_dt_init_cpu_maps(void)
>  	struct device_node *cpu, *cpus;
>  	int found_method =3D 0;
>  	u32 i, j, cpuidx =3D 1;
> -	u32 mpidr =3D is_smp() ? read_cpuid_mpidr() & MPIDR_HWID_BITMASK : 0;
> +	u32 mpidr =3D 0;
> =20
>  	u32 tmp_map[NR_CPUS] =3D { [0 ... NR_CPUS-1] =3D MPIDR_INVALID };
>  	bool bootcpu_valid =3D false;
> @@ -83,6 +83,9 @@ void __init arm_dt_init_cpu_maps(void)
>  	if (!cpus)
>  		return;
> =20
> +	if (is_smp() || of_get_available_child_count(cpus) > 1)
> +		mpidr =3D read_cpuid_mpidr() & MPIDR_HWID_BITMASK;
> +
>  	for_each_of_cpu_node(cpu) {
>  		const __be32 *cell;
>  		int prop_bytes;


--=-y1N3c8/y6YfgQR8o2WoR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3ShTAACgkQlfZmHno8
x/402Qf/dDl/DgJaFBQiLgRKeAI9ObTcxdilX/sxqszha/c/kv60DZzvdWxjwzbh
pCQM0q2CCi0Z7ri1UCk3ugWb8+KAPg+RCFHdv1wMBlt9FclN1Qo24oHUfIqP8/dd
Rzg/GJIdzBonLnDIGu2AjgG7XnjlosfRhSDt/apFFTIT17k50FlKXD5pUPUorIVg
2PJmlr+ezX84CB1nArSZ5p2FQFLpdF1CV9mq85nraCuXtvy+h4DV+m9PBwYMDBs+
exNM1+Ir+PX/YE3Lukulw+U693Fn57nNRrTrE9562f8oyJX64h9IdeMCRLOEi2e5
Muiml1qK7GH4ptZuRZQIb+YiX+EB3Q==
=SjhS
-----END PGP SIGNATURE-----

--=-y1N3c8/y6YfgQR8o2WoR--



--===============1689010335919516118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1689010335919516118==--


