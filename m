Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEBE1F7837
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gzb+ChurLcNf3LLNL4fkqsWZmfEiPeWw6FyIayKdPgA=; b=nxuDZ6SBZQGrxpZu8B5yTN2C1
	b4HXdzYKpynf1npo/OgKs+T7jmfbnTtHemWIkPkJdKpPJiNf/37WuBbzNJm6jo0G4g3UA4j98Ez0f
	5Zj1f4meL1scY29nuTAlfO3LcT+a0RNG48KHgkYKx5A0DuYaC9pJS952k4Dx/24DpfGH0jH9/wlTw
	gcqTgEPWx7sYfdTmx/QErJzVmVpaCXbayc+9/+a+uVVWk0jSiN3oovsHm+zt9rNcu80toVxTCA8AD
	siQq5iHjvbDlMAufzhUXKwuvXBz6Il3eUwbJxeURZ/63XXt0IdZfxlmy+L7mUJFdaYhSHcvMdouAu
	jyFHM4eRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjIC-0003jj-Hv; Fri, 12 Jun 2020 13:00:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjI0-0002eN-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:00:10 +0000
Received: from localhost (p54b33104.dip0.t-ipconnect.de [84.179.49.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 228A520801;
 Fri, 12 Jun 2020 13:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591966806;
 bh=p9zdw6Ix408GDSOOW0UAhlBPPpxUZXF56TDRkRrBo50=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zjGYScyOOsAy3gVeFKrd5vkNkraV2RnlZRh01K85GpQCvcot6I/QFrzcOqyNfKGkI
 6G4HIXXSnYdkiTLXeyhxcv+bm0QFVYyWnMWwBEZBRVE6hDKqa3YcDKjdDzqW4b6z7y
 GCptfpJ3oBZpi1ggPlzNz6s/wNWA81iJEkjSk+IQ=
Date: Fri, 12 Jun 2020 15:00:03 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612130003.GB18557@ninjato>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
 <20200612103149.2onoflu5qgwaooli@pengutronix.de>
 <20200612103949.GB26056@pi3> <20200612115116.GA18557@ninjato>
 <859e8211-2c56-8dd5-d6fb-33e4358e4128@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <859e8211-2c56-8dd5-d6fb-33e4358e4128@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060008_785335_4B41C584 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>, linux-i2c@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: multipart/mixed; boundary="===============0801341133575100292=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0801341133575100292==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline


--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 02:18:06PM +0200, Marc Kleine-Budde wrote:
> On 6/12/20 1:51 PM, Wolfram Sang wrote:
> >=20
> >> This basically kills the concept of devm for interrupts. Some other
> >=20
> > It only works when you can ensure you have all interrupts disabled (and
> > none pending) in remove() or the error paths of probe() etc.
>=20
> But when requesting the interrupt as shared the interrupt handler can get=
 called
> any time, even if you have disabled the IRQ source in your IP core....The=
 shared
> IRQ debug code tests this.

Yes, so you'd need something like

	if (clks_are_off)
		return IRQ_NONE;

or skip devm_ for interrupts and handle it manually. (IIRC the input
subsystem really frowns upon devm + irqs for such reasons)

D'accord?


--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7jfE8ACgkQFA3kzBSg
KbYU2g//YH252FclavZQfOCs9H4QzD8SUrVlAuUOYIo2XLzjN9/S+n1K4LakWCz8
J6zxoyCp/gTkEqkY1Y0vyvgPCGlO49Cy4DCNgUDEz9fHP1hK5d6QTb9DZS62qGe0
mvVSm+21eLSHPO0H2v6pT+eP8bhQUiHIEWs8yxTSbI1QM8VysbSFJXx3rgwSb7s5
Os5hOy6/4O5rn9StieglVEZ2CNl0ZoAqpvOHPziGkhlYB6XzfLRLjYY+9tDOcM+d
Eza2rjTYPrm3v1nqsbNz3/44PVjgyMMwuHehVllaSVfkCsAUiBCnnmwZXNr1N4oT
c4MNBQAInQw0jqDesVX+Y+YTbaa8McEZFs6giB6C6wb+Cg3Y+dILxtFdtZO6zg5+
RTEPjFl+pOUwqj8CwxQ3DPJPpxnKTssp/+lnVNMmFxqAqjk5Xf9xHRIYlexPi9Ai
GJfwOLCo5sOjAnCqFG8n6PYdyCDbmzmBw58rqlL5MKEKzAchbbwKQVLiVgBthVw3
7lj2JUWrPEBUVMMO7DGulNaz0mvfXhRoNfbyTp373rcN03kRLQoNFHSYIZTBLg+f
Z4JVGFjSK8Thf/0kFMWKakmmRvW5u0isnMwSbPIE4cuL6tdkrLadPpPYlscPL+wt
3dqTVphas2XIcGTH4/PLXQj1uZnxFU12ST1WP0TBZXY77Ydvw1E=
=key/
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--


--===============0801341133575100292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0801341133575100292==--

