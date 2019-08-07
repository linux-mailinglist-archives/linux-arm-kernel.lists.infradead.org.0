Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D46685176
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5yZN+M/XZBoCxLQ0wS1TpYeixmR7al9BMG7+fIZEnhk=; b=AtcRmu3yCipXTyXDeUhNojI//
	jf/4LKD5DCw5j98xFZTu/nZ7vUBlyGHaYP6mtv9U18/V5v749bQnLNDAfc75pgWX6Kvs/2Z1ZVw8Y
	YFjObqT2hOyQhjLQFJ8o3c3xlM4aVhLhsQjFmZklz5wb9pNyI792fSznmnxQtiI112And7sz7k0lT
	HJhOX5d9+zGw5XQDHyXyyQan1hpXqOubCXrH3wyoEWXz8TET7XPsV6Zc+618p4AuJ6HpLYRrTHkvt
	QmLU13mNmKlm4X4MjSZQ1KKfQQUVsb2MYTFRR5BW2o7uT1k8bCAsS/SUABRQ0SZsdxsnNjEbFUy13
	o34xiqowQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPAO-0002Po-IU; Wed, 07 Aug 2019 16:52:00 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPAC-0002P3-HI
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AQ9uZNTiyjXcIfzmSPUZ61hJ1xh1l+attBukh8DVpNE=; b=xjxBTvZ1O5oNW8TmAcICaHIm5
 6fz6ZEYCddGrXb8mu8UsBP0gLQUSIbCfo2g+ORM9m9GhrwGKEHP3yUI+L1tNonxxhyzrqyf+EuRwU
 iP+7IStksYfYF2v+tMZTI6jHDu0siQN3xJ+KvLdiR4K8yNBFdilQy9kVNpN9vG8AH4vlk=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvPA8-0008Gt-MS; Wed, 07 Aug 2019 16:51:45 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 96A212742B9E; Wed,  7 Aug 2019 17:51:43 +0100 (BST)
Date: Wed, 7 Aug 2019 17:51:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
Message-ID: <20190807165143.GI4048@sirena.co.uk>
References: <20190806170043.35588-1-broonie@kernel.org>
 <20190807160107.fpanxo4iimhg743c@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20190807160107.fpanxo4iimhg743c@willie-the-truck>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_095148_572962_0982D3F9 
X-CRM114-Status: GOOD (  17.08  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: multipart/mixed; boundary="===============7785486192074619984=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7785486192074619984==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vs0rQTeTompTJjtd"
Content-Disposition: inline


--vs0rQTeTompTJjtd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 07, 2019 at 05:01:08PM +0100, Will Deacon wrote:
> On Tue, Aug 06, 2019 at 06:00:43PM +0100, Mark Brown wrote:

> > -	 * Take the appropriate actions to enable this capability for this CPU.
> > -	 * For each successfully booted CPU, this method is called for each
> > -	 * globally detected capability.
> > +	 * Take the appropriate actions to configure this capability for this
> > +	 * CPU.  This will be called on all CPUs in the system if the
> > +	 * capability is detected anywhere in the system.

> That's not quite right though either, is it? We need to take into account
> the scope of the capability/erratum as well, since we don't /always/ call
> this function for everybody.

I guess you're thinking of the ARM64_CPUCAP_SYSTEM_FEATURE case where we
match the feature on all CPUs so we could see the feature on some CPUs
but not detect it as we're requiring a match on all?  Possibly the above
should be "detected and enabled" rather than just "detected"?  I can see
how that might not be 100% clear, I was thinking of detection as passing
all the match requirements including cross-CPU requirements but that
could be more explicit.  Perhaps something like:

	If this is called for any CPU in the system then it will be
	called for all of them.

might cover it?

> Suzuki, are there any cases where ->cpu_enable() may be called on a CPU
> without the feature outside of ARM64_CPUCAP_LOCAL_CPU_ERRATUM or
> ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE?

There's at least ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE, that was what
caused me to notice what was happening (and get confused about why
cpu_enable() was being called on non-matching CPUs).

I don't see where we limit where cpu_enable() is called after we start
calling it.  When we're looping through in cpu_enable_non_boot_scope()
we skip SCOPE_BOOT_CPU but those get cpu_enable() called in
enable_cpu_capabilites() or verify_local_cpu_capabilities() depending on
if it's the boot CPU or not.  It's possible I'm missing something
though.

--vs0rQTeTompTJjtd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1LAZ4ACgkQJNaLcl1U
h9CTBwf/biiGDwis2BfbyPpMQ0I0wqzieMF3biJGVvtffHZHicyWtihpXAzUl9T3
Jdb6pgM/uUKOgJtoUy18dSvFnzvryoSqD+8RS1YyVif1WJgXIGDV8Ac7ongzoDpK
qo8tuN+sQu8ccwegnu9uC56EyYi9R2jlEuxMDnyLQWFwHvv+P/ttuGD7m48OkZAU
kYPgUlOJh5kfs9BN7txLICVzQFxFPoHoeepY2vOEvkTyaBlifQToWqozwM8Umvk3
ue1JXP5eDM4srN6LOyw0cV2E6N3mnGkPxn7VOSy4SFW7C9zy7ZzjHv1A45+BALwu
gopi4Cj+pHfikBAPNC33qirEE3aaYA==
=sXJw
-----END PGP SIGNATURE-----

--vs0rQTeTompTJjtd--


--===============7785486192074619984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7785486192074619984==--

