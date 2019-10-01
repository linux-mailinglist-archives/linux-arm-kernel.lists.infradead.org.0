Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5D0C3F16
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q4vjM0KyT3Oaatm8a9BVud6z/+CbuZSAPXdz6DRO7QA=; b=qSu1kMEhAfkWs/YumwPuGaWsP
	bUdRMaQaC1hMZZDe3kHrzKFezxDwVaWxGfohEAHYecZvRjr7vrktVo+/3z/gF164wQO33u3SSoNTV
	E2y3fGJwMg6HZIZPMUe3CSpcqms/zxAWUeQYmFfc38YIoaGFCk/C7IiUth2MhZNTsjlSiMJwItiHb
	9CioVhf532/vNFl1oDtO0cjZ+Qg4mRIM2ejjl1opzPxOb3z0Xqc0lR702JWhIQE5Dz0ul6mglH7nK
	q8X1GUREfAevKO4EsbHwH7KtF72KIjUGTnOnHCmVeDvMpJZYhXvebhYEIJhyYBfSsoGKQTtkaS8ar
	yP/qtRKiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMNi-00075x-J1; Tue, 01 Oct 2019 17:56:14 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMNc-00075f-8i
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=77rfPmQCy4NXwloZ4biLbH0UoWsY3hytG2t401n/afc=; b=eI2nep1RAhBR2abcugd1/Ea6s
 rfSgWdDz2KAaU2EOkXu1FHsMVCt4LY2BtmwcRr1KnqMiDc1Fkm2phQOq/BxW++5cUO1PJk2zTGVmG
 x/U6KJoQnO9U3OgeXlpjA4vFOPi72QbhbMeKhKt09Ie9yHnU6K8B0DO/ejuOkLsQ1VSx4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFMNW-0005s6-1a; Tue, 01 Oct 2019 17:56:02 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8191727429C0; Tue,  1 Oct 2019 18:56:01 +0100 (BST)
Date: Tue, 1 Oct 2019 18:56:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v3 RESEND 1/3] ASoC: samsung: arndale: Simplify DAI link
 initialization
Message-ID: <20191001175601.GB14762@sirena.co.uk>
References: <CGME20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5@eucas1p2.samsung.com>
 <20191001123625.19370-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20191001123625.19370-1-s.nawrocki@samsung.com>
X-Cookie: Happiness is twin floppies.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_105608_305966_341D4324 
X-CRM114-Status: UNSURE (   7.74  )
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 ckeepax@opensource.cirrus.com, b.zolnierkie@samsung.com, sbkim73@samsung.com,
 patches@opensource.cirrus.com, lgirdwood@gmail.com, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============5190613503380873654=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5190613503380873654==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QKdGvSO+nmPlgiQ/"
Content-Disposition: inline


--QKdGvSO+nmPlgiQ/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 01, 2019 at 02:36:23PM +0200, Sylwester Nawrocki wrote:

> Changes since v1:
>  - rebased due to reordering patches in the series

These still don't apply, please check and resend specifying what you're
basing them on - I don't think this is an ordering issue.

--QKdGvSO+nmPlgiQ/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2TkzAACgkQJNaLcl1U
h9CUywf/abOQN54gj8rAY85VcxKmxrItf1FNrBL2z0rFILYKV38ByUMbaQN/JVVu
shCwNnjyFJxrrVJJkd/S9UyQNZUSzoHLHCfhaAtwqNVsHAJpH5bUxSgkVNODw39H
w6tUOpW2N1Y6ty1twaaOxAhMUM0UmFfnDSL1oQEYiRcOnTbUBJaUmqKB3VZDm565
nBhbBhYIdIFMkgQk8FsP3wlAAvOhRmSIwd6asxxbgw+7QCVC2qQzssNNFfTs8p/F
bcQ/MqECHte1NoQaq3ripZM47/JcCTylz952igL+3ksBpdBTP/a8XmQrwA3jXprj
zHSqIDv1k9Dkd6sYolAYzv14oA8b9w==
=y3H6
-----END PGP SIGNATURE-----

--QKdGvSO+nmPlgiQ/--


--===============5190613503380873654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5190613503380873654==--

