Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBFE14AC60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 00:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y/WDozgL3jBv4Si2zLbih8ZnPpB8g7Zoftw1QXkHjeo=; b=C9N5deoifIbwzXpw/gPkUNKmg
	nSKLLvjYhijJj4jNXYBRVPmSi5qRc4iLMKZrZjn8u0GI2hGI60HM0WowI0EY5PbpQq6Uu/fQG3hHV
	rki69fUtOIRQhHNlwymPmBU9mtVEoKD8+ZIRohKPlF2GYzcHjcyVS74Afl/kkPBHQ6hLcBlj8VzOn
	CnWmZaHdlb9wNQ4Ghknts/uWlhycqIfRRnfDNLJVhM8yhd4omFAflgF8EkTmueEHciOCuS5vivHB+
	Qj35OqfkfnBRM0pg6GKWkQpAPt9I1qVNiwiImGV3rmrbTWqhp6KiaBj1wnk0hj1eiUg74Qhtre0rE
	4p4qbSSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwDOR-0005g3-Ds; Mon, 27 Jan 2020 23:02:07 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwDOE-0005dD-N3
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 23:01:56 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4864xm1tKcz9sPJ;
 Tue, 28 Jan 2020 10:01:48 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1580166109;
 bh=78sdNMb+RLhT6XH34jtbdrHO6Tz/8ZmBy31ugbsYgQw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SdxY97OZmSb/QjbaudWj5loLFeBqo6Fw7wlH6HD+/MqiIBdWDZyUeyGK2r8/fgfix
 vxRzshwvNI/2e2dqeecxd0E7oAorXIs1FCilvC/kBJQuICd2K4Tgv1HnLtkXqMddv4
 4c15sUeoRy8hEHJ7ka8l/i5dOjt5hJIWG12gtqSpBkfGKZV4D4S9FxzQtkgR4p4iys
 aW6HH+GFp9zOTLYvYk32LT41UGb++zdOvrI8H7ydw7yb2KfIez00Fvj6gotrCFVpb8
 Q49mdVtks+7ZpCz1OUGdufS+qaZmbrFpKI+IbxeL2ard2XP2iHUBUj75dYfF9toXth
 FAl/Kl7soYTWA==
Date: Tue, 28 Jan 2020 10:01:47 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: linux-next: manual merge of the generic-ioremap tree with the
 tegra tree
Message-ID: <20200128100147.38b868f2@canb.auug.org.au>
In-Reply-To: <20200113162748.698470fc@canb.auug.org.au>
References: <20200113162748.698470fc@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_150154_931432_60BA61F5 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Colin Cross <ccross@android.com>, Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <treding@nvidia.com>, Christoph Hellwig <hch@lst.de>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2505417087940579996=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2505417087940579996==
Content-Type: multipart/signed; boundary="Sig_/T4SNtqPH4nx86JBf/cX43MB";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/T4SNtqPH4nx86JBf/cX43MB
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Mon, 13 Jan 2020 16:27:48 +1100 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> Today's linux-next merge of the generic-ioremap tree got a conflict in:
>=20
>   drivers/soc/tegra/fuse/tegra-apbmisc.c
>=20
> between commit:
>=20
>   02676345e9b3 ("soc/tegra: fuse: Unmap registers once they are not neede=
d anymore")
>=20
> from the tegra tree and commit:
>=20
>   4bdc0d676a64 ("remove ioremap_nocache and devm_ioremap_nocache")
>=20
> from the generic-ioremap tree.
>=20
> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.
>=20
> --=20
> Cheers,
> Stephen Rothwell
>=20
> diff --cc drivers/soc/tegra/fuse/tegra-apbmisc.c
> index 4a737f15e401,a2fd6ccd48f9..000000000000
> --- a/drivers/soc/tegra/fuse/tegra-apbmisc.c
> +++ b/drivers/soc/tegra/fuse/tegra-apbmisc.c
> @@@ -157,21 -159,13 +157,21 @@@ void __init tegra_init_apbmisc(void
>   		}
>   	}
>  =20
> - 	apbmisc_base =3D ioremap_nocache(apbmisc.start, resource_size(&apbmisc=
));
> + 	apbmisc_base =3D ioremap(apbmisc.start, resource_size(&apbmisc));
>  -	if (!apbmisc_base)
>  +	if (!apbmisc_base) {
>   		pr_err("failed to map APBMISC registers\n");
>  +	} else {
>  +		chipid =3D readl_relaxed(apbmisc_base + 4);
>  +		iounmap(apbmisc_base);
>  +	}
>  =20
> - 	strapping_base =3D ioremap_nocache(straps.start, resource_size(&straps=
));
> + 	strapping_base =3D ioremap(straps.start, resource_size(&straps));
>  -	if (!strapping_base)
>  +	if (!strapping_base) {
>   		pr_err("failed to map strapping options registers\n");
>  +	} else {
>  +		strapping =3D readl_relaxed(strapping_base);
>  +		iounmap(strapping_base);
>  +	}
>  =20
>   	long_ram_code =3D of_property_read_bool(np, "nvidia,long-ram-code");
>   }

This is now a conflict between the arm-soc tree and Linus' tree.

--=20
Cheers,
Stephen Rothwell

--Sig_/T4SNtqPH4nx86JBf/cX43MB
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl4va9sACgkQAVBC80lX
0Gzpkwf/Y3cS+4tdwI4W3ADy/ezYjTMGdmurHl4vFJ8VX+50j3jVWfFxBupi8RLX
fvwVtbyv0zPn50RpsdP6y4JzHQg0N0RmFH8t3ygGWbxWYHQlDi+m3qlyjhL/qaJ7
kbgnrcmM6/Vl7tTbaEIEBR76rIkEACJDAW1x2CFZu/Amr2ILOn6VbpiASu6QUlG6
YuQkxZt0HLVF7lAPf5Mj/40Ku7xspz7ocEBE0+dwORW79oZuPxuafVuMu8oyuvOT
RoxrJM5ve5sD8BlHhtjKSDh0t9X4MY8WmN1NKhxRmVASbs5NEuvD9keXs95qy7cf
NjFqPrD0g0wyCI6yNfV8Ak+Aimjt/g==
=IEkV
-----END PGP SIGNATURE-----

--Sig_/T4SNtqPH4nx86JBf/cX43MB--


--===============2505417087940579996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2505417087940579996==--

