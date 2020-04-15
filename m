Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDAD1AA01C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mLG8RB9h7HMRbmnrnyZ3A6H2BAardxWusV0dSuJ2KtM=; b=gtyBSZf0gThn2q0w8TVj8tKKr
	JawRd771Ry/vU94mq+/otOnJiJi00BwNzvtwC5B/YJTkez+GyTsViSxnZQGglKG7bx87FYiHjhSh9
	n0vFCM83cMaljHbs6fl5mA6qo9WCuDQgs+wmAm1wAl9NWbRitCxURENPGp60cQwgfcy7pNj0GvNfG
	LCuSa/E9C8sLH31RdToNrJrkE4R4PRdNEzaExXCOIb5TdX9qVypbZXmWxMRYgynPdqDUrl1Wup/EV
	pS/OersUNGC9v20CF6DGrjmgop5p0EuYfEBVONG+bPpt6mHyjcuZwbA1wBHHTawnLNYPYRyxoye1G
	uzaIPxqmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhB1-0005I6-7j; Wed, 15 Apr 2020 12:29:59 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhAo-0005BS-IZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:29:48 +0000
Received: from localhost (p54B33507.dip0.t-ipconnect.de [84.179.53.7])
 by pokefinder.org (Postfix) with ESMTPSA id 949342C1FF1;
 Wed, 15 Apr 2020 14:29:45 +0200 (CEST)
Date: Wed, 15 Apr 2020 14:29:45 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: generate stop event for slave writes
Message-ID: <20200415122945.GC910@ninjato>
References: <20200322182019.32493-1-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <20200322182019.32493-1-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_052946_783045_C3639E47 
X-CRM114-Status: GOOD (  14.98  )
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4163222790778291480=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4163222790778291480==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="96YOpH+ONegL0A3E"
Content-Disposition: inline


--96YOpH+ONegL0A3E
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 22, 2020 at 11:50:19PM +0530, Rayagonda Kokatanur wrote:
> When slave status is I2C_SLAVE_RX_END, generate I2C_SLAVE_STOP
> event to i2c_client.
>=20
> Fixes:=C2=A0c245d94ed106 ("i2c: iproc: Add multi byte read-write support =
for slave mode")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Just to make sure: That means the HW has already detected a STOP
condition on the bus?

> ---
>  drivers/i2c/busses/i2c-bcm-iproc.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-=
bcm-iproc.c
> index 30efb7913b2e..b58224b7ba79 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -360,6 +360,9 @@ static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_=
i2c_dev *iproc_i2c,
>  			value =3D (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
>  			i2c_slave_event(iproc_i2c->slave,
>  					I2C_SLAVE_WRITE_RECEIVED, &value);
> +			if (rx_status =3D=3D I2C_SLAVE_RX_END)
> +				i2c_slave_event(iproc_i2c->slave,
> +						I2C_SLAVE_STOP, &value);
>  		}
>  	} else if (status & BIT(IS_S_TX_UNDERRUN_SHIFT)) {
>  		/* Master read other than start */
> --=20
> 2.17.1
>=20

--96YOpH+ONegL0A3E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6W/jUACgkQFA3kzBSg
Kba56w//YyHFH3d77V7+5og30eKP1+eGDNLfHEL29jHAg9fqHDj+PlN8Z6kWxoir
2w/sI1a0Yj3e/G1q3G2bL7gWErqYjOMTHP8gYVJQSdNoFTMF3i1ynawW6x7aAXh6
HOLy/0ijpt52+YGlFvfwDdtzYf1lc6t5nBiqp3OiK7PKLWS6Oj88SjtImTwIFpZD
yW3RdHndNZ7dj1nG+Ny+nVIlLRjPBPX415uKOgpcw759SGezT07llFsD65sK9c/r
hWWHgKLq+l9bzFd3LQTF9WwqHyUzx8RTpiJ0U6hwh9PPTcRwuuomynDUdS4R0EeA
PTYPmPrxpI6psoTJFAEKD3VTYS/QymiatT+TKmvZZXiGTStG3zIK2THaLPIPV93U
UIwRD1DOPeSPX/EzBuZ7D31EYhjfmsJzpbIPgryIj4AFS567yrm7lwWMVlUwvQ5A
GGyPrPDHraPDRibrDts+i3YXXOZrIrHJ6OVK25xoz3HcRYULe7Ik5t2YocwmHSHa
ymjlay9LXDG0fTqjmo7KvAZ9Iv992jKH7an2n1m+TEWNZ6yVqQvJ304NHoDmbydO
05SgO8qnX7eAeGiNKls7H8J8+3uY3cEMiOLdQlccWpUZEP6fCN0fkFlR+oop2IgJ
EKuHtdrx8QEMYgiRI8OuEqwINsqawezG89uWHCCSENvhh9Hu73s=
=PQOf
-----END PGP SIGNATURE-----

--96YOpH+ONegL0A3E--


--===============4163222790778291480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4163222790778291480==--

