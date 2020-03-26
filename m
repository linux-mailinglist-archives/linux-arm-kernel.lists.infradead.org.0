Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8974194B83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SCFrs/FhE/i5gmdJYAlEYYww1UIzDrDTEIZwrKoYINE=; b=VdF
	mBlrb3MSA7mmsHDj9AKgDDFXNyri1UwvNJUKmeXmN90pZEabwr/JGkVJpc47aN4n3DiLnyYyvU+ic
	9ojFwlFaT+1DiEethR90EwqozWEM6uFqFF3ivq4XjbU13ohbIOeeIQ0ZtcVX92Be4MN5L5w7Z21gr
	X/1FlPFO3gKBLUlFInGRHMm7+s4iSgPKrEp8I2yIMWBcKvhMm0IQIYBUpd1Y3m/jZjQRE11XCV1gS
	YDnFZn2ggaHV7n7QHvrA+grbEWtj9sR0Yz1od4ZbVanBUC7S9EQ74igHmEh7nB1tryX+TXf8eGuVl
	9wLF6sTmUVJQjBIgiUE9+AG3hKeDU9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHayp-0006TM-76; Thu, 26 Mar 2020 22:28:03 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHayg-0006Sd-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:27:56 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 48pKPK1KNjz9sR4;
 Fri, 27 Mar 2020 09:27:48 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1585261669;
 bh=TTUfgK8iyycLNqBt/AiEmDKjm1TJOM+wT3Gze1ZAfoI=;
 h=Date:From:To:Cc:Subject:From;
 b=OBFeeCUk/cwaKUMd5zgGF1BMof6bjIeMzIguMLlyDQUAgtrQYbv7wQgcB2tW6AzkO
 Bc2qT6DLLdb5LleF8cZSIUnNxwaDEHdN5Nn2vbxKNjZBe9Tffd87OYb+SPPoGmu0mr
 AWBNfhD8GMhnQVQLUMWwsgWkrCOBF50UuhiR23So90sSt+kxM1GZ1soIFpj5IxKHog
 Ba3iKBpNxbhF84yVjQUyeXrt6SwLZB+yTFFtewWpAGuyk6uD7i+9Zek1bgQ8YgqnXQ
 PV1KQ1alBU53uPOABEEmzdztbRq+f6k3PMkf/IuBXP0JMLzDGVK45jl3u6gaOFfUT2
 u5BHSSZWbUx8g==
Date: Fri, 27 Mar 2020 09:27:41 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Colin Cross <ccross@android.com>, Olof Johansson <olof@lixom.net>,
 Thierry Reding <treding@nvidia.com>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the tegra tree with the arm-soc tree
Message-ID: <20200327092741.1dbd3242@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_152754_956001_14C0C540 
X-CRM114-Status: UNSURE (   7.47  )
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
Cc: JC Kuo <jckuo@nvidia.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Nagarjuna Kristam <nkristam@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>
Content-Type: multipart/mixed; boundary="===============1423422618839868949=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1423422618839868949==
Content-Type: multipart/signed; boundary="Sig_/Tjrk3Z.A=gzsIRzl_glEECC";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Tjrk3Z.A=gzsIRzl_glEECC
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the tegra tree got conflicts in:

  drivers/phy/tegra/Kconfig
  drivers/phy/tegra/xusb.c

between commits:

  5a00c7c7604f ("phy: tegra: xusb: Add usb-role-switch support")
  23babe30fb45 ("phy: tegra: xusb: Add usb-phy support")
  d74ce0954cb2 ("phy: tegra: xusb: Add support to get companion USB 3 port")
  58e7bd08b569 ("phy: tegra: xusb: Add Tegra194 support")

from the arm-soc tree and commit:

  f67213cee2b3 ("phy: tegra: xusb: Add usb-role-switch support")
  e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
  5a40fc4b934c ("phy: tegra: xusb: Add support to get companion USB 3 port")
  1ef535c6ba8e ("phy: tegra: xusb: Add Tegra194 support")

from the tegra tree.

These are slightly different patches (the latter has been rebased).
Also there are further commits affecting these files in the tegra tree.

I fixed it up (I just used the version from the tegra tree) and can
carry the fix as necessary. This is now fixed as far as linux-next is
concerned, but any non trivial conflicts should be mentioned to your
upstream maintainer when your tree is submitted for merging.  You may
also want to consider cooperating with the maintainer of the conflicting
tree to minimise any particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/Tjrk3Z.A=gzsIRzl_glEECC
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl59LF0ACgkQAVBC80lX
0GwyAQf+I5kTj3T8nDJGpq9RC07WHcKa32mVQgkMo2yk0xHSeyeD/pVxCFFUTAGM
Dbn3bOwyMiRP7eXlvvlMue8eIwqBa8iZefahef2i0CbV7nhKR8HLuvVJwspIilMP
IwA9rlKRT+ESRlP6c76oHbV43qSY6Bg1RtOLPw8CgqzcVFriItgDSbApN+VWvQSY
Fl8xpuqBhWajxLTjZULhQo/PpngggfPpTI2Z/PE2qBlh9HBQLAFYU/U2qcEaTah/
86h1R29S1m7VEuHlmzKmwyhB/Z8tt4zXRwhoN5ZdvLB9vXfrqT3HA015xZrPK12Y
/3jEJRBE5TZ4vM7QZ78S6h51LSEQsA==
=oWYQ
-----END PGP SIGNATURE-----

--Sig_/Tjrk3Z.A=gzsIRzl_glEECC--


--===============1423422618839868949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1423422618839868949==--

