Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9E314D228
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 21:54:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sr8FDcka1FP20yTkYlyQeizLP365WgfjOOVgXJejOCg=; b=JwcQqr5hHKoPUNyWFd2TjJw3p
	Lf+NR3uuPy1zjOOEBmWYVzJweFCPCfEporLbeyOHLpxJv8t74lS5+fonFhoWTQn+Hp8el5919F85L
	ujPiMo4/ajgbN4TEQ1hteMU/EzcUxyBF/ZQJfknEHSmYiBlyfSYrjldDt8z1t7YxRfaOX0xaUlMAa
	ehyqt6s8ZOycGw26FJ7aJfc4A4sh+8L6Qr4BHeY29/jjYrd2Xm7gKudHHBDNEBkvFFB7rDhwwRdJ9
	MAETO2paRQDf1tKpj1fREV2tzk2lbFZmjId4URG7BPGV11Hr2bBG1jfloHdjkQ5hpSzZ5VRg60P5E
	7u4XS5uvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwuMB-0000Ef-HH; Wed, 29 Jan 2020 20:54:39 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwuM1-0000Dd-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 20:54:30 +0000
Received: from localhost (p5486CF2C.dip0.t-ipconnect.de [84.134.207.44])
 by pokefinder.org (Postfix) with ESMTPSA id 374E02C06AB;
 Wed, 29 Jan 2020 21:54:22 +0100 (CET)
Date: Wed, 29 Jan 2020 21:54:21 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next][V3] i2c: xiic: fix indentation issue
Message-ID: <20200129205421.GB7586@ninjato>
References: <20200127111336.114501-1-colin.king@canonical.com>
MIME-Version: 1.0
In-Reply-To: <20200127111336.114501-1-colin.king@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_125429_305223_C30FD3FD 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1725059692933449082=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1725059692933449082==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BwCQnh7xodEAoBMC"
Content-Disposition: inline


--BwCQnh7xodEAoBMC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 27, 2020 at 11:13:36AM +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>=20
> There is a statement that is indented one level too deeply, remove
> the extraneous tab.
>=20
> Fixes: b4c119dbc300 ("i2c: xiic: Add timeout to the rx fifo wait loop")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied to for-next, thanks!


--BwCQnh7xodEAoBMC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4x8P0ACgkQFA3kzBSg
Kbbg2A/9FJqyn9ks99JLD7qHs0n9X2XQCLXkv5Cw1HMad+934DZIfm3o9v7ABgoS
hLQnxGCFOxBr4BrCehiPc+WKCOw455ux7yqt8enFpMZ9nEBPBBsAuwJmPwfTH/jP
R5xBosv1l9uRHQWEDeExsmWZpv5gHgJVPDd+I2S7aES4kBAj8uUOUmfTvF0ofMLV
8cabXa9AGG3ZTKt51aad0PIMGphQVtDNlmDYe7wqVMqymjDGX/RbDstNsKvxoG2D
GVNm2KqsYGveZX5vHZRjlzNSfMUpnN79Py6YouzOVgomZjLUY3+3DWbu2BH3gs7R
Z1DgmjPSbvWyQw3ktka9D0WHPG6rq4lX5YuJcxksBN77C+LMXyAWo2eH50ZBLSB5
MsVMXsb1eEP8gWs54y+emDngVadIk8ui8Q2kCEoEtHmnWFkfOteUocDWOHbrA0ax
duju7H9Wx7iHAVxStVFOAigBzDEZRQv3YwaOSu1E+MCyGjR5UEDKC4Z6wnOQ/WGd
JehJLyp0h9VZOYbAY4HUfYv5WETtD1iPDAD1aWTvihs1oA/47HHzAgEQ1opfZ4Ax
Q0WwNCEjXcvoUSPFJzX5k3uJpm61Gv4gFaY2JLNPz9jOUI1E/6rik+gY+DxC07qP
JaDdL1LcipBrT+r6Hof6p4k9+5aY8GhB9/t72trlO2RDXkTqVis=
=t8lY
-----END PGP SIGNATURE-----

--BwCQnh7xodEAoBMC--


--===============1725059692933449082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1725059692933449082==--

