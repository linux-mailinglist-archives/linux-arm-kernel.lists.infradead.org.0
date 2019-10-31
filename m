Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ADEEB08F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H6imcmPea569dWyk270oG835Emem0sTyy8nllVcTt/g=; b=VyydgrHp8h6jvKRp1P36NTJvN
	GRFglvs+qprgG59f9wTe/6KkQfSjiThoyh448Ryo31Lf0p1IDSpt6q2WV1DFCFc9Nz4TQv6Z6wFBp
	ujljE7Mpx3HeSE7zmIpzdNOrCeNeCg1KWULCsAoAKjRgJ5PauU6Q83K34lsqIk+5xqGb7i6emFHEn
	daTok+z5gVCXJTODTVC9T4XHwIPfFos4If8F24hqsNVNCm1CC8O2t9AII6815yhVGp4OCq0j4IKBS
	PKhnX27B2SBCCZJBDjMDP14Vt4CJ1T7sxQmc7fpsr+q+dUOVzs72AXYjaD1uTH4oel1am1+fXDREi
	KP0Hqf2ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9pD-0004a9-J4; Thu, 31 Oct 2019 12:45:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9oz-00044t-Ow
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:45:03 +0000
Received: from localhost (lns-bzn-32-82-254-4-138.adsl.proxad.net
 [82.254.4.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAAF02067D;
 Thu, 31 Oct 2019 12:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572525901;
 bh=0DNBeenyH7rB/8g2YXDHf6rJYEKF+j4UGX0CUbblXaA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mZ2EFnFaQxMFoSOwRwqwyd2Y9KZ+YtRrSiC6EbdzRR+rfKo31dkjxb3WqL6WD2PLV
 CXi8nj0pOAqaL5Jz40Ey/pB2Q/l9RqFR3ZJ7RxF6l/Ildoo5XduUSMQXz18Y2y0tzL
 GzoBlIYLheWU7SCpbNIdcCe9B1hw0oYK3jgmmIdY=
Date: Thu, 31 Oct 2019 13:35:43 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v7 0/2] Allwinner H6 Mali GPU support
Message-ID: <20191031123543.lllmoat4zv5f47pd@hendrix>
References: <20191030150742.3573-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191030150742.3573-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_054501_864348_2B5B01A5 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4173812096525983343=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4173812096525983343==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nd6i5yai3phkhdlv"
Content-Disposition: inline


--nd6i5yai3phkhdlv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 30, 2019 at 04:07:40PM +0100, Cl=E9ment P=E9ron wrote:
> Hi,
>
> Proper iommu patches has been merged[0].
>
> There is still work to do to make it works with panfrost
> but all modules can be probed and removed smoothly.
>
> These bindings could be used also for out-of-tree modules.

Applied both, thanks

Maxime

--nd6i5yai3phkhdlv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbrVHwAKCRDj7w1vZxhR
xWqMAQClAAyrxFvMUcdFqsOw4AphcLAVcXIVqpAF1731LJ7ZBgEAn8EdQHaxfj6V
RLMcF7zHur0tsbHuhAtC/gJY0sHFFQM=
=pJeb
-----END PGP SIGNATURE-----

--nd6i5yai3phkhdlv--


--===============4173812096525983343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4173812096525983343==--

