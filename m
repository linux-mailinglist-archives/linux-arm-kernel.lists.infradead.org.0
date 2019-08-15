Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13598F693
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 23:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2fvBQ5Z/GdYmLwwxUcR2PdKN0kPJ4uUvrdCdqo+dMh0=; b=lv1
	0c2OwbKDaXVESvg0ZQxglJOe9I4ngGsGJKpJtK7XTpPbsw7G0xr8bRHXLPdauCIWG2G/q7Gjs+JQg
	urB8mJj5b/PtpweOz6jGMMelnbCfJnsAAP/Qwxcr/szyqsriLEgeZfomrlPGjdANLQWoep++OIDXr
	RZuxwg9TWaIWezrb8qplAmqH12eb6/YSJIwbsqoZpnArpEtNLfcX6YrWkMmIP8RCkriBXjxG3R+fz
	1T+vuxAdoaXcZKtc7IMZinJTnzJvc5Zn9bBEsvkNmhQFBYmTmEJQVW0Nx8ZygQmllZrMDxVtyEmC/
	Sw03BV+phylObBYAYYgPMSVkWf/6b2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNWn-0004nY-PO; Thu, 15 Aug 2019 21:43:26 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNWV-0004ic-7T
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 21:43:09 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 468g140fvwz9s3Z;
 Fri, 16 Aug 2019 07:43:04 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565905384;
 bh=MsZwqAxaGQ8nQeIeHtBo7cPYHvMCXyDlUc9DQt1kJeU=;
 h=Date:From:To:Cc:Subject:From;
 b=nzzDkZtVtYYP3llCdqKskl4Wjv94obTfup+jgUPatHsPH5vO1meDMEwcppJqODJX+
 fewY2RO1Kza3B0wKdgKTPcrjAIOfFAXh1uNfLRD5iFyGoP6fao1U5qAhLU+tk/9Cip
 S24/GARqQSmK8FCWc3LlgmlfnEb3g5mWrfqDihfT1sVdIdaJ4WmiWwTsrEgbVs0NIL
 vxheA0gX08dYhkZ0jIVUTxHT4NISfBDfFaRM8kxdiHT5aIjn7kCze2ErwY8Lxf9M+c
 a2gqWvLoHb3OE1VoTDAUiS2BBe9J8rbeOhenyqwKZykMCJKTlbljk294OzReOOtBRH
 Gh3jXdcVFIvjQ==
Date: Fri, 16 Aug 2019 07:43:01 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tag needs some work in the arm-soc tree
Message-ID: <20190816074301.619b80e7@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_144307_537170_26ADC759 
X-CRM114-Status: UNSURE (   6.48  )
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kbuild test robot <lkp@intel.com>
Content-Type: multipart/mixed; boundary="===============0204981583201240846=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0204981583201240846==
Content-Type: multipart/signed; boundary="Sig_/gg_YmVflBc=Gx6pTe1ADh2S";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/gg_YmVflBc=Gx6pTe1ADh2S
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

In commit

  772775c1dfe0 ("net: lpc-enet: fix badzero.cocci warnings")

Fixes tag

  Fixes: e42016eb3844 ("net: lpc-enet: allow compile testing")

has these problem(s):

  - Target SHA1 does not exist

I can't quickly find which commit was meant :-(

--=20
Cheers,
Stephen Rothwell

--Sig_/gg_YmVflBc=Gx6pTe1ADh2S
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1V0eUACgkQAVBC80lX
0GzNxwf/Wn6cWTIb4CSTcLtAUP71YmIqt8UWIxksx9w/0l1R8T2BZPdB/PQDJqQ2
APiTCKmqIKtYao6cG2ogSK4X/hWmSzXliQCXoaSU0C5hSSnzrPeGubQNVqgyj49j
2x/yrAlZcTrWrgJljOadrLCWqRvniyEc6CwklKQjYvuDWDENrCYrzli9YvTFHwwb
PwpyGaElSyf2SUaOpZxpQLObhxZlwkodZxCT/5DPL4Ih+LZR7k6fHWoBLLKfZf7S
fH+avN0Kit5aa6w/5ONDKTb++Am0V/EnA89GevuwV5u7i7YgLpntlQuuWPDEgqME
7HO73spQXnE9eSIZoUb7zxDMDZ2Gfg==
=Edrq
-----END PGP SIGNATURE-----

--Sig_/gg_YmVflBc=Gx6pTe1ADh2S--


--===============0204981583201240846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0204981583201240846==--

