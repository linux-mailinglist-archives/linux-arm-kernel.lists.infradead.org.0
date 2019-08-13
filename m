Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B02F8C136
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 21:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BgDpnAU0DLq260igN+iP0bl06/SwTROsO+wB97SBtLQ=; b=E9n5mE8ENhLL9ftyfWAI1wqN9
	m0MpCWzk14t50kjJZH+5cft0dJAoPvGo4e8tIeTM90YEzoc6WJrScuq7Ltb73qdrlPt7rGtYP8lHi
	gWvtqpdJuaMoDBaRoy+8ZROlj3Dbpubzr4DWWW/NgOKauQ10dpcbm59u6f+gC6C9V5ScDHMf0g8rK
	m2KjWAqn7LQVUveqgb/G/FEuJFj9zO8yeEbkZq3/qoK8BAihPjB6SNTaY0HgqDATHCCGfDehqtYs9
	1iKudrLB7kTlI50VswOudXcGKWioLllKWVrCq0dcVUyyobviIg/EecrKhANRj98Tlo2nKVlK+p+hB
	KP5pMKeFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxc6r-0004Nq-Vm; Tue, 13 Aug 2019 19:05:30 +0000
Received: from mail-wr1-f100.google.com ([209.85.221.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxc6g-0004NW-T9
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 19:05:20 +0000
Received: by mail-wr1-f100.google.com with SMTP id 31so108799175wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 12:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LXz6jK+WFl3O01OHlbd+lDegmw2/OJ9EL6VwYJPETR0=;
 b=PdqhYxsrklJDwEGvFgoejeIrzOzgtNGZTKDA19eNIzdtb0+5K/97ANNlUEfw2IbiWx
 xdrEmT+IzbfbTYfUslffuwRD5m1MxkJ4FheV3Qpv7Rv+ILzgiI8Fe624jrkX7O3FfLbH
 UzneLC0eTvOxAHfdX1lTG5aVXiU6WHEOGfnhpKqFHGaZ7ITAQ1F18nYdSUR/94eFZPYI
 PLyzJT/rfTbynRgbXUJs+k/3X97QVJx9Va4rC8ue8HCcBX/PGW0kD+9ibZ6b+EoKCQzN
 vh3lfPMcYyjEL9n0dxcM1a9BXKIbw1YBx6yzX4oCorIenoRsH36CYkudTIpwCLdsNbUn
 UZ/Q==
X-Gm-Message-State: APjAAAUbim8TqtoOj/qbvEufGnNxbwKNCOrl7rrRY4nAVbtVgTQwcwli
 NKs+qhsZbk6Hrk2BGf4hj3qcVyHTmnp915AsQUX3efvTHgidPqEy2q6RFUKHWRkUfw==
X-Google-Smtp-Source: APXvYqx+nzKUaqdcpIsfskOsdA3qttfNsLorBrSqHySM16fAU7wxpgpPV8KsURpyh9aPIGR5h/ucPVpZuVKo
X-Received: by 2002:a5d:470c:: with SMTP id y12mr33378936wrq.136.1565723116443; 
 Tue, 13 Aug 2019 12:05:16 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id f7sm16510wmj.30.2019.08.13.12.05.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 12:05:16 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxc6d-0000xf-UX; Tue, 13 Aug 2019 19:05:16 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 701EA2742B44; Tue, 13 Aug 2019 20:05:14 +0100 (BST)
Date: Tue, 13 Aug 2019 20:05:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20190813190514.GH5093@sirena.co.uk>
References: <20190812125738.17388-1-broonie@kernel.org>
 <20190812125738.17388-3-broonie@kernel.org>
 <20190813172836.vbotnv35w3w62b2y@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20190813172836.vbotnv35w3w62b2y@willie-the-truck>
X-Cookie: Poverty begins at home.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_120518_944354_006B6695 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.100 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: multipart/mixed; boundary="===============8685747619493467694=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8685747619493467694==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dgjlcl3Tl+kb3YDk"
Content-Disposition: inline


--dgjlcl3Tl+kb3YDk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 13, 2019 at 06:28:36PM +0100, Will Deacon wrote:
> On Mon, Aug 12, 2019 at 01:57:38PM +0100, Mark Brown wrote:

> >  	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_offset() > 0) {
> > -		if (!__kpti_forced) {
> > +		if (!__kpti_forced && !this_cpu_has_cap(ARM64_HAS_E0PD)) {
> >  			str = "KASLR";
> >  			__kpti_forced = 1;
> >  		}

> Hmm. I'm surprised you haven't had to hack arm64_kernel_use_ng_mappings().

> If you boot with RANDOMIZE_BASE=y on a machine with E0PDx support, can
> you dump the kernel page tables in /sys/kernel/debug/kernel_page_tables
> and check that they're using global mappings? I think some of the early
> mappings might still be nG with your patch.

Hrm, yeah - they are if I not only turn on RANDOMIZE_BASE but also
ensure KASLR gets a seed it'll pay attention to passed.  I had been
testing with it on but changes I'd made in the test environment to pass
a seed in had been broken so it silently wasn't actually doing anything.
The simplest thing would just be to add an IS_ENABLED() check in
_use_ng_mappings() which I've verifed does the right thing at the
expense of requiring the remapping later, but obviously that's a useful
optimization so we should really check the FTR.

--dgjlcl3Tl+kb3YDk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1TCekACgkQJNaLcl1U
h9CAFAf+OWB8ZCmwXE3BBUHUILUTa4DWhrP/Jz1a5Xh7eaziC4t4Cp+zYzf1L4V5
xyguaU8M7WsF8I9DwGX1ykOFPZYEmHtFAE50hq9RUNe9yBTekjDefB6n8zgJx1Bs
Fz0MfSFncflniIXcdRyohSwzZuHMEBsYCUTH9FYPoj3xYC7FZ/7yAvfj8kmsFo6U
AZISdPr+4CEKR+aWR2d8KQL4cJT5wqD6UB4UTvg7MLBCKwRWZN5SV/q2I1EwWkIT
+NnCPPM8eNGn2tvbmV15iS8Cuju2omRT102KyDaD9pip6Ia/IZAGcR60TSYzicXA
lEoSE/lX8kbesEQl655Iw7Y4/RgfNQ==
=taj7
-----END PGP SIGNATURE-----

--dgjlcl3Tl+kb3YDk--


--===============8685747619493467694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8685747619493467694==--

