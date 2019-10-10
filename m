Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21C1D2E48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MegJlgGG+vmTAt/M/wdFIcQ8ObYTO1y+JjhNw6m0u2I=; b=MrWYvLk78SO6wLyiuce8G5wBL
	/qidP7+T5aO4SINlupL6qLi+VdGAgAoawZQs4iRTkZTtqIPPfm7I/DXRA9RvgK0vo0RtYGz9hFKgq
	MVKltDEf4EhZ6LcuyoSXV0hswcEU0gSegPnIQFgfpTdr66mN/B14/CvNq5plZxvF7nbn5qZAWmAN5
	/v3AzjTEc5agAjikqNQZuK+ZmotG6obRZQBhrWiulwShHhkHi0gEOVgcUsriuFxwIszU7bDMWNXs2
	88daGvzs2o3qNx955FBdKLr2e4f2U2mjhWDI92HVpryGWIlE+9WRRv87Ey5bl7G5bdfY0U49ohSd2
	HDhylfJjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIavy-0000PO-2A; Thu, 10 Oct 2019 16:04:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIavr-0000Op-GV
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nFcQCoqONcfx594lHjUqe0NtIP3tv9RAREGYafNTsko=; b=wTUNGpVnJdGgWtfYx3gBEQEI6
 z30Vp5d54fJHp1klmgnsWgQV6IvMzrAhFWTxFovIW+KNZY123/5jlS6+b9CS3Ge85eh9DK3Dw2UNJ
 r0URyVkNNnly5soBLWVxoH0jUc9KQ689K4TqAbfmneL4T5uAoyWWNXzCoo7naXSNHcmWM=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iIavk-0001yr-S4; Thu, 10 Oct 2019 16:04:44 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 7F387D00041; Thu, 10 Oct 2019 17:04:44 +0100 (BST)
Date: Thu, 10 Oct 2019 17:04:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20191010160444.GF4741@sirena.org.uk>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
 <20190816102424.GA28874@arrakis.emea.arm.com>
 <20190816121005.GB4039@sirena.co.uk>
 <6834da7b-553c-2ad3-9b05-25ca982252e9@arm.com>
 <20191009175205.GN2036@sirena.org.uk>
 <2d53ed87-34f3-33e1-5501-77895662c47a@arm.com>
MIME-Version: 1.0
In-Reply-To: <2d53ed87-34f3-33e1-5501-77895662c47a@arm.com>
X-Cookie: Void where prohibited by law.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_090451_554691_179F47EC 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0753987459759995874=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0753987459759995874==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rMWmSaSbD7nr+du9"
Content-Disposition: inline


--rMWmSaSbD7nr+du9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 10, 2019 at 11:24:55AM +0100, Suzuki K Poulose wrote:
> On 09/10/2019 18:52, Mark Brown wrote:
> > On Tue, Sep 24, 2019 at 10:13:18AM +0100, Suzuki K Poulose wrote:

> > > Also, we can continue to fail the hotplugged CPUs if we detect that the
> > > pagetables are Global and the new CPU requires nG (for heterogeneous
> > > systems).

> > There's no continuing to reject those CPUs unfortunately, we
> > don't reject anything currently.  Any such systems would

> In fact we do reject the hotplugged CPUs, after we have finalised
> the capabilities for KPTI. So, I don't see how the behavior is different.

If we don't have E0PD we will always enable KPTI if we have
enabled KASLR at runtime so a system with late CPUs without E0PD
will boot those CPUs as KPTI will have been enabled from the boot
CPU onwards.  When we add E0PD/KASLR integration and change to
only enabling KPTI when we encounter a CPU without E0PD then we
could potentially encounter a system where we no longer enable
KPTI during initial boot due to having E0PD on all the CPUs we
see at that time and then end up rejecting late CPUs which don't
have E0PD.  To be honest I'm not sure how realistic this is and
users could work around it by explicitly forcing KPTI but the
potential is there.

--rMWmSaSbD7nr+du9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2fVpsACgkQJNaLcl1U
h9ACSgf/dc/+44u2KhPAuhyYWdxWLZxrawkDadFbDnbGnMP6xUGtGLGen3zKDHw8
ziz2D/zoLO+h8eqv/RVy6w0t5DZ0+JSOXYp2s7GqJ1tyMMjskdscA9+BRQYQhZTN
ixCpQDjWBG6LY51A/GLVPwfNYJm4U9ZGuU4iIiIncDCSn3TORcdNHGo5lWM2C4rr
LaSMY19yqOA1AK0FXTcH8oMn9FGMNwU5b4hSkzmwAknpiYzF+hZpSRr3CwArCDUw
5LokZ23KHwVZOzgr2ld04a4IABs9xlwXcBFXTzOYZ9kNkmxbD0S71Gb2V4x9fPWP
qi/F3ASzRYtvOuA0JX8FIwoFfoETIw==
=oS+a
-----END PGP SIGNATURE-----

--rMWmSaSbD7nr+du9--


--===============0753987459759995874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0753987459759995874==--

