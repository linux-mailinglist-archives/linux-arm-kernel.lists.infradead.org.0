Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E2A16271C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:30:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=47fsEuI2u4gl9Kmg5JS2/Gtc6StV2Y+ffeNLq1qtJ7s=; b=VX5kE7HmyqHNWEHhjHrJ6Y6ny
	9VyTjeoTD32PlJxEbERu8o6Ecv+NW+wYgIclUyzIxj9VKqMyRVTHMdp2wymXhSB7gGi3Ba8JbtSJV
	eFbfAPWaZixa6PdN9BeG90wE7h/191fjgqM+K6BxpZPvsUdODRDJxhaZX7OvHUb8ZNMd1aZTyLBNf
	U7HI4aXP9BYIEpV1nAWeydEKXlC4hferW/FpkSTFzFKDdrK0WF1X00gRY8IxwWRL7uCilhnH5/yBr
	Q7PuK4IJoocw9AtmB0Fpvsdj9Tzz1ny52Q9SFQL+Nlz7fgQ1nn99BQdB/D1h+ogTZHMh/4DZT9oT1
	RiGn64KGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42wp-0003BJ-Dm; Tue, 18 Feb 2020 13:29:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42wf-0003Ao-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:29:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E6EE1FB;
 Tue, 18 Feb 2020 05:29:48 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6A4D3F703;
 Tue, 18 Feb 2020 05:29:47 -0800 (PST)
Date: Tue, 18 Feb 2020 13:29:46 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
Message-ID: <20200218132946.GF4232@sirena.org.uk>
References: <20200218124456.10615-1-broonie@kernel.org>
 <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
 <20200218130953.GD20212@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200218130953.GD20212@willie-the-truck>
X-Cookie: No alcohol, dogs or horses.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_052949_649897_C065EDB1 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1471479411102707959=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1471479411102707959==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xaMk4Io5JJdpkLEb"
Content-Disposition: inline


--xaMk4Io5JJdpkLEb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 18, 2020 at 01:09:53PM +0000, Will Deacon wrote:
> On Tue, Feb 18, 2020 at 12:56:52PM +0000, Marc Zyngier wrote:
> > I'd really appreciate it if you could send these as a series, instead of
> > an isolated patch every other day.

> Same for the non-KVM parts, please :)

Ugh, right.  As one series or as different serieses for the different
trees that apply things (eg, KVM and crypto)?  The multi tree stuff
worries me.

> I *think* the current ones to track are:

Yes, apart from:

> [PATCH v6 00/11] arm64: Branch Target Identification support

The BTI stuff is unrelated at this point, the annotations are only
needed for in kernel BTI which I've not posted yet, it also depends on
the in kernel pointer authentication stuff so I was waiting for that to
settle down before I finish off the in kernel bits and post them.
Pulling it into the series with the asm stuff would result in a very big
series with an absurdly large CC list which doesn't seem helpful.

--xaMk4Io5JJdpkLEb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5L5skACgkQJNaLcl1U
h9A0+wf9FFahSW1aXRWX6QOqWWehnMMCBtHBkDLgY+JP3PYifs+16nrVLf7SgS1k
vRtZX3P9E1utLkdlT+Cm7OLrZ1lOaFzRO/GZRbmrAkjU9u/77UGrWjJtuD/hGT1B
K2pozKaQvNN3qyWfGxZeASiPWCeWF0LDKkG9i4xHUlKNpkvfmrJGGXFqUiZ/cr/X
ePL2BDA1ZUtTOoK7z/eE3e7ffessqk71dTYIczOWRDPVDSWQEG/7y+dD0aze+SA5
Uwpni4LzpnTM1JuTSo6cKzZ5AUqmXGofsGtd1W8kT5nVjoWhx1iYcchTtv63kYF8
o5yBVA/vK66i7TIOtqP2AnZHvI735Q==
=1hZh
-----END PGP SIGNATURE-----

--xaMk4Io5JJdpkLEb--


--===============1471479411102707959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1471479411102707959==--

