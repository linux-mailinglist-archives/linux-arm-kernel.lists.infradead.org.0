Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74BD259B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 23:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/fYLV7IKaluSmNHc/JrAR+j04gmUEXehwZghy0I6MIE=; b=W/1AJgjMT4CI2nCP900/R9hnZ
	O/sEa1ro3lXL3Pm16o/KWJYQWWcQkWVvFfT/Rt4bZPOazXOpiWWiIRFTH/AMUilMv4eZ5rzKictyd
	WS0WxzQ/NGaLgQxeovQA6IvSdhK3PXANhowoC/+DkjJzVLotmcWRWMzRssg7y8YjWV5oRRLh27ZXR
	VSrFzDarHQxNzQCHtFCdxeGLdAPPZYvylksOdUn53lbYlix9MuPr8hvTmiaH5gGkMjCOL0Eiyj+Kv
	dMKymBoS7YPmkLxK7k5LJ8rJjB/HEMN2gJKZHSkH1lmk4cLIq46oE6BvfUNsqbA9hV1cz8a6102Sk
	lperyIc6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTC0D-0003B6-SB; Tue, 21 May 2019 21:08:53 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTC06-0003AZ-1b
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 21:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y7ibEasnNlMrg0Cg0u1uA8kjMpvwkTqXDxhIGJ97fKY=; b=fHihLTsTBRj8VjaQKfcECHqjH
 7QaAYGF0BGdUc3CQdB5hmMpvxPaU8ozn9e1eWwM9GVrWUlF8NH5Sr26Hwo0fxYOQ+nebRdpf2VUrZ
 x8CMS1QorssZj9YtUqQHVVsNebaHWlNgE0Eh8o87e4P89Jw5JOfi3mPbtF1Doevl4hAPQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTC03-0002FI-Um; Tue, 21 May 2019 21:08:43 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 643A11126D13; Tue, 21 May 2019 22:08:43 +0100 (BST)
Date: Tue, 21 May 2019 22:08:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] spi: zynqmp: Fix build break
Message-ID: <20190521210843.GC1580@sirena.org.uk>
References: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
 <20190429162246.6061-1-olof@lixom.net>
MIME-Version: 1.0
In-Reply-To: <20190429162246.6061-1-olof@lixom.net>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_140846_456202_0A83D22C 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Jolly Shah <jollys@xilinx.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9042551197776394573=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9042551197776394573==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4jXrM3lyYWu4nBt5"
Content-Disposition: inline


--4jXrM3lyYWu4nBt5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 29, 2019 at 09:22:46AM -0700, Olof Johansson wrote:
> Missing include:
> drivers/spi/spi-zynqmp-gqspi.c:1025:13: error: implicit declaration of
>   function 'zynqmp_pm_get_eemi_ops'; did you mean
>   'zynqmp_process_dma_irq'? [-Werror=3Dimplicit-function-declaration]
>=20
> Fixes: 3d0313786470a ('drivers: Defer probe if firmware is not ready')

Please copy maintainers on patches so they aren't surprised when they
get mails saying they accepted patches they never heard of before!

--4jXrM3lyYWu4nBt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzkaNoACgkQJNaLcl1U
h9CBfwgAgbLrAnQDkYTUpP7MdSDSiv8ppwZ4R/EN9OCgQb6Cjms4xG6hrxkbloPA
+oUebvqpcjb2wzduZU8tdCKx2CSU/uGlqTxG55BLy+pyrGHmFDY3MBpWr0aAj8hi
XZGbyLoZWQYWTWorcXeC50RTLzX+fRTPx0A5KJzjXU8pjUmjnA+hjDeruCcW2JNN
Suy2LE8ivUVCFUAOHVhM0bVXIbteUPRu08p3XGd3aTsfzJRn35GWepyfhnzAKX1g
OwIBgEZFHVzQ0AZh4jm4c4YdkrF/vpawZdC+48BCVtfsdreTlVzBZ8OvKfC9j4jX
q0QdP42x5IWG+4mrek1zsa3JoYmsJA==
=tUfm
-----END PGP SIGNATURE-----

--4jXrM3lyYWu4nBt5--


--===============9042551197776394573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9042551197776394573==--

