Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FF31AFE8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 00:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PVDAcbhAxKEBUsEfAOw7UEMCQTsaUk/Q8bm7F/Ef6tI=; b=hifdQpjZKuLB9n6DqlaQEKBKH
	10X3w/QRDBjSczb8E3lPXo0u04/d9LMTevSOnLZTk8wiWINw/qhsGAwrDXjmRlv5HL12BbYj5VqKf
	QBWXRYGDscAMrBJVOX8tvzw7VE1KYpKbdgsXc4i5WPU9xWctPB06NOZMnX6UKTf6CQg5Vv6W2lqiQ
	qfD3ByCA2fdGs+4zGSYo58ljMzwBAc+cYb58LkSxoXftwyq5DeXzBvonEmP6k5tmNbVvojxRJOomS
	LatpSQY9thbxIwsN+nBcfI3XaBRMVECqoN0U/BX0080EpDuCFbcJNVhWEeT8EXzyx5YGicsHhW+k+
	BQCPa0x9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQIBz-00048h-OQ; Sun, 19 Apr 2020 22:13:35 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQIBr-00048C-Mb
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 22:13:29 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4953xc47Ynz9s71;
 Mon, 20 Apr 2020 08:13:24 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1587334405;
 bh=wLVpaNSxTtVI5w3cfiCfglkr8HdHqtPyrVsLSqIPPAI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G5aYRIYeBqAkKNBDhJS4UyWkmVlho5rWFXGYsjfvXOw0T3LV1HCVyRrqbRZRrj29U
 UZ/FuLVlYrzYUgx1gmFB74iAKfaiq9FCaE9JZnAikDWq9Th6HOh2Wu0dh3tvK7Dl7R
 cAcSJJi9GgsrKbk/hpb+QAdRKtzMHQSC3Kf8xqBlURWbP84MkgrjNCqXBS6I3CjbFA
 A0wx05cb+lH4LhpEHPXidq6KdesPvJutSl/RhNV81FHR8b2HoguqNxhQytvymKtFvw
 /kdWHwSvoD9XD8Dth8DNeVhRQCJpEjXk76dXirDemn0CYRssgGG0r+OaaiaA43oaG4
 93oiZogp0C67w==
Date: Mon, 20 Apr 2020 08:13:23 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20200420081323.4fb9889b@canb.auug.org.au>
In-Reply-To: <20200420081154.597ffa59@canb.auug.org.au>
References: <20200420081154.597ffa59@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_151327_895046_2182F9AC 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Lindgren <tony@atomide.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2667261243830003442=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2667261243830003442==
Content-Type: multipart/signed; boundary="Sig_/.6Jav1OWfrSdugNA3N4SosL";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/.6Jav1OWfrSdugNA3N4SosL
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Mon, 20 Apr 2020 08:11:54 +1000 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
>=20
> Commit
>=20
>   512e8d40f91d ("ARM: dts: OMAP3: disable RNG on N950/N9")
>=20
> is missing a Signed-off-by from its committer.

Sorry, that is in the arm-soc-fixes tree.

--=20
Cheers,
Stephen Rothwell

--Sig_/.6Jav1OWfrSdugNA3N4SosL
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl6czQMACgkQAVBC80lX
0GzVYgf+LH0ceV/2XzPHskkEx8/eSOjbfxkqrqIddxUvltjUUKSb+sUI4TUST+66
cElZ9LG1RDhzD21bhD9zRcKsYZ9RghB6MRI9pAZePh1bSQ0Qng/1+ySLMhsbLO1d
PvYuxw6QUunDHmhaSnj65q83UyqysTMVSVzf3QOkDpRp4DfC0pgK1nkFIl9YpvIB
x9PCDUhWnbE8ltsaW8t9PqN8YpQBClRpHuwfaN1syV9o1ONrhXAXci5e0DQxzT3x
bwAu/tCyQ9AU9bKPpt8Nr8Adzo/QkiGpgHzl/Rjv/KlI3XrdZSLyjrukR5hlHARq
OZmoyhjnnWd4EqZRryXKWG9w5+VIhA==
=5Jpb
-----END PGP SIGNATURE-----

--Sig_/.6Jav1OWfrSdugNA3N4SosL--


--===============2667261243830003442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2667261243830003442==--

