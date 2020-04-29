Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87561BEBF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WMaYFVUfR2yfa4dc97qnNsnxCKRI3F864boP+jSET6A=; b=VFEGjmaTmaneYiQwY8RSK5/1m
	eYiY3WVa3B6gkLQW5SeKHmVIl2nkHz3X2HEdjjw2usa8hD0ji3qCEKVo1qRSB0oCLRAsugr2T5ECl
	lgrvQr0GIv+nEUZuF3JJoi4jG5biJ2XweiHad26SCGX/RRg0ef6WS3icj4IknX94JCHNMn+Rv5KqY
	RG1Hlhl4qcmEl26MSroJhdMU4ezlpjLlEXfZkFEjVH+j3KP0FxgCGQyQNVRXN/NhdAiVO+QfYeV0A
	iwDL0EkalWCsfshL3CcnDZeBHRQV3XUPXMSrV6ket3SBmstL9gayqzI9UVavocTWcYMv1X8992rjg
	r+JAxnmBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuvy-0007dC-2p; Wed, 29 Apr 2020 22:12:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuvn-0007cQ-Io
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:11:52 +0000
Received: from earth.universe (dyndsl-095-033-155-009.ewe-ip-backbone.de
 [95.33.155.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B5532076B;
 Wed, 29 Apr 2020 22:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588198310;
 bh=NhJAGA4WB4ekULoqW87ilxLf8lLw8KWDvkBTnjmjiDc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YBOfG5srM35SBMfI2Op8Z/+cCm8Z7RP0MbLIbzO9SX4YMVoKDug0qFEDIakDqv20A
 FBXLfzuTVUr3ou8QabGEC4vGojna1iGQTr1JmjPjvSn9O2pA76RuUT8fOBGj5gElka
 r490vEmIJ3Aw8ayvxWRtAiFxNaMQxCWYSUSSxT3U=
Received: by earth.universe (Postfix, from userid 1000)
 id B37603C08C6; Thu, 30 Apr 2020 00:11:48 +0200 (CEST)
Date: Thu, 30 Apr 2020 00:11:48 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 00/17] Modularizing Versatile Express
Message-ID: <20200429221148.q7lozhkha6j3t4nt@earth.universe>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_151151_644706_D642787C 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Will Deacon <will@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-pm@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2421884846116491856=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2421884846116491856==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nthuz3olvzwitejh"
Content-Disposition: inline


--nthuz3olvzwitejh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Apr 29, 2020 at 03:58:09PM -0500, Rob Herring wrote:
> [...]
>
> v2:
> The major change is a boot fix for 32-bit VExpress platforms with patch 3.
> I also dropped 'power/reset: vexpress: Support building as a module' as it
> was incomplete and not needed for this series.

Ok, please also drop me from Cc for v3 :)

Thanks,

-- Sebastian

--nthuz3olvzwitejh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6p+6QACgkQ2O7X88g7
+ppsow//fD+6baBTm98AWivrmVVWoWCogsnA14PAN71E53Bra7o+E47MHNsq9eSD
KeukkLWEMwt24Bl18kGAZVADe2kHsibb6s4i497ZvY57L/FIy2kI0e2lXeJh2nRA
saNyrSWvV1u2EXb4pxMARzS/fDhPGq+eVbyoDwLiM+Ldy3HkAePU7y0vbZthnBKN
Xh/oZdjFHRZvKzvvqUQ0n9KmIhTbSGA4XO67s8RaufSM8/36/BI8P/9DhHEIbUsE
MILYSECWvSnHXXMXpFMk4KBDoFwFyhxhhRqVIlhn3cz+PycqtPfiNnOKIG5vhxhW
ez4caJtiElsjDP9IpoQw1MEEDYJpFGER90tNo/AQv/SNAc9I0febivmcWjuXDrQB
LuLDfL19RY0lOelVr7JJB1pcwylGwTcUTWZsPLXCk61ReRxMFZMlASEQJsL9qjcT
h2Gq8U4NLlXtibCYTwQFYmq7c3H9Bfyc1fcl7ER146pP37UGHMYfMeikdw/9vAgB
l901C/5smpeoUq6HQDxvpz3yxfPgzg4EzKwlLkwiFG1P5HlHUVhQRrM9xaBKoN3M
cYJLY6JNELq7SwrSiuaiROH57tO5ogtunFS7aZYYNx2odz2xZewjH1uxQnByJQ1G
u6QuAxsh/dAUTfUviK8Q48d9q/CYnzy5wl0koZxWl5optFu/BKo=
=fGB5
-----END PGP SIGNATURE-----

--nthuz3olvzwitejh--


--===============2421884846116491856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2421884846116491856==--

