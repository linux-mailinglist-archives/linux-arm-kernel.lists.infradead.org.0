Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78531AAD23
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 22:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q6ac/pS1XCN38v762p72MJXtw9MjSWeSeur6k4orgwg=; b=P4gHRTdAmUITL10Xa+5FYItpq
	PLTaU2de4tQxxjscJgtgOeJFEEjmQockA969NqV2RDV0om1djl/t0jdrxVyscDEHjNx7IhtXW8GDi
	aF5wTBM9mtHU1RogIGY/KJ+aGaOOoDUpbHDRSGXYq8b9FqdgLEK8FOCvXpMrWb8cMCYhMGHlF9/xh
	/o6R5jbV3RXpFC98T2K5nfuL39BZmz9wGkKlSmX1EG/VAJ96BCUJ6knMaSHwK2zzcc8gqzY7OTSyV
	OAArLRcwM7TpZb0R5R6ciZACXyjpoKdXQwuZCEnIUbtAE5u9LoJxnRUIzfTlR74eIgYXtH4g2nnJa
	Bx5pCiZpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yTe-0005xH-Hb; Thu, 05 Sep 2019 20:35:34 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yTV-0005wD-ND
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 20:35:26 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id 4197A2C00C0;
 Thu,  5 Sep 2019 22:35:24 +0200 (CEST)
Date: Thu, 5 Sep 2019 22:35:24 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] i2c: uniphier(-f): remove all dev_dbg()
Message-ID: <20190905203523.GE8989@ninjato>
References: <20190905044648.7632-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
In-Reply-To: <20190905044648.7632-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_133525_906670_FE84F8C5 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7145944910620444772=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7145944910620444772==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wTWi5aaYRw9ix9vO"
Content-Disposition: inline


--wTWi5aaYRw9ix9vO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 05, 2019 at 01:46:48PM +0900, Masahiro Yamada wrote:
> I have fixed various bugs, and these drivers are (I hope) pretty
> stable now. Remove all dev_dbg() for code clean-up.
>=20
> If I end up with debugging the drivers again, I will locally revert
> this commit. I no longer need the debug code in upstream.
>=20
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Yay, tasty one! Applied to for-next, thanks!


--wTWi5aaYRw9ix9vO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1xcYsACgkQFA3kzBSg
KbYw7g//QsSqP48+IcUw8OqlQKxp+IMdWVY20O7CfqNW2XGITbwPt5mAdOgqANxF
txCPnXhi/FZofE60fAZqBi18Y2C/LUQhxAfsjZfe2Vyk8g60qtgipgkRyx/DQxZb
SKeA0ikTsPt9g1mst9XxEgJtZZC0c02zuJOpo7LjWW04kSzZKjeUjCLmecKNedZL
MfXrCh4Dtejryjxn78/yZwSoL5DPGN2dpJDgOYtx8ZUMFkuuPoPNZmkm0GkKdqGn
8bJGz9VivsxUMfGfNhwt0cw3CgvH2ULJgUmt+Kh+yLRGHKiUobP44IobAOlofcHq
eshlOkhtKDCbtxP1ht8wckh/gU6hGAG511vfslr4+5UMAF/M+TWELMHvvJ+0gpeu
Hyq8u7QPC7xBZU+DZ6YU3SwJS7/oOlw5hFMYOCAe9uXiEXp8iSpICMG5s8woOQoh
07VgJ1QK6oqI/ND9gPD75XowvWqLxpUNKKUh5ZE7GxlQJigTpTcJRUHZSxFG0kQE
0wMYYc+bJp8kcKcyyaSdmOFWftzGJEPIa2rDIejICjIoqN9Lgs4xDug60HIk4p5i
Pap8jTntvMwKGKtMOFoUKPQlq64dFkyZLSw2nSjfTbR5bCR9KJ/rEI0gJJ1jGFCH
dbwxzfI/IxbFeGT0tEd42hWeHDzXf1q1cucl/tazp6VeXDrFpac=
=pLq7
-----END PGP SIGNATURE-----

--wTWi5aaYRw9ix9vO--


--===============7145944910620444772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7145944910620444772==--

