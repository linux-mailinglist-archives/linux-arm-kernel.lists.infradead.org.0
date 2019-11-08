Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5004FF4E39
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AYNR1EJXknpDQ3sG7+yrzdl+vZUV+FbmIgul5uKbEKc=; b=nePW0rF7n762l97PenB3MkoOH
	5M5MOEvatoWdbdMzffpeSikP2rJXGXa+0VlBsmpPp3Ixq+JPpKVANMYayZCK1L9GSoM/RkIPXcrDv
	SVEr2iNJ66B8D5CXmFwxDbAHYHd/q9bRogNaPsIjDACeah3JQh+L0P1uXtsSd5DJKRo7Q3acXKKne
	RnhcemMKunJXOXCQ4bcmK3yy8XRAM/nAD7Koam36PsP5dVz79HZZDGPIDmMZeGOeKgeIMl5MfeyoE
	Rz7FS3jDsonEc9kZROQ3M1CsPuLkRDCcCMsPVk9cXptCkrnw5oksVwgZFFkRYKTZ7vn+f4AuxHy+r
	1DJK6f34w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Ms-0004Gy-2t; Fri, 08 Nov 2019 14:36:06 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5Mj-0004GD-7Q
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kLfXvQkC42L9tczjPcJq75OcxcztTAqs9D1ZZfjvAhk=; b=ClWfAB/IoOsWuKCAKV/+IAte8
 YkI/YccN97xAYCmTaR7SpXrWNCBx6t0OEcZMQIvnUxr0kzgM0PIS3XQ4M4bNpChht5juT2Pu6U2Rt
 Sg6WP236YFYZGbMB3YIwIFEV8hJqisX1KP7jroyYRoG6+QZks+PtAlmyvGOeiZBF6eKqw=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT5Mh-0007R9-1Y; Fri, 08 Nov 2019 14:35:55 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 4550A2741450; Fri,  8 Nov 2019 14:35:54 +0000 (GMT)
Date: Fri, 8 Nov 2019 14:35:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: kaslr: Print warning if KASLR is disabled due to
 lack of seed
Message-ID: <20191108143554.GF5532@sirena.co.uk>
References: <20191107121241.8458-1-broonie@kernel.org>
 <20191108133830.GB22834@arrakis.emea.arm.com>
 <20191108141426.GC11465@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191108141426.GC11465@lakrids.cambridge.arm.com>
X-Cookie: Life is like a simile.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_063557_269525_8FF3E10D 
X-CRM114-Status: GOOD (  12.19  )
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
Content-Type: multipart/mixed; boundary="===============1560936337955648363=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1560936337955648363==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eDB11BtaWSyaBkpc"
Content-Disposition: inline


--eDB11BtaWSyaBkpc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 08, 2019 at 02:14:27PM +0000, Mark Rutland wrote:

> To avoid surprises, I think it'd be best to log that state later, in

I was just going to add an initcall in kaslr.c to keep things together.

> setup.c. We can also do that consistently, so that the user has a
> positive message when KASLR is in use.

So long as people are happy announcing it, I didn't add anything since I
wasn't clear if this was a deliberate decision to not provide
information but I see now it was more likely just the fact that it's
running too early to reliably print.

> enum kaslr_status {
> 	KASLR_ENABLED,
> 	KASLR_DISABLED,
> 	KASLR_NO_SEED,
> };

> enum kaslr_status __ro_after_init kaslr_status;

> ... and switch on that in setup.c.

Having the enum seems like it spreads the code out for unclear
advantage, apart from the logging nothing particularly cares about
anything other than the enabled/disabled decision.

--eDB11BtaWSyaBkpc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3FfUkACgkQJNaLcl1U
h9D9jggAgD4YzTOU/0yTHZcWbyPcmy8G2Ec3JuGP2KV8TG3KJ61QxROtM0f1Z1hE
eR/pSfqFfAxgM5uPsJBfMaWO/XHGJzePtk46t63b9E6db7vG1tOrKwXa6ZX3jBQG
LhUEq1mkiifMzyLxKAGhOUf6w+9g55pW9ddX8fIBizfca5FK5mmXNE7V6IfX5D7t
3iGrNJ9VlA8+w2Jzse+76lox0zWTdpKcmnlKcmRLy+XYhJrKEtx93JmznntEw5cz
cTbJL30Mya7qKi08ct4fZmBRwpniGVoZqk6ObKD9zjgElD0wIfb3TQiSNbolKOv4
tD7xYlZYPxygIIcNzUhtWayV7W8kxQ==
=kSgj
-----END PGP SIGNATURE-----

--eDB11BtaWSyaBkpc--


--===============1560936337955648363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1560936337955648363==--

