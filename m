Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8044E1643E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jzIOcxeDjhuza5WUYKftX+kmvQC6zRsvZIPjZ/jLlUo=; b=CgKHtK7KS/Js9ImTvXBxSnr4f
	ndrReEsYZsNkdJFiUQsPPxZlp+0mbsKccVzpre4v3Kja6Fkhy8U7RaKPnMBriFaYfpSbVhyQe59IB
	7GHAe3yfIjKN2GbBEocYqiFKwD20dHHE2hDWo7ijR8Pv6rh22MNw/Luv0cfSsKdudH7mbkjzO+9KR
	Vwo+Zi1uMPD635UPDTrnKVQ/xCXM1zqmTTC4AcXM0sR9bVj7qtaJ/xTXEC/ZNrSS5LMDcpLYyS+4x
	MEIUDr6/hasViHLrcPi/3NyRzsRF2lVfQG5rWJh2/xLcsLhAwB4Ucej93S9Mu1dOT6vfMzHdzrh8z
	b17QcmDJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4O7U-00027W-JI; Wed, 19 Feb 2020 12:06:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4O7M-00026s-Cd; Wed, 19 Feb 2020 12:06:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6B9731B;
 Wed, 19 Feb 2020 04:06:13 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A28E3F6CF;
 Wed, 19 Feb 2020 04:06:13 -0800 (PST)
Date: Wed, 19 Feb 2020 12:06:11 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control
 explicit
Message-ID: <20200219120611.GB4488@sirena.org.uk>
References: <cover.1581376744.git.robin.murphy@arm.com>
 <5bc383ed1832f0f5d1dcb3c97ad92fd68e5217e3.1581376744.git.robin.murphy@arm.com>
MIME-Version: 1.0
In-Reply-To: <5bc383ed1832f0f5d1dcb3c97ad92fd68e5217e3.1581376744.git.robin.murphy@arm.com>
X-Cookie: FORTH IF HONK THEN
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_040616_474009_6B2194ED 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, pgwipeout@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5446759512637086078=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5446759512637086078==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yNb1oOkm5a9FJOVX"
Content-Disposition: inline


--yNb1oOkm5a9FJOVX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 18, 2020 at 09:31:59PM +0000, Robin Murphy wrote:

>  - add fallback case to avoid possible Rock64 regressions

This should really have been called out in the changelog, were I reading
this cold I might've stopped at the changelog and said you needed to
keep the ABI stable for old boards.

--yNb1oOkm5a9FJOVX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5NJLMACgkQJNaLcl1U
h9A6EQf+M4FxgJh7NoGwjteEBX6uwLvxHTrgo0677EFqqDjc/b5TNCDU720Q7dbi
Mead2pPB06lQOHGO2piOu+A55lWuHX17hfnh9t1AECnZmZDQv/kTgZ/qb/yYU02d
rJLGP0+Uy8bYU3SAzIGZyC0RJ3MydsaHp5/w3qXNiTQ/RB90k4CkqeYpCw0uT9yX
8fgIUqUdiOgOvGjDn91teqXcoAjIU7VXfvz6yijqhqNynx1ybjgXklR1TJ2S2bZc
kY35dvMUXpVraf/NcNJMYZVBaMRHMqj7LmRGUUAcVZZ982bWNAXx1FOPzY19ri6v
NZyWPTowIagAhp65YyKen9nUh3a4sA==
=Inf+
-----END PGP SIGNATURE-----

--yNb1oOkm5a9FJOVX--


--===============5446759512637086078==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5446759512637086078==--

