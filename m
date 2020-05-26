Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98481DDFA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 08:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vFNOOP9NlPy+JCpq8PMeGSA6uGK/T8Bjmj080/CFcys=; b=kq2
	AloLXQoJs9E4XtZIy657CY2zLSpc9aDPssZR0AiLtGp2U0kY0fdpKuSRnaXtxEZ2yZgzmkKDsUjkJ
	U4bp/GevEhPJakOo3mtUFGsbAp0RT3ex8uqqq8Vp88t+d5iCX3u7O/cW5EskHXxAkc8euyK2wENGu
	R1OPs7M3utSlfq9fsOXtEj4OJB0aXeZIma++X/sARaehQzCizlAxFc4iC8HacgD5XSYkBMduXkMv8
	lh7P4UQu52zGb1ujSXgig09m7UuXOVRCUDjYbjqkGp3Hw1PMPWse36trkQ+mws+u2uQYoHNecUld4
	3yvg0ScrDtP+FnByWf1GMUPdvsdxWuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc0mH-0004aO-4I; Fri, 22 May 2020 06:03:29 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc0m7-0004ZX-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 06:03:20 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49Swry50w4z9sRW;
 Fri, 22 May 2020 16:03:14 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1590127396;
 bh=5xtALOvjXPu9+VIHx+DjHhfQ7lMYUJslakvA9myhjeE=;
 h=Date:From:To:Cc:Subject:From;
 b=iglyGk6+nnULH/rR4mLcFQxPazAC5WdSixdnMzqsGe89Y0ZA7Jj0rcIf4HZurYoGi
 X9+Qo+G+KF8Meg9LMc8CzHTFhEmx8xTWbZZyBWL9TIBhSk+z1dGbANcOWM72jP+Ja5
 dKo1aOL9SIGg4HU5kvStKezaXbeSsLeYJpbksZ2OkJq5gSVcD8FhxBBuvz8shjSgD+
 pxrwfyKTzwpyClCvt58Uk1EK/G6TsHiyBM//WT7h+0Bocc4MftL6SH+eyoPmYgF1yL
 3ENIKCN4g3Beckqlsn/vMBl8vyHiN/bk/fvqEnvi6uIg0W+v/s0vi1XC86UglSUZfF
 th9yVpCkgnc4g==
Date: Fri, 22 May 2020 16:03:13 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Rob Herring <robherring2@gmail.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the devicetree tree with the arm-soc tree
Message-ID: <20200522160313.09cb2b7e@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_230319_434453_ACA0401B 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>
Content-Type: multipart/mixed; boundary="===============7761969180776003975=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7761969180776003975==
Content-Type: multipart/signed; boundary="Sig_/QbwZfQx2./5yGC/hXftR2Wc";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/QbwZfQx2./5yGC/hXftR2Wc
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the devicetree tree got a conflict in:

  Documentation/devicetree/bindings/arm/socionext/uniphier.yaml

between commit:

  82ab9b6705bd ("dt-bindings: arm: Add Akebi96 board support")

from the arm-soc tree and commit:

  9f60a65bc5e6 ("dt-bindings: Clean-up schema indentation formatting")

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

diff --cc Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
index 10a7f0752281,113f93b9ae55..000000000000
--- a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
+++ b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
@@@ -51,9 -51,8 +51,9 @@@ properties
        - description: LD20 SoC boards
          items:
            - enum:
-             - socionext,uniphier-ld20-akebi96
-             - socionext,uniphier-ld20-global
-             - socionext,uniphier-ld20-ref
++              - socionext,uniphier-ld20-akebi96
+               - socionext,uniphier-ld20-global
+               - socionext,uniphier-ld20-ref
            - const: socionext,uniphier-ld20
        - description: PXs3 SoC boards
          items:

--Sig_/QbwZfQx2./5yGC/hXftR2Wc
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl7HayIACgkQAVBC80lX
0Gw6BwgAhFvWcg5SSYtJw1YMJsT40nojg/Dlx0xpMSOVTN1daICIyOsaWdFUm2hV
A9mVMv+b1kQ4kgwStXr7hA5qyC0MYrWLMDbK8VY47N+/F6BLjEqLnJMAUUQQmraW
l2bllFGdlzv74Yknu1uCUmkDVgBx17WzTPrmMbxvjDwg+MmBGC65L/tWZw4lJHtx
2xMAYHfdgeTZxpRZnUZjG3v9i1GwGbgGCwvsTQh9hVWHBO1qo4fJ5F+Qah0d76Ql
3i7b7IRZAVFUSz5YPzcPUdmJDy8Dyn1mgrOKi0kMuiqUJa2XOvLw/oJP2njoi8V8
kh+cv2C2DdkhA7n8gc+4Hq1Rn1axOw==
=Ow6Q
-----END PGP SIGNATURE-----

--Sig_/QbwZfQx2./5yGC/hXftR2Wc--


--===============7761969180776003975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7761969180776003975==--

