Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AD555AAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 00:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LZIQtWkLqBzxedBm6ScqsgcuXGhk72hQ7FYk4fGyzZs=; b=Nwh
	bvJSCNyc4sR0bO9+twp1Jf28tAzgwtnn6E1L+CUE8/zTyzMieQJFwnBpWHY3hiG5U2oPfm7WAEOdi
	+xW3O+sGIpLG16mbG7bfPwzXpsd3q8/Vc7ztaseEcrEQHwnS2khvA0O7ntdhQcn+SqZMA922aJVs2
	py0PWXMQYEAd09l4slEf8MmMm07aXG2BwkBW2hS2NlpS6aE527aRLDQRaOy4yTg3g6fPB67u+cVno
	GyVcEILDwbCtC3vtrb2RYkFrKio2LUBuflOeYnHqRk/wiuLHOQicoaGingF1K6NwcpXVU3BhU9CDp
	luLiTPHIAZnkMgLsn0ix0rmkT5sXEmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftgB-0007tP-JV; Tue, 25 Jun 2019 22:12:43 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftfv-0007sF-Ny
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 22:12:29 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45YL4P65dxz9s3C;
 Wed, 26 Jun 2019 08:12:21 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561500744;
 bh=qGcg0SR74qg8KaugUHDJ6wMVcrBY0NX8Y49yabnuGzA=;
 h=Date:From:To:Cc:Subject:From;
 b=HHX4eUa/nr4lkU8qdHeG3aXxGHe7/AwJzIUB8QZjTiQPZJ1MCX1zr+LvSUAfQNm/f
 ZEhISklPbThfbBnLOTbqL+rNHo068E2YhWBuOClglbDik0hFMOrg/E3eBL4rfcmF5t
 HoE6Kao+0vxRyp9HnoELz7UxuFg0UCxaznskf9vhwo6FrFJx/N0JJxhWXh9ai0L/x9
 xdyFjbgdyGQWw315cT4LnZcHdk4Uv/u6iy7Rr0ppCCegwWSbWHYF77sX5ZJeTdtd//
 0P4DAWZZ34a3gGzi2MoQwYQ0bpB22sF9wqGTgK3Tm5oEQGrKudBdz873dRMXOtb3FZ
 7K0Tw4wXB2Tuw==
Date: Wed, 26 Jun 2019 08:12:16 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20190626081216.4b8f48cb@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151228_048657_C71DB3F1 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============3003779461144561043=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3003779461144561043==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/GQh29YaGsGpYJe2hGqtHNGj"; protocol="application/pgp-signature"

--Sig_/GQh29YaGsGpYJe2hGqtHNGj
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Commit

  cbbe88333062 ("ARM: bcm283x: Enable DMA support for SPI controller")

is missing a Signed-off-by from its committer.

--=20
Cheers,
Stephen Rothwell

--Sig_/GQh29YaGsGpYJe2hGqtHNGj
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0SnEAACgkQAVBC80lX
0GyiFQf8CptctZ1Pj9v17+202YzkdivpT2sBA0AUPMM+QqsZThc+iL9pn4s0a3Fe
N/CrSehYBDYGsmvTX8qU60lz8F4rDn7+ERmidTKSyknkQYjoihnybAaO57puj327
d6MhscD0iJgiBlDK1U+JPAXt3MQBLtadoIsUjT12+FprUuD5niU/Ie835MvYNhzQ
BXANackw3tb6o0WwFlX3gYDWCdW4vRLSJS4s6UawtzRmxFPa6nyxv0l+n6swhSrH
Pc2DjblZPICQ70g9MeG1Ysyo7ls1RXADUZF1Hlp5UGEiq3Rpbb+3YiegtThfRukL
q75crrUaGckyPtbZB37DJdheWvoG4Q==
=62Sw
-----END PGP SIGNATURE-----

--Sig_/GQh29YaGsGpYJe2hGqtHNGj--


--===============3003779461144561043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3003779461144561043==--

