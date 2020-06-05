Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7039C1EF711
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3gWpmu6wX6w9Ppr5X4h8u94ETyIBXraEgJGfdmo5PQ=; b=D38vmamiHdVWhs5BBAaHBFWnM
	EPIpriLo6cQq/vsyz0KclUV/ixHZ/J0paxXOtGBdDETjuD9dU3T7GveB7X5JNbW+Luguv6kBoGnGl
	fPsZV4RzqDKSfVzs/GbIjNJdnbJHhrNXuwGVuCOqQZOVjKymOq5NTXcN9M5xrlJEIM2EtXb7SYlHP
	rvB4KoYfsfgkni84JLKLPJYmdpo3M0wJBufin9B4iVzcHNf9esKqgeOsz8SEq6YfLxnc2Hn9JrTXv
	+Y2TNPShr+d/9REPh3WnyPMgL4MFn/sAlTa5ewKGcBjpRuY3dTQym+CxDQ7UEHX/uzlBbSqHNGcQW
	n4JdCuaCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBBK-0005CI-2u; Fri, 05 Jun 2020 12:10:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBB9-0005Bs-PA
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:10:33 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBFE9206A2;
 Fri,  5 Jun 2020 12:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591359031;
 bh=J5YwYCiHfiXENCOL8pwhX6dOcnA3zc4hlfdLk+66VGU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rpQCk/I8FAFcYC0cUnV8Ua1F0t61o3u19+okLDhoqC4WXlcO4Rz7W1FVsunFRTY9q
 uJHQvjrgApI7XHJhJGrvH/eqLUdSRLgFZ/BW8acoID4sge+3EahrKyXRmjZ4XkTPSO
 SoNOTm19z5LFOXUXUcFccuxVq1OPZAz91Mkrq9kE=
Date: Fri, 5 Jun 2020 13:10:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: Please help to confirm the risk if using TPIDRRO_EL0 to save CPU
 number, thanks.
Message-ID: <20200605121029.GE5413@sirena.org.uk>
References: <1D289F1E6D91D2489524BBB0B8880A7DA1A39219@dggeml509-mbx.china.huawei.com>
 <20200601070311.GA8601@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200601070311.GA8601@willie-the-truck>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_051031_854961_CECE8193 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "fujun \(F\)" <oliver.fu@hisilicon.com>,
 Wuxuecheng <wuxuecheng@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Lixin \(Victor, Kirin\)" <victor.lixin@hisilicon.com>
Content-Type: multipart/mixed; boundary="===============2817260017021119492=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2817260017021119492==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7LkOrbQMr4cezO2T"
Content-Disposition: inline


--7LkOrbQMr4cezO2T
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 01, 2020 at 08:03:12AM +0100, Will Deacon wrote:
> On Fri, May 29, 2020 at 09:03:37AM +0000, Lixin (Victor, Kirin) wrote:

> >    Intel optimized getcpu syscall on Linux/Android system by using vDSO=
, but
> >    ARM doesn't do any optimizations for getcpu syscall.

> >    In Apple open source, TPIDRRO_EL0/TPIDRURO is used to save the CPU n=
umber,
> >    [1]https://opensource.apple.com/source/xnu/xnu-4570.1.46/osfmk/arm/c=
switch.s.auto.html

> >    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0Is there any risk if using TPIDRRO_=
EL0/TPIDRURO to implement
> >    the vDSO for getcpu? Is there any possible to break any ARM ABI? Can=
 you
> >    help us to confirm the considerations?

> Do you have a use-case for high-performance getcpu() that isn't better
> suited to rseq()?

I actually have an implementation of this that I'd been waiting for the
end of the merge window to post, largely because I first heard of the
use of restartable sequences for this after I'd already implemented the
vDSO version - this stuff is not as discoverable as one might desire.
It doesn't store the CPU ID directly in TPIDRRO but rather uses TPIDDRRO
to store the offset of a per-CPU struct in the vDSO data in order to
allow for the addition of further data in the future.  I'll post it
today for discussion.

The latest version of the Mathieu's glibc integration patches is:

    https://lore.kernel.org/lkml/20200527185130.5604-3-mathieu.desnoyers@ef=
ficios.com/

The only things I can see where the vDSO does better are support for the
node parameter of getcpu() and the ease of implementation for the users,
the restartable sequences code was merged all the way back in v4.18 and
it's still not used by any of the libcs as far as I can see.  The node
to CPU mapping is static so I'm not sure how exciting that is, it could
be looked up separately when processing data if it's important, but the=20
ease of use feels like something.

One important caveat with using TPIDRRO is that if KPTI is active then
the KPTI trampoline uses TPIDRRO as a scratch register so unless we can
find another register for scratch usage the user would need to give up
the protections offered by KPTI or run on future hardware which can use
E0PD instead.  This severely limits the usefulness on current systems.

--7LkOrbQMr4cezO2T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aNjQACgkQJNaLcl1U
h9BRgQf/YD71glZzBEVHBbRRTJT7pQcjEkedH2cqLGGXKMYfbVV3IFSRLXJsd4LL
ngOqZMXMkjalXL6wek8lG8wBYSnjxlC6KQant0OxAVgWmocGIukoIFysYpVifW3e
pu4N7JahTd9iaWaFmAe+vTQ9oI0L2R+xw8o3Y+5GVnJJECGw8z5BH1kKXYVLimjA
wSfZZnBbCWKdrfCBzCpdbi7olBMNfcc0UgUpGOlZJBfneqVH7HO6ItdNswXXbYQM
/4CSE4fVNCwtNv+1hPag5Czecu8w8fF0Va4jm1OZM5PeO8ILVdIiN6AeZtoYEFAE
6wXIeR5UEZQ+XG9sCdfOaHzhxxnUxw==
=D9qd
-----END PGP SIGNATURE-----

--7LkOrbQMr4cezO2T--


--===============2817260017021119492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2817260017021119492==--

