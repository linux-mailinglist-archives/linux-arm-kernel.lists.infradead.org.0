Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FEDE9BAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bD5BYpk+w6MVuPqm60UyjZzA+yoaR7vW7pNUpJoZXfI=; b=AziJ7ulSrN+BAxDOIEwjK8jJ/
	9D9gVYhRBgLIktnuIGsaETsjwsWDuFODFfvJLhrZkssCLLQi/n4ZlX1t5lz3Hx2oNu3bTlUJAg5h3
	/cV5DXZB9/WqVzlGyYwVt0BDSSiEekmy8lxlLUHQaLH23GxQL11UYGLdSdzGzNPCFhTK7NeR1+YmN
	+O8qev0woB8HKJWvCs6g8itDMnsjHDO7CuIjIGtHFUU1Mg7BwSxeTzNJYMk007fM1bjNWpXNIFSRk
	1sjmR+y9Hj+p8zwA88giq9e1N5u4YzJIK3V7vLEjutP9SjYW3b96stQi5zP2Dt9sIzitrLXaSw5p8
	Jfx9zLvKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnIg-00064b-Ru; Wed, 30 Oct 2019 12:42:10 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnIU-00064H-J6
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mesj9+/yd0cJWQkt1B7tfAei1sYLIirEjm054iTOZxE=; b=bJVl+qAKZs2KoemOioweHhRv/
 oW5HKA9fd8qEt9ripgXTG7FWP4Po/164xxU1OfJNccEQ7gZwXK8tSz5xkUyrzeXhSrkPdUqiXQePf
 lQsFhHSyBT6jS59L/sm26OdiZRuF+2De9a27M0xBhFkJfBjnFx+1XvrS91kE6FURM4Nq4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iPnIQ-0004xL-RO; Wed, 30 Oct 2019 12:41:54 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E839E27420F4; Wed, 30 Oct 2019 12:41:53 +0000 (GMT)
Date: Wed, 30 Oct 2019 12:41:53 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191030124153.GB7218@sirena.co.uk>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191024214207.20588-5-broonie@kernel.org>
 <20191030121307.GB10294@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191030121307.GB10294@arrakis.emea.arm.com>
X-Cookie: Celebrity voices impersonated.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_054158_638282_2A62EDF3 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7433006407587680889=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7433006407587680889==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gatW/ieO32f1wygP"
Content-Disposition: inline


--gatW/ieO32f1wygP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 30, 2019 at 12:13:08PM +0000, Catalin Marinas wrote:
> On Thu, Oct 24, 2019 at 10:42:07PM +0100, Mark Brown wrote:

> > vdfsv

> Some random string here.

Ah, must be rebase noise.

> > +extern bool kaslr_requires_kpti(void);

> This doesn't seem to be used anywhere else, so we could remove it and
> make it static.

Yes, that's bitrot - in an earlier version this was used in the early
init stuff but it isn't any more.

> > @@ -1051,7 +1087,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
> >  	 * it already or we have KASLR enabled and therefore have not
> >  	 * created any global mappings at all.
> >  	 */
> > -	if (kpti_applied || kaslr_offset() > 0)
> > +	if (kpti_applied || arm64_use_ng_mappings)
> >  		return;

> Can we get rid of kpti_applied? I think arm64_use_ng_mappings serves the
> same purpose.

Yes, I thought about that - we *can* currently remove it, I just left it
in as I felt at the time it might make it a bit clearer what was going
on so I'd see if anyone else had any thoughts.  I've dropped it.

BTW it'd be rather helpful to get patch 1 applied due to the constant
conflicts in cpufeature.h, it's safe by itself.

--gatW/ieO32f1wygP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl25hREACgkQJNaLcl1U
h9CxDAf+MGtjS6Ux9/lnCwX/cNOqwp3pyJFxcHXSwBRopMlUj0hzco4jkDUZQ19j
eukJGcfilzXp5Fo8zSXgZcMBQgGZZhKybYxldtUxj5duLCJX1jF70dpC2gwN6vZH
FXJqbgP/EgPHVeP2G2I2bgUR3YdCmIlwjKjpf/smbd9Bj919JkE4KJpSO3jEDSKB
A6JFdRz3gjr5tbSu0pnzzKN/q9/UhT1Qgp8aydMYNQKFAPeP4pYOG+r94cPXHu79
5/OV4IgpoGpuqDmBQvhqVUvXe86mPLvzRPK4O6yVhetV6EbbErjHEFDteQLxPYVJ
6Gb2RlCyGOGdxEomMByYGaTChz/fAg==
=a5DD
-----END PGP SIGNATURE-----

--gatW/ieO32f1wygP--


--===============7433006407587680889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7433006407587680889==--

