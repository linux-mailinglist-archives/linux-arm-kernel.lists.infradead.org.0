Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A3DF15E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 13:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8FqN3p9LvCVIPknxAGf3jmSlh90DynEwiU8AiGY3Xr8=; b=dfXNNh2qhOKFhcyYDpu7X/Wjf
	0IHcub8LXGRen7dlkOiqirGN48wMIsyWmQMOxzsCLUDl6R33jckVAMrTmvQjAcKVGUl/fxSI3XA7o
	p5yjNs5j/a+AGZPNtudN+3GSHAyRWCOymZhwbhbQOHE2HzXx+1UV1OczyKd1nDsfcSeIBTlzvu7j8
	KkpL1wMVa4zfL29wvc75/i9c5d0AsHJv+1B2p1ZCamP6xCoKy86Yxs8tY1WwDYaO/B3FSmh5iqXiN
	dGhjPo46fxjHBFtdZllFOeBfrnUedD7ImyDad5x1mLcBE8pHjkj0SQvHmepoxV2tCk+fmo5aQ+89J
	5T0hNWBhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSKBA-0008FA-BC; Wed, 06 Nov 2019 12:12:52 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSKAz-0008Ek-Rx
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 12:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ji2Pe9gixDyKl4Atfn3D9teopwuObzCPHyEn6v8Of40=; b=v5ISAo1abNjJhx5NLN6ZWLuhX
 Y+8bDgPhpLbrKUAwZY61CC56Z37HIfTFLg9fDCUYJu88YjaHyDFcYdAiVHLZ4mNItnKMISnbYbAgb
 6eSZNAPPvpM8zfHky7YOvcpQbPJFKvvM+/ONDH3qTvsOLDXe465tx9bFBJelThCyOordE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSKAw-0001N9-1R; Wed, 06 Nov 2019 12:12:38 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id ED4962743035; Wed,  6 Nov 2019 12:12:36 +0000 (GMT)
Date: Wed, 6 Nov 2019 12:12:36 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v6 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191106121236.GA4544@sirena.co.uk>
References: <20191105214854.30725-1-broonie@kernel.org>
 <20191105214854.30725-5-broonie@kernel.org>
 <20191106102428.GE21133@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191106102428.GE21133@arrakis.emea.arm.com>
X-Cookie: No line available at 300 baud.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_041241_948427_721F4B20 
X-CRM114-Status: GOOD (  12.75  )
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
Content-Type: multipart/mixed; boundary="===============0229485317678834644=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0229485317678834644==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 06, 2019 at 10:24:28AM +0000, Catalin Marinas wrote:
> On Tue, Nov 05, 2019 at 09:48:54PM +0000, Mark Brown wrote:

> > +        /*
> > +         * If know now we are going to need KPTI then use non-global
> > +         * mappings from the start, avoiding the cost of rewriting
> > +         * everything later.
> > +         */
> > +        arm64_use_ng_mappings = kaslr_requires_kpti();

> This really needs to be done before map_kernel() and map_mem() in
> paging_init(). Tested this series and most of the linear map does not
> have the nG bit when it should (/sys/kernel/debug/kernel_page_tables).

Hrm, right.  That was getting hidden in the other noise in the diffs
(I've been mainly checking that I was getting similar page tables
between the various configurations in hetrogenous systems).  It looks
like anywhere paging_init() is too late, the reordering you suggest
still leaves some stray non-global mappings.  I've moved it to the start
of setup_arch() which seems early enough.

--FCuugMFkClbJLl1L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3CuLMACgkQJNaLcl1U
h9CGQAf+Or37fCFTpR3Z6pp4/7bKwXfl/GG96Dh34L8SrKA+G8cvtrUkpkAB1Sgg
+qaj6WJjHN8oJfiNjGD5sy1lxzxva4Gqoubp0sIm8AV6AJPP0ZomVUmscHiCBsQS
PXvA3Hxju7xZSs6f5WgxyZeolD33GZutKfO9DBXiNrzirbbix9HeD5ssGlAn2Zeg
d7jYUMt9n/E/HcpF/pJsFsQe7QpLBSJuP+aLYyZKIl0v5bupm6bwuyOUuvtIPBXv
x1rOGzvB6OY/doZt7lTLYg1BKk/dsWVpW+XvH10CWJ3UlHK6AhMNH4/wwnPQ2fEx
MlScTExzLYtEDOUUiMjqDO6fH22giA==
=ZFBu
-----END PGP SIGNATURE-----

--FCuugMFkClbJLl1L--


--===============0229485317678834644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0229485317678834644==--

