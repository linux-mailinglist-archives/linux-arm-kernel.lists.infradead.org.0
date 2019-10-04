Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E42CC427
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VFgTyQ2NTWtmaULH4YoiUO/hLGjLQI15VUzjc8mMyjg=; b=BpqLf9IecsM/jE581tMu/jKuu
	J2SNKnuxd2wJUusyCAo/17Bup3WRXqS7kIK6dDFL3Ro3Etm+P3feO0TNTLW6kJPCdgNBUzhbi0vG2
	4FmzBtOUoenSqVXvOEeWAhLdb+7/coSEt6uH8P7qFZeMbF+mmyzTqCoqzuOh/vTezEhFtbgeU8Ssh
	IvuBT9+ELVsXB8nxl64H0iI9zM9NU3FF62lvodcTLThxptj3kbLnQI2mccXJRarCMHokwD26Bpcwx
	W6T/yTZdHNAwsVjjnSppVT8pv8b7s5b8bJlGX85/li/3AqYihPueZ1HHOgti3GYUL+ZwQERtqmfVL
	pBQ9klyEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUA1-0000gg-EU; Fri, 04 Oct 2019 20:26:45 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGU9m-0000d3-WC
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 20:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s0qaab5J0loREYooSwO4q0fnIuPCJ2NuGQL4Xnq7rR0=; b=Ps539fHQ/+H/MrZH26sELPO7+
 zfAUdZVXvBd7JtI/bw7ObU1qy2GvswQxXlIoWn2xJK3HsylLP2wR2fChZyhh6Vkjvvx4U1tQ5efLx
 +t5Rrv/xeh0XCetnIEtdLaTlHpZE4NJLIfdfu7X5RDylA6hhhHduh8+r+sjE+8wWs1dbQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iGU9j-0004Vc-6b; Fri, 04 Oct 2019 20:26:27 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 502C72741EF0; Fri,  4 Oct 2019 21:26:26 +0100 (BST)
Date: Fri, 4 Oct 2019 21:26:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [Linux-stm32] [PATCH] pwm: stm32: Fix the usage of uninitialized
 variable in stm32_pwm_config()
Message-ID: <20191004202626.GG4866@sirena.co.uk>
References: <20191004044649.2405-1-yzhai003@ucr.edu>
 <20191004062336.jidzrytx4z5talro@pengutronix.de>
 <e6824330-d331-798d-0f0a-1952db028900@st.com>
 <20191004200804.ee6kedadchxoznnd@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20191004200804.ee6kedadchxoznnd@pengutronix.de>
X-Cookie: core error - bus dumped
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_132631_044420_2D435DB0 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yizhuo <yzhai003@ucr.edu>, Thierry Reding <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5106798143159783322=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5106798143159783322==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nqkreNcslJAfgyzk"
Content-Disposition: inline


--nqkreNcslJAfgyzk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 04, 2019 at 10:08:04PM +0200, Uwe Kleine-K=F6nig wrote:
> On Fri, Oct 04, 2019 at 09:09:51AM +0000, Benjamin GAIGNARD wrote:

> > like for the your patch in IIO trigger regmap_read could only failed
> > if the hardware block is no more clocked and in this case we won't=20
> > return of regmap_read.

> I'm not sure this is aligned with how regmap is supposed to be used. I
> think the driver making use of regmap is not supposed to make any
> assumptions about how and when a read or write access can or cannot fail
> and instead is supposed to check all return values. So IMHO the patch
> goes in the right direction.

Yeah, if you're being very good about checking return values you really
should check them all the time in case something comes up - you could
get errors that don't come from the physical access, for example on read
if a register is marked as unreadable, or if physical access is required
but the map has been marked cache only.  That said a lot of people will
just not check anything since it's not common to see errors and errors
that do occur tend to have other quite visible effects like I2C bus
errors or system hangs.

--nqkreNcslJAfgyzk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2XqvEACgkQJNaLcl1U
h9CaBgf9F1R+YrO5gnXlm0rVv4WfDznyoFteVUwcOxUPCYVlAM3Mi0NWZTPV127a
+UDkmY2bVwpdMLseyucXYA8Tsh2QWW0ic2EWzUmckRhNqhRRKHKBrh+rPgnEVVeo
JKovxJ6wOBLnZiBlFSha3kcZgyk++Wk6tN0h1a+ddZyEAdQuXmnzDoSFEPaEm+75
N8gocQZjjSwrUfdywR+qiiijUGZxfMIMXszlpSAAsUQwGUNYsluAJLk1tF3Dx4zW
Ha1NmhZKe3anQv63BN3LPSy3joiGKAdPUlY3iXfH8K6DyS9uK9wiFHdsGAaaCLWb
rzBXzh6DEU1xzh4WaM7DOA5RtyjWDQ==
=l0K8
-----END PGP SIGNATURE-----

--nqkreNcslJAfgyzk--


--===============5106798143159783322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5106798143159783322==--

