Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51770EF0AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 23:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+2ZWCUNgQf/zPwcBPddNLsoaudyWKrYMyXTGqR2mbLA=; b=EfE
	N9gyEPif5IU0/7vuIbIJbiuxnU8p+N8uiKXnNhohI9vDVlm/ujMgx/uxFnsqGCiD42XzwKiQ7Li3d
	MUsolf5hfyfV01gwZeEUPICDntB60+P84Qh010MAGqbVTVtkhxSxRftF/KYFENJzfVbvtBl1h7SYL
	ZaElfW6kiXmI0LKhyFve+0T1ehqFLE8qkabPeIaO6+L9TnBH+IyiQ77jaIKn0QiuAwBbQvI3bzgEo
	snoWJw2BtlUib2sW7zk1AYiMqrkc3MKGXB78l7LVfkBRtALC9MKS1ovQjorrzD4cQr4i24ZuoFJ43
	Y0+9i5N6FZCn1TQSv4tt4ukMlpXAIiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRl0f-0000vV-Gm; Mon, 04 Nov 2019 22:39:41 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRl0W-0000sh-DG
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 22:39:33 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 476SQk0J3jz9s4Y;
 Tue,  5 Nov 2019 09:39:26 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1572907166;
 bh=9oLJgy9YhD2/uxYf9HCCJm4CgrXLkCKAqUiXoi7Lzm0=;
 h=Date:From:To:Cc:Subject:From;
 b=qCZfwWIeGg949YF6o72C31LNMDkkKUwtcNqN0j08fNYuzB8MHGKlEqt81xEtP/0Cl
 x348o6g69/g+bLLm/5aExm0eWwK9p6oLaALBeQEsorkv7ssimIaKRSjb2N42v/uGZa
 CigtPL0tZeX5ujIFCApkB8YTTYqFgbqPwiSXkUSgqOQZl8/8T+6Wf6RK65Rd3/lx6x
 qf9973MdWppY+BRsqHewyMHrlv2pLMkrD/35CTHpjrM/F/QBiejfVuWeRG1lS4d5R7
 nIognTgoS2osyNNHgQnk+DnamR5ls4JtR/FfDrB6LpZ4paYbKztHJOnhyEqh/U7pBP
 gNWdDRx/QIJ6g==
Date: Tue, 5 Nov 2019 09:39:20 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Andy Gross <agross@kernel.org>, Olof Johansson <olof@lixom.net>, Arnd
 Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the qcom tree with the arm-soc tree
Message-ID: <20191105093920.7869c1eb@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_143932_611066_190075EA 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zhou Wang <wangzhou1@hisilicon.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: multipart/mixed; boundary="===============3065028582502720278=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3065028582502720278==
Content-Type: multipart/signed; boundary="Sig_/N.KP0oVduH6feDqNG=/N3Wb";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/N.KP0oVduH6feDqNG=/N3Wb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the qcom tree got a conflict in:

  arch/arm64/configs/defconfig

between commit:

  af24cb20689d ("arm64: defconfig: Enable HiSilicon ZIP controller")

from the arm-soc tree and commit:

  ca1561a3d8e4 ("arm64: defconfig: Enable Qualcomm pseudo rng")

from the qcom tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc arch/arm64/configs/defconfig
index d3a289e12c92,0de751801c98..000000000000
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@@ -750,8 -749,8 +759,9 @@@ CONFIG_QCOM_SMEM=3D
  CONFIG_QCOM_SMD_RPM=3Dy
  CONFIG_QCOM_SMP2P=3Dy
  CONFIG_QCOM_SMSM=3Dy
+ CONFIG_QCOM_SOCINFO=3Dm
  CONFIG_ARCH_R8A774A1=3Dy
 +CONFIG_ARCH_R8A774B1=3Dy
  CONFIG_ARCH_R8A774C0=3Dy
  CONFIG_ARCH_R8A7795=3Dy
  CONFIG_ARCH_R8A7796=3Dy
@@@ -861,7 -860,8 +873,9 @@@ CONFIG_NLS_ISO8859_1=3D
  CONFIG_SECURITY=3Dy
  CONFIG_CRYPTO_ECHAINIV=3Dy
  CONFIG_CRYPTO_ANSI_CPRNG=3Dy
 +CONFIG_CRYPTO_DEV_HISI_ZIP=3Dm
+ CONFIG_CRYPTO_USER_API_RNG=3Dm
+ CONFIG_CRYPTO_DEV_QCOM_RNG=3Dm
  CONFIG_DMA_CMA=3Dy
  CONFIG_CMA_SIZE_MBYTES=3D32
  CONFIG_PRINTK_TIME=3Dy

--Sig_/N.KP0oVduH6feDqNG=/N3Wb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3AqJgACgkQAVBC80lX
0GzN9gf/ZVgW42+vigalmlsEuJfUi4o5+3pp/xfkPhZCycQypHIZnNKwPQ/pZT5N
Jf5jpxWHLXA+ScZSF53P1mJtFq9Xwty4wIC0qDgworyfy69F+PPBky3nSnkUVv6I
CSdufLshzxmJd5TCMzagS1WXY96t3Qkwo9FRkMTzpaS1Y/K0wYF3hr7Rj2wYBhgy
wneGoCMNp/DtgzkWrMuC+hJIJHyBfFh8x1zhkbvNdMn9eyqTHE1oPeXPDVcP7bBF
CuxO+/26ppYpkzmIJamWJZkHo9P3KO9cCIgdGNF/0uNvSMxl9aBm53Yxw7iDOhed
QJ4IrHVT1ATczepnbej766XETAwgMQ==
=QRTI
-----END PGP SIGNATURE-----

--Sig_/N.KP0oVduH6feDqNG=/N3Wb--


--===============3065028582502720278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3065028582502720278==--

