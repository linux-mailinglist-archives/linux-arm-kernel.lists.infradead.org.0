Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A221E6242
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BpqailmzA3LbZZX9CoZAbXwLNNaq/oRSixH2wN4KboU=; b=WZm+m+TNnIK97PAFDlbhWhaE2
	RBrBp+gSgjjofNOI7+YYLocCXeZIg0kJyIzvfTbmO216gW0hqwdjNNYFjR1PnwcfdVbhkDRTP9Tjp
	PEGaWeOwAf27ID6tpuNG49ApRMJ8/WfjHRr49EGj6PLu7IRkUIKfFx40SJfylgL5t/+GX9k/5WxCw
	rHZh//NcHBMueSaymprJuNdxWJePzK8JiPFfDCnbxYx9HtuL7ex62bdF2+19502wj5Tx+xaSQkbLT
	GRL+CR31VVLJ/9GhpohfQtwhYR7B6SH4ec62U+0jQCtlRWTDsBsQWYqiv90Sr82YLkzcG6inDbY4z
	hxSzrZagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIba-0001Gz-Mn; Thu, 28 May 2020 13:29:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIbO-0001GT-Ie; Thu, 28 May 2020 13:29:43 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 657F5207D3;
 Thu, 28 May 2020 13:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590672582;
 bh=VbVffYZ9WuhrTKtlvAZN7dWKp6BJwRmGIOc4s2SHMVM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e2a6o2ZN6Np0K45Iawn8mRD4HE3IlheKZ8Q+L5IcK88V9cyt75e174rdcp9rbMcHk
 IDPXs4jfsoyWbNc+vbUrg2haSKzUHFxhsmQxCXYKbzQ9h6rew50Mfz86o7l0jflU8r
 G/iHlnSeeX/Yc4LJmCTwxHThDoxF24h3fHuoptts=
Date: Thu, 28 May 2020 14:29:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 1/2] regmap: provide helpers for simple bit operations
Message-ID: <20200528132938.GC3606@sirena.org.uk>
References: <20200528123459.21168-1-brgl@bgdev.pl>
 <20200528123459.21168-2-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20200528123459.21168-2-brgl@bgdev.pl>
X-Cookie: Small is beautiful.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_062942_635626_5A30CB12 
X-CRM114-Status: UNSURE (   6.68  )
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
Content-Type: multipart/mixed; boundary="===============2468259846389123612=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2468259846389123612==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/e2eDi0V/xtL+Mc8"
Content-Disposition: inline


--/e2eDi0V/xtL+Mc8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 28, 2020 at 02:34:58PM +0200, Bartosz Golaszewski wrote:

> This adds three new macros for simple bit operations: set_bits,
> clear_bits and test_bits.

Why macros and not static inlines?

--/e2eDi0V/xtL+Mc8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7PvMEACgkQJNaLcl1U
h9BJSwf/dYRTjyQ2Yy7iTcNYVOuamZoSQgG3ZL6ANS748UWNttQaOUnNCc46dxSw
MowHobHyRDcWopIfxiDE/ZiBeNAZD971eifLIHjTnHtUdrsZWXrsfGg/BSUGJYTA
pRhv0h3uHXvIBlGhOXCGcuNDUV+bAhHv0xWr00E0bKIjoHff9Rnw9PaEOI24sSzy
x5NVhciZzUFnROu1RHResg2qzDYcROM5lNBaOnz3tD4+0E2YtF0dgoQYnf0WjWV3
R02uaFjFRsfdbr+NmpoKgVKbzZa+Z9/0eY3BYBiBk9MdfkJaex52O55AiGHy6V8v
W4E4Q9Nh0PrJJ+AZwItYtnNqeaWSQA==
=dUDC
-----END PGP SIGNATURE-----

--/e2eDi0V/xtL+Mc8--


--===============2468259846389123612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2468259846389123612==--

