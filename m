Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9514115A8C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:08:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5N540SUngjn0Z0yyPzZw0iYMvLSfsMKzkjFm2MBFnR0=; b=COys0QDsOZSNnxp12rVpZPRoI
	sTUmsFywGzs9CWx1aQmne1tpwEyjP7NN+qFYgSbCN0MY5fwLxJ23Eji2ZoYqhviLkd5UTqoLng2/s
	GHkIMSMp59fO2GcBXUU2F3mlepCUkqe7ibgJPgkZu4chcEdihNONudrbdo0Ym9EAz8+e5dHGSSWqo
	PkgSy0rsyxAEb09wEbQx6Cy3LrCi9pn5bCYwFX/YuKju2ncElec6nb+hmUPF/yLO61HOy5KkMS+ck
	PY4qxSjL4uSSccLfmO6YeQNp+mSt6vOZWy2jGFLfyW+5LudMAoQT1zKx9DEZmqAx6nPbzcdyqi5Vj
	efCItLd0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qoJ-00046u-D9; Wed, 12 Feb 2020 12:08:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qo8-00046F-PH
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:07:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D1F730E;
 Wed, 12 Feb 2020 04:07:55 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 115DB3F6CF;
 Wed, 12 Feb 2020 04:07:54 -0800 (PST)
Date: Wed, 12 Feb 2020 12:07:53 +0000
From: Mark Brown <broonie@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
Message-ID: <20200212120753.GF4028@sirena.org.uk>
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-2-aford173@gmail.com>
 <CAOMZO5D3emrAk84wDS04qJC-3AyvFnqodhoMsXO-ukHnYsU+PQ@mail.gmail.com>
 <CAHCN7xJyZRwJhnWW2mAbOeGyrMsB7Au_e6AvwiNmNS8gFUfSyw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHCN7xJyZRwJhnWW2mAbOeGyrMsB7Au_e6AvwiNmNS8gFUfSyw@mail.gmail.com>
X-Cookie: Violence is molding.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040756_867420_302F63BE 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 linux-spi <linux-spi@vger.kernel.org>, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8306162992099573684=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8306162992099573684==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rWhLK7VZz0iBluhq"
Content-Disposition: inline


--rWhLK7VZz0iBluhq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 03, 2020 at 04:53:34AM -0600, Adam Ford wrote:

> My motivation is to get the flexspi on the i.MX8MM to work, and I did
> a list of the patches applied on the NXP branch to see what was
> applied on top of their 4.19 kernel and this patch series generated
> from that list.  Most of the NXP commits are one-line commits, and I
> don't know the motivation for what's happening.  NXP did it, and I
> know it works on the Flexspi driver.

Adding new compatibles and so on seems fine but the patches making
random changes without explanation like the one for octal mode I just
replied to are more worrying, do they work with older versions of the IP
or in all use cases for example?  I'd suggest cutting the initial patch
series down to the bare minimum needed to get things working and then
building on top of that if that's not already been done.

--rWhLK7VZz0iBluhq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5D6pgACgkQJNaLcl1U
h9CVMgf/QyhKBWAfMkP4Rp+HGO7kGTkLUcFcDDEVLppg3P994e+Hw7xkEhHlxZzR
Pk3L02ATqS7BzaqcD6YYWlUNUhq84BASOdHvlXmkHbj2zUH1YXHGToNmImnyz+ij
PvQMg+4jX2+O/lS74JysuPSmnBaKzjCow8YHCD7eOF4/vBOpUbf2mSl2j5FqiQ61
epX3f2ggXN/mHWb5lHsRFg0BeiX0FY0z6x+eKtRhkMlcWFDSi4tEAtCWQeJdln/Z
fBzuVHcuRml1QT7eUkipD/rvtj5X04qwFvOHjHdVFRTlsWT9NqAEKyvwofEAml9G
LQ/fLV2WIr5f6MFYAgsFwhj6PpLOYA==
=3v+9
-----END PGP SIGNATURE-----

--rWhLK7VZz0iBluhq--


--===============8306162992099573684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8306162992099573684==--

