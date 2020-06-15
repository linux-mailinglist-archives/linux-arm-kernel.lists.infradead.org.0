Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401EE1F9564
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oxnoSOuHI7eVyrp7h2EZksWjgcjQ/IilE+0m9eH+IR0=; b=nHlFXS/+w++C77olYzT+jgA57
	0YP/x/AbFKnzh6FoP7x0ITc7SnkcIZGi86WCT39BKj2ghJDetrF2RQU1oUzZ2oqMkv4Ihli1UrHcK
	wDlnEKddm9eg41lRUexobwj2JJ4OM8dx2YTqV6bY8pt+BKojCrZonmfUpbANuI5h3rMiS50QXVWpO
	RJrB+fGzEFGZjiMToEZspY3XJDCz9nmqBqKQaDt4WeqMI4unuwhncxXuCCHqBJGti8x/6+6aMJdjS
	9wtVKg5SSCOKS0nH7laHSNckd6GuUCm3O0ChRkK7Dsc8UeiodXZjL8FICUlxvxYOTBi+WDGFgS5sY
	erprunpxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknQn-0008CZ-Q2; Mon, 15 Jun 2020 11:37:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknQf-0008CA-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:37:30 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 618A02067B;
 Mon, 15 Jun 2020 11:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592221048;
 bh=042ahzrXLwQ4rzed+tZ81tXSuX0NoAHNUQlsisbnNFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QgpvCEMti79rfD8OA2cipvVkYnf9Y6A+EG0YSfKUMVO+da78JSZOnCtjJfKW3hpsX
 46Un2hI2LvBi1zoKT8Ey1JLdgA34RORVoNwIawQnlLI2QlMcaRd6sHHS5g5WJR6YSl
 hHTZdy/0gQj9me3Z4FNKPq6wg97FXv8iFw7BbA5U=
Date: Mon, 15 Jun 2020 12:37:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615113726.GE4447@sirena.org.uk>
References: <20200615105524.GA2694@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200615105524.GA2694@willie-the-truck>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_043729_254874_318E7074 
X-CRM114-Status: UNSURE (   9.09  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, android-kvm@google.com, catalin.marinas@arm.com,
 ndesaulniers@google.com, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0923763743053527724=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0923763743053527724==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lteA1dqeVaWQ9QQl"
Content-Disposition: inline


--lteA1dqeVaWQ9QQl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:

> We currently support for this Clang 8+, but maybe we need to reconsider t=
hat
> :(

Yes, looking a bit like that - this one is relatively rare but could
come up elsewhere so we can't just disable the functionality. =20

--lteA1dqeVaWQ9QQl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nXXUACgkQJNaLcl1U
h9AO6Af9F9k3I4IEfLpMuUI+CcvuiE1Fc/0HUnwK5m2n+PEJ9NpiEO2Er2vdOHys
Cz2h+WjidPF+Wx/dnf1eTwxtdx0RW+PBdLSLZO2AATBCuRg3zw76fv+cL7SSMVtU
DR36oCqKNYMpe95q3TDcbskRymTKNdNHKnBsR5seKP9hYgCriBnv4UwdbOnKc4VY
eQPvsAecwzcNMKI05migKCqyL6j/dipuXLoRtnV55iE6P/uk6tXrSYY9/2K2FOX8
ZVbfPf4awNuvOdeWodj8G+nHLkWHtRFWAQLavPvy5rrSiXc0whFE23ctxjCCVo0Z
9UT8KZV9OSA/W+28GZup81fRE9gMhw==
=sPLj
-----END PGP SIGNATURE-----

--lteA1dqeVaWQ9QQl--


--===============0923763743053527724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0923763743053527724==--

