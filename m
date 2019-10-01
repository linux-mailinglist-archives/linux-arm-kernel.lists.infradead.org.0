Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB83DC325D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SwCXL0Dt0iN0yFBUHax+J4CdrFcZ/sXMiWMpvZOut0s=; b=rOvDT7fiuu9UrZzmEidISt/je
	TDVIXpOMuSDBTPuCQW5N8WNgtfYbn/VA/VDnANILAZ7V5FPzct4CS7RGZc6kIPntNVOZR6F8xJ16z
	ZEyJrJDo0lZA+YbL4sJFYQEQ5a2f2146mO0lvyywnFZ3lVNI+XcIWXDy622c4IV8GoLF9ZL1QD+hm
	E8WY4sPL0+WX0FfmbAQqtMg2kgafe7L/QjzXGNqw5M5LBy8PFjU/A9diM6cMjAybOVusN1qCzJUrU
	sM+SE8zYk8VRXxy22pusZ+2ZcyMSZR2Reg6mSk8mAKqhd2BepWAhOLdOg8ONhx/uVbLimisUDuKDz
	nwY/m8YBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGEo-0000Iy-Ls; Tue, 01 Oct 2019 11:22:38 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGEi-0000IC-0h
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h0oq3hgGKfDpPykm12Ho/6mx7zx/DDd3ddTmuUJvbLg=; b=UuD2xK4+FD+o6WJLN+Z/Qktx9
 XDiLn0jqNIDd163JcaLJ/MExArYp/HdllmlH9PFpC27RB/XLKqkfDAJwXB7At1ux1xpmBz343DEVl
 4lbddFgH6aPU1e0YyeDXREXxUaBwBsmge0wnxWy1pqyZCWBDG8meMf2b38yWO0kuGR43k=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGEe-0004Ox-O5; Tue, 01 Oct 2019 11:22:28 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2E5FD274299F; Tue,  1 Oct 2019 12:22:28 +0100 (BST)
Date: Tue, 1 Oct 2019 12:22:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 08/10] ASoC: samsung: Rename Arndale card driver
Message-ID: <20191001112228.GC5618@sirena.co.uk>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130323eucas1p218c6822eca3869eb0d3b7380497bbca4@eucas1p2.samsung.com>
 <20190920130218.32690-9-s.nawrocki@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20190920130218.32690-9-s.nawrocki@samsung.com>
X-Cookie: Dyslexics have more fnu.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_042232_056082_101452CA 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============6937988834633936047=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6937988834633936047==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ghzN8eJ9Qlbqn3iT"
Content-Disposition: inline


--ghzN8eJ9Qlbqn3iT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 20, 2019 at 03:02:17PM +0200, Sylwester Nawrocki wrote:
> Rename arndale_rt5631.c to just arnddale.c as we support other CODECs
> than RT5631.  While at it replace spaces in Kconfig with tabs.

This doesn't apply against current code, please check and resend.

--ghzN8eJ9Qlbqn3iT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2TNvMACgkQJNaLcl1U
h9B5/Qf/X9rpGHePKhgNMopSnhX5Qe21BJNNbNjUxWxPTwsw2b1QJJ6tvlNU1Plj
JxKTplpI0I8fQNhgBgK1zkc8SECbUDRSwkR/UOBthGp2s7/ZeClSHvyTD6Z2j5IT
OyFKkFi7MLpjK4eBoIlbW5NnfZYKyC7edq5RgFBn1TZsbdaGaDrx9urqoSQwJfTF
APcyzdbqNU0Y1UzyZ8jKGGXOLljoDAHW8gpGnunvRyE3Vaw4KLG6spBkuxIuep0L
hjlRBSmx0lR4UrG7CKYmWK6UmxDIaKIUfbp5nqKOQ8V3x0mHbw4cQxQp3hv7+WYk
R5jy35YHbr0NyF5bGBiPWb8OZxJhxw==
=x8KZ
-----END PGP SIGNATURE-----

--ghzN8eJ9Qlbqn3iT--


--===============6937988834633936047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6937988834633936047==--

