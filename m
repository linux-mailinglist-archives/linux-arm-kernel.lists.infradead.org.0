Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A21861F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gzH3m/HfTbP58vmySBLYTL6VLa8qqgXnSwmV4p5goWk=; b=sJ+8dQ+9XZ0eZjoeZRZu75ZaV
	6JusBRvfwt76GrxgiXXXyWN2ZKdDq5S3ERdnuqUHv98hwBhAeOTK2ChdFAu28Rx9O7+s0h0YBjToH
	8RXU0az/OmTFj29cVQ/krIprmBaC5v7puWwfY//UHV0+kahXe2v+qyV99XJ5nMZzvcRz74sj2Sbp1
	1tvM9UDty/I35IFpuAH7ZentAoHz8sXjtvVl0lqqs3br9OXUzDCGzhVuBvySHStGT3lITfdllLpzQ
	ODG9P1ZlcWhvD4TaiPlCYIte6Kc7QlvubvZbfSpe3WAvDXuko4LJM8adjhruPR/OaG78IbPWScGaV
	sYfpHPtMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvheu-0005Ii-0J; Thu, 08 Aug 2019 12:36:44 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvheh-0005IM-PZ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4LGDU4dIUtXHJ4iubOAh4TqyCG8C6vJKv+XaP6AXbBk=; b=gp1sUFuKsw2p1wzq1/8uOkx1D
 bPUDGWqX6CeYaeUAT2b3Fk4LC60DFULErr+sIX2zd7l7F3MHXr0eJ/p3AIzHHrbmJtt5VI2N1IMkU
 N1r6NBKakpq4kv8qOlCcloV6V+5EBbtpxfQqUi7r11oIrsRdNAnpC7BqZljOFgXcUcilY=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvhee-0002pz-Vy; Thu, 08 Aug 2019 12:36:29 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 044732742BDD; Thu,  8 Aug 2019 13:36:27 +0100 (BST)
Date: Thu, 8 Aug 2019 13:36:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
Message-ID: <20190808123627.GC3795@sirena.co.uk>
References: <20190806170043.35588-1-broonie@kernel.org>
 <20190807160107.fpanxo4iimhg743c@willie-the-truck>
 <460ad751-9b15-03c8-2279-d90837e94219@arm.com>
MIME-Version: 1.0
In-Reply-To: <460ad751-9b15-03c8-2279-d90837e94219@arm.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_053631_836931_9976059D 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1809600012764673482=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1809600012764673482==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ALfTUftag+2gvp1h"
Content-Disposition: inline


--ALfTUftag+2gvp1h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 08, 2019 at 10:20:12AM +0100, Suzuki K Poulose wrote:
> On 07/08/2019 17:01, Will Deacon wrote:
> > On Tue, Aug 06, 2019 at 06:00:43PM +0100, Mark Brown wrote:

> > > +	 * Take the appropriate actions to configure this capability for this
> > > +	 * CPU.  This will be called on all CPUs in the system if the
> > > +	 * capability is detected anywhere in the system.

> > That's not quite right though either, is it? We need to take into account
> > the scope of the capability/erratum as well,

> Exactly. Each capability is detected based on the "SCOPE" of the capability.
> So, the above statement is clearly misleading (i.e, mentioning the case for the
> LOCAL_CPU scope capabilities) and is wrong for SYSTEM scope. For that matter,
> one should not talk about the "where" it is detected, as long as he understands
> the "scope" of the capability.

My goal with using "anywhere" was to cover all scopes, including the
system scope and also all more local scopes.

--ALfTUftag+2gvp1h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1MF0sACgkQJNaLcl1U
h9BKJwf+JtD3HHnsMjc6oPDShnOLj9XGap5wG084kV0FhphEYKG44+4xUCiVKk5T
jeGqgOXJcJjefKJcT+RQMGScNwkQu8DppATATrIgKncZG9GlZ2EV/ABfVku7Bosb
i1nc8LTvUbxf28WFA1JDzAXgeyDZe8xJrT5qaICnYbzjaypTwUHbM8OvqhCW8kAT
MpbZ6EpRgDcSiIRlx6heFS79hI8xvsmYjRtouueiXI+FJZB1XkC2YsPBw1qdqSqt
emH36VfzE7wLXETYfyK8R7JRDgTD72ka83+cIn5iSnRJU5Tzw6vk0PEAz0xFZUJ2
BH9ji0wJUC1Dj6LUu/WJ1xvkSI/Zwg==
=uuNp
-----END PGP SIGNATURE-----

--ALfTUftag+2gvp1h--


--===============1809600012764673482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1809600012764673482==--

