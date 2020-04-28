Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC7E1BC5E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R1zYonjhsIsk3Yh/qTta4TifZS/w9LOVN3PEQuRC120=; b=Rr2yx8EP4b0v88/M347+KA2xY
	t3Bz7BBGNX5iyPCRV02Qyo3yIgD7R9fRiWB7FwkNce3Ay0Tyy1qCmUZxA3qMng0SOst4nJs1hRSfn
	Gbu0IsbK21nmPrTqlRmWFOsW4okMPntR+cWnxZr6UVPjTQmMBsE6TmZqV2+c5j0967A11Fpo/TOZx
	5uouHj4xtUHcStcgFezacnscO6OBnCbPMK0XIMtq7GS8EpZaJdigikju0b/3lRGiRvj65ej+Kp9mY
	39ta/m4ioeUN5FmVsQQhAqtnmU9V9QLdZPqh6L+7v0kzIvrHl5TxqvCWVT7nKV19ncyVzpVisdJas
	3SEA9C+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTYU-00040H-VM; Tue, 28 Apr 2020 16:57:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTYK-0003zr-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:57:50 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE42320757;
 Tue, 28 Apr 2020 16:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588093068;
 bh=QaFdvwQtNCzuxJiiAPZ3ZOFvDXcpwjoLKDRZlvc+JTU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vraqZ0wEcRphTU3lPtLyXChwnLcRHayEWGgLHdrwesblGo/42zUJF4jLqaKz47xEb
 ORmefUppK8xFN675aFR0gcO4VVqr2YyuuyxKCpPYfzSeapY4vntKXugE6AbXyEFfgo
 yJ+sGuNxbqA2Hi26mqqt5ODXt97n7b9DRXqC2cRI=
Date: Tue, 28 Apr 2020 17:57:45 +0100
From: Mark Brown <broonie@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: Audio sound card name [was [PATCH 4/7] arm64: dts: allwinner:
 a64: Add HDMI audio]
Message-ID: <20200428165745.GM5677@sirena.org.uk>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
X-Cookie: Eschew obfuscation.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_095748_986009_C30F1D8F 
X-CRM114-Status: UNSURE (   9.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8893631165815819972=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8893631165815819972==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x38akuY2VS0PywU3"
Content-Disposition: inline


--x38akuY2VS0PywU3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 06:49:10PM +0200, Cl=E9ment P=E9ron wrote:

> I have a question regarding the simple-audio-card,name.
> In this patch, I would like to introduce a simple-audio-card for the
> Allwinner A64 HDMI.

> What should be the preferred name for this sound card?
> "sun50i-a64-hdmi" ? "allwinner, sun50i-a64-hdmi" ?

The former is more idiomatic for ALSA.

--x38akuY2VS0PywU3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6oYIkACgkQJNaLcl1U
h9CxAgf7BWIci8LznrR1sMDBntaJK2/0G/U8xmAKYRllkCNU+ygWiMh4kJP0s8Xt
kwdFyZZIgLgcsjFiKBtUmSOtJtQklUyVMyYfN4Fuxspk0tuoZ55f7XfLkZelcMin
pDhjmgvcSRMfLrcLovinmN0tAR6rWlNzUbDEs2J1bkxyoBsp1+9JbIadgU0+HVwC
7/EYkpQG5niUXnDqe5puy9aeR9ml20pg8+DYnjTjgTUqGQTBbvdrd9PIwjsh7R0t
RK9k8vuWd94brTyA0W4z8PbDHCIVpz/noDHFOBeUUjR2tP0sPAfYZkh5TlpDM/pG
9CbD0IlbKTXi0BXgBg1H8zN+XLKCyA==
=5lUy
-----END PGP SIGNATURE-----

--x38akuY2VS0PywU3--


--===============8893631165815819972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8893631165815819972==--

