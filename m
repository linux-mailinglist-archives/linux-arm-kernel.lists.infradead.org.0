Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4565C1AAD45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w+WJ3m15KQJBkQ9Y/yipog1IVBm15p58YacMy9uMkkU=; b=D6WUpjQNdmq1PO61q0l9VDmrX
	xNVMgtrDDmzQegXG3YDKI7r+JjWbU6JEepi/y8Sm5hiLflOGqvMb44dq+d30bGgd6SooWdmMTOvvx
	y3U3XyBhPmqRYHq3xmjjQeVLlRaTvIjc+dMj1Mylt7E0Z3FH0SJN8KAo2WGMT8UmLu2u5ZlKx1VBb
	xRfZLFuicfuokWmJBWY9eBxkMG2VcqJUOrjNad0gO8g0hJT0gnn+/YZNLxSSsEDXFUzIkapouFZa6
	F7RjxXKbak/jEBj2lTKoV6K/t2DEGdl3zqJDPQMydCnE7KYkui/ifxQizvR9Fhz6CLfst1Bvcewj3
	Aj6tcd4zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkoI-0000Py-7K; Wed, 15 Apr 2020 16:22:46 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkoA-0000PN-Hv
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:22:39 +0000
Received: from localhost (p54B33507.dip0.t-ipconnect.de [84.179.53.7])
 by pokefinder.org (Postfix) with ESMTPSA id 38B962C1FF1;
 Wed, 15 Apr 2020 18:22:37 +0200 (CEST)
Date: Wed, 15 Apr 2020 18:22:36 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2] i2c: cadence: Added slave support
Message-ID: <20200415162236.GA2830@ninjato>
References: <20200106104336.101987-1-radu_nicolae.pirea@upb.ro>
 <20200415125850.GD910@ninjato>
 <d7bbb013-aba1-6623-f656-46b3f5689834@xilinx.com>
MIME-Version: 1.0
In-Reply-To: <d7bbb013-aba1-6623-f656-46b3f5689834@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_092238_735781_311B8B51 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chirag Parekh <chirag.parekh@xilinx.com>, shubhrajyoti.datta@gmail.com,
 Radu Pirea <radu_nicolae.pirea@upb.ro>, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7508033154439189719=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7508033154439189719==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > Michal, do you want a second look or is your SoB good as-is?
>=20
> It should be good to go.

Thanks, Michal!


--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6XNMgACgkQFA3kzBSg
KbbAiw//RBrtmb0bH65DgAGQFsaUex9274i1aOt2WRAxBxxsU9KYpjYXZTJtJIPM
H+rQ2NZORdTz4Vbk7zWzL5cPWVgTgayyAEgTUWmggvji1mahB9ATMMhRV+YT8IT8
lfyLZ8jr8pkanVFa6FE0aC5fwY/O8mCLesPbIwV3UhFv4CkTgh9HZcBOs0zzyqFd
gkSBkmn5y8A9YnovysL+Rq7HAfd05UUGdkGPca6zW5RzwdELizUC+Nh7ZREhyUUr
w7IjyE61kxdxSs10+IEyKzv9YLdsBfWcDbjYwLCeyadeSwjPyW+quD37TdGxHjPM
xdBKCnOffArucQz8PhghU52AUkjEWMhEdNE2ri9PlfsaodT7LweoqIRtpyinWH4D
uPdsX071f/GA6I9nGtvbJRh/ogVYySTAZgRfxeMMexWptKcOp60Ta7q1Pkbh2Ryl
E7b1eYm9wNriBi5vHpRyvSpLstfcJUL55fxlfdwlH+zGOuHP9ayDn5i+5T4b7HIu
6QdGkeYQRoVCEbeTk1vlkAhE9q0dgeAWldtDrxrCWHx5VAJi0+PeR80avDwLXfyM
78dA+74416jx2MEXu1LhAbQU1ep5P+qhtcQ5HHctU2hVdC0tMKMs6E9gT9sqdZaR
/14imMDRUa6Qqu0gVJQBvAh7PsxoYPTd7tMBuyvJEuwfJ8SX41A=
=orf9
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--


--===============7508033154439189719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7508033154439189719==--

