Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFC6A8088
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 12:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Bd2X2oXN9Gcr3zzEiIyMQ/NvQXsmKcgoxXLag7TWPUA=; b=Xhl
	h7OHkMXHPCCq6nDGZ59r2mv2ZOP3RuFH20qjx17Qhfb4fbp3BvpReIaSgB0YiWhVCjk98qQhr3UfB
	hz4wxeyXqANKOLRzzhUOVrQUQWuZV09MaGLmXFLk2etVwFZxIEA6kkUKXElxSMZVs43P4PbEq5KOU
	BhtDRUe6G5KD9oFM8abjB8CCVSPI9HxyGrOzyru8iLrFiNWnm5hc9wArZxU1ndoxtdLeNOzdDZxxQ
	zL8MQDMEEt8+KMrWcoA6YS4PVZk8gGUULLNrV+JosJK0lwckD4WPgP5rCC3HcK7IJSOgPrt7B7ltY
	vpb6ZO6kybvMZmAV0DlKNWA5EfJ7w7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SmM-0002Jl-Q4; Wed, 04 Sep 2019 10:44:46 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SmG-0002IB-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 10:44:41 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46NgRy2ffgz9sDQ;
 Wed,  4 Sep 2019 20:44:30 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1567593871;
 bh=q51v6jMKfuMMsSNQkaFTfC+YDlmgKQBdULryscFJ038=;
 h=Date:From:To:Cc:Subject:From;
 b=PZrcsQdvrc9rYmb5r9Bk1LoYEA8tbrMSzxY1x3Q9nasSr9ar1TiKhiVvD29wyBWGp
 Z/49E+ypr6HdyobnOBw9FanboRg9CnYE3hiNL5eX31EA2fpbG7AncidoL44kwne9aT
 J4JrFOt1fAjd1xRajN9WL4t8gkHkw5SLPG5vHV/kKmrqVsLyT127l8Y1FdyuUJFQcC
 l1L/qX6Vkr9YyV4xsMYNGJ7DZq5h4UN4rVtNpyx51SE2rHCd3YGz6EthJLB2lCE3V0
 Jm/06Y5dvhBqDpALoeE8J9KPvbJfelPKjjizntlV5En4HHz6KBXKUcxGkL0OA70eZs
 Hv0foYU83L7qw==
Date: Wed, 4 Sep 2019 20:44:27 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Vinod Koul <vkoul@kernel.org>, Olof Johansson <olof@lixom.net>, Arnd
 Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the slave-dma tree with the arm-soc tree
Message-ID: <20190904204427.1e1a064f@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_034440_660167_9D0E243C 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2879279820433968709=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2879279820433968709==
Content-Type: multipart/signed; boundary="Sig_/j1zaefufpuug0qMHWw8wW3c";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/j1zaefufpuug0qMHWw8wW3c
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the slave-dma tree got a conflict in:

  drivers/dma/iop-adma.c

between commit:

  00c9755524fb ("dmaengine: iop-adma: use correct printk format strings")

from the arm-soc tree and commit:

  d17d9ea95727 ("dmaengine: iop-adma.c: fix printk format warning")

from the slave-dma tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc drivers/dma/iop-adma.c
index 03f4a588cf7f,003b753e4604..000000000000
--- a/drivers/dma/iop-adma.c
+++ b/drivers/dma/iop-adma.c
@@@ -116,9 -116,9 +116,9 @@@ static void __iop_adma_slot_cleanup(str
  	list_for_each_entry_safe(iter, _iter, &iop_chan->chain,
  					chain_node) {
  		pr_debug("\tcookie: %d slot: %d busy: %d "
- 			"this_desc: %#x next_desc: %#llx ack: %d\n",
 -			"this_desc: %pad next_desc: %#x ack: %d\n",
++			"this_desc: %pad next_desc: %#llx ack: %d\n",
  			iter->async_tx.cookie, iter->idx, busy,
- 			iter->async_tx.phys, (u64)iop_desc_get_next_desc(iter),
 -			&iter->async_tx.phys, iop_desc_get_next_desc(iter),
++			&iter->async_tx.phys, (u64)iop_desc_get_next_desc(iter),
  			async_tx_test_ack(&iter->async_tx));
  		prefetch(_iter);
  		prefetch(&_iter->async_tx);

--Sig_/j1zaefufpuug0qMHWw8wW3c
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1vlYsACgkQAVBC80lX
0GyEsAf/Qnjvf6g+5SsGilNzTBLfT4HNlal2P85915JvP7smyeAL6gS6QYZMUm1h
owyQdt/jEdTuxm1ICfrYoy/RgMr74rjpd9BpCpoXKOyc13o+pOhni819sL9B9kTP
0uvJVqt3FXqYQHvGBhbikc1aRgG0Qzq1BnZBaju6GYTXDtc1zf2OlHwgHlgrkurx
QjK13fMQBhLHVVHGUi2wMGDLCnc+4jDYYfV39FzXGtBOUT823/zMVKpsUe36l92q
vgkmXWjSmmAR5+J6jioYvVK47sf2TJ7kAn/1BEutuBKCn/GdfDAyfmQz1cOS02pR
v06nhsPXiUXb73XePYFYQFPDppbKFQ==
=RjA1
-----END PGP SIGNATURE-----

--Sig_/j1zaefufpuug0qMHWw8wW3c--


--===============2879279820433968709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2879279820433968709==--

