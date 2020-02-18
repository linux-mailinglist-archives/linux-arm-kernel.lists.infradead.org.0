Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0164162766
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dXc2tWdHjjur0IVtSsLmrGm7AFLhMg2qNU3SMxozLVk=; b=JCkKkilmq7AulOoJ/v1V8h1Lt
	tFhQoyV7dXIWS9WjBSeRYe3vThlvdynDiTHLpCOd/un95vQ1J40aG4SyCQ/5xGfGxU/DWinxMzOGE
	Harm6GdWu9vSrXnVk9OBFZ8Hwqoxhyscp8Wbro7DJGVMOfLxuKIPe5k3DsDBsU3khqjPxUCYNlo43
	J1thFsF23SJhKY3PVo/CJxviXtUEPwHs22IY8Dp+bJ6qoP+GzShHmSbU31d4+bhRY0CH/MstRGuBi
	iBX3RL8UbB6HATEi+O/qaciZ+7N7+YZ8LFxpMRE7z9ptQChECUFHD1QlmSgdPOxp0xE3xY66F8lti
	wdZU2W2rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43Gi-0006s8-VE; Tue, 18 Feb 2020 13:50:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43Ga-0006mH-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:50:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAC021FB;
 Tue, 18 Feb 2020 05:50:23 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3ECE63F6CF;
 Tue, 18 Feb 2020 05:50:23 -0800 (PST)
Date: Tue, 18 Feb 2020 13:50:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Shobhit Srivastava <shobhit.srivastava@intel.com>
Subject: Re: [PATCH 0/1] Enable SSP controller for CS toggle
Message-ID: <20200218135021.GI4232@sirena.org.uk>
References: <20200218134906.25458-1-shobhit.srivastava@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200218134906.25458-1-shobhit.srivastava@intel.com>
X-Cookie: No alcohol, dogs or horses.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_055024_423540_B636B5FC 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
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
Cc: furquan@google.com, andriy.shevchenko@linux.intel.com,
 linux-kernel@vger.kernel.org, haojian.zhuang@gmail.com,
 linux-spi@vger.kernel.org, evgreen@google.com, daniel@zonque.org,
 rajatja@google.com, robert.jarzmik@free.fr,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1742171141512157331=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1742171141512157331==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e5GLnnZ8mDMEwH4V"
Content-Disposition: inline


--e5GLnnZ8mDMEwH4V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 18, 2020 at 07:19:05PM +0530, Shobhit Srivastava wrote:
>=20
> SPI CS assert may not always be accompanied by data. There are cases
> where we want to assert CS, wait and then deassert CS. There is no
> clocking or reading required. On Intel CNL LPSS controller, it was

Please don't send cover letters for single patches, if there is anything
that needs saying put it in the changelog of the patch or after the ---
if it's administrative stuff.  This reduces mail volume and ensures that=20
any important information is recorded in the changelog rather than being
lost.=20

--e5GLnnZ8mDMEwH4V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5L650ACgkQJNaLcl1U
h9ADRgf+ICIk+9HogX5my0zjXhvZfYd0hbmxco9LskbJW49ggOsx15biJ4X4Zq3K
lZ89OD8Y6+pqvLZnNorTACnqoP/aq/zfBow5ULHUefblv8NWIQeRJ6D/N9f/ZAIo
JWuyV6Qbrtthji+3ZoMTf9N/dX3mleiGWLBvWnDsz+gYba7LM+CNS9/oHroIycdB
j7zrZRatG7+x7zO270HN0bga1PBxIfSyP16VELeL4MJ9eoquvqVnUkOWQ6S2NFSz
Z1j6w/pKmmt3DzoSzzCBrT7p6HddBGFTRvprSJtQvaFaT5FMvPflNGagP8zC8VRN
TvcVZjSOu5bf7lYCTQViJwWKIocyWw==
=00VJ
-----END PGP SIGNATURE-----

--e5GLnnZ8mDMEwH4V--


--===============1742171141512157331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1742171141512157331==--

