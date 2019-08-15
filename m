Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178D68F794
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 01:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=K6H9FzH2WxJg8IJ7waoreyPefUi3p9IqRKX1C5U8AZA=; b=eou
	WGxLb3tffkigzx20STZhY8BXyP5+uoN2Ur9PlIN1+qEZlCx2h6oFs6TIZbicsEJO/RmJz3tX9Uz4x
	tl/yWA8pixWPVJ9KAux60eeiT4D/9dP2aebzbEaF9znMe3q16EKR6bgD2/O0WngWO6aGIp3wXTCuK
	uZEWkr6i9K9qNGu/hATvqlmKAxpuBEQvDTBELtFhEDTmwZA4TcDeZL2foCK7SpPgsTDKUL9MY5gkY
	lD4d7OJ0Xxv8R8ROPPQymY6XdeiYNyjT3HA7IBzrH7AGJoFwb/ABym3eMEZ2Mw5vOkz6RixKe8k9Q
	/AaNg23agYoJVviADHlQKF4fXsE6mqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyP8D-0006uM-07; Thu, 15 Aug 2019 23:26:09 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyP7z-0006tV-8k
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 23:25:56 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 468jHj0HkNz9sDB;
 Fri, 16 Aug 2019 09:25:53 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565911553;
 bh=PFHOp5lVQ4g6t48neVfmLKb7P6Y4cLJoqXxp1EbfGsw=;
 h=Date:From:To:Cc:Subject:From;
 b=u7DWt6RZSOWrSt4EmVMN2aMFLJB0VUpjRYDG1CbZzypUz1xhT9ynceFxqdN1I/1cs
 aE4MUE3rd3l8Cq/yTaZuCP6UY1zNovn/nAp0UhY7Hr/byHk4/xOxrEcdVpMUA7WjM3
 MCkbK90NJL2xcLP6CNgp5h9Ki/P8Wpn93Rn84mMc2ReMRxowa8c4yPuC8TYW5pCMBL
 C4hqw81w6SsRJ/xLd1QX//fETSmKzvw93xNFo6txLGFSqwCeLeTaD3QgLMTKSPN+Kf
 HlOylMz5XHlfZnbCNeCdVYgf6lvqOG9RGcBJTdFu7fgiL59pPQuAnBs85gYdPpr2dB
 xKHK+/nPrVgpg==
Date: Fri, 16 Aug 2019 09:25:52 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: build warning after merge of the arm-soc tree
Message-ID: <20190816092552.2db24732@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_162555_543582_5DD842DA 
X-CRM114-Status: UNSURE (   5.66  )
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2524551943939287364=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2524551943939287364==
Content-Type: multipart/signed; boundary="Sig_/PS/=YMWaCZM9rHzFA5FlDSJ";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/PS/=YMWaCZM9rHzFA5FlDSJ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the arm-soc tree, today's linux-next build (x86_64
allmodconfig) produced this warning:

drivers/usb/gadget/udc/lpc32xx_udc.c: In function 'udc_pop_fifo':
drivers/usb/gadget/udc/lpc32xx_udc.c:1156:11: warning: cast from pointer to=
 integer of different size [-Wpointer-to-int-cast]
  switch (((u32) data) & 0x3) {
           ^
drivers/usb/gadget/udc/lpc32xx_udc.c: In function 'udc_stuff_fifo':
drivers/usb/gadget/udc/lpc32xx_udc.c:1257:11: warning: cast from pointer to=
 integer of different size [-Wpointer-to-int-cast]
  switch (((u32) data) & 0x3) {
           ^
drivers/usb/gadget/udc/lpc32xx_udc.c: In function 'udc_handle_ep0_setup':
drivers/usb/gadget/udc/lpc32xx_udc.c:2230:3: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
   switch (reqtype) {
   ^~~~~~
drivers/usb/gadget/udc/lpc32xx_udc.c:2269:2: note: here
  case USB_REQ_SET_ADDRESS:
  ^~~~

Exposed by commit

  50ad15282e7c ("usb: udc: lpc32xx: allow compile-testing")

--=20
Cheers,
Stephen Rothwell

--Sig_/PS/=YMWaCZM9rHzFA5FlDSJ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1V6gAACgkQAVBC80lX
0GzbXggAgQcbe6PiiKiz41iZdVjWSP6qLiYI9RWoUAiLo3dK6LpQ7z2QZBVB8u9H
TbW90qgKFEAtrDh0dzXFEVQXFecmHaXOmNDWvQKe6ja6qf/burnKbtKgE901luO+
rrf6GMlQCzid/nOo/r6Ikp0e5s64Dvv0h2llH9THvQUbPE+9xkpqJ8WYbJL/ASE7
r8rcSzTG2ebhqdM/Ysel60/rEmu7hyjxvLvVpFZUE5Fa/+Sfgg4xh7bDDcqt2dpo
UlmqyhTzfsy+ilMvL9xX/ldjuDOISoQFwBh8X6S5b4Uix7/qPUV3KqDw23RD0QDJ
NGRc9PIPTU/LXWS6mLBsfzZ5xpBNUw==
=Axde
-----END PGP SIGNATURE-----

--Sig_/PS/=YMWaCZM9rHzFA5FlDSJ--


--===============2524551943939287364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2524551943939287364==--

