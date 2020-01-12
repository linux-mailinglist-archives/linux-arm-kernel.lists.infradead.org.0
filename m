Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E17138818
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 20:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uc4wHe6ctx90PMp+q6Odn9sa3e0CHNCQI5ARd+T0uwI=; b=F5W
	52BS28xoD057R/EXH+XHv7hSylYbAC3X6ljyzxTGXCiBsVWYPbdzQbjnwaVt+ytV6rI9syrZky5IW
	eBi04oS9y+zCbiRv0zw54QUhPKNO6UFFC+wBwmuzgi69Y1xJYiranO3/a89ebbdSmtiSE1PK2ky7i
	v10U+YFqW11/OYos06J7+CaGrJ9cLHqVfO8kMkHs3X5khjuy/R/E4KxHs+HjzLIQTVER3BsFxlvIU
	DQc7qC33TYZBqtwkojqs62UKX+sxplIqOdcF56FnFo3/ycG30aHn8mgln4tmQ1sGPXhs/l61LfC1w
	jfN3YE8YELtBEKxh+V/2YUdbLZraXhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqjNL-0001Ji-9V; Sun, 12 Jan 2020 19:58:19 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqjND-0001Hz-Cx
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 19:58:12 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47wnZl5y5Tz9s29;
 Mon, 13 Jan 2020 06:58:07 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1578859088;
 bh=RKOZ+KdcBYQcF9ag1+KXaAKuqw8iJQvL/zzqvJPuVWY=;
 h=Date:From:To:Cc:Subject:From;
 b=JrJeekypbBbSNS4M2xqA8bGDnoncU4P+B/Z6ssxo1qb6058KvX3DDZH/l143bsG12
 ojgeHmuOiPd94wM2cbZGsESowmuYmLF4Lp2bse4vA7bCCUlleKHAHsYBDMSBkflNWw
 NPhPN6RQkhwyntQMTTrY50CBF+Wh86vrFDNC6j8b5DSmYdybT9NcQM3vnMr1gSTy89
 6yAaAWXVBb4BTqNxOkfsjGcVx0BkEeJ+TonaUdcKcfmUPtUbMvv7tuKveqyKQQ/yn1
 Wdddfabt0/SpICzBENOdMrTduIO/GOjEAV5wajfZId8DBsI7CfKUb5CKQhF7Lb1ctn
 NtQh3O+LFlfcw==
Date: Mon, 13 Jan 2020 06:58:08 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20200113065808.25f28c40@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_115811_597106_67A79F20 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yann Gautier <yann.gautier@st.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: multipart/mixed; boundary="===============1675161865872596549=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1675161865872596549==
Content-Type: multipart/signed; boundary="Sig_/UM6nfW.JtSHOQCmzDuvZ2HJ";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/UM6nfW.JtSHOQCmzDuvZ2HJ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Commit

  7e5d83981911 ("ARM: dts: stm32: add sdmmc3 node for STM32MP1 boards")

is missing a Signed-off-by from its committer.

--=20
Cheers,
Stephen Rothwell

--Sig_/UM6nfW.JtSHOQCmzDuvZ2HJ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl4belAACgkQAVBC80lX
0GzfOgf+IpncsQ3XUqU6+JhxmTJ/qxlVRmqjtF2BD0VTCaWzvLIpqVTngnd+tHk8
7FEi5i9JmhUmwWsd3C33unnbwpnemGCvNsl+oYxXG9IGne/z/JNihH3ExLBxQdK9
ODnyiGn4ar9piq10GgsdAf2s/qWOrQUabHKnK2RxUTVof4LEb8ktLzdMwkmg8QIY
+7/IwOk7gU1f+EqAp1G37KZ70nRYc5HCyCGJw0BwT0VBPDGBgPYf3DWexKFJ15TG
7VRDwUbiynwrI3O5jkB+CztjIKO21CVylQlUiaetG5hPOA7/aQG/NsWGQGNYHfKp
f9ruFlO+WAXgonMO6Beuv7xcdjpNrg==
=DlFx
-----END PGP SIGNATURE-----

--Sig_/UM6nfW.JtSHOQCmzDuvZ2HJ--


--===============1675161865872596549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1675161865872596549==--

