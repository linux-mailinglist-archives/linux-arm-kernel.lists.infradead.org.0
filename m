Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C17B84BC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AVpaxadpntzMqPsXr499zoiyht9xmoOyi4IRZ66btzo=; b=AiSVW6f4feBNwJKEGCTyV0ozE
	V/ZQGK+zQDs/TQxBxeicFMdlw3NLx1F8aWAf9zo5pw+TLsgiU6fqG43QmAZ+N1h/eM/zKYrF5DSMf
	mZGwDQwWED+Ub05sTyQsCwoxMkhqPDSuBKz89MD2w4RmyKzp6944rGn86Id93cS802TgnLAwm5Hox
	OpS4aLYQhZ1JVcscXfx7PFtN74tODIVtICRWMwG0vLkAKeul4PdvlBUe/wYvKlIiWKnQpyUYrUF7s
	992eUEvd2/RzMiJyUpNjCTiOK5/jDc3lrNps6o2r4+vXi2uLvUiLTdP1NKrTHBTQs9ORfxrcTQ2iq
	Gz/tED+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLDM-0000U7-Ff; Wed, 07 Aug 2019 12:38:48 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLCt-0000GW-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R1FUZOoqqS7GfjWd8Grjff6JekLy5SDqW3q/UBnhXUI=; b=ZMln1w1Wul4fwTdVewMGuHyMh
 Q1LrJ4BrNHB/hfK14Ro2kOGLiVTDAff+7ZFRwII268CyyB6SBHsWR8tcFhbAeuYANvGVZD834im0b
 PkMhdIVRKNvHAn7jia3u8wRi9A7tzRdy4uTB2ruXnPIF474abYd3JswRRJGOk3mUxx6/M=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvLCl-0007Vc-Vk; Wed, 07 Aug 2019 12:38:12 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 936522742B9E; Wed,  7 Aug 2019 13:38:09 +0100 (BST)
Date: Wed, 7 Aug 2019 13:38:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807123809.GA4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
 <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_053819_642601_3FC40308 
X-CRM114-Status: GOOD (  13.07  )
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2102951802634369156=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2102951802634369156==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 06, 2019 at 04:47:23PM -0700, Nick Desaulniers wrote:
> On Tue, Aug 6, 2019 at 2:25 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:

> +Huck
> Huck notes that the device eventually boots in qemu, it just takes on
> the order of 165 seconds to boot.  What's the timeout on KernelCI?

It's not a timeout in kernelci, it's the kernel timing out being unable
to find something in userspace being booted it can use as /init (there's
a timeout in that process to cope with network filesystems).  IIRC it's
about 2 minutes.  You can see this clearly in the logs I pointed you at:

| You can see a bunch of reports here (all the big endian failures):

|         https://kernelci.org/boot/all/job/next/branch/master/kernel/next-20190730/

For example:

	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/lab-baylibre/boot-meson-gxbb-nanopi-k2.html

> I think if we can determine why we see:
> [  144.626755] request_module: kmod_concurrent_max (0) close to 0
> (max_modprobes: 50), for module binfmt-4c46, throttling...
> [  149.752826] request_module: modprobe binfmt-4c46 cannot be
> processed, kmod busy with 50 threads for more than 5 seconds now

> a lot, then we don't actually need to disable this outright when
> building w/ Clang?

Those error messages are happening because the kernel can't figure out
how to execute a binary it's trying to run, like I say the module it's
trying to load is binfmt_misc.  If the kernel can't work out how to
execute userspace it's not terribly useful.

--jI8keyz6grp/JLjh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Kxi4ACgkQJNaLcl1U
h9Clsgf+Pt9gkO7L/m6//B2rM1sH7IqlaJFgFakXKhwc+mXgyluBueiq9uVfUBb2
qXfklo1W0kHMl1mtRo6Avr8hv64Vi6vAKob6Rgle6q7rNJwGlFgtNepK8Zx6vViD
3wmT4+UfGF5IGTXIfxirv/zd0XUlPECkW4aCJyiCpZh/zkO513uBf2+JgfYR3v7q
rW09ohLuzauwUj413IsWUc0VMi3ESgOXFBH4aHiq8ynTGCC2TLvRq1Z7ci3moLt5
/W72POri+kCfI8BPeD/KOSJi15IY4zWIrhUO7IEfFbtw8Ox6ShBH5X177tmh3FzT
r/T4HbCzPsWnvx9RuQEhbPVS7P+zvQ==
=SfJU
-----END PGP SIGNATURE-----

--jI8keyz6grp/JLjh--


--===============2102951802634369156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2102951802634369156==--

