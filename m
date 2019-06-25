Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A935551F7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 02:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dJN+ZKoCPbeJbXAv4DfKHLcta4OntL8pQNpJpW9ZVc8=; b=Hn8
	m9ZTGybDrnTvMFICuPL2a5LWwl8T9YSA38y7Y+XOrBgViM8/T45QZ97IJCc2SyVpqmdJ2zoxdVuaA
	17B3uxO31h8oj9PGQcJtKxqo031TMThiBAqcFTz29XQt+iBKMiUPXCb/yKIQ88PXqn4fVl6wFkfOk
	Aa/xLYEen2001PyuUxqAXQS7h+ZSVob336M4w8rpcosAdz7vR2D1Y4utKbjcDkXkjk38F1MFqeU3N
	C/QTDtebW6xyqsnjVTrlRaNF9dA96qZesMjhnEBBk0db7SiLmmF5pB5GojsdJf/RgvoYo4Gx8ISPB
	1+Lm7QXcSOx4rtphzduFn/UaOunsieQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfZ50-0006kv-GB; Tue, 25 Jun 2019 00:12:58 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfZ4s-0006kP-Pw
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 00:12:52 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45Xmnl2h1kz9s8m;
 Tue, 25 Jun 2019 10:12:43 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561421565;
 bh=RF29SwNLX4Zp9qVZfkr5djvyTLxzcCy+4KGrM+1AKnI=;
 h=Date:From:To:Cc:Subject:From;
 b=cp3t67y8c8l/r4Jag48reE22yUnEvjnaaX6jknHDb6CUA0Pe9I6s5k/zeuIKGWvtU
 /OHxlSIXMtIWWQylErpcngefKTIbmU59oMrUBzLlUvHe4YlzdQ7fBCZlK6DWqns3n/
 65l+TfOGexQt8N9a2afBUe9vMjEm24kWUC+8f1WUu7vNp/UFx6CV5rD0fyWgBuUMVI
 Kz8KNehD8U76S4QvqDYgIdcdjmJt45hwMqPzKQwNnmPrPtLwju1STRZxcEDFi7c4lp
 ZsNOdm3n2THJwSlKKb45vt0SOeGrmiQItgi+itaPTkz7iv0louHkmiHiXRiEnO9laX
 +ldf8kOGAs8tg==
Date: Tue, 25 Jun 2019 10:12:42 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Colin Cross <ccross@android.com>, Olof Johansson <olof@lixom.net>,
 Thierry Reding <treding@nvidia.com>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the tegra tree with the arm-soc tree
Message-ID: <20190625101242.2eb0e418@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_171251_073305_AE959469 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Vidya Sagar <vidyas@nvidia.com>
Content-Type: multipart/mixed; boundary="===============3591728206846816798=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3591728206846816798==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/j/50enT86+rbCHdAEI3eYmM"; protocol="application/pgp-signature"

--Sig_/j/50enT86+rbCHdAEI3eYmM
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the tegra tree got a conflict in:

  arch/arm64/configs/defconfig

between commit:

  39bab7bfb7d9 ("arm64: configs: Remove useless UEVENT_HELPER_PATH")

from the arm-soc tree and commit:

  01d6fb565b4a ("arm64: defconfig: Add Tegra194 PCIe driver")

from the tegra tree.

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
index 3fb84219817a,6a9dc67bbfac..000000000000
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@@ -192,6 -191,8 +192,7 @@@ CONFIG_PCIE_QCOM=3D
  CONFIG_PCIE_ARMADA_8K=3Dy
  CONFIG_PCIE_KIRIN=3Dy
  CONFIG_PCIE_HISI_STB=3Dy
+ CONFIG_PCIE_TEGRA194=3Dm
 -CONFIG_UEVENT_HELPER_PATH=3D"/sbin/hotplug"
  CONFIG_DEVTMPFS=3Dy
  CONFIG_DEVTMPFS_MOUNT=3Dy
  CONFIG_HISILICON_LPC=3Dy

--Sig_/j/50enT86+rbCHdAEI3eYmM
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0RZvoACgkQAVBC80lX
0GyVIggAmVr73GQ81DwKSfIkq5h/1I8FVxzB15jIuKSJe868pBbsapfalgxBPqmN
mHU1B1F/pi+QOzHwu9g1aJOfVhSER4xGMmvRs7d3JMEvcuUqQUs9HTee24XnnUZr
m7ozG8h2o1D3tjs03ZlIJPKHv4UXZ2c+07y55UvazAUJdXBzSrBJOu6wg4LGtSxr
eLv338Tp9M/y86OhGpWw6C1ZLtQ7rgzD0kNnC8fM5ABdsKIl6/fs/XisCPqkCxj7
cL1/7DMD6lTqHUex6wPidEpH7gn8Db9TovLmcbO2bn6X54oIymb0x+3XgG9PMQ0/
b14+mH6qzYZNU9keacK+Nrm8fRThAg==
=ReDA
-----END PGP SIGNATURE-----

--Sig_/j/50enT86+rbCHdAEI3eYmM--


--===============3591728206846816798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3591728206846816798==--

