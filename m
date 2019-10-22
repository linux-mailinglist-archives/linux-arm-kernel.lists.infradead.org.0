Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AC4E093A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yMws4Z6JyQXXqr3gcfreW01gVKLMKmrF4W6nxRQVqDY=; b=cGWsBEUs6MaHcmXIiNmU+QqhV
	FH/qAbFgzGnXuSggUuZs5u3+vMXGKdKTTJzOba2pMzneIWITYentXwbus/ikGYq8+Tps2PBrRhBOT
	QpthgBGFSNyiM0dgySc1Q4cDbi2XVzIOQZpjnyUi9pKOvW24YI9toJhN3ZcvxgUfd9p6m1Yw/zmIx
	5YlVD0BbWBMw/1RtJM68X74Owe1vaxTBVilHr6+pzPNHat34oxdIgsDmg8LUIQGHs2ySWjRXfDxJE
	vlrKniQjBcy6FTq+tpByFf9qb0YJ1GBN/+tMP+xu5SbNIKyoJqQtiriYLrE8VXqMOeNy4FbYAPl4d
	iDInFyIHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxBS-00078Z-FQ; Tue, 22 Oct 2019 16:38:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxAq-0006fr-Sc
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BKcFfApj5RoNNrr6PNcShwRSzBMTqZADkQJDoDqR6ik=; b=VbxtWlr69+jYe4fpFwJUR3x/m
 xF6y8rnYjq2y5yrl4JYSz5aM6gV+LlOxK+Q3HxgUfSVwii3kSkxa8TwPE4z1I0qRCunkheuPrJ2DG
 cI7nUdmZb+r0XO+54Tpeb5HNaPkkmhd+2KLbw7tAX7+uoGjLUB6JCrPUg7m3PXpOJDDKA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxAo-00073r-5r; Tue, 22 Oct 2019 16:38:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id AA38F2743259; Tue, 22 Oct 2019 17:38:17 +0100 (BST)
Date: Tue, 22 Oct 2019 17:38:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 22/46] ARM: pxa: eseries: use gpio lookup for audio
Message-ID: <20191022163817.GS5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-22-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-22-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093820_952057_7724E8B6 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3801711137950583103=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3801711137950583103==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rG09A39trvEtf3rB"
Content-Disposition: inline


--rG09A39trvEtf3rB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:37PM +0200, Arnd Bergmann wrote:
> The three eseries machines have very similar drivers for audio, all
> using the mach/eseries-gpio.h header for finding the gpio numbers.

Acked-by: Mark Brown <broonie@kernel.org>

--rG09A39trvEtf3rB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMHgACgkQJNaLcl1U
h9BajAf/VaPUPbuOM5XFe50jUB4C0hAjngOdu3qVFRYIfGYfbBgT1GqUsq1wJUmn
RkRh//A+Sht8MoKnOh4QESjoY9maJv0XU1BQ73dULQRHOVYwuJtlJOd4oKbvkvwb
jdVs5ZvDGbsf6PXnHBC5rqC1P+zBX/CZ8IN3xrJNlS4Z5vNzWj0ALFTiAN528Cxo
qOVAiwLdGdkC56ACLm5xrHDEPaoGMTgWGx9GYV/c71IbeOGjykBWbepnKnK8kH6d
lvggiHydyKe8fb7bTsv6dJEVul14x1DMBg2rWM226ujhoAbY8gt/DHOCT4Jbzc04
X6wwL7joES06ET3LwI91pNukZe8J+Q==
=ldMH
-----END PGP SIGNATURE-----

--rG09A39trvEtf3rB--


--===============3801711137950583103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3801711137950583103==--

