Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D801C585A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7wEHD1PhOGrtnaI+ctj1zA4Jumze4Jy2c10bXsRtgWg=; b=dy3A65tjznx2u63mrppZilK13
	gn0HYofT7IBC4inLlhF5BBIO9iG7eWLg1teMDKoDaJegdAhvhSf6WdXs7CjNBfdRzj02ydvK6Qd2L
	d814dcyVR+Xsnu6Fr6PA1OqagE5NJ4Cbw7C/WMtm2C5uXA1ckhA2/C+2nfQAwcDffHJiWzjbFhJM8
	GaU/6/l4jZq/JbW4H+unpvEu1wYNkugGekJPfhp6rLU2RMEs0EVRNZMNQmfJ31/MGQonBj9frtLpC
	rRUgheO/VjkNw4cny0RwcoY+4ARvoVfLD5ax5jF2NkRIJV7r7iMpw0Z4aHh5qyK5D84VTPo+4i4Cm
	JlsfZ9wMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyKM-0004Do-9y; Tue, 05 May 2020 14:13:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyK1-00047u-UL
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:13:23 +0000
Received: from localhost (p54B335A1.dip0.t-ipconnect.de [84.179.53.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D8D420735;
 Tue,  5 May 2020 14:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588688000;
 bh=R+70PJ9vucGn241Y2Cqa7rgwicdjK9Vs/+6SMmkQ9rA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FLcOyPVXax4walL2ONgDDGm3H9TAh64RPOsmQNypepd9HqsoSBONz+ZzlsIDQ5vD5
 YHgBECF+mKdfrretnacbW9YNrIHo84HsBZXGZITataDIOYcqrhrgueLdEdcIRKvjT6
 Bgo9XVwRjgwp7Tv78kNCktWKQfVJYUTzZCZbKjmw=
Date: Tue, 5 May 2020 16:13:16 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] i2c: drivers: Remove superfluous error message
Message-ID: <20200505141316.GB2468@ninjato>
References: <20200503120847.13528-1-aishwaryarj100@gmail.com>
 <20200504114408.9128-1-aishwaryarj100@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200504114408.9128-1-aishwaryarj100@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_071322_068638_52A4A299 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Thor Thayer <thor.thayer@linux.intel.com>, Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-i2c@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6832026551139533483=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6832026551139533483==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jq0ap7NbKX2Kqbes"
Content-Disposition: inline


--jq0ap7NbKX2Kqbes
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 04, 2020 at 05:14:06PM +0530, Aishwarya Ramakrishnan wrote:
> The function platform_get_irq can log an error by itself.
> This omit a redundant message for exception handling in the
> calling function.
>=20
> Suggested by Coccinelle.
>=20
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>

Sorry, I forgot that these are already fixed with
e42688ed5cf5936fb55c78cc365dbe0944af7c63 in i2c/for-next.


--jq0ap7NbKX2Kqbes
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6xdHgACgkQFA3kzBSg
KbbwRA/+LGyt1I9I1ywJp0ulKpglf4waJU/2Fay5kC0dKFkixtjarMsChvsIcpJJ
eJlTxUY6krLo7eUh223GmX5Y313bXl5uFIvEC4HCEbcxSVLOL81jvdVkDZcVG9u3
CMBCXMCchPdGZnbPL7Yzvpshuj87+UtHNnS/a293LwO3exDR5eVZEGi/aICrRum/
uf273Fx8g0pzh5h7J5erA4dgbrxP20PNt4BYUlfe9sdWft7yW1OS/kd3gaGxBnQp
LCTk0q9f85vYTzrUX1bk2jvpls0n1kAnD5F1+73kvFq+DsnZD0t1C3FDv/GpRcc3
TuC+rl4mcAVIoOtErmfT38xRW4PIAu0qzWJDNbnZrd12fZKH/kw20L7Yq5nmIjvi
mXSpg+JKua+e69VuEsxSTuoDxxEVyWTo/yKc1rbDJNWKwngiR8bldUZDQDtOoSqA
aWskPYf2kqarsWXYGeaXB8n4CXjD6fyufGjr+SsOD7tcd9ULOOzhfN6GUENw1t9L
tI03I7owU1+hShjx/pBDpFlqzJQExHLFjMgoMD9aB5XxA7nY82ny4bcpjdy34qqW
GF88XiojrHftpqtvEfq/qc22l89lvm9Yts8sNg0Axc+jp2/jiKLgY2rgfnZJ+e0r
MdN0pEl1GRcD3e4WK+16qHy0BViPHmBqCreipeNddURCEXYezmo=
=Q1Hw
-----END PGP SIGNATURE-----

--jq0ap7NbKX2Kqbes--


--===============6832026551139533483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6832026551139533483==--

