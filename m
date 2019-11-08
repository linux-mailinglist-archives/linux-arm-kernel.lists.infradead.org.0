Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02971F4DF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kUZrQeu1AxyY7QP2VQQV1B9DQnMRb7F/7MmKGzs0nf0=; b=GUXrhg2GeZIvf5iEu669pcTMr
	qO2vse2tM/ZqS6Q6Y+PVAHjxB+i97s2mIoP0zZrWcsbHS/mxVNkibv+7z5pS8nPbIGmi5GjeeY+Xw
	Dm8Gu+FrAWiyCAOURqo43TM6vAMgZlxRXt1xstuqLjifRYtjTs6rBwyzVQ22T/+ajJWoAjXiRrMap
	CmjqCQH8lamMRAoS28XBOSPLD4CvKu6cpDh6nHd2J3JVIUmBY4baJLSP8Ov2qBNFtXrb2WOsDCNnM
	8uV2DJHlKjVY+WhqnIW/bQt3ymVj4jOpGEPbsiMqdck6eu8JVB+lUgrYdmCKlU2QJoX8h0xaYbUwh
	OfkucWWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT55H-0005Gy-Cw; Fri, 08 Nov 2019 14:17:55 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT54w-00058H-HS
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PDc5upWzzpKszOBOEJCaVtbJ7NutslNeVXZmqKNmzzY=; b=cioAFdUQwrN+dEubnHngZv21L
 3AA14yeb1JKjwGpvexSVaFeZBTcs1rJAy0nB0ifpe8bBc9KOenzcaqhC32wvUyNMDWqjquQkqZOHs
 z31Sl1NSwECdPOo89PjG5Dw/vFHIpLAcolJVgTiOuZghevuAdBeRg7vslDEF/+j4avH/4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT54u-0007PN-GM; Fri, 08 Nov 2019 14:17:32 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A52BB2741450; Fri,  8 Nov 2019 14:17:31 +0000 (GMT)
Date: Fri, 8 Nov 2019 14:17:31 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: kaslr: Print warning if KASLR is disabled due to
 lack of seed
Message-ID: <20191108141731.GA39034@sirena.co.uk>
References: <20191107121241.8458-1-broonie@kernel.org>
 <20191108133830.GB22834@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191108133830.GB22834@arrakis.emea.arm.com>
X-Cookie: Post no bills.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_061734_602421_BA0192FF 
X-CRM114-Status: GOOD (  12.43  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1644285536057923865=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1644285536057923865==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 08, 2019 at 01:38:31PM +0000, Catalin Marinas wrote:
> On Thu, Nov 07, 2019 at 12:12:41PM +0000, Mark Brown wrote:

> >  	seed = get_kaslr_seed(fdt);
> > -	if (!seed)
> > +	if (!seed) {
> > +		pr_warn("No seed available for KASLR, disabling\n");
> >  		return 0;
> > +	}

> For some reason, this patch locks up the VM on TX2, stuck in a recursive
> fault. Too early for a printk?

I guess so - I was able to trigger this print without problems on my
system locally, not sure what configuration or system changes would make
the difference on TX2 but clearly there's at least some with issues.
That's annoying, I'll add an initcall to do the print instead.

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3FePoACgkQJNaLcl1U
h9Duswf3e6uH6zA0W7VD1k14cb5Xfbi2cLj//y87ecOjJBMIJMHhf2ZuQqT6QMT6
/3KyOig2uZSMirDHL9SLGOC1yiGBfuRUdsiC7VyH7rx2quJpzODOXjNvb59n6N8h
EGzOGi3sTi0SEcFtGFRMjqRuwz8KijYso2t+pMUOfOL6Q8GITf+frR3I+jPf8rjE
WaNJI+v1u3oCvK50Y5xm/elGP71sejTiMWU7NLs397cZcOGPx718A70g2TEqkT84
bAG2CsPNpkxJiPTjgZHlsD/PHZIYjNSjyMDcfqeNP5WL+hfAgr89E3cS+FII37mu
4XSOzPUcyJTblkPN5X/fVhp7aABv
=3Zoc
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--


--===============1644285536057923865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1644285536057923865==--

