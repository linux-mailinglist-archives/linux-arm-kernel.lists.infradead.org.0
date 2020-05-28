Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E51D1E6578
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wlcDglcqYEH0Hhu6Ckbkc4V+dzSiHFRvCcOWMhc0JvU=; b=TjOYjtU4QtnHWlQSb300ZFuta
	5XxFEJ35Z/xg0c/Tzg8eRrfInzLFR0wi363dUL5xWVFauUs8lcx86rqyjp/jHE4pD+Rr9jvq03Cof
	lRpT+tV6o6y1NNaseJJgszW2uaIsDlszDi8HoVXOgVvNvnpvYtxjgIDND1Y/PhQA/k/UHdqiAJwYL
	j5wOUdqwTYExnbzWbf2d4q7UsvsTs7vHLhFtmcOKF/tTqMMfLBtcO3i80LT+XC7wjHcJzOWlsvRxR
	js3c72ZLT6RmShs6qLMtgW9Q+RSw74QzMK98ctabPhkNUyMEguIOG4HNa086tNBMebysoOnUuKmt2
	dJS3RJLJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeK7A-0004UQ-DH; Thu, 28 May 2020 15:06:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeK6U-0004Ci-BS; Thu, 28 May 2020 15:05:55 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1F9C2075F;
 Thu, 28 May 2020 15:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590678353;
 bh=+kL9LhCOGvjtZP4YPcHbUGU+IyjWZiXkw5UtPvN8QX4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=02+DmjcYGsOPMYRrYToS00mFAOc3pQ4g19iM0Fy59nj933Nkv7+e5rx7sIb0VHqu9
 8O43OO/vO5hIdQFf8GKi98VPOXae2ph3gzrRD6ys5uWZHSb08fWbJnzp8qeg+Vnx1z
 0/J8Q79nSxN+47MxvnioDrdV3jHWdViSDcngxlSk=
Date: Thu, 28 May 2020 16:05:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v2 1/2] regmap: provide helpers for simple bit operations
Message-ID: <20200528150550.GH3606@sirena.org.uk>
References: <20200528142241.20466-1-brgl@bgdev.pl>
 <20200528142241.20466-2-brgl@bgdev.pl>
 <20200528144456.GG3606@sirena.org.uk>
 <CAMpxmJVB_L+otX2u80qwGjw4TXCJtwOXe=t11O4Daq3miMVk6Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMpxmJVB_L+otX2u80qwGjw4TXCJtwOXe=t11O4Daq3miMVk6Q@mail.gmail.com>
X-Cookie: Small is beautiful.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_080554_445032_28621352 
X-CRM114-Status: UNSURE (   8.19  )
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
 netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2420773373026921983=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2420773373026921983==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zq44+AAfm4giZpo5"
Content-Disposition: inline


--zq44+AAfm4giZpo5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 28, 2020 at 04:49:06PM +0200, Bartosz Golaszewski wrote:
> czw., 28 maj 2020 o 16:45 Mark Brown <broonie@kernel.org> napisa=C5=82(a):

> > The tenery here is redundant, it's converting a boolean value into a
> > boolean value.  Otherwise this looks good.

> Do you mind if I respin it right away? I don't want to spam the list.

Sure, go ahead.

--zq44+AAfm4giZpo5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7P000ACgkQJNaLcl1U
h9AAggf4sQcyJHFUloflyzh/lLpY4EwFcuWbYHkDTzIGPDOo0qxyNCuTANexUK9i
0rryGP7sH+5PPNWfafBj96tM6tU6efhmBlMm/rz/LC0aFvi4zSf1tDZ58UeDUJ8j
CgEl1VwNyYXPOZ5Pyn1LyRddEBtBuohoC9+3ioc5bZKUT69FPscRSRDsqQ92fe2C
ryplo9IicX5u3ztzQKa00PhLqvPMMiJD+Q1D4siBOXy4M2GDESYc0WSJSPrkizCH
u9DaLdXZFPRpVpyKumF1eu60mtaZhS758X9gO3GHe+Vd+bng0C5ShbJ2w3rWcvsf
AFB+my302HXqBrtpIsfJs877uHpg
=efX/
-----END PGP SIGNATURE-----

--zq44+AAfm4giZpo5--


--===============2420773373026921983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2420773373026921983==--

