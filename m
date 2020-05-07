Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4041C93BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gf5rhzv4hlYsuIl0dHQG7bw4zP0+xsbNZ1yC/ce+8eA=; b=j6qBlLQfbdSV8H0fYZxmzlmfg
	0u0lc/vvzgYNcOdVXGj485n2Wi8GwkrjSdNNMFA7zLPgxE82QGUjn6hYd7n14WDCWlrMY07BoBMip
	oQSlEFLAeuNiSr/M/waF9mbN92FOBYtfJwgyY/Z6FW0FWwb7A/cqtOdPyWPStKMU4/tHaF+1Vy7Jk
	w4CtmiBgCetmNAHWqclLdeuYujHnq9qiRnYvaiSxGvIFqjIXoUaz0hp7HmuFKNva71w6MsalasciJ
	tAVU02ZTa3N+N042OZqqjUyIeXgAlJzjGwnMC9wvK0iZ1KG8ozKVAOy2iSKwi1+pt/KXJyohr8PAu
	kjbH++sDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi9O-0005Nx-Pv; Thu, 07 May 2020 15:09:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi97-0005Hg-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:09:13 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BB1C20838;
 Thu,  7 May 2020 15:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588864148;
 bh=nK8b2Z18kRyO0yRf1TIw0HFMUQ2Mj0dg+LTInHNoLo0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xIxyRB3TiKW/oMu9GcCfPrdKWEMvLJWHbzY8GpIqwf/AiNU6vkzO2v52+AoO0sy1k
 VhLtkTXjHkLVjef7fORbhdUHXvvyt7pE9mLuXiuaxR+rwO8tZXU6Yuvvj9Sn+js6td
 hark9JrBNYFJWY46QJYETTlMo58xne8T/B3PmOwk=
Date: Thu, 7 May 2020 16:09:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507150905.GB6183@sirena.org.uk>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507145901.GA1938@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200507145901.GA1938@willie-the-truck>
X-Cookie: 1 + 1 = 3, for large values of 1.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080909_639167_C5FD0306 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8069649581042043289=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8069649581042043289==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0eh6TmSyL6TZE2Uz"
Content-Disposition: inline


--0eh6TmSyL6TZE2Uz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 07, 2020 at 03:59:01PM +0100, Will Deacon wrote:

> Sorry, my parallel build threw me off, so I don't think it's HDRTEST after
> all. One of the problems appears to be tracing:
>=20
>     CC      kernel/trace/trace_clock.o
>   warning: some functions compiled with BTI and some compiled without BTI
>   warning: not setting BTI in feature flags

Can you share a .config?

--0eh6TmSyL6TZE2Uz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl60JJEACgkQJNaLcl1U
h9AsYQf/Qo4lyBtppMIFRAdQQ+VqztoK//O/GJiFE2OAgAfTW+lCNvP7qH8f0nl3
w5fzyqyiW9UorkD2rLSPatk4hFeDPNTXidUfgiEzFOgvDdYvK3Q8pegOZs8P9/rr
6DLtWMTw7MOtbXJdYzUAk6coqFxFPKzNbLNW5sUGKA2Ezf3IVKS+PYQ0qoWTI7KN
TpRcuC/XnKjW+KHtXdE0uYuiByKDV+yrJG4iFALaTwdwGlz7JY92nuTgAvlZFP15
IzE32uDd1XNzkBtUMS+LgctBbBXSrn5y4CsME7ysk96vBpyP85Gd8e3WuioBAJ5Z
ppSjFt6QgreI9S02d0ORlFC9KQYBDg==
=dLfP
-----END PGP SIGNATURE-----

--0eh6TmSyL6TZE2Uz--


--===============8069649581042043289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8069649581042043289==--

