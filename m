Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090701C3813
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cwoEZSe04YIINRP1bbdansVF1oqJkY9i9ne7Cqez+yc=; b=D1AA8Y156VtHaU+USEl19AT8u
	y4ghRJcHRbUUkbp4WF9rdgGSaCj38Lke6RLnsqrKIyIdWI9t5Pq6k7yeZChXX3/F6BPG5G9CafGbh
	iunLIpV9AEuKgODs4CfcM7Z84DcDWtZqxLs0fsPOxflzh6N2w5uDU/V/gClChBBmA6lZ3gCBzbAh5
	pfHT9LfGXpvSwEX0G05zZFbTgjsRz1Sw04ppVk/GtckMDz0T0zzFvnta99RuK766UvT4CFU2jmUtY
	GS/kjv59y0B3Xak6t9hQOsWwhW3w4mwUbMg397kBqhlPcDJEMzH2AoVORBwMNZ8q56tR8IRxdKEhU
	/nZ7m/dAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZHI-0007eE-Ba; Mon, 04 May 2020 11:28:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZH6-0007cU-Qm; Mon, 04 May 2020 11:28:42 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F190A20721;
 Mon,  4 May 2020 11:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588591720;
 bh=8dnHAlveF8oSzyRI/bshOeUXvAOZ3zOI0uKOwMIafSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V5QRijKOE29Jo+EKAdkh+ewKNtgdqP49U526Q2Sfxi2stgSeoXwYEeo4vzFwII7Nb
 JAqhvbWO3/mpTHvBOlkjefENX/UF/jjBUXzuHtCj1Zw4IYC4e3oA8UZbPwN0f569Yx
 3hRVp5IdHkMViNHlTTIoUmfezAB+MvoUejMxdi6w=
Date: Mon, 4 May 2020 12:28:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: stable-rc/linux-5.4.y bisection: baseline.dmesg.alert on
 meson-g12a-x96-max
Message-ID: <20200504112837.GD5491@sirena.org.uk>
References: <5eabecbf.1c69fb81.2c617.628f@mx.google.com>
 <cc10812b-19bd-6bd1-75da-32082241640a@collabora.com>
 <20200501122536.GA38314@sirena.org.uk>
 <20200502134721.GH13035@sasha-vm>
 <20200502140908.GA10998@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20200502140908.GA10998@kroah.com>
X-Cookie: My life is a patio of fun!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_042840_888901_245970CB 
X-CRM114-Status: GOOD (  11.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 stable@vger.kernel.org, kernelci@groups.io,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============1366063810322483116=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1366063810322483116==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HWvPVVuAAfuRc6SZ"
Content-Disposition: inline


--HWvPVVuAAfuRc6SZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 02, 2020 at 04:09:08PM +0200, Greg Kroah-Hartman wrote:
> On Sat, May 02, 2020 at 09:47:21AM -0400, Sasha Levin wrote:

> > > > >   Result:     09f4294793bd3 ASoC: meson: axg-card: fix codec-to-codec link setup

> > > | This clearly describes the issue as only being present after the above
> > > | commit which is not in v5.6.

> > > Probably best that this not be backported.

> > Hrm... But I never queued that commit... I wonder what's up.

> I saw the Fixes: tag, but missed the changelog text.  My fault.

> I'll go drop it from everywhere, sorry about that.

Ah, that explains it - thanks for sorting this out.

--HWvPVVuAAfuRc6SZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6v/GUACgkQJNaLcl1U
h9DTqQf+J1WhHhwnr86jT/LtdmuYxn4YhdfaaW+RFSBKmakNZhXZ9BKok8utln+p
PkdIEGrfr8QfsSuhz4WYKDcN6K72tM+U3j0c4UFrYlm9kEfpuDr5AqJrdAclL76T
Ns2oaZFZEnIpHnkajK6KCa1Ss4Ka7AvQNuVJfZ+/d4DdAVDSUl3H9TM+1yJyR4Cz
FjMXYnlw+kp4LGSLCUy2yMEZ6YR1dzgDi7PIae1IYwwourTFOVjsox1CQPmE2bYv
32U+RLyE6qxAlFRwVqmhMqBWYr/ZUEmV8W026fEQWprg7jCq2oPCQxALfanL9f/X
rKflgftgFph+o3Rxz/MB0jHdsT/FbQ==
=KlPi
-----END PGP SIGNATURE-----

--HWvPVVuAAfuRc6SZ--


--===============1366063810322483116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1366063810322483116==--

