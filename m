Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4316A98F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 05:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fuRbYwkvsbp1pAmkavFxGDhcMCKdwZ2aA/4KE4/Ebgc=; b=ob/
	FKbie4tKzhuiyCHJQDQ7lZkd3Fn/n9L8NXGPr4qMu4riCid7CgPDjVUdKgrLIS7zWN/qdrcNTKbEn
	nJS0RK3q7r8RXBYDLyMKI8TQETNK3CKCgiReMDxf++iu/EXyyU/CRAT6BV3qCEnYt08REscqp2N4d
	vJif+3e21nXlccHFz5WgClbxqZPd1uXZxhf0tFAxEev9fHH6eKC1fmfcAhbraKolllmH9oWivJC/d
	hNdG2QImmKGNl7qtjyXwTMLFUUL7Sh70EGD1ahN4GPHYBlfYGIh2GsiDQxX9QOQUPz0O1evpoJv0P
	3rniv3LeYeC/jTBdKL7Ta9EJSfu+wlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ifB-0005Mb-M6; Thu, 05 Sep 2019 03:42:25 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5if3-0005L2-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 03:42:19 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46P62G4pP0z9sDB;
 Thu,  5 Sep 2019 13:42:13 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1567654934;
 bh=D20kb8FI3SomKAMFU69sx2kOZjLBDN7Zio+s1/ojh5g=;
 h=Date:From:To:Cc:Subject:From;
 b=n4nBW4F6iU8JNHCd2sXvqFLwQv01DM83fps9ZYicuMoPD3F4t+EPZ7V99BScFAFN7
 CcV3qQ4PoST4MbLMx7yKrxtPtJ/AVQd86IjYo2Efo3o193crsys7vNnYR0w+T8QLDT
 f9XG5Q2Va93VGfrjsop0UJpAbttdKsn27U1+wg84/REF0wllVAWRhZrmXHqVBrNC8G
 kHnBXwozJBeVgPFQTt6iX42ADyLRIu5P7NgdckkXzFPyfoISY9OHt9O5rzJrykyhMV
 Be0hI3wOo/8tfxlR7OdqA3CshCpPcxMDrao2SUpkaFXYzRcn5KW40uFAMYM1zNPgMM
 FTyVkJhnVE9qw==
Date: Thu, 5 Sep 2019 13:42:13 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: David Miller <davem@davemloft.net>, Networking <netdev@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the net-next tree with the arm-soc tree
Message-ID: <20190905134213.739ca375@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_204218_156900_1A5A2FE1 
X-CRM114-Status: UNSURE (   7.27  )
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>
Content-Type: multipart/mixed; boundary="===============5436046279447565316=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5436046279447565316==
Content-Type: multipart/signed; boundary="Sig_/7ZgpHNInDPnmm6UQg5TPdzE";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/7ZgpHNInDPnmm6UQg5TPdzE
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the net-next tree got a conflict in:

  drivers/net/ethernet/nuvoton/w90p910_ether.c

between commit:

  00d2fbf73d55 ("net: remove w90p910-ether driver")

from the arm-soc tree and commit:

  d1a55841ab24 ("net: Remove dev_err() usage after platform_get_irq()")

from the net-next tree.

I fixed it up (I removed the file) and can carry the fix as necessary.
This is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/7ZgpHNInDPnmm6UQg5TPdzE
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1whBUACgkQAVBC80lX
0GxxrAf9F2t1WiC/CROxhOEgz3XgdRi7F4M0XLeKgV6HYsch3nX5Wj9Z1Vh8tW6l
c/fbKI1ZSokhfgYm1cEiqm/9SQg2lhUiGywuszysvidYT7o1GX/zMb9CGNC5fg8p
zJsmfVIjLY5Qzo4RtOQSqFlT8wgd+CXFK2fEn/9nEnryStrlzb/E6xA+b437SxuI
gQ7U2Zl+eNgIgMJXMJlLQQP+3yfw5HJX7Ox4AbYxYbuV6wS9H1XZvWkT4JjCgSQZ
jsn8b1Ly8foiIhxb7K7cDl7yUCJyjCoVUqIGTAY6grwXCxRGRm5EDr9thpRRrCgS
yAxzxRctgd46mxhzjE9l0L2sbmpMOA==
=nc/L
-----END PGP SIGNATURE-----

--Sig_/7ZgpHNInDPnmm6UQg5TPdzE--


--===============5436046279447565316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5436046279447565316==--

