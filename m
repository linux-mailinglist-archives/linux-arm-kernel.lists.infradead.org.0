Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9F884C2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2kf8rryhf0Bv/gP6MGU7yQlPssbbjeh1nfZhevIOZpY=; b=ElxeR2qZP4bF5tucOiZJB5ni/
	JAjvPbLT8fiR3+gF3kz8ZlNnhQlhl/rWeKlKg52PhPZYZc8ahYqOR1iCiB+ZiAs+tKqoVPKtj6sv5
	1u0Jl3nxH8NBKYXdqHuwAWI+irRRWaeynBkQYc2FHwfUJZP/z/JG2tbk8ZGPAN6bvQTs77Ge6iV6I
	WXJdYMBDZEvTqXYPlW6mspM6CczWox93ybmYeszisMHXuGSHuyhSvy6JExp5WL+LLPA7uuiM4M6Rm
	MtxY6sw7y/VvK49sWb8v7vSN9Og9ZD+Roanzcz/hciJCcIgh3WiQuwKnDRKpVyuC6Ms50JOgVrrSy
	xr3JeJgTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLXi-0001sZ-PV; Wed, 07 Aug 2019 12:59:50 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLXV-0001s2-C5
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wO5NtNRERzh7xvd86GGhasPsQj248MwA/stZlw0W4Os=; b=vJN9o7BxNRkQwIDbfeMY0hbqy
 vVzB4U/6FhTa42TmrzQQY139F64O//tfg+2zHj6zXrjvVKB4yErcho/floCwzxvcwJyOiql1+VUwj
 IED1CT1OVj4jbuBuEd45j3dEckaHzKTiDsn77LDNEtLdsXfLXApvu+dkZRiua6nkcj7gE=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvLXN-0007bN-UR; Wed, 07 Aug 2019 12:59:30 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C26F62742B9E; Wed,  7 Aug 2019 13:59:28 +0100 (BST)
Date: Wed, 7 Aug 2019 13:59:28 +0100
From: Mark Brown <broonie@kernel.org>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Message-ID: <20190807125928.GC4048@sirena.co.uk>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
 <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
 <20190807104104.GA18773@infradead.org>
 <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
MIME-Version: 1.0
In-Reply-To: <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_055937_410807_B3CB89CB 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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
Cc: "kernel-build-reports@lists.linaro.org"
 <kernel-build-reports@lists.linaro.org>, "Zhou1, Tao" <Tao.Zhou1@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Deucher, Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Li,
 Dennis" <Dennis.Li@amd.com>, "Zhang, Hawking" <Hawking.Zhang@amd.com>
Content-Type: multipart/mixed; boundary="===============4979270053985998137=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4979270053985998137==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xo44VMWPx7vlQ2+2"
Content-Disposition: inline


--xo44VMWPx7vlQ2+2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 07, 2019 at 10:55:01AM +0000, Koenig, Christian wrote:
> Am 07.08.19 um 12:41 schrieb Christoph Hellwig:

> > writeq/readq are provided whenever the CPU actually supports 64-bit
> > atomic loads and stores.

> Is there a config option which we can make the driver depend on?

64BIT should do the trick.

--xo44VMWPx7vlQ2+2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Kyy8ACgkQJNaLcl1U
h9CSUAf/bUrGApOJ4TloFKZSBONMJdqKqen4pcxRQYHBdRMyb9jNWyeJTqP+Wj0g
aQ7WrZb9af6U1NxFXjpCokpLd5UjEslDiLT2PCo2BR2TMgxFqLE9QTw+HdMNMoPX
lxWI6uQYnj6xQu3tmPJ870gFcKKjFkCE7Q2NH1FNjSRxg9ApAAb333sFf2viaBEo
1YgDTlRCGBxejDRhW0fR8GwJUU/CSF77zV2HFGJtBGhhBfeZ72mp8gmfOtX0AUaj
cPWaZOHrOhZN89rRC65g1NagTRK6kB5Sr+rhBcQj/b2R5Rmynj414ZjO0l2ENmlq
MfX/UcsY6twsldvz7Sng1BUk9WsUxg==
=TBn7
-----END PGP SIGNATURE-----

--xo44VMWPx7vlQ2+2--


--===============4979270053985998137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4979270053985998137==--

