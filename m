Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBD91C1A6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OLV7p54DQQeQO19RGXay3BH1OF9TA/Yaa36grfcWhM0=; b=brIT+3UFFdUlUiAnOYJIumtfl
	iEjuZ/xp7kgpUAXcaStwhcxYnJIEW9wDS3j1MEbwFTVF+TWuc38IqzwIxLM9suZC8GNGTkl4l2+38
	nznY5pGYs5UeQ7Xu8jVfHZzRyYJckGWAVuJBe+8/Fj8dp5k8E1pt8tu5YIqkjgh6BDL5buUl3/Z+k
	9+SSNAln03HQdWpXf72G+GG7IkdjMprh++ru9HpJ6dGxjSkTgXCNdrQRzFZESaH5tLf3wVd2GQizS
	D/LgzAFfG0c6gd3ntwwylQAUrr5nXmVVa1bUSMAyQih5AikhHUJ2H4Rk2u2nQiq3pAzlVYAp01xtc
	k/P2wldfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYH1-0008J6-FO; Fri, 01 May 2020 16:12:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYGr-0008H1-L3
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:12:16 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C24D5208DB;
 Fri,  1 May 2020 16:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588349533;
 bh=jx9V8VylGK+Rl73d98WTgzFbkAd3ccom+KHXU+FRXyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WMfRkTytTUPcNFRyOmrmIOU/FMw1vmAFcQOHLvTgIfFQfMCDW4PTzBe7rzDe/u260
 iGSuc4tFenFztVOxxMLcVQnGnakoHJNUHQPe2g6OmD99Av2oaS5/7nf206KcsH2Hxz
 QnppvHqji3l1It8dY57FX6QB8t4b2D6Rm/giCHmQ=
Date: Fri, 1 May 2020 17:12:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 3/3] arm64: insn: Report PAC and BTI instructions as
 NOPs
Message-ID: <20200501161210.GF5276@sirena.org.uk>
References: <20200501123709.6640-1-broonie@kernel.org>
 <20200501123709.6640-4-broonie@kernel.org>
 <20200501125734.GD53528@C02TD0UTHF1T.local>
MIME-Version: 1.0
In-Reply-To: <20200501125734.GD53528@C02TD0UTHF1T.local>
X-Cookie: Think honk if you're a telepath.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_091213_719748_1047C727 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5349783683982836215=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5349783683982836215==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Km1U/tdNT/EmXiR1"
Content-Disposition: inline


--Km1U/tdNT/EmXiR1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 01, 2020 at 01:57:34PM +0100, Mark Rutland wrote:

> I appreciate the desire to not change this code too much, but could we
> please rename this to aarch64_insn_is_steppable_hint() to avoid the
> misleading name?

That's definitely clearer.  I've got this change locally but looking at
the new function name I can see that having done the rename people might
want to go through and also make sure that the list of HINTs we mark as
steppable is up to date which is probably a good idea but would hold
things up further, some of the barriers look like they might need a bit
of thought.

Will, what would you prefer - should I send out a version with the
just rename, do that incrementally or some other thing?

--Km1U/tdNT/EmXiR1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6sSlkACgkQJNaLcl1U
h9Bfkgf/Wy0LOdc6QyJVsa9lJZw8sE1M1GcBKsYwsC0LS44n7ioyAqXuh98B6zHy
pKlG3R09LK4v6lVCRFBf244WsItYsHXAZJEIkHrRarpe3NJbqBDOmM+V+X8mGAO2
TVzlPHrEq9rrzFGGW4XyJkJ29BOicCKNsWkQX4J6MsDPKuHIiay3QMRiTFS6ulXp
/8XGdGGUjy09UdYD+61gXYsQr0Suia2JzAX+2feDigRa2YpMmZ7sgrjEzG6Oq0W6
NTJV4Sp22Ydc7rfCU2EOo8ReePRmDr05LfROXUB4fPwDO8t6agHuBdSRcdXRR0UW
RP16od+HcnvIJNQ/GwNlA+lcGtu+XA==
=M8Sh
-----END PGP SIGNATURE-----

--Km1U/tdNT/EmXiR1--


--===============5349783683982836215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5349783683982836215==--

