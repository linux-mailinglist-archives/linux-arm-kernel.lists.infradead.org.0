Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D639DEFBB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nerANJStWdplh7WYNsuuyHtPlobih7dshS5+xp80nIM=; b=XVCpBMeblf6Qt0YydQrwp+cWI
	UQDPO/o1iBiCQ+YRfx/wV33B2lt11Ik4CeAK0yCh+wRohzOByWTuBBcguSheFBPaVDEXElkXie0W+
	8NdWq82aKsRYU0qMXZLR1o8oJO1MEVV+xjRMIeGGsMTyr0QMYzkWml6FstsLooc+OkBxKxiq5lmf5
	0u67lXNh23C/UwZUJJ96FMSxQVQfn+Fh4u6qnkdL8Z3fZMxAnV8sV2yi/k2sn82iYKHo3EYQaELBc
	Qt/N/KdwjqqfX4CspciqYDTanhdXZDWKtFw2bYcBvzubi8PX8mBMs17AUcPkD4D+kMTLMQRchZqlA
	dWJnB0LMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwKs-0003Ue-PZ; Tue, 05 Nov 2019 10:45:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwKj-0003U6-UB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:45:11 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DB6B206BA;
 Tue,  5 Nov 2019 10:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572950709;
 bh=onQoxY+60Ht/QpXXbe43yBiTlL8/TGR6VtklKa0Nv8Q=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=PFdcBBT7246rOR+L/TuwT/n4Vd90Yj6lLmFUd6G+BIkkG3DYYgUrl28UrcsC9529U
 olg2lNxLJF9D2p0XDByHBB98hvUEFu0ZsC21KV3sVINqTUsnXTw6s+vC9LOX2EvyEb
 CeG36tokQ2/KIRdx+YsA4oASez2fvTD8FLd+rPZs=
Date: Tue, 5 Nov 2019 11:45:07 +0100
From: Maxime Ripard <mripard@kernel.org>
To: linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>,
 Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/4] arm64: dts: allwinner: orange-pi-3: Enable USB 3.0
 host support
Message-ID: <20191105104507.GE3876@gilmour.lan>
References: <20191020134229.1216351-1-megous@megous.com>
 <20191020134229.1216351-5-megous@megous.com>
 <20191021110946.gxmib3to7n7v2vof@gilmour>
 <20191104121648.jxgs2eoj6loh2as2@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20191104121648.jxgs2eoj6loh2as2@core.my.home>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_024509_997122_53710593 
X-CRM114-Status: GOOD (  15.61  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============5224673011702388985=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5224673011702388985==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MAH+hnPXVZWQ5cD/"
Content-Disposition: inline


--MAH+hnPXVZWQ5cD/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 04, 2019 at 01:16:48PM +0100, Ond=C5=99ej Jirman wrote:
> Hello Maxime,
>
> On Mon, Oct 21, 2019 at 01:09:46PM +0200, Maxime Ripard wrote:
> > On Sun, Oct 20, 2019 at 03:42:29PM +0200, megous@megous.com wrote:
> > > From: Ondrej Jirman <megous@megous.com>
> > >
> > > Enable Allwinner's USB 3.0 phy and the host controller. Orange Pi 3
> > > board has GL3510 USB 3.0 4-port hub connected to the SoC's USB 3.0
> > > port. All four ports are exposed via USB3-A connectors. VBUS is
> > > always on, since it's powered directly from DCIN (VCC-5V) and
> > > not switchable.
> > >
> > > Signed-off-by: Ondrej Jirman <megous@megous.com>
> >
> > Those last two patches are fine with me, I'll merge them once the phy
> > driver will be merged.
>
> PHY driver has been merged. You can now pull these patches too, when
> you like.
>
> See here: https://git.kernel.org/pub/scm/linux/kernel/git/kishon/linux-ph=
y.git/log/?h=3Dnext

Thanks for letting me know, I just applied it.

Maxime
--MAH+hnPXVZWQ5cD/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcFSswAKCRDj7w1vZxhR
xYUhAQCgnMs/KfGma0n4q8UBRgykbOwd6sV62XQC9vYIV/XaCQEA95H1Cno4U6UO
7b+BJra9M7o+xz4P/Mv6itEuQHmycQM=
=lBwP
-----END PGP SIGNATURE-----

--MAH+hnPXVZWQ5cD/--


--===============5224673011702388985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5224673011702388985==--

