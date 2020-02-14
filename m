Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A67D15D6AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 12:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iR3ZdRliB3uHkQnKsETPP6W3GGrgiT1g82psDLAKSG8=; b=r7FMEpsldfXLxyS/ShxrxV/Es
	k8EMEYt0l2giTlwjVlCDRLJQxs0oOSiUm54QMFA+8oICxfqSzhwNQ/ibahrQaLgoT1Jg6qL1TjUEa
	Kh1qQORCK+ke3Dzg7VSDP8jZ5/H8TNoAoUOjMDvFrpvTLa/dkr8B/LoPsUrj0WN0OltVAn0TByh5T
	hIIdFq2vmhmn0hHD73towEQfk9v0a9v4Hd7wG9WGfWFCspUsF+EIUXKMCp/3URQY2FAVgHlHUrUmN
	wxFdAdlT2qTc8luDZilTgalhJaz9lybt56+Mnbd07HTIQVRxVFvVXGt/8mFpNLuOcP+q/yL7R24nF
	RwAaRmk8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ZKn-0005wV-Qy; Fri, 14 Feb 2020 11:40:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ZKg-0005wC-Tc
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 11:40:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 080AE1FB;
 Fri, 14 Feb 2020 03:40:29 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D94D3F68F;
 Fri, 14 Feb 2020 03:40:28 -0800 (PST)
Date: Fri, 14 Feb 2020 11:40:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Annotate assembly using modern annoations
Message-ID: <20200214114027.GA4827@sirena.org.uk>
References: <20200213153820.32049-1-broonie@kernel.org>
 <b25323d02c76441ee12c206f07907383@kernel.org>
MIME-Version: 1.0
In-Reply-To: <b25323d02c76441ee12c206f07907383@kernel.org>
X-Cookie: Shipping not included.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_034030_998222_677363E2 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6550501042716759738=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6550501042716759738==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 13, 2020 at 09:36:56PM +0000, Marc Zyngier wrote:
> On 2020-02-13 15:38, Mark Brown wrote:

> > -ENTRY(__kvm_call_hyp)
> > +SYM_FUNC_START(__kvm_call_hyp)

> I'm not convinced by this particular change. _kvm_call_hyp is called
> directly from
> C, and behaves almost like a normal function. What's the issue here?

I'm not sure I understand your comment here - this is annotated as
SYM_FUNC_ which is the annotation for things that look like normal
C functions.

> >  	.align	11
> > -ENTRY(__bp_harden_hyp_vecs_start)
> > +SYM_CODE_START_NOALIGN(__bp_harden_hyp_vecs)
> > +SYM_INNER_LABEL(__bp_harden_hyp_vecs_start, SYM_L_GLOBAL)

> Why isn't SYM_CODE_START_NOALIGN enough? And what is the rational for

The _start and _end labels that were there before are explicitly
referenced by code, removing them would break the build.

> the _NOALIGN, btw? I'd expect an alignment of 2kB to be more than enough.

So that the explicit .align above takes effect rather than anything the
macro decides to do, I'm trying to err on the side of caution here.

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5GhycACgkQJNaLcl1U
h9BYiQf/UDA5Bn3eC2tVqBjo/2riAuZxuEKslb28fpoAHn0FoAs6efK1cvZbWC53
I8Gg8Db7FHtOOAajMvK3F1CR37bh08QcLzBpxnekSDyWxFuYmZ7Kj0VYMgM3U0NL
lWfu+GBH7CLALhWlvGEtFiT1/tJu2N5A/VBmWWj4Pgg4sX/8qK5Gfwp0tsEgIcFd
KY/d8w64tkqat/HmC6O04yWk/pD2X9uF2kHZrWunxQh9Il2uTkh9ATXwuY+u+Do5
aBZn70oRqmeKgCNZv7SZx53nEBpbY2IiqBs5nTgOEfEY62jgcu3eAWbLh6Xl4tqM
bca+Au8ZxyI9ALvFo5ZPVjS/5dxUTw==
=s9OP
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--


--===============6550501042716759738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6550501042716759738==--

