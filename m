Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4561D9A36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KW4P3NijGWEfhQMq7eOKmI8cNIjHodf/6VwYceDsp84=; b=V8ds9+Kw1Z/zgK4D0vTg/l2pf
	ZGYXg6/JKqLWyPx619T/LYt+OdtjPFihQ/qK1hv8iHsxChDyqsUUhjBg42Y/CgYjxTZoTtYdWqsoK
	tlXesgcL/Fi2iFIiCjlgEGd6C09VbJ0B9mxOxErkE+ZYT9EVIsowBK0tuGcc9WBF23vFe/gdtB+Y9
	MgTOHvt6PibNncsGUFOsrer0vcKNENd2vloD4Dl5M3NyrZwlHZlRYdbz6fxHaFB1z/Mp+JmRSVy5v
	2DVmLUloB+WcpdBjmVSNsabUdZ3EfTsItbjh9Ur9f820f4nNSZvt4f98VVGEvByuq7sz5ECg6enAw
	GzVC48WEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3RJ-0002by-Ru; Tue, 19 May 2020 14:41:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3Kj-0000bd-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:35:15 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBDEC20709;
 Tue, 19 May 2020 14:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589898903;
 bh=V2rrFJMvvHMK+8I5lN8N7mh7mSTA5hG3PpvMYKyRQyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BW1Y4t7aELfgIxmZfQ10UFYP7pwJt382SkHmwvCyvOI4tX+yStjEy95+dCI93N0YK
 lBrRhmWkuwb/i5WxOVHdKEFo2SVj932AMRhJv2E2Ef0k32Bq4W62P41+gVu9qVrpBX
 PzCLoGdPr7LPDvT614+tO0dWE/WPTTLRIypuGofk=
Date: Tue, 19 May 2020 15:35:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519143500.GK4611@sirena.org.uk>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
 <20200519132538.GE5031@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200519132538.GE5031@arm.com>
X-Cookie: Do not write below this line.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_073505_364992_D01531F0 
X-CRM114-Status: UNSURE (   9.79  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, kernel-team@android.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============1919972232701468384=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1919972232701468384==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gBYU9MM4gf8jKg2V"
Content-Disposition: inline


--gBYU9MM4gf8jKg2V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 19, 2020 at 02:25:38PM +0100, Dave Martin wrote:

> Rather, the "ret lr" that jumps here is supposed to be authenticated via
> pointer auth in the caller.

In which case there was an issue anyway...

> If BTI {nothing} allows this while disallowing all BR/BLR then we could
> use that (I can't remember what BTI {nothing} is useful for, if anything).

> Otherwise, it's less clear what we should have here.

I can't remember anything that distinguishes it from an explicit NOP.

--gBYU9MM4gf8jKg2V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7D7pQACgkQJNaLcl1U
h9Bnkgf+Lyj6brGyimPsHiZa26qslr3nRU9UbU8qpNPdY19pbubaDxlvrebRy4hF
VSmerpUzNEPsTTSFOMTJxQVNCb1weXLfTTxYjTJ9NJrHifit1BQAv2c56k0EQyYx
KNYUmoPNoKkuyV1uxR3CtF5uVRUZI92vwdzhY61Ex6ys7QK8kd/a9xGXWUMlXaPZ
XG1xAe5T9PKPhFG6eOhM8GbPv7mUWqg9Gfn2RGkMrEaI48Gf8kOCjJo/YLHpT5PP
9mGp1dmo9hV63B3H56A/oOAuoU8xZPC5lYn48Cvt37NeLc1IHYI+EYxoosHlXN16
b6bf4oJFizgNhfHwz7kat/V64xb9Cw==
=nT4Z
-----END PGP SIGNATURE-----

--gBYU9MM4gf8jKg2V--


--===============1919972232701468384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1919972232701468384==--

