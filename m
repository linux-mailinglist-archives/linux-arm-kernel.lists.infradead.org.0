Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60AF15D334
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:52:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sfJv51PCnL0+3nSjDBznQA86BqKjaHIN1kPzJrFnZLQ=; b=QzMz+TBgLPVcAoQByRdFB8voL
	jLAMKJRUJnpJpnud3HTuUemLyH+jUp3So0LSM3oEHOclQUdRW87PfadM/Xxl++ceX1x6Q/F3sy79S
	363e1l6QGLqFuau8vJeBUKJEYFmuD2AaK7WyxwLr1I0yYu6RIEsO5HG5K4RpySIyI3RUlTqejej3/
	bWlAKEWFEPDeAPMFup122W7KtgSS6tblTSYP6zYoVJx5Lxa3S2nsoTF/FiidmVY1P/Fj92MyTYOMj
	gSWZivi7+iaz/C/j7Iz+XiY+9iPfhx5lUJ8v5sz0ce2n+yJ3lr2RqgOhMQNjDTF/9BGnU2PSaC5zz
	e6BUJYADg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Vm4-000506-IH; Fri, 14 Feb 2020 07:52:32 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Vlw-0004zN-5S
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:52:25 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id C1F1722116;
 Fri, 14 Feb 2020 02:52:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 02:52:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=FfWukEscDXi4AiOAUwFnISerJNT
 2ulBjdIfmoaDjhfE=; b=Z38/5FwBT6wIDGSePzDRMo4642ClZld+yNMGR+vLRsU
 i//MH128GCl2EtPqPWssIZtyhUta6Lw3Wo4ML3zsXaYLjdgUh/xNqotb6ulJj7Oj
 ZaI7JPGJ+ZhcJbQaYrSqmPBJnCvTAc9I31cBKDM3KI9TbnyQaLrj1uRdyoKgPxqW
 x0bw+3KIkKsztIzi1aOFr0AzETpp/qhh7n6vPKg9cFeTIdGCkiO9Ew8fIZyq53HA
 yf4X4Q+pK2lLRYCakC52ZHY1WlQvtUC7hztnclpIBUZkSC41Rpw6V6A/rwWU9Zvx
 onXwUPrzr+SPawEUEPMRsNFwuEi4/ey4Emo9cFlVVkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=FfWukE
 scDXi4AiOAUwFnISerJNT2ulBjdIfmoaDjhfE=; b=NKi+uOWDuThMPIsLcRNOoE
 pS45sqNDvq/FkiQsUlp3x7GL3fXbid8Lf6Twi3KWAOqzQ2yS9bg/A5aJyLjn40Vl
 9rNx2u+tevyM+/VWRYMfC3uOCtMrpOnma/9u3fA9+nnGTGXUlC+fQUc1EtVfL7Q4
 hfZudf8aRpKr4J4NFoYNwgmMBKsfxnHG1MAzMF8ypK0E3Dl3KLkfpsLtB4kQ1a4K
 JqP6q/rxcVyWFVt5KmrCE4fdWwQXcARiWuHavWUGJbaWYcRcHGmxUELLuza0FoB+
 0u7Gek7FOTABf7sl+ud1ty6KqpCz8c2aDV+KTeHCuRLa/XoF/jDHiJtzs6anzAJQ
 ==
X-ME-Sender: <xms:tFFGXkpA1pzCRTjqvFgfaRva6i4lwuyCJbVIZvPMBCW62UBf7O6Qpg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieelgdduudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tFFGXhNgSQ0iQpv9OGOEJ9A-R0hYHZn5-IGI6hKLnQkheCGLD25Dog>
 <xmx:tFFGXmqDL0f1yuNg8MzbGYMnPazFMFH-sSXv3mquJ4AAXF1GVu8bZA>
 <xmx:tFFGXsETKERymYp8JggfZEbg-xP5EPPbomwoGFk_1eJd_c6aTPK4HQ>
 <xmx:tlFGXpbe3nccuQN2oSfBiDUIqwk5IRAeB6NPDoZmwGd0H_qTP64QSg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 249683280066;
 Fri, 14 Feb 2020 02:52:20 -0500 (EST)
Date: Fri, 14 Feb 2020 08:52:18 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Message-ID: <20200214075218.huxdhmd4qfoakat2@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-2-andrey.lebedev@gmail.com>
 <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
 <20200213200823.GA28336@kedthinkpad>
MIME-Version: 1.0
In-Reply-To: <20200213200823.GA28336@kedthinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_235224_348265_D2614D9F 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0955814220066087996=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0955814220066087996==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x5jathax6z2l7lsv"
Content-Disposition: inline


--x5jathax6z2l7lsv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Feb 13, 2020 at 10:08:23PM +0200, Andrey Lebedev wrote:
> On Thu, Feb 13, 2020 at 10:43:04AM +0100, Maxime Ripard wrote:
> > On Thu, Feb 13, 2020 at 12:23:57AM +0200, andrey.lebedev@gmail.com wrote:
> > > From: Andrey Lebedev <andrey@lebedev.lt>
> > >
> > > Define pins for LVDS channels 0 and 1, configure reset line for tcon0 and
> > > provide sample LVDS panel, connected to tcon0.
> > >
> > > Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> >
> > And this prefix should be ARM: dts: sun7i ;)
>
> Ah, thanks, I think I've got the pattern now!
>
> > > +			/omit-if-no-ref/
> > > +			lcd_lvds0_pins: lcd_lvds0_pins {
> >
> > underscores in the node names will create a dtc warning at
> > compilation, you should use lcd-lvds0-pins instead.

It's silenced by default, but you'll get them with W=1

> You're right, I wasn't following the naming convention here. dtc doesn't
> produce any warning on this though. Fixed that anyway.
>
> > This will create a spurious warning message for TCON1, since we
> > adjusted the driver to tell it supports LVDS, but there's no LVDS
> > reset line, so we need to make it finer grained.
>
> Yes, I can attribute two of the messages in my dmesg log [1] to this
> ("Missing LVDS properties" and "LVDS output disabled". "sun4i-tcon
> 1c0d000.lcd-controller" is indeed tcon1). And yes, I can see how they
> can be confusing to someone.
>
> I'd need some pointers on how to deal with that though (if we want to do
> it in this scope).

Like I was mentionning, you could introduce a new compatible for each
TCON (tcon0 and tcon1) and only set the support_lvds flag for tcon0

Maxime

--x5jathax6z2l7lsv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkZRsgAKCRDj7w1vZxhR
xVn9AP0VqLi8/MHY79s8QWyp+/otjpGvsgLBU2Zk6DQhh8ltugD+NXF9PEFDFa8/
e3b3qvGzp/u5wrJVKi3rJiHrzi/5OAM=
=c3MI
-----END PGP SIGNATURE-----

--x5jathax6z2l7lsv--


--===============0955814220066087996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0955814220066087996==--

