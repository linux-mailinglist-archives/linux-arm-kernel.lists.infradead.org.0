Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CE7132B48
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 17:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H7B7YIrizbcUMUTqp6ksF6Z3Q5bNTMhdLKXNBwRlls8=; b=fN3VEd2oP8xpnoNeRCAytB+5/
	f/2hFxxpQLzVLcD30iH6y2++h9yU88j2oFpppoyVDPVJvrSVUmHnIAAXkwsnTARQWF0FI0H7DvAxq
	lH7/0HPj5TQIyn2v3Ch/sxG40TKCSYPWQIHqEi3Lr/EAVm+PtENR3zpRG9tFGylsBr8CDK/d9d0ya
	f5Cj+F9YmIN4TaGHUTpXoByLEZFS6pSlvwMM5JKrVDOlQhyXQ83TaLjixm3K0Ak5ayt7GqDJ1Q3Vj
	+o9Zom20PtaWf4Rx1x+MS9vvKJt/xSupZ/1u+pT1PrFnzgp5Gsoyhar8TELm1F/lOl8YKUpvX8cfe
	8mgq8+4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iorz7-0007xZ-SA; Tue, 07 Jan 2020 16:45:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioryx-0007wv-V4
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 16:45:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6A85328;
 Tue,  7 Jan 2020 08:45:26 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CFB13F703;
 Tue,  7 Jan 2020 08:45:26 -0800 (PST)
Date: Tue, 7 Jan 2020 16:45:24 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/3] arm64: asm: Add new-style position independent
 function annotations
Message-ID: <20200107164524.GF4877@sirena.org.uk>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-2-broonie@kernel.org>
 <20200107144407.GB29001@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200107144407.GB29001@willie-the-truck>
X-Cookie: Will Rogers never met you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_084528_049829_E2027651 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6854936989849748209=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6854936989849748209==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y1L3PTX8QE8cb2T+"
Content-Disposition: inline


--Y1L3PTX8QE8cb2T+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 07, 2020 at 02:44:08PM +0000, Will Deacon wrote:
> On Mon, Jan 06, 2020 at 07:58:16PM +0000, Mark Brown wrote:

> > +#define SYM_FUNC_START_PI_WEAK(x) \
> > +		SYM_FUNC_START_ALIAS(__pi_##x) ASM_NL \
> > +		SYM_FUNC_START_WEAK(x)

> Naming's hard, but I think this is particularly bad because it reads to me
> like it's declaring a weak, position-independent symbol, whereas the weak
> symbol is actually the version without the "__pi_" prefix. Maybe
> SYM_FUNC_START_WEAK_PI() is a tiny bit better? Hrm.

I really don't have strong feelings about the name, if you're happy with
_WEAK_PI I'm more than happy to go with that.  Like you say it's messy.

--Y1L3PTX8QE8cb2T+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4UtaQACgkQJNaLcl1U
h9AaDwf9F02KVjbont5IrVEn7RZLm6BdYz7UnfD2EVSGKYVx9pCheWUkHAsPSrKy
qjkCilx1HFuT+lPC3GSBV2u/1rkxv07xcIbnZ6VR4cohbY5JW94UpV0mgFGruxd1
Pcr79Gvhyp87I7Kn8ZH2u0iWQ19gokzHsbGXJ0V3swNPLAAZQxOUpP2H+WhfZurw
6PL9tRM7WugthHpD1Wkf95q7YN6A3GG3TszzwOiL9HIZ05wPpQNLVkEPP7yJTIiw
Cop+/jDLp+wOCzbK2lsmaqdccgpwBj/373LZh+be01luXxgTrIF8d1g9Z08iKi4E
Szhtk+UhTyJbQglEwKfU0cXuYTp2IA==
=Njck
-----END PGP SIGNATURE-----

--Y1L3PTX8QE8cb2T+--


--===============6854936989849748209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6854936989849748209==--

