Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC64DAA785
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4CmHvG/V4yJivu06rQMlR0KCCNv1JzrTEtcgcKZJBXw=; b=YerDM/ggczLN8LvrbpYBeUTy3
	LxohT/Ov5bHZYKXNPloGVUel68n7V0TC8QQLiZxzt8JM+Fwp+BwtzXgPD+JYAcjnEp4zNQOWNNIm4
	U5n7qiV7E83eiQCf0ECispxYIT/0+b3zMjX5Zyn3PS+su3kq6/nc5g50mSdSYJMGfEnpVWA1Pum07
	AlHnSoRvt/9xX1wTfK6EaK56wATA7HdeM0mMgZUZZ6KQOBpVeAd7PKh+KwEiQeqEOU90F2KH+X3pA
	Esq52MU0XahGDPzZEgHrp3fr08OBNPmkOUZOxTP3WA48eVehI7Ip7INn2OyqCZuw/5huaevSv1Nae
	I1TZeB6iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5tvf-0003x2-KZ; Thu, 05 Sep 2019 15:44:11 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5tvV-0003wE-Qj; Thu, 05 Sep 2019 15:44:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4al+c2LFjWzCH3h+ZTytSD0DUHTk5klKXTAjSJ0gfd8=; b=GgNcFom8U/2S+SDVGMvZtWys8
 KGQ2DLGYn6yn4xmPHNh43ndbdIjDBwAfq22Sn0tHX7izAWhJfdG9+9tZ/DReyXK1dkYtkq55efZBG
 +3rPoagrIoXZdJeM4Gp6OStxbZbC7WEGIG80L+8eDDWDrSsRZbzI/gNBK2CWE5RUpkkI8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5tvQ-0004xs-6b; Thu, 05 Sep 2019 15:43:56 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9DA452742D07; Thu,  5 Sep 2019 16:43:55 +0100 (BST)
Date: Thu, 5 Sep 2019 16:43:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6
 offline, 1 untried/unknown (next-20190904)
Message-ID: <20190905154355.GC4053@sirena.co.uk>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
 <20190904192725.GI4348@sirena.co.uk> <7hzhjjsime.fsf@baylibre.com>
 <20190905153938.GB4053@sirena.co.uk>
 <20190905154053.GA21701@lst.de>
MIME-Version: 1.0
In-Reply-To: <20190905154053.GA21701@lst.de>
X-Cookie: You humans are all alike.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_084401_871183_26DFF1C6 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Steven Liu <steven.liu@mediatek.com>, kernel-build-reports@lists.linaro.org,
 Kevin Hilman <khilman@baylibre.com>, linux-mediatek@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4650970803896974752=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4650970803896974752==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6zdv2QT/q3FMhpsV"
Content-Disposition: inline


--6zdv2QT/q3FMhpsV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 05, 2019 at 05:40:53PM +0200, Christoph Hellwig wrote:
> On Thu, Sep 05, 2019 at 04:39:38PM +0100, Mark Brown wrote:
> > On Wed, Sep 04, 2019 at 05:15:53PM -0700, Kevin Hilman wrote:
> > > [ + Steven Liu who donated this board to my kernelCI lab ]

> > Also adding Christoph since this was bisected to his commit and Catalin
> > and Will since this was an architecture change.

> Given Will in CC the problem is on arm64?

Yes, this is an arm64 system.  It seems to be the only one in KernelCI
that's been affected so it's not like the entire architecture exploded
or anything.

--6zdv2QT/q3FMhpsV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1xLToACgkQJNaLcl1U
h9D7SAf/cAPz4+44Y6e4wlNKbRh8FmNy7ULkMF3BNZLNpO7Dk+GWEXgci1psJ75t
WGJZFns1s6RzSawVIyyPnr3WkfnB22fd+s5SN+Mlnmfoy8R0ezvVlC58NyIGsf1Z
KYDMAuOYB9NvFvoKf6oLgSrPL20W/MlrISU1ns+MouE5TUX2u2+39YrIlmV+fUvY
A8RwuOfbG8n0GDSGzBum6duCLGAglGevu40CJyo9/Es5GzeiJwql0mAmpptFyCyP
Rj4Z3DUZad1BANPhrj4QcXpOb47vRMxARnyWidfIDnaqijxhMUs/VSWWAy2HSk1L
vX8T+bDnQJqP21u3ECeP1JvekVzUTw==
=Jsn9
-----END PGP SIGNATURE-----

--6zdv2QT/q3FMhpsV--


--===============4650970803896974752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4650970803896974752==--

