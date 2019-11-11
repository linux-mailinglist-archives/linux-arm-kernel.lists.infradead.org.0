Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED48F7444
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 13:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PKgYB35xlp408blX54HURNdRKZgfQZB5jSDoqME1PXw=; b=txWxWX1jij+l+E/I1sIvBC4jw
	x3wylco1J+c1sqjfbl7ZGFtcR1KrqtdEx1UOdt4dYy0DrdZaLVVdismjYKe5zCkAeavKecUOxv7eX
	p4CXurolUymDcEPnXnG/oTZnMTeGI0OS+tYapgKBgSSLzgdQ7q4L+McnagJXuliukQwv0CrlvKsq+
	ji6IQQGKwulNuTYoFU1CuEpSK+1I5FW+YyxlNalgB3inwL3KX5+2FBCkJHHhkDChlXDU1+zKIUiyQ
	y04Z3YLU0GNa7HfUWH59Us5hOBJSBDwXayoNRwM9WJ1JDpAzuxKpdNSgsHhGXeGZHjRwTthq/Fda/
	Kv5nDn1rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU93k-0007Zx-KU; Mon, 11 Nov 2019 12:44:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU93c-0007ZS-JY
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 12:44:37 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5A272067B;
 Mon, 11 Nov 2019 12:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573476276;
 bh=ajhH1bcwy4ImOiIuHSO7YajCw6n21tL7RDGRVB2lHtM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yl9Pko/Cg33dLyvhkVwIuiLSPyzwt2KxbU/Ss3AwM5MMbsQWucFJULjjtjGQ10TEx
 st47qj1aDGfQ162L1RBfekvhxpBFbYY3+GV9guBw2G8YYsCyaY4RgRwIE1wfE5Vcfa
 /fm9r/B+gbdBOdA+QpjjicrVjPAbRj1CqU/2vfcQ=
Date: Mon, 11 Nov 2019 13:44:32 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable IR receiver
Message-ID: <20191111124432.GN4345@gilmour.lan>
References: <20191109113436.17979-1-a.heider@gmail.com>
 <1875943.ZifhFTZG3p@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <1875943.ZifhFTZG3p@jernej-laptop>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_044436_658903_56369EBE 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, wens@csie.org,
 Andre Heider <a.heider@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0887370777938283605=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0887370777938283605==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nrXiCraHbXeog9mY"
Content-Disposition: inline


--nrXiCraHbXeog9mY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 09, 2019 at 04:51:39PM +0100, Jernej =C5=A0krabec wrote:
> Hi!
>
> Dne sobota, 09. november 2019 ob 12:34:36 CET je Andre Heider napisal(a):
> > Orange Pi 3 has an on-board IR receiver, enable it.
> >
> > Signed-off-by: Andre Heider <a.heider@gmail.com>
>
> Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Queued for 5.6, thanks!
Maxime

--nrXiCraHbXeog9mY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXclXsAAKCRDj7w1vZxhR
xdnRAP9kz9UkW10ZyT53shKPssao4oAtfBWovW3wUZt+pIdHlAEA8dzaiqlQxN/L
9g722MgEQ/++mOPW9dR97OJqnlwMpgU=
=wYZ1
-----END PGP SIGNATURE-----

--nrXiCraHbXeog9mY--


--===============0887370777938283605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0887370777938283605==--

