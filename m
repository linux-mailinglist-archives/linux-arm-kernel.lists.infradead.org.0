Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367E41E6454
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ESduqECNujmlGFwqpWgrvPm7NL7YrvELfTe9FTnsQvA=; b=Sp573nQ6GBZHTb2F7UroSwE27
	dBia7xIXppUH6tIVnDcsVsZPp4X8G2pF37HZdW23ikZG1BTHlw8LJEZy4OrzkFMI3VTITGvAuGsNj
	y8h0OEzibL9lpxH/RTfqZkOzfaVY1OWR7lrMafPsrv5+Nepxb10SUgkLGQyOVgSZ2lRasYXaBR8GI
	hF7unqBeu1kSDJVsqQiFD91V886nHV9C8EJ6XZY9/HoV+gxTgaYEbjh3vBsO6of55va6LTLoFNpkL
	1I+xQdJAECWyhwPXPjSJ1P0Yxv+/YcYFZ7ADFt1XhDK6U6rH0KvOBhs3Y5vMuRyQgOyQeBuaUwXmo
	450WH+jTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJmb-0006Tm-0g; Thu, 28 May 2020 14:45:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJmG-0006Mn-EF; Thu, 28 May 2020 14:45:01 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BEB6207D3;
 Thu, 28 May 2020 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590677100;
 bh=X9YK+GDEsdW2T8WyDGxweojlNXR+vB7BnE1HKRUoVxo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l2E2WVrocVGuy1b/MoQhvijltZBfFRIPA1HuIMFqM5dN6XLFuQWc89P9MA+V3Em7x
 9Rgm9qI719tIY6fUpzodZNDu7Nt24Upte5jX83v0rzQGTFaN+0PlHnIxzjfDBJ8YwR
 f5bCGf7jklLlgV/qFq/P4M6JnQzRot0Ta1CnpqS0=
Date: Thu, 28 May 2020 15:44:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH v2 1/2] regmap: provide helpers for simple bit operations
Message-ID: <20200528144456.GG3606@sirena.org.uk>
References: <20200528142241.20466-1-brgl@bgdev.pl>
 <20200528142241.20466-2-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20200528142241.20466-2-brgl@bgdev.pl>
X-Cookie: Small is beautiful.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_074500_497879_BDF459E4 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6350011105306867269=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6350011105306867269==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RMedoP2+Pr6Rq0N2"
Content-Disposition: inline


--RMedoP2+Pr6Rq0N2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 28, 2020 at 04:22:40PM +0200, Bartosz Golaszewski wrote:

> +	return (val & bits) == bits ? 1 : 0;

The tenery here is redundant, it's converting a boolean value into a
boolean value.  Otherwise this looks good.

--RMedoP2+Pr6Rq0N2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7PzmcACgkQJNaLcl1U
h9DzXAf9EwegJko8ZtKiJNAmWI/0roZMdNBpTkKJLOfFqs0LbMZdg1Tg3UA+jOe6
AM9PSwU009hn4dmLdAbnqIfXhp1e1zPUb537lozVi/6cAbc6yzwzZBxajJjUxjk9
amrt61H/LZBJyyP1qrY4a/vNtu0R558ozAuMmINAfkEsFdGQq6WZ63N+bcJzPiF4
kxSTX7Mewb0jyB6ZAilOMkuRFNR+bCGjV0MNVd41MUT+zEcgaMP7Dv6eJ/PUBJ2y
klySoD2xOzlpxBUpKblFYuso9Q8iRrGGjr49/rh1rYuKjRz/wt8cbwe4NjrG0N+q
E8vZUZWNgG2ZVnG3DbKIx5QlNJxtDA==
=EkdN
-----END PGP SIGNATURE-----

--RMedoP2+Pr6Rq0N2--


--===============6350011105306867269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6350011105306867269==--

