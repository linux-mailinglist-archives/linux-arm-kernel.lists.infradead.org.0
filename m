Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748D0C324C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qj6IAPAr1Fxb1UrhMlRVK9zyEb5awO6BxjZ4jb+yNn0=; b=UptZJ2Zi7VtzASo/Y4hpP9ufV
	gZO6eeJaepSkFjxf3i2uF7AYwmlpS5w79gP+zG7fPGZGkN9p5nkqY13kNPuqAIiFjT3Of9wJFqSTX
	RelqqrTQM68URxSMpeSmDncwCIeglIwVyc7xguWJiIBe/03KjbKkvIB8eBaNOiJA2/gFoYUBs1Ybs
	amsgMOYKfcihCiJFxxX8gOUfe0+bvehmty5I/4D8HEfiRxp7EvkH1cGUHqpOY0Ct8qsj6DWq8rnag
	08LYFOldTuTjDR1nxI4beQ74ISqq7SrdVChly4iIVKqms3G1fnlUOTDtnqceWSTK/Vnmri2dpTW6v
	vHODE2DiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGEG-0008Gu-7W; Tue, 01 Oct 2019 11:22:04 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGE6-0008F6-VJ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:21:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WP08K81EP8nRSl3NecDTAL6O6lhtnramqxO7uUpAriw=; b=tqz2dO5eKDmISNQTeYJ2MH6GC
 03ziUcUXkSlarqF15sDoo7Q/ZXlc5BXRQJioCbeaJhkUSTPxhv9s3xKHdKl5e4aoe2/0RwcMrrp72
 7VRX1VWWlK+ybEScOSHExQMH8Wy/pH/U9uHa4fkXHJ9peDwhUUi9j2WvkCm92xPCFatbI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGE0-0004OZ-Ax; Tue, 01 Oct 2019 11:21:48 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 7E257274299F; Tue,  1 Oct 2019 12:21:47 +0100 (BST)
Date: Tue, 1 Oct 2019 12:21:47 +0100
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 05/10] ASoC: samsung: arndale: Simplify DAI link
 initialization
Message-ID: <20191001112147.GA5618@sirena.co.uk>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130318eucas1p126cc8be60118ffbf1f332626dde1c05a@eucas1p1.samsung.com>
 <20190920130218.32690-6-s.nawrocki@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20190920130218.32690-6-s.nawrocki@samsung.com>
X-Cookie: Dyslexics have more fnu.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_042155_028967_D19591F6 
X-CRM114-Status: UNSURE (   7.19  )
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
Content-Type: multipart/mixed; boundary="===============0838422296032131018=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0838422296032131018==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 20, 2019 at 03:02:14PM +0200, Sylwester Nawrocki wrote:
> There is only one DAI link so we can drop an unnecessary loop statement.
> Use card->dai_link in place of direct static arndale_rt5631_dai[] array
> dereference as a prerequisite for adding support for other CODECs.
> Unnecessary assignment of dai_link->codecs->name to NULL is removed.

This doesn't apply against current code, please check and resend.

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2TNsoACgkQJNaLcl1U
h9B8Jgf/QOtwWNhy8BAfZQIc2REqWPl8fmuaapDD6MEvJOA3b+piDx2e6Q9YvKjq
afK2TLU5HN42PJIr5MTFPljexJovF0uhsmzekrLgYPV9UJR6KzsnoMtWq0aIccyu
KFRsyntw3MK+Ot9TxDVIpK/tGC4s2rAV+hJO7XV/t0V62Z3r91t0Ncp+wVxibwga
rxG4oFnwQYNp8aIpzKNc4GOqJ0W1A/5JOgUALtMlGtk6W7FJqOg4xmLsQH8TG1ne
j5YN7VCoJnki8nFk1JjiikxYYcvSLjxuB0nD/GlbBnP5McroJrCrKV/nJSooYkwd
+Sp8RijARqOYXpEbsVnN8K+DflY9pw==
=RFd7
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--


--===============0838422296032131018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0838422296032131018==--

