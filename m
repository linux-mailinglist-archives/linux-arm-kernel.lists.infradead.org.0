Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 126E514306C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GDf+SWT8zlf4ON616NxKG+ZVlwOFBFFyZwPDgSLzGO0=; b=RhPMiaDCcPxIFb7DUBbCQr2iu
	dTu76EHAIOt2e/jSrjGzQh28FszS34Ol1DxBHs1CcDGDcQIX41lhysTQ2kShMzz66oqZ/bqqVgsdt
	1e4X7tUcs8egffRooVMTOr2D5PO0ndnpjV+o8vjtcuzu/w2ZmSaNHTGfbs657GwhodGdGZcA8qQJ+
	tSw8L9OGwOkD0XqbIBSGmuoUcmGdEA3HEU3gvSa6U3rIoy9HwgPexvABVMDhxLO6PpaG4k1s3od2y
	DCGgvbhkQu77wMKi/wvHWh+HoiExuls7at73RBqSXuYhGZFajWHTu9R2bMgh58oqsi8E8i8LkH3II
	4axsCoJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaUF-0006rb-CS; Mon, 20 Jan 2020 17:05:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaU2-0005ht-77
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:05:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8376A31B;
 Mon, 20 Jan 2020 09:05:01 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03FB43F68E;
 Mon, 20 Jan 2020 09:05:00 -0800 (PST)
Date: Mon, 20 Jan 2020 17:04:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Annotate guest entry/exit as a single function
Message-ID: <20200120170459.GF6852@sirena.org.uk>
References: <20200120124706.8681-1-broonie@kernel.org>
 <20200120164522.GA20435@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200120164522.GA20435@willie-the-truck>
X-Cookie: I invented skydiving in 1989!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090502_310524_795D967C 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, maz@kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: multipart/mixed; boundary="===============1129034763681921141=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1129034763681921141==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+ts6NCQ4mrNQIV8p"
Content-Disposition: inline


--+ts6NCQ4mrNQIV8p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 20, 2020 at 04:45:23PM +0000, Will Deacon wrote:
> [+Marc Z]

Ugh, sorry - guess there's some limit in my mind on the number of
recipients for a mail and KVM just has one too many reviewers!

--+ts6NCQ4mrNQIV8p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4l3boACgkQJNaLcl1U
h9Cowgf7B9NMTc+uKuT5ERtJgwPldFJjPJhob8K1PlMmCuIJPLsa0pLCK/VnlILm
fxkGig+Aa97wRjXye8rBaNgQUVxoozDCCkW6wSReEz2ZfCh4rF1iJOOnj1xz7wtF
4qzQxlGQAms9wKjDNh04h3IWfOtE2cJgIZP1oz0A4O1RAuVBBQQjXxoLlGBs+ROW
KQmvmvjYkNuN/P8jxBP5C6Wy0UUoslbYbHTxDoJnjSXK/+MlxMiOQDZDhM5qHVcH
H5zK1JcKmhIIKjMT07ABtkThdU/PKkcnJuQpz+Z5E5sHUmGxteFX6OeUl0RsegYW
h9/Ozx3Neo8tIJe+NV+vh0Nw0gJEGA==
=5gtG
-----END PGP SIGNATURE-----

--+ts6NCQ4mrNQIV8p--


--===============1129034763681921141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1129034763681921141==--

