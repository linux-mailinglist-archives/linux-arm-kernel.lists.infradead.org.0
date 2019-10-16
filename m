Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB967D9451
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OBfCBOh4dIeytPe621EWdSkmAQPy1TqAIRmjZSWm+YQ=; b=D2QYytAq8h2LaaHlmLMG8h92B
	BtfRKggA3WPmv9nvlnJaHIiWEkw8bUyXl8Kr0aN37JfV4lZV4oT1raGUy6jr4MiOe85IAKeOPhwgv
	GnkAP4n99gL4/nN3Z00HjFNJBD07r0kow8Peirlt5QrcFmhuqpE22lCC6j3O6KJkUvLqzBF1uxekw
	RtnuJvnnd2B37MEPWtv2r+C2pM5YWPoWPqTTyJ8bMPW4QaeP+hyGPOyvbRdWqeg05oJUR41TZoLYh
	qvlC1fqSskgBlJDiqBibagJ1MaXNKXUiuw3J4oGKzvKsdjPu4FOd2pNhzQ6TXdnAe1hhYaaBkeAR6
	YircyyOqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKke0-0001nc-Pe; Wed, 16 Oct 2019 14:51:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkdm-0001n1-2I
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:51:07 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 331AE2168B;
 Wed, 16 Oct 2019 14:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571237465;
 bh=Xh/9gWmwBKdF+8neE3kItdxVMfpHXwc3n8w1uZywGNQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bMkLi5d63UN14+72d9h18uH19CkeKG76vGq+CqQ+wIG2Cyem630Ojwrt9CEOdzh1f
 nfcG0oLaZc2le2vb93goK32+ObpHGn+url2irqclWJw+pWdZempUJgMh0VLuA1KDwD
 FgYwaZLYrXiSq3mJDbHG9vjPT2zA1qR1eMkuVBy4=
Date: Wed, 16 Oct 2019 16:51:03 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Code Kipper <codekipper@gmail.com>
Subject: Re: [PATCH v6 1/7] ASoC: sun4i-i2s: Move channel select offset
Message-ID: <20191016145103.im4h75qi2fcdcmar@gilmour>
References: <20191016070740.121435-1-codekipper@gmail.com>
 <20191016070740.121435-2-codekipper@gmail.com>
 <20191016080420.4cbxn2hdt3wwtrhl@gilmour>
 <CAEKpxBmNCA4U8-X8iSwOxBZ7T3dp6352S2Kfxc6f5E4N671zvg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEKpxBmNCA4U8-X8iSwOxBZ7T3dp6352S2Kfxc6f5E4N671zvg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_075106_128473_4EF42FC3 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7081491837990081521=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7081491837990081521==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fi6amry3fbotqfax"
Content-Disposition: inline


--fi6amry3fbotqfax
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 16, 2019 at 10:41:31AM +0200, Code Kipper wrote:
> On Wed, 16 Oct 2019 at 10:04, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Wed, Oct 16, 2019 at 09:07:34AM +0200, codekipper@gmail.com wrote:
> > > From: Marcus Cooper <codekipper@gmail.com>
> > >
> > > On the newer SoCs the offset is used to set the mode of the
> > > connection. As it is to be used elsewhere then it makes sense
> > > to move it to the main structure.
> >
> > Elsewhere where, and to do what?
> Thanks...How does this sound?
>
> As it is to be used to set the same offset for each TX data channel in use
> during multi-channel audio then let's move it to the main structure.

That still doesn't explain why you want to move it to the main
structure. It's there, it's calculated already, and can be used during
multi-channel audio if you set it up in the same function. What you
need to explain is why you can't do it in the same function.

Maxime

--fi6amry3fbotqfax
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXacuVwAKCRDj7w1vZxhR
xTaQAP0X2iGfJ5IY9S8B+s9Zh5MP11erZjYLItvMfIJTyW5EAgD/QxPJRbfuSz03
Mqd/XK6k/sf6xBYpSzArepQAruvCDQs=
=rCXO
-----END PGP SIGNATURE-----

--fi6amry3fbotqfax--


--===============7081491837990081521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7081491837990081521==--

