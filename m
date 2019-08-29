Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C440CA2AAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 01:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hYJZM0Lb5uwgFUhHhIgD7JP7SliWy9xUkdrsD+O1wP4=; b=XRY
	2INkO8UKYzaM70XbQRT1E1LFWWsAxE7zc1IcHUgRiArG8juJg2apmtS2EbixzCg69ep7sLEPWvNuN
	YXt+JklnPs81oTA7Ugyv3ItuyZ3miu2SE8mGkTmLstrgN7KiDckWhLyvjze9/nqxdRb/cokTNAfSk
	8nqVIqg1J/UnLYB8aNRCRybSEGvj8TnBwIOlarrKFYoJPuinsxQqtNnyrPvii3kFTY6Zgrm+E6+/W
	fGSwG+I0yuximPA/h8L/4UrDsZaG12q8kBK/K7xBrJDKHEQHE+AjW/DvkP8GB5rWxkmAUBSjT61J6
	/YyD03P/twsIyTaRMBnTkBapRzyl+yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TqJ-0000lq-Fq; Thu, 29 Aug 2019 23:28:39 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TpV-0000kz-M9
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 23:27:51 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46KJgH5xGxz9sDB;
 Fri, 30 Aug 2019 09:27:39 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1567121263;
 bh=UfcRSwYE9spgr+2+ZF0IOHcyXNK3kyHA9hjL+z+pNAY=;
 h=Date:From:To:Cc:Subject:From;
 b=vAZ8YcgsFOf6ArBh5AOEIs8uVHHmuTCAmdkWFMPVAxxKed4anYoBJcGtPa5i1cZOS
 bLrV97zw5IP4Y/7kER2JB4Vy0yo7MghlIBmvcCXe5DDQKJa5DHDCqlKkcAiD/QU2Ms
 bsD69f9lJ4X/T3nerPzjzbHMFLSmwhUhBKWIvjDePrlTGUiFzvU6YbdYGOY8NsmFO3
 5CKYPsYSKskClcOiy8OiOpx9znHen0isBcmmeIhZYxYoO7emQfqKQManmhJCEPHR/g
 BYRA42KIGXrEXUBC5CBiaP850goWxnFwWZbiz+Nt6VcyL/etbvGJNzgcoKWaHMxq+x
 fyDxS32CTCOMQ==
Date: Fri, 30 Aug 2019 09:27:38 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>, Russell King
 <linux@armlinux.org.uk>
Subject: linux-next: manual merge of the arm-soc tree with the arm tree
Message-ID: <20190830092738.7ea1abd0@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_162749_911478_02431E9B 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============7819239454361016119=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7819239454361016119==
Content-Type: multipart/signed; boundary="Sig_/9XIVVuQ29CllzNagSrKU5OP";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/9XIVVuQ29CllzNagSrKU5OP
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the arm-soc tree got a conflict in:

  arch/arm/mach-iop13xx/pci.c

between commit:

  4af014984273 ("ARM: 8871/1: iop13xx: Simplify iop13xx_atu{e,x}_pci_status=
 checks")

from the arm tree and commit:

  59d3ae9a5bf6 ("ARM: remove Intel iop33x and iop13xx support")

from the arm-soc tree.

I fixed it up (the latter removed the file, so I did that) and can
carry the fix as necessary. This is now fixed as far as linux-next is
concerned, but any non trivial conflicts should be mentioned to your
upstream maintainer when your tree is submitted for merging.  You may
also want to consider cooperating with the maintainer of the conflicting
tree to minimise any particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/9XIVVuQ29CllzNagSrKU5OP
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1oX2oACgkQAVBC80lX
0GwbdQf/WdGTg2s+eoOku0Yr9tkKP2qfeL4WYCNXem0P4J7WZd/0dSDdWcOKXmdu
pDJVBbsE9M1BmAcGbTTNMSjfyuHuw8fMie0SGwTJ+ohQRyBhhSYgvsnsQDnqbhqM
8+ojEbBZAkpdRLJHKIbqtmrikRbLCXi2rl0qh788aKmd43dX7hlFyCPOWxr56SHx
VYS8p4qaCHdqHwBIDU0ewrSre4FD9LBZmvWslVVdL/PjwvhMT+cKO0dix3HJXXUi
4gCqzH1Dt8/B8fWMn+1XElmecjCeQbC+YqRnU1iSUGhl7Duwup2dZ44UhFv+/mK0
pDuWl5nLt2D04wpuitenhemhtE87Lg==
=ddop
-----END PGP SIGNATURE-----

--Sig_/9XIVVuQ29CllzNagSrKU5OP--


--===============7819239454361016119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7819239454361016119==--

