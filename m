Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43051BFF25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xiOAQaOzD6duETNm/UcEsHrysZ6FuZlYmMO7XMUSkTs=; b=SiFO8eNATLB5YrTR5iHRYjcmq
	DLU0CKhzcjEuioWOrDCi9PNlCJTDcNReOjkhj/SIx1e7HoyoZfN3XohmAHjNcJ4KIvto7a6U0EdzM
	Ino+8rzVckS5cojxsLTIfe/uIaS1dJreM+EWfEFyUB8D6R45wzaqiatr3s+nI/uM2jb9EAzmPswdn
	ErDD5D4sHKke4HfMn89UP3wGcsfLdWs0UT6aIrXT1YG42ry6TGETgB4uzcu1m6AQC6nYDC+Q1e5Qf
	ambx7mF02JHHkmGzvugLz3wYzH2B6D6cPKGUIBzbtm9l0ORiEla1nqzUWFL1ALcY2Ip0T0pII79qe
	OjPNy9qqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAV8-0003sK-7M; Thu, 30 Apr 2020 14:49:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUANK-0003FE-Rv
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:41:21 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8044B2051A;
 Thu, 30 Apr 2020 14:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588257676;
 bh=92cGgpMyGwzjfMPM9fKoRNhdMxyr1X0XiiNEL8BUCvw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aULrAGIqxerMM8pzTUsQSCkIxVzQa3/w4wv0r1nIeJRfBvYjomzk7lAhV4m4PLkOB
 xTMVaKhqigQIdVBSHXGUlGObikPPTuXGG/ARU1apGnMVjB1+X2EpVaGrJ7aT5gZUvM
 ifUpO69jFva6Ayoe5l8RSYAQaXRQeoKC0YPfwjOM=
Date: Thu, 30 Apr 2020 15:41:14 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH 0/2] Lock warning cleanup
Message-ID: <20200430144114.GE4633@sirena.org.uk>
References: <0/2> <20200429225723.31258-1-jbi.octave@gmail.com>
 <158825658829.42351.8658305560393460400.b4-ty@kernel.org>
MIME-Version: 1.0
In-Reply-To: <158825658829.42351.8658305560393460400.b4-ty@kernel.org>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074119_064950_43D2C827 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6570775198941810582=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6570775198941810582==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="10jrOL3x2xqLmOsH"
Content-Disposition: inline


--10jrOL3x2xqLmOsH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2020 at 03:23:17PM +0100, Mark Brown wrote:

> [1/2] cxgb4: Add missing annotation for service_ofldq()
>       commit: d7f27df50eea54fd00c26c5dda7bc12d2541e5e4

Sorry, I didn't register that this was part of a series when I
downloaded the mailbox - I'll drop that commit.  When sending small
cleanups like this to unrelated subsystems putting them in a series, it
makes it look like there's dependencies.  This is especially true if
you're not CCing the whole series to everyone, that's often a sign that
you can just separate the cleanups.

--10jrOL3x2xqLmOsH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6q44kACgkQJNaLcl1U
h9DkMQf+NHuuw4Fg956blHltHgQpZ9IwIl6dSxPLRfO6ljfHi1BXmBSp4jLeVQTN
R+OY57NAxZ/XRPY+fJUaTmYty1wAtvds1Yd7EWQApLbz5jcn7ZVB3XNSMzgsaEQU
KOgwmtkDYquc7UBYtWxcjV5md9vN+ycAxZDqtef9Zk0j1J8DX4gAXKZlHkWTuGjx
AaCCE6G/JAj6vBfAvPmtoeEkkjcZ2x0Sz4WpQ6SReEKTHoS8Rf+bZCiJpo+HhHJw
AF7LTHGehuwOumxRIEjT9D405z83p9LTFjx9feIRtysJkYPVyUJcn5XeMCfuPPJp
Qh4oMcAU0GztMtj1Z1nwBFybTGhTqQ==
=orSp
-----END PGP SIGNATURE-----

--10jrOL3x2xqLmOsH--


--===============6570775198941810582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6570775198941810582==--

