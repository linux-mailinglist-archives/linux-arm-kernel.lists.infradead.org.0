Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6218A2830
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aXEhIL1tHLYB8tVmgYNAy2zjrPlQCf21P7cWh4NmbpI=; b=noh876ZA6wXzqm51GDOs3b2cx
	5oYlA/GcXX72tWf0DOzAjJ84sb2JIWsFvkMCfTK1+B4m9DoHw+O0xVCEzoFJDhDU7FO6ilDE/pHqq
	stzZ9xSGQq5gDEoVORtFN3+08W89gZ9CaekCrVbTpfdDF5O++n0WZGNi9gR7FXX6bYwF2Xj99vmK6
	+zTDpWn6iJRJMI2ddq/1++L4Yx594OSKyVbszljJ/9J8INj2OsQhU0MMt97i4XdBYZdIJ19IRNMxU
	sOZ0wdI5l98SWdN8BaYEZM/lq3Yvyg5JKxtSNJZ6qb7KaOgRPFBm5IdveOIGEL1XMN09pO94uP+bH
	8Y/W9Wxfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3RCV-0002Sz-Ky; Thu, 29 Aug 2019 20:39:23 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3RCL-0002Sb-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:39:15 +0000
Received: from localhost (p54B33070.dip0.t-ipconnect.de [84.179.48.112])
 by pokefinder.org (Postfix) with ESMTPSA id 1426E2C001C;
 Thu, 29 Aug 2019 22:39:13 +0200 (CEST)
Date: Thu, 29 Aug 2019 22:39:12 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] [RFC] i2c: imx: make use of format specifier %dE
Message-ID: <20190829203912.GU3740@ninjato>
References: <20190829042905.4850-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
In-Reply-To: <20190829042905.4850-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_133914_090858_5473B1CC 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Enrico Weigelt <lkml@metux.net>, linux-i2c@vger.kernel.org,
 kernel@pengutronix.de, Andrew Morton <akpm@linux-foundation.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: multipart/mixed; boundary="===============0828287274735500309=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0828287274735500309==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8Tx+BDMK09J610+l"
Content-Disposition: inline


--8Tx+BDMK09J610+l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2019 at 06:29:05AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> I created a patch that teaches printk et al to emit a symbolic error
> name for an error valued integer[1]. With that applied
>=20
> 	dev_err(&pdev->dev, "can't enable I2C clock, ret=3D%dE\n", ret);
>=20
> emits
>=20
> 	... can't enable I2C clock, ret=3DEIO
>=20
> if ret is -EIO. Petr Mladek (i.e. one of the printk maintainers) had
> concerns if this would be well received and worth the effort. He asked
> to present it to a few subsystems. So for now, this patch converting the
> i2c-imx driver shouldn't be applied yet but it would be great to get
> some feedback about if you think that being able to easily printk (for
> example) "EIO" instead of "-5" is a good idea. Would it help you? Do you
> think it helps your users?

Yes, it would help me. And users, too, I am quite sure. For me, if I mix
up two numbers while debugging, I am hunting ghosts for a while until I
realize my mistake. So:

Acked-by: Wolfram Sang <wsa@the-dreams.de>

I think the main drawback is that ERRORCODES in vsprintf.c now need
maintenance, but I think it is worth the effort. I'd be interested in
the overhead in size this causes, but I also think it is worth the
effort. (It could even be compiled out if we have some generic Kconfig
symbol for smaller kernels).

Thanks,

   Wolfram


--8Tx+BDMK09J610+l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1oN+wACgkQFA3kzBSg
KbaAsw/+KQeS89gkyeBgAuyg+ZnDAtyMHwIHqkX4EkYR3abYoCEQARebjkC5PomS
r9Ie2ueeR8sZe2MjpIds7ajUq/VwCb7oSstIWsS7mpiQsFDmMH7UxrpeuUdL6yP9
3DxNgaIfKpf7kw/AbOMU0KBtb28tzG8qkw7+iGu6W7U5/H7XCGHTmHm0a5K2sEvk
ajZxyXeaXGZL4Y5EYyTRK+p4Allrr169BsOzh2oZhnn0WGxgC0S5Afkq3WcCs8gr
id+80az2VZ7wZkDklu2/c3TO5PkROViHnAISfXtqeyrD7fqnEhpsH4aX7iEuSed+
GSa67N0uMO+0Pap/5Y+CgXazG1EGgc3UYUywgxLw9vRneNy6yXLTZ3S375Xb3GOF
L3BOqOW2lbVchDr9t+igYPEIWH63DEWfyrVZyWR0BfXWCkNQhjOM3r+9X7YvXdQG
fTu0Jwxt8sEHcaug7L0PDEGfU3ym/lcGSwiJSKSc1bwVbthJSpDtgfnY8B+KU+1x
q/cXdcP1CLOykl1FGJ4YeGP+cVoNYDRd61DkU6hY44vVdZ+ZgoEKnz2wr4w2JDzb
3SLqPQpu7SBw/YmmFWliCfbKhiPxhWlyZfNh/qRYj/k4gEVfW/SGyQ5odeFLRY5P
lE64DMYszcabfUgh0QGiE78PeeekqZd0kyIRLKWytvfN5YXHKTI=
=XXiC
-----END PGP SIGNATURE-----

--8Tx+BDMK09J610+l--


--===============0828287274735500309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0828287274735500309==--

