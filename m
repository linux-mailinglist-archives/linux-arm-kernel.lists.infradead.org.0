Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE4A1F76C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EDoYtm/qT18/KyONLVzEolzz4YTNbVH1Z1a6xV7hFHg=; b=NTZ7fxzu/Wg1pNu+MCIE7hEa7
	/ppf7yw1JFgdvdfwy5WdXzy8z6JfQYT7c3fTEPwLjYAtuziNbJSrZwuIIM6NOYMjxhdTZ1ChKcGcE
	allB18dEeovyqL8y3W+WR1GuHKlA35WMNEEyDcGWImbIbx0jJpUbsbtrU3wDFXeNjckCbdgFRrkLn
	eZcfoDI55KOMWUU89fZQ1ZpVK3tIunAY0XOB+2/4s+fbiccfbaKTcSLeCF6HKj7eXxLwwlM4fw/Dx
	t8NNk7ywCzHCDIyKLwadglPEIg8QWJC04xrMgW3VsCCxjKQf9FJCcQGCHmBmOhjTFh+ZrGLgEp4tp
	JmlbGm4oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgyj-0003M4-RY; Fri, 12 Jun 2020 10:32:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgyb-0003LN-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:31:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jjgyU-0006sD-8S; Fri, 12 Jun 2020 12:31:50 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jjgyT-0007v1-Fk; Fri, 12 Jun 2020 12:31:49 +0200
Date: Fri, 12 Jun 2020 12:31:49 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612103149.2onoflu5qgwaooli@pengutronix.de>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
MIME-Version: 1.0
In-Reply-To: <20200612102113.GA26056@pi3>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:25:27 up 210 days,  1:44, 208 users,  load average: 0.19, 0.11,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_033157_148541_5A466A2E 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>, Wolfram Sang <wsa@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4388694288014096114=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4388694288014096114==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ih5p7jdiwpepz4ji"
Content-Disposition: inline


--ih5p7jdiwpepz4ji
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 12:21:13PM +0200, Krzysztof Kozlowski wrote:
> On Fri, Jun 12, 2020 at 11:56:04AM +0200, Wolfram Sang wrote:
> > On Fri, Jun 12, 2020 at 11:29:41AM +0200, Krzysztof Kozlowski wrote:
> > > On Fri, Jun 12, 2020 at 11:05:17AM +0200, Wolfram Sang wrote:
> > > > On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> > > > > If interrupt comes early (could be triggered with CONFIG_DEBUG_SH=
IRQ),
> > > >=20
> > > > That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
> > > > SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had th=
is
> > > > without fake injection, I assume?
> > >=20
> > > No, I observed it only after enabling DEBUG_SHIRQ (to a kernel with
> > > some debugging options already).
> >=20
> > Interesting. Maybe probe was deferred and you got the extra irq when
> > deregistering?
>=20
> Yes, good catch. The abort happens right after deferred probe exit.  It
> could be then different reason than I thought - the interrupt is freed
> through devm infrastructure quite late.  At this time, the clock might
> be indeed disabled (error path of probe()).

This line looks suspicious to me:
 Unhandled fault: external abort on non-linefetch (0x1008) at 0x8882d003

0x8882d003 looks like not initialized pointer.
The only not initialized value at devm_request_irq stage is i2c_imx->queue.


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--ih5p7jdiwpepz4ji
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7jWZEACgkQ4omh9DUa
UbMz+RAAwthmvYid3GV24DtJKEJYoXymSfUbkZWCcEaFFrlus3duYL2tm5N6lHTm
KhM0BxARTVJo8kMoCN88mg5f+cJR1qC8dFmMvUseU1tyeb8UhFiAliVeXBIB60+U
7C5BdpptLFc/VOtBY5xfogZ3ZiFoe808iX1bI8gNYA5Ut9c8j+6mG2eTPnKghxNJ
906Efve2mCRFgvvZ29rxgKMmvHwcjGumrkpfpD/9XpP2dvCwkIfW8jKp00ws9Wrq
pnlVQFhOxVzd3dU4jmZd33zq3Mntjbez2FzjCwOEYdBYKLL3omtV/BsfsBEWm7j5
jCJXJntfPEYf8R6DNTgqAD9vSE0tOUwL7ddeCzOd6MJhC2Xp0/mNAWMcSSUlr+XR
GNb2ZlkNewGsrQUnfINdGD9otKTO9VwbogfHHz0zafVk1bEnSM842a/9rhFRzjQI
/3HQdZ1bTANbIr9jLBKxFM5kANoSr0AGEyct80rRokFV4BhmkaTlmlvrX7F7NMqZ
boG4W6JNgwyrFKcZWYVE4I1TyaBh3P/JQza1yKHVAKqT7FuPDmwzW5ssX5+GU8Tc
E7q/WQkjCePUYMG4JEOotlFIc5p+tBjFgDihuzP9/u7Jad/kkbaD8gXllvZziTFP
Uh1m1pQ0WmXJEi4bUgXU4lKbD5N2yQDU17CSSe8jVgw4+yyorOY=
=szJB
-----END PGP SIGNATURE-----

--ih5p7jdiwpepz4ji--


--===============4388694288014096114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4388694288014096114==--

