Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DBE13015E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 09:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SihH1z2fgDepjc10ebxR2YTvylZB9VdOKKLv/pKWSwk=; b=kjZGDtJhZQ+kc2UZ2yqp6jLGl
	Hu4XtCBQS34SFjjpvR7W93LyZ+MbEMZrhH9i1dWNXV8Ed/pL89lokHnsxIb3PvOwp0qOVmraBQxOG
	yBBo7lIrtTfJ0pNvqRRCw7bRj6ihRMYMnvNbSbuyBrdEK6XDyyTOGRnhqaweoMyWwVRrBXhdLHZYO
	Pt+GOL1tpR7mfR9yEtRzhO8MaXbfJTTpfwoSY0nd+Ldbgx1U5rIKP7h9h30WZm/Ax9oJjNYq8EJWo
	HbUe6np7+8X78zvXOoOaoGjSvQkCFKsGPelX30UnvrgcnwT4JgiRP/1Dk1te1hNQnn/4Q7d53mPNS
	5AtJ2RilA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inedN-0003lm-LV; Sat, 04 Jan 2020 08:18:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inedI-0003kk-Aj
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 08:18:05 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C03C6215A4;
 Sat,  4 Jan 2020 08:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578125883;
 bh=3v1uQmK5HG72Gf2Ti7z8J9WdSlBnHXdgemY9IhzLgbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pdXAJ86sEhD8Z61nftIVnbw9hKy+4afQxtvj/ToyFNhpKg4/Dus/HqUirv9lYVi9v
 pewNARcB+f18V2ScXvqO5NAlTb21TWASQH6aZ5QLCFWUDgyiEx7Y7mI3TzFxLIUqWf
 0whRyjh70IeddRUGJc0a63btGKrzye+xcdRM1Gg4=
Date: Sat, 4 Jan 2020 09:18:00 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 1/3] clk: sunxi-ng: add mux and pll notifiers for A64 CPU
 clock
Message-ID: <20200104081800.fxgtfsabue4kpmla@gilmour.lan>
References: <20200104063505.219030-1-anarsoul@gmail.com>
 <20200104063505.219030-2-anarsoul@gmail.com>
 <CA+E=qVcS+bWNx6Sneg-JG4-NHQZ8e-ztszsPu8N2d8HawyDYqg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVcS+bWNx6Sneg-JG4-NHQZ8e-ztszsPu8N2d8HawyDYqg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_001804_392846_21141FC0 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Vasily Khoruzhick <vasilykh@arista.com>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============2574488003669408375=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2574488003669408375==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5jczm743ulhu5rm2"
Content-Disposition: inline


--5jczm743ulhu5rm2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 03, 2020 at 10:42:35PM -0800, Vasily Khoruzhick wrote:
> On Fri, Jan 3, 2020 at 10:35 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > From: Icenowy Zheng <icenowy@aosc.io>
> >
> > The A64 PLL_CPU clock has the same instability if some factor changed
> > without the PLL gated like other SoCs with sun6i-style CCU, e.g. A33,
> > H3.
> >
> > Add the mux and pll notifiers for A64 CPU clock to workaround the
> > problem.
> >
> > Fixes: c6a0637460c2 ("clk: sunxi-ng: Add A64 clocks")
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Vasily Khoruzhick <vasilykh@arista.com>
>
> Ugh, didn't notice that email is wrong here, this patch is not related
> to my daytime job. Maxime, if patchset is OK please fix it up to be
> "Vasily Khoruzhick <anarsoul@gmail.com>", otherwise I'll resend v2
> with correct sign off.

Applied with your mail fixed, thanks!
Maxime

--5jczm743ulhu5rm2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhBKOAAKCRDj7w1vZxhR
xS1RAP9GhsTqDno3/XcGN9WvkXqmWkis4l6lPHyEMVp48+B2HwD/ax89DckQzx3i
GMiJDEgE+teEa5Iv11Jo/k52rR3kKQg=
=FJWf
-----END PGP SIGNATURE-----

--5jczm743ulhu5rm2--


--===============2574488003669408375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2574488003669408375==--

