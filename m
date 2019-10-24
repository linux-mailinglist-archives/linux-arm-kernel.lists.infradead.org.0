Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C795E2EB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d2gY4/bTzhO9uNfjs4bBvWRQlvy84a2AFM2gXmLcScs=; b=qxeSS3Jn8RGrb6Xvg4Pr83fPq
	VcsDxHKqUetGveTppnaSXwCbe7z/8XSJJQ8WS9y5iLQ2FnxS8MyMs1m8Mqf9njcKUMQoyIaaheWk4
	+ppHG2L1uMCeiThIrEy+Y1HfG9+APKCNN9r/xzv8hlHXdCbK6zEn1l6JQzIEs5Qw+/AZDON7GdUtD
	Mp1ZFWs81b86oww9hENUIPsKg7SY3pC78cHtgeFoDV9LkVqP14ubosXIqbrsTByal96+wOfnWG2aF
	qiNHdDu7kM+wQnilkjulfLxG35/KXvDQqK2OIBiTyWuqyqFpQrZPLiinLwy00h7M9XWmS94CmI0AU
	dmN1UEKmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaHH-0001nQ-Rw; Thu, 24 Oct 2019 10:23:35 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaGp-0001RN-WD
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cBvibWyAVZTH60FzTOpw/GCdNzXDKYk1VfEKf8IEQRk=; b=Uc9NbpoHLJ5yEQrSbukrJ9G1i
 1bvARx9a8Kc7iar8A0vTSR+HdVbbG+1/abmGpJ62eGpLYeb6qC2UeZd8R93d9OjQh29MY8d3ZQz99
 tUG7HBNzfsG8cQIbGtE+60/MChezeUmZghIekMF/4p6UFdPy3xUGD7uV4WZvybz+toZe4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNaGm-0003I9-Ob; Thu, 24 Oct 2019 10:23:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DA77827428E5; Thu, 24 Oct 2019 11:23:03 +0100 (BST)
Date: Thu, 24 Oct 2019 11:23:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
Message-ID: <20191024102303.GA5207@sirena.co.uk>
References: <20191023175222.24688-1-broonie@kernel.org>
 <20191024101110.GA1242@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20191024101110.GA1242@willie-the-truck>
X-Cookie: What foods these morsels be!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_032308_061468_EBEEFD86 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4384342177730874125=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4384342177730874125==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 24, 2019 at 11:11:10AM +0100, Will Deacon wrote:

> > This was posted by Dave as part of the BTI series as it's a dependency
> > for that but it's a standalone fix so reposting it separately so it
> > doesn't get tied up with the review of the wider series - AIUI there are
> > be some other versions of this in flight but whatever gets merged it
> > seems useful for other work so it'd be good to do so.

> Do you know what the other versions of this are? I couldn't figure it out
> from Dave's original posting. Either way:

No, I didn't manage to figure it out either.

> Acked-by: Will Deacon <will@kernel.org>

Thanks.

--3MwIy2ne0vdjdPXF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2xe4QACgkQJNaLcl1U
h9DPxgf7BHDKXhTyIb1iBBBu8SrqrATycu6ypBT2tchuNTxNddk5hBRmrhmIWyZo
6ocdOYgr/3qxefMXI68Kvo6zbVebE+gSyfVoMWULv18vVRfJn9WyzXDB95fjg6T4
am0W/d7v10bJAoqmqIvoc11gfwNc1z38WEI6hTS41aV0jfBdY7Qtb/SuG9/4MiHB
UxA6KUleUUUvL5CS307pYIrxqNrqYfYmfolPnZ1OSmbhhYwDj7xVPyQ3uhHzgS1P
d026W7GDVT7IKG4istCWOCmS3A+ILj9NcJ9Vj9CtColXlx5WsbymI22HxLZku3bD
DeJ7RwnBR89SJKzPMDqNNUuxFTHOyQ==
=HAuC
-----END PGP SIGNATURE-----

--3MwIy2ne0vdjdPXF--


--===============4384342177730874125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4384342177730874125==--

