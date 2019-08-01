Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23867DA8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Km64HOA2DXCXdgSYXXkSOxrT8uZgKo33oE4hiLqOFHI=; b=V6O2zfRrd3xJ9H1wxP2t4QNYe
	hkyS020iqq+qwmWWe2Z0aK37JQcx0UxBnSC6B6u/TK2rZTFP9rlEJYq4qfWeq6Sx5DE53KfVVHnAj
	KkrOSQFXvegqXwneoRToUp5x3gf7uLFZzb7obj4hG7TnUbhPvNk1UjwYo/PwQU7vRB+62ou+twXND
	IH/cCOxFDM6B+84LEqftDxcCPxbKssZDT3iO0+NJSjHwsIe4YpIgzGpxmRUY7esRcOq2AovCjPEZJ
	bPAUBMD3nh+Wc30UOTdJrBxtyfe8NPtCcpdMwCQp0LS8talbk7t7Imr53gvWeQ8WGFUzbIeiCprmA
	K7Q8PJLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9ZI-0008JB-8b; Thu, 01 Aug 2019 11:48:24 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9Z6-0008Ip-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TkW/BO5jh2dSyiVKetNqSUH/n4tPcDOBmjvkWzwxmX8=; b=p2omNg3CYVihRFs5rxiKiRNkq
 yw8hmMPIbUilkO8NnehNBeH9ErMEGv/hDnI7x3TqWbblN5fRzTLKmzodnVdQM84f/JMEJeEG2ha8f
 lXEhP8VPENf8Ez3a1inIyAPzezLJ1d6cMatgFxF33HvdVuEhG4Za6FfoWFBAV5xL5TCA8=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ht9Z3-0004bG-2n; Thu, 01 Aug 2019 11:48:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D0D1C2742C47; Thu,  1 Aug 2019 12:48:07 +0100 (BST)
Date: Thu, 1 Aug 2019 12:48:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Ali Burak =?utf-8?B?UGFyxLFt?= <aliburakparim@gmail.com>
Subject: Re: Best representation for TDM devices
Message-ID: <20190801114807.GB5488@sirena.org.uk>
References: <CAMTEBE0mPY=44txPC2G+Cb=NqeH6Cqesar9Vkq0afXBv4dUWHQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMTEBE0mPY=44txPC2G+Cb=NqeH6Cqesar9Vkq0afXBv4dUWHQ@mail.gmail.com>
X-Cookie: Love thy neighbor, tune thy piano.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_044812_121348_B63B6C0F 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maxime.ripard@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8479657089526854403=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8479657089526854403==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="61jdw2sOBCFtR2d/"
Content-Disposition: inline


--61jdw2sOBCFtR2d/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 01, 2019 at 01:43:06PM +0200, Ali Burak Par=C4=B1m wrote:
> On Thu, Jul 25, 2019 at 03:01:12PM +0200, Maxime Ripard wrote:

> > What is the actual hardware - what do the microphones physically look
> > like in the system, what functional role do they play?  My initial guess

> Hardware is a custom board I designed with 4 PDM output microphones
> and 2 adau7002 devices as the codec for PDM-to-PCM. We want to do
> signal processing with this board. Therefore having separate streams for
> each microphone is crucial to the application though I am not sure where
> we should implement this exactly.

What is this processing - are the streams from these microphones
logically related in any way (eg, is this a microphone array)?  There's
probably going to be some overlap in the input signals at least.  If you
need to for example correlate different microphones then that's
relevant.

--61jdw2sOBCFtR2d/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1C0XYACgkQJNaLcl1U
h9Cztwf9FKPfgvW/+wGPy3tpwq3sitlONdbVvWMfdh7OvzvFryLwSz81lVY4WXsV
xNkPRyfygB1a+obdP6jk9627eK1KkNCnoj5TIBK3tN/HN22F0OLWs9PPhbtFbwsZ
l7XEUt6JXTNWFxvuDaYl4r6seHBTxNqt6ouWnkp1xzI7R6Lwzp+VorH4E6ncj3fq
3f5XR+kM56PDtXzMWsqFlsxa7u/0U+GwEC5coI6cmicsrmj039i+ENyUNw8PIP9+
LA8/xM7reyl3F/PuV36muT3fYMtoIPZel/0pNUMRDz6omnDEgc1NkxqJAdNIbF3f
fqMDYffWxfN6gDMBkpRB2clO+C848w==
=9IzM
-----END PGP SIGNATURE-----

--61jdw2sOBCFtR2d/--


--===============8479657089526854403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8479657089526854403==--

