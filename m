Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85FB1C1225
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RdN5ilojDZNnHJUfqDYrWEPHcWnRUkLg97hkeLtQ2xo=; b=hr7XFFFxgz31mldMLVvthkOYx
	NsPYs67X5A9wFN9ctUog7mnVTadui7vJ4uBWNjVqDCcpy8oSvgwlms7o28QmWoTrfYq/btGFNCRRr
	fdCT4uv4XQ7iPwqP6yL7eWLZ4ujxhRZZIw7UVFMb9XE4CrGuqVLVOe1aic4VvGm3DUqdmwqTN/CSj
	KgTVkUhuCd3Q7ZWZ8A7vuFDLiqEqD2NWrtkqQr2BqdDywnGsZSDrAEG4VQKwOjHqhEgeiSttCDWEp
	ly8yTi8hzq9BkdseY2NbkjHPfSx0ApzDtOxLq8ob+wBQVMYqMEg8Lbws+gIoMrCSa+cAlXaaaDX4E
	jw2LBhhbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUjl-0003Tx-1T; Fri, 01 May 2020 12:25:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUjb-0003SG-LA; Fri, 01 May 2020 12:25:40 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8D7F206F0;
 Fri,  1 May 2020 12:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588335939;
 bh=lbHm2sZNgmp3xDR80ZjBmeiaApE7ajQoqCcVAqDgfgg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zrF3lGKQPpXX6JTIbE+Knz2sn0YQPnyc4YtbdPh/DiS+5mS6DF5Ygk3fQa42tDBwa
 cVHsrt1i8wqi82NsuS5SeRrh7UeZNVimqtdPm4ZsFNrYs3iBiMmljn+uUma2PTRrpg
 7PuEpijuzm3s3AMAP+01cNeMfLDGfysSqJsKwzzg=
Date: Fri, 1 May 2020 13:25:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: stable-rc/linux-5.4.y bisection: baseline.dmesg.alert on
 meson-g12a-x96-max
Message-ID: <20200501122536.GA38314@sirena.org.uk>
References: <5eabecbf.1c69fb81.2c617.628f@mx.google.com>
 <cc10812b-19bd-6bd1-75da-32082241640a@collabora.com>
MIME-Version: 1.0
In-Reply-To: <cc10812b-19bd-6bd1-75da-32082241640a@collabora.com>
X-Cookie: Androphobia:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_052539_715469_1758515C 
X-CRM114-Status: GOOD (  10.10  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, stable@vger.kernel.org,
 kernelci@groups.io, Kevin Hilman <khilman@baylibre.com>,
 linux-amlogic@lists.infradead.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============3291075780906397093=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3291075780906397093==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 01, 2020 at 12:57:27PM +0100, Guillaume Tucker wrote:

> The call stack is not the same as in the commit message found by
> the bisection, so maybe it only fixed part of the problem:

No, it is a backport which was fixing an issue that wasn't present in
v5.4.

> >   Result:     09f4294793bd3 ASoC: meson: axg-card: fix codec-to-codec link setup

As I said in reply to the AUTOSEL mail:

| > Since the addition of commit 9b5db059366a ("ASoC: soc-pcm: dpcm: Only allow
| > playback/capture if supported"), meson-axg cards which have codec-to-codec
| > links fail to init and Oops:

| This clearly describes the issue as only being present after the above
| commit which is not in v5.6.

Probably best that this not be backported.

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6sFT8ACgkQJNaLcl1U
h9CjCwf6A/KP149/7ilTWJylUigNvyI1cVIskzDBGQREGWK0VI2Z8qGOKkNgLzZw
F8H2cYXmeDRb0MJRqgNwV0mDl3iHd7l2lqtIUd4kQdvL7id2OlZV2NEso/o28AwF
x5GDVyl5E9rRto72Krs/X1R1V2+ACbNJORJiargnx7mv7QlmY5L0axZKbifhjP/C
aEA5DlAD6eZXLpOCh++yPZYuatnik0c5uSao+TKsurFgxfC2+xdUnFC9QTYRd7NA
jchP5RvU86y4V7yzhlBcndg+msHZ9/EjcJj1zdbJuaeDX2y895T3jCtgLzlhHVAM
bCa8P2t5jxwaaDQxCLHjRE+uFUbt+w==
=Ue/C
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--


--===============3291075780906397093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3291075780906397093==--

