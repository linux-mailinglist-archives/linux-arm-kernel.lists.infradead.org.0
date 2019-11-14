Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B5CFBDCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 03:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UtHC61+kpf5Yi+Zmhb0VeW+N2Q0AImyJLoEFB13HrHE=; b=Qz2
	puxL6LL7/P5uhLP4b4Y9Qmmz+2twrUENzPcLZ/8BHK+SoQBjOushi+/ecJrY7Mn6osDsyrU2Pv7h7
	MKN+EASsgaa8KKIry1EGPwCoXW78nR774MLovwbjNqHUdCVFFkxeKIJgjpFuWKRkTykFcnM8lagzo
	h1S9vjoMhyy9d51h5YraGWP6Tai+OFhPnai0QdPoOlwmjscTsZrdjqY9FkQca/XWTKGuCO9XU6+aV
	Y1yZyK0HJb7LAY7k/1rkljlMiTGyhF1PdFGN7Vp22prWlg1JLBUxzSZuHZoaCyPz14Yu09n/SKilb
	JBX0580yn0oCM/cS6goriNbaeC2fpaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4la-0007DE-Ga; Thu, 14 Nov 2019 02:21:50 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4lT-0007CS-F2
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 02:21:45 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47D4wt0X4jz9sNT;
 Thu, 14 Nov 2019 13:21:33 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1573698096;
 bh=shChhN5EF9KgXRXrKBtuHFrRtChjGLsebmVlDt06m7Q=;
 h=Date:From:To:Cc:Subject:From;
 b=mVGXWZyInQ8ZghGJNyWcbcUdSEEWLCCQizt7pEjGbYO653gWawqyJ1FAbGvQCkS7L
 JY1YndT+cXSwGCiqHeIVOqCAT8af23iPhs7if4uIFz1YLzqFzFFA37WacNN1JkfZDK
 6+hjsHxa94WVia0ZqOEWQGJyxryGnEkNbAVkwrHmWpjzEmHDrMwL7xJGsaT57ovSf6
 IpddjfzX7Yz1YnlY1c05Pz1xYnbXzRyNHnIuhSktJWxp91HHub7CWV8A7Htrqa0ORV
 5KmZp8jlJIewQca4ME2k3QWka3PZXflLMYsDvKD+EJiP9i0GgoFYxvipwP4xNxYvl3
 2wI5JjmfO7gUQ==
Date: Thu, 14 Nov 2019 13:21:31 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Rob Herring <robherring2@gmail.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the devicetree tree with the arm-soc tree
Message-ID: <20191114132131.56089c64@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_182143_705120_B8CD587B 
X-CRM114-Status: UNSURE (   7.34  )
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
Cc: Marian Mihailescu <mihailescu2m@gmail.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: multipart/mixed; boundary="===============6350817823803066203=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6350817823803066203==
Content-Type: multipart/signed; boundary="Sig_/BB1LBtqI5ejPny06wVC/iyM";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/BB1LBtqI5ejPny06wVC/iyM
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the devicetree tree got a conflict in:

  Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml

between commit:

  577dd5de0990 ("arm64: dts: juno: add GPU subsystem")

from the arm-soc tree and commit:

  3afd6389f320 ("dt-bindings: gpu: mali-midgard: add samsung exynos 5420 co=
mpatible")

from the devicetree tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
index 018f3ae4b43c,c9bdf1074305..000000000000
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
@@@ -21,11 -29,8 +29,12 @@@ properties
        - items:
            - enum:
               - amlogic,meson-gxm-mali
+              - realtek,rtd1295-mali
            - const: arm,mali-t820
 +      - items:
 +          - enum:
 +             - arm,juno-mali
 +          - const: arm,mali-t624
        - items:
            - enum:
               - rockchip,rk3288-mali
@@@ -34,16 -40,8 +44,7 @@@
            - enum:
               - rockchip,rk3399-mali
            - const: arm,mali-t860
-       - items:
-           - enum:
-              - samsung,exynos5250-mali
-           - const: arm,mali-t604
-       - items:
-           - enum:
-              - samsung,exynos5433-mali
-           - const: arm,mali-t760
 =20
-           # "arm,mali-t628"
 -          # "arm,mali-t624"
            # "arm,mali-t830"
            # "arm,mali-t880"
 =20

--Sig_/BB1LBtqI5ejPny06wVC/iyM
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3MuisACgkQAVBC80lX
0GzqRgf/VJZvk856gDSfif6dvyn2qDIRlIUcPqIyFw/t3FyYMGyzMFBvdeY5kgYL
7iLDz7NSrMYfKnjUDL/HxiSAcAKUxuFu0R5hDpwnJqWda7pvWsLS5dY8+e8cIiOG
S0XhpMwZSksWHvIekdZPtVmEDh5DYoH3NWDAVhMehrVs93IV9fe3eqcAHyYSBeZ2
+iLBXn/j0DKW9kmRouMvk7rIAscozbgMXjH6CjZ9WzVCXnYnL134vdQu0tr4XDm+
CCQcy3JILuVhoBxvDhqWTy1njJsKV6+zkFa3mF2rlRbm0ByIID3xS5SnJPi5MRc2
lbja4SfiZ8hsQKel+Ga4OXIlXCAgag==
=w8qt
-----END PGP SIGNATURE-----

--Sig_/BB1LBtqI5ejPny06wVC/iyM--


--===============6350817823803066203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6350817823803066203==--

