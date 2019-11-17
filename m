Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CCCFFBB7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 22:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f5SBRRnGz62yfGd18cSyY82qWq6mZ2b09lmV80gaxN8=; b=Avp
	VYlT3CEryXVyc2cSLc6+WQq+OP49b9N28dfa0K8fPd0D6kmijkLCbe6j6J+UwdAlFLs881SzHiaGV
	JNcsCWdlFI12ipe7A4eW5MrM8gX7PqwRh+Vi1DjR3ypd6nzh/BHlaO+Vy44w28END6KbFObtZv6/c
	55L6IeuNUBDCpBCzM7Kle3ggPb6DnyppWzW3aF6gFHJplXtoFFBu3roQVhduhO5t4OzsV4YAPNnnM
	QgELXNY3gpyRO3U7+aildwEi+diVXOl8JYIrb+k5CeRopBO2Bba6uK9qc6m10zHd80CNvQkNyKynq
	Ov5Dl/3Rq02o3ha2Acc2mE0TCMNuFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWRuU-0002pc-BT; Sun, 17 Nov 2019 21:16:42 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWRuM-0002oK-MX
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 21:16:36 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47GPyx3WLxz9s3Z;
 Mon, 18 Nov 2019 08:16:25 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1574025387;
 bh=pPHlo48yEc1CtacGM4xou38J36W0+FgI5KZCO70rz64=;
 h=Date:From:To:Cc:Subject:From;
 b=M7iDKIUx7hvI9as+zZSM1HZgbbdxGDEha5YB/wwbnWfhJal5D/gOfwgc9BhFo0v0z
 eUKPxSMvLYDJxPX3I5Tt0GU3ss5GnshR1ebvJwXE92HDxH1aHSW0pdv3EWcSmVXGha
 46LgNcNmQYSOQFFoZ1hN2svefTmLNprFt/yDvdmvkqEDebvWhm6HPXtG8/RlDdeqT5
 6wUoJCBL4V/+9U/hJeFLx+301ic4Ow0IZrl3EvDA0ip++eiet9CbkJlKpbj7TaCjs5
 nNy36IIHw8OUqbE53cSxQROxmPoYXxHDMfAaMphBBFo5hc97t63gwulWNMtFlW7H+l
 bI2liSOFzD4PA==
Date: Mon, 18 Nov 2019 08:16:17 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>, Masahiro Yamada
 <yamada.masahiro@socionext.com>
Subject: linux-next: manual merge of the arm-soc tree with the kbuild tree
Message-ID: <20191118081617.2b7c61eb@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_131634_899839_0E07BA6D 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
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
Cc: Lubomir Rintel <lkundrak@v3.sk>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1226570825213896540=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1226570825213896540==
Content-Type: multipart/signed; boundary="Sig_/Y5vKrcCIUoU3Eg+ILrp_ua1";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Y5vKrcCIUoU3Eg+ILrp_ua1
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the arm-soc tree got a conflict in:

  include/Kbuild

between commit:

  fcbb8461fd23 ("kbuild: remove header compile test")

from the kbuild tree and commit:

  32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")

from the arm-soc tree.

I fixed it up (I just deleted the file) and can carry the fix as
necessary. This is now fixed as far as linux-next is concerned, but any
non trivial conflicts should be mentioned to your upstream maintainer
when your tree is submitted for merging.  You may also want to consider
cooperating with the maintainer of the conflicting tree to minimise any
particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/Y5vKrcCIUoU3Eg+ILrp_ua1
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3RuKEACgkQAVBC80lX
0GyG5wf+IQ+Q+2LXKtHpHFQjdvYsU3UOP8T4Rl/XI8B5ka8hii8IFEKmn/3gkNem
YZEYcLyOblvKPwe7GD1NU2BSoowgn+hW86OhAmHg5E6WC0AXKuZIXNj2wm3DNnjg
VvlA2WZJ+gXkSZb22fDkrFY9E34eRNTwptUco50cFaYFE6zaTlW6YM8O/cqphFwP
vnDI5jlJ/JLbjWhXUalOTHKOejyL1pJQ0L1bD6w3xwMBtPB0y3dddTUb17/eLxxk
UswLa0S4sSVkLr9Orljwyzrox5GKff6D6nBUDn38qYbk6XOpZJEfEEQYo6OqdZOt
LQ5/uh1JjrEnqpMU6+F87E+cv9GgNg==
=XRv2
-----END PGP SIGNATURE-----

--Sig_/Y5vKrcCIUoU3Eg+ILrp_ua1--


--===============1226570825213896540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1226570825213896540==--

