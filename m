Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2512BF522D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:06:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ePlkmG6n8sWcXcY59v3JTvOYUx0S8NUA9yfuMZZkukU=; b=akWAu7p/qZ8zm/GyrCOYcuEl7
	+BgJ0a5JoF0WO52jNHf/3K7JcXQrmC3DhOsa4lRt02zfl2lNOr6Z42FxOjAs6SM9Gwo2vlqFG8cbX
	Fg1CeufkQuHkoTNIMhCzNm/1b7mVRgFlEXLIXE3uTvoKfU3RC1fLjEhZOZi2cMILwos3FYPwDBg53
	m1HWl4+iGJqr+fOOthFNcxzRCdBPIJW2Euf14paLN5np8VWhYUWf8Hpk86kVD/10+NIrOwbvlKVx6
	JGOsR2T5gi0bgcyWh5L1uCMqzLEGq7vzBRcnLvAmLGpmVsUh2fxdAv6U//tvoyig70J+JRiH2oapd
	DwLp/n0Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7i1-0000PM-JA; Fri, 08 Nov 2019 17:06:05 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7hu-0000P2-5k
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6TN90wkzf/9VwnAcWkqrj+As5PYUcaLHbYq0qCwm2gA=; b=HUd4joj4gRVuxzVZWcC6tUAkO
 Fr01f5w8au1y/Y6BJAnvgnN8nD0QD1st+9ZqQZHxmKNB+tzACec3siayWxJEv8gAZ2b8U2r4VXbN+
 lmYapBoQMeYQhpuC5DzTCT9ONH/Y/OsCYohpWVpDy/qSjQGmEE4HHi9L13wf+VZ87On1I=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT7hr-0007kb-Ph; Fri, 08 Nov 2019 17:05:55 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 444542741460; Fri,  8 Nov 2019 17:05:55 +0000 (GMT)
Date: Fri, 8 Nov 2019 17:05:55 +0000
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 1/2] arm64: kaslr: Announce KASLR status on boot
Message-ID: <20191108170555.GH5532@sirena.co.uk>
References: <20191108162001.11737-1-broonie@kernel.org>
 <20191108162001.11737-2-broonie@kernel.org>
 <20191108164636.GJ11465@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191108164636.GJ11465@lakrids.cambridge.arm.com>
X-Cookie: Life is like a simile.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_090558_214611_B89AE09E 
X-CRM114-Status: UNSURE (   7.55  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5937814222967379533=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5937814222967379533==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gKijDXBCEH69PxaN"
Content-Disposition: inline


--gKijDXBCEH69PxaN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 08, 2019 at 04:46:36PM +0000, Mark Rutland wrote:
> On Fri, Nov 08, 2019 at 04:20:00PM +0000, Mark Brown wrote:

> > +enum kaslr_status __ro_after_init kaslr_status;

> This can probably be __initdata since it's only consumed by an __init
> call.

Yes, it can.

--gKijDXBCEH69PxaN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3FoHIACgkQJNaLcl1U
h9BJwwgAhclJAa7e2Zpgk7HpRv4XzqMLcePvPlMyPpaHi+1u5HGwG1DuXL4Jp1bg
8duw/S3VGgcdZxUgjP2FiBLJ1UjPLb6snNiMGj7Oxg2+QVye8kojVZrfB4MtIJdE
Et2fGvDOagisGNyvt88MwlfVrUVbdOSbQynT3B+yt6H91Cmh7GG6fxc5J6S+UGny
d8QDbncTdkVNrVK78qqVp+rG3+rr51UF/evaByJJLVG7/EDrPw9Wj4PqgINduI3y
Xq6d1Mx3Gkip7HMcpiop9t49Ta/oZns0vbNqgvSF55L7akB8I/2+C8nR25BHEDhr
noW2YlkeqVs2zIIXiOEJYp9Z+JEFDA==
=7IYm
-----END PGP SIGNATURE-----

--gKijDXBCEH69PxaN--


--===============5937814222967379533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5937814222967379533==--

